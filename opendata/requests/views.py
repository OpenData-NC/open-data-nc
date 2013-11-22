from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.views.generic import DetailView
from django.shortcuts import render, redirect, get_object_or_404
from django.views.decorators.http import require_POST

from djangoratings.exceptions import CannotDeleteVote

from .models import *
from .forms import SearchForm, RequestForm


def list_requests(request):
    """List current requests"""
    requests = Request.objects.filter(status=Request.APPROVED).order_by("-rating_score")
    if request.method == 'GET':
        form = SearchForm(request.GET)
        if form.is_valid():
            query = form.cleaned_data['text']
            requests = requests.filter(title__icontains=query)
    else:
        form = SearchForm()
    context = {
        'form': form,
        'requests': requests,
    }
    return render(request, 'requests/list.html', context)


class RequestDetailView(DetailView):
    model = Request

    def get_queryset(self):
        qs = super(RequestDetailView, self).get_queryset()
        return qs.filter(status=self.model.APPROVED)

    def get_context_data(self, **kwargs):
        context = super(RequestDetailView, self).get_context_data(**kwargs)
        request = context['object']
        votes = request.rating.votes
        site_url = getattr(settings, 'SITE_URL', 'http://localhost')
        context.update({'site_url': site_url, 'votes': votes})
        return context


@login_required
def add_request(request):
    """Add new requests"""
    if request.method == 'POST':
        form = RequestForm(request.POST)
        if form.is_valid():
            request_object = form.save(commit=False)
            request_object.suggested_by = request.user
            request_object.save()
            request_object.rating.add(score=1, user=request.user,
                                ip_address=request.META['REMOTE_ADDR'])
            return redirect(reverse('request-list'))
    else: 
        form = RequestForm()
    context = {
        'form': form
    }
    return render(request, 'requests/create_edit.html', context)


@login_required
@require_POST
def vote(request, request_id):
    """Vote for a requests"""
    redirect_url = request.POST.get('next', reverse('request-list'))
    request_object = get_object_or_404(Request, pk=request_id)
    voted = request_object.rating.get_rating_for_user(request.user,
                                              request.META['REMOTE_ADDR'])
    if not voted:
        request_object.rating.add(score=1, user=request.user,
                           ip_address=request.META['REMOTE_ADDR'])
    return redirect(redirect_url)


@login_required
@require_POST
def remove_vote(request, request_id):
    """Remove pre-existing vote for requests"""
    request_object = get_object_or_404(Request, pk=request_id)
    redirect_url = request.POST.get('next', reverse('request-list'))
    try:
        request_object.rating.delete(request.user, request.META['REMOTE_ADDR'])
    except CannotDeleteVote:
        # vote didn't exist, just move on
        pass
    return redirect(redirect_url)

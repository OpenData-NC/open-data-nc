from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
from suggestions.models import *
from suggestions.forms import SearchForm


def list_suggestions(request):
    "List current suggestions"
    suggestions = Suggestion.objects.order_by("-rating_score")
    if request.method == 'GET':
        form = SearchForm(request.GET)
        if form.is_valid():
            query = form.cleaned_data['text']
            suggestions = suggestions.filter(text__icontains=query)
    else:
        form = SearchForm()
    context = {
        'form': form,
        'suggestions': suggestions,
    }
    return render(request, 'suggestions/list.html', context)


@login_required
def add_suggestion(request):
    if request.method == 'POST':
        form = SuggestionForm(request.POST)
        if form.is_valid():

            sug = Suggestion()
            sug.suggested_by = request.user
            sug.text = request.POST.get('text')
            
            sug.save()            
            sug.rating.add(score=1, user=request.user, ip_address=request.META['REMOTE_ADDR'])
            
            return HttpResponseRedirect('../?sort=suggested_date&dir=desc&filter=mine')
    else: 
        form = SuggestionForm()

    suggestions = Suggestion.objects.order_by("rating_score")
    return render_to_response('suggestions/list.html', {'suggestions': suggestions, 'form': form}, context_instance=RequestContext(request))


@login_required
def vote(request, suggestion_id):
    "Vote for a suggestion"
    suggestion = get_object_or_404(Suggestion, pk=suggestion_id)
    voted = suggestion.rating.get_rating_for_user(request.user,
                                                  request.META['REMOTE_ADDR'])
    if not voted:
        suggestion.rating.add(score=1, user=request.user,
                              ip_address=request.META['REMOTE_ADDR'])
    return redirect(reverse('suggestion-list'))


@login_required
def remove_vote(request, suggestion_id):
    "Remove pre-existing vote for suggestion"
    suggestion = get_object_or_404(Suggestion, pk=suggestion_id)
    suggestion.rating.delete(request.user, request.META['REMOTE_ADDR'])
    return redirect(reverse('suggestion-list'))

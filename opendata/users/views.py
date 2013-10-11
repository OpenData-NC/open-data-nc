from django.shortcuts import redirect

from registration.backends.default.views import RegistrationView

from opendata.users.forms import UserCreationForm


class UserRegistrationView(RegistrationView):
    form_class = UserCreationForm

    def form_valid(self, request, form):
        new_user = self.register(request, **form.cleaned_data)
        new_user.first_name = form.cleaned_data["first_name"]
        new_user.last_name = form.cleaned_data["last_name"]
        new_user.save()
        success_url = self.get_success_url(request, new_user)

        # success_url may be a simple string, or a tuple providing the
        # full argument set for redirect(). Attempting to unpack it
        # tells us which one it is.
        try:
            to, args, kwargs = success_url
            return redirect(to, *args, **kwargs)
        except ValueError:
            return redirect(success_url)

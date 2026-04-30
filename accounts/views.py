from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout, update_session_auth_hash
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User 

# Create your views here.

@login_required(login_url='login')   
def dashboard(request):
    return render(request, 'accounts/dashboard.html')

# Login page
def login_view(request):

    if request.method == 'POST':

        # Get what the user typed in the form
        username = request.POST['username']
        password = request.POST['password']
        remember_me = request.POST.get('remember_me')

        # Check if the username and password are correct
        user = authenticate(request, username=username, password=password)

        if user is not None:
            # Password was correct, log them in
            login(request, user)
            
            request.session['is_admin_mode'] = False

            # Handle remember me
            if not remember_me:
                request.session.set_expiry(0)

            return redirect('dashboard')

        else:
            # Wrong username or password
            error = 'Invalid username or password'
            return render(request, 'accounts/login.html', {'error': error})

    # If just visiting the page normally
    return render(request, 'accounts/login.html')

def register_view(request):

    if request.method == 'POST':

        # Get what the user typed in the form
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        username = request.POST['username']
        password = request.POST['password']
        confirm_password = request.POST['confirm_password']

        # Check passwords match
        if password != confirm_password:
            return render(request, 'accounts/register.html', {'error': 'Passwords do not match'})

        # Check username is not already taken
        if User.objects.filter(username=username).exists():
            return render(request, 'accounts/register.html', {'error': 'Username already taken'})

        # Create the new user
        user = User.objects.create_user(
            username=username,
            password=password,
            email=email,
            first_name=first_name,
            last_name=last_name
        )
        user.save()

        # Send them to login after successful registration
        return redirect('login')

    # If just visiting the page normally
    return render(request, 'accounts/register.html')

# Forgot password page
def forgot_password_view(request):

    if request.method == 'POST':
        return render(request, 'accounts/forgot_password.html', {'success': True})

    return render(request, 'accounts/forgot_password.html')

# Admin login page
def admin_login_view(request):

    if request.method == 'POST':

        username = request.POST['username']
        password = request.POST['password']

        user = authenticate(request, username=username, password=password)

        if user is not None and user.is_staff:
            # User exists and is an admin
            login(request, user)
            request.session['is_admin_mode'] = True
            return redirect('dashboard')

        elif user is not None and not user.is_staff:
            # Valid user but not an admin
            error = 'You do not have admin privileges'
            return render(request, 'accounts/admin_login.html', {'error': error})

        else:
            # Wrong username or password entirely
            error = 'Invalid username or password'
            return render(request, 'accounts/admin_login.html', {'error': error})

    return render(request, 'accounts/admin_login.html')

def logout_view(request):
    logout(request)
    return redirect('login')

# Profile page — update details and change password
@login_required(login_url='login')
def profile_view(request):
    user = request.user
    profile_success = None
    password_success = None
    profile_error = None
    password_error = None

    if request.method == 'POST':

        # Update profile details
        if 'update_profile' in request.POST:
            first_name = request.POST.get('first_name', '').strip()
            last_name  = request.POST.get('last_name', '').strip()
            email      = request.POST.get('email', '').strip()

            if User.objects.filter(email=email).exclude(pk=user.pk).exists():
                profile_error = 'That email address is already in use by another account.'
            else:
                user.first_name = first_name
                user.last_name  = last_name
                user.email      = email
                user.save()
                profile_success = 'Your profile details have been updated.'

        # Change password
        elif 'change_password' in request.POST:
            current_password = request.POST.get('current_password', '')
            new_password     = request.POST.get('new_password', '')
            confirm_password = request.POST.get('confirm_password', '')

            if not user.check_password(current_password):
                password_error = 'Your current password is incorrect.'
            elif new_password != confirm_password:
                password_error = 'New passwords do not match.'
            elif len(new_password) < 8:
                password_error = 'New password must be at least 8 characters long.'
            else:
                user.set_password(new_password)
                user.save()
                update_session_auth_hash(request, user)  # keeps user logged in after password change
                password_success = 'Your password has been changed successfully.'

    return render(request, 'accounts/profile_overview.html', {
        'profile_success': profile_success,
        'password_success': password_success,
        'profile_error': profile_error,
        'password_error': password_error,
    })

# Dashboard page
def dashboard(request):
    return render(request, 'accounts/dashboard.html')

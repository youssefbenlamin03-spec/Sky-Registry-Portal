from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
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

# Dashboard page
def dashboard(request):
    return render(request, 'accounts/dashboard.html')

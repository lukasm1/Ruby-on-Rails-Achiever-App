# Ruby-on-Rails-Achiever-App

Ruby on Rails Achiever App: #Adopt the minds of the Greatest ones!
Author: Lukáš Minster


____________________________________
How to run the app:

rails db:migrate
rails db:seed
rails s

Then go to: http://localhost:3000
____________________________________



What's included:

1) 7 tables. 1-Many, Many-Many

2) Pre-populated data with rails db:seed

3) Bootstraped

4) Devise Authentication:

Admin username: admin@admin.com
Admin password: topsecret

Functionalities:

If the user is not signed in:

 they can: 
	1) Sign Up/Sign In
 they cannot:	
	1) Edit user profile/Sign Out
	2) Add/Edit/Destroy

If the user is signed in:

 they can:
	1) Edit user profile/Sign Out	
	2) Add anything
	3) Edit/destroy only what they created. UNLESS the user.id == 1 (admin). Admin can edit/destroy anything.
 they cannot:
	1) Sign in/Sign up

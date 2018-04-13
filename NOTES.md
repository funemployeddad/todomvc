# Step 1: Integrate Basic Theme to Asset Pipeline

[X] / - And see a stubbed out, non-dynamic, page with the theme.

# Step 2: Allow people to CRUD lists.
[ ] ListsController
  #index
  - see all their lists
  - doubling as my #new action in that it is presenting the person with a form to create a new list
  / - Index all the lists...
- create a list

- show a list

- i need a model
- i need a controller
- i should a generate resource

Does it impact the DB?
Does it impact my URLS? '/lists/1' #

# Step 3: Add Items to a List

# Step Whatever: Fix Down Arrow on Make a List Form

# Authentication
Database and URLs
Do I need to update my database?
 - new model, user, email (do it with just this one trait first, then you can go back and add in the authorization piece with a password)

What URLs will the user use to interact with my site

  get /users/new Users#new
    - form
  post /users  Users#create
    - create the user in the db

  get /login
    -form
  post /sessions
    - "log the user in" -- whatever that means

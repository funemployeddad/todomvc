Step 1 - steal someone's css stuff and add it to the asset pipeline
  - see a stubbed out, non-dynamic page with the theme


Step 2 - Allow people to CRUD Lists
  ListsController
    #index
    - see all their Lists
    - doubling as #new action by presenting the person with a form to create a new list
    / - index all the lists(new root page)

    - create a list
    - show a list

    - need a model and controller, so generate resource

Step 3: Add items to a list

  -make the items in a list real
    - created a List model and made the associations in ActiveRecord

  -CREATE action for an ITEM n a LIST - What is the URL / HTTP method for that?
    the form is already present in the list show page
    What URL does this form imply?    POST /lists/:id/items
    - need to use nested resources: items are nested in terms of URLs under their parent list.

Step 4: Adding Validations
  Validates that lists have name
  Validates that items have a description

Step 5: add state (complete/incomplete) to items in a list
  -marking items as complete or incomplete

  What urls do I need and how might my database change?

  -the idea of an item being complete or incomplete require data

  -new forms for updating the status of an item - which means new URLs

  /lists/1/items
  PUT/PATCH/lists/1/items/1
  PUT/PATCH/lists/:list_id/items/:id
need to take the checkbox HTML from todomvc:   <input class="toggle" type="checkbox">
also need the JS function to submit the form when you click the checkbox
$(function(){
  $("input.toggle").on("change", function(){
    $(this).parents("form").trigger("submit")
    })
  });

<li data-id="1523161405996" class="completed"><div class="view"><input class="toggle" type="checkbox"><label>new list</label><button class="destroy"></button></div></li>

Step 6: Deleting items from a list


Step X: make some partials
-a lot of this logic should go into partials (and maybe helper modules?)

# Q0: Why is this error being thrown?

Without a model for pokemon, the look up method "Pokemon.where" would not exist, as Pokemon 
refers to something that doesn't exist yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

These pokemon are randomly selected from the pokemon model. All pokemont that are selected to not 
belong to any trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a button which, upon being clicked, calls the method at capture_path (which points to the capture method in the pokemon controller), and passes the pokemon's id as an argument. This is a patch call.

# Question 3: What would you name your own Pokemon?

I would create a new pokemon named Lebron.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

You can pass in the trainer as a path, as it automatically generates the path from the trainer class.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

The rails flash stores the string from errors to a hash with the key error. If there is a message (e.g. an error), application.html.erb will render the string in the floating box at the top.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

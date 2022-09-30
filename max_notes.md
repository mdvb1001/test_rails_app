Course Notes:

### RAILS

Model => Are resources used to communicate with the tables in your application (backend)
View => What the users see in their browser (frontend)
Controller => The brains behind your application (backend)

Typical file structure:

app -- controllers
    -- views
    -- models

From the course -- nice breakdown of MVC:

MVC - Model, View, Controller

-----

"General flow of Rails application:

-> Request made at browser

-> Request received at router of rails application

-> Request routed to appropriate action in a controller

-> Controller#action either renders a view template or communicates with model

-> Model communicates with database

-> Model sends back information to controller

-> Controller renders view"

-----

Here's how to create a new controller form the Command line:
`rails generate controller [name_of_controller]`

More info on each folder and file in a Rails application:
https://guides.rubyonrails.org/getting_started.html > see section 3.2

CRUD:

There are three ways you can save an article to the db using the rails console:

1) Using the class name (from the model)

```
Article.create(title: "first article", description: "Description of first article")
# make sure Article is capitalized if using this method
```

2) Setting a variable, which is the preferred method, with an instance of the class name
```
article = Article.new
article.title = "second article"
article.description = "description of second article"
article.save
```
3) Setting a variable and passing the keys and values directly

```
article = Article.new(title: "third article", description: "description of third article")
article.save
```

More crud operations:

- To find an article by id you can use the find method like below:

Article.find(1) # replace 1 with id of article you want to find

- You can save this to a variable and use it like below
```
article = Article.find(1)
article.title # to display (get) the title
article.description # to display (get) the description
```
- You can use the methods below to view the first and last articles of the articles table:
```
Article.first # display the first article in the articles table
Article.last # display the last article in the articles table
```
- You can update an article by finding it first and then using setters for the attributes that the model provides like below:
```
article = Article.find(id of article you want to edit)
article.title = "new title"
article.description = "new description"
article.save
```
- You can delete an article by using the destroy method. A sample sequence could be like below:
```
article = Article.find(id of article you want to delete)
article.destroy
```

PROP TIP:
To find out the PID of the process you are running on a certain PORT:
```
lsof -wni tcp:3001
```
Then, use the PID number to kill the process:
```
kill -9 PID
```
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

During this project, you will build a Ruby on Rails application to collect an index of free programming books online. This application will, after three days, allow users to:

1) look at the index (show),DONE
2) add new books (create),DONE
3) edit books they added (update),DONE
4) and remove books (destroy).DONE

DAY ONE TODOs: DONE
On the first day, your application should:

1)Allow anyone to create a new book entry

**Books have, at a minimum, a title, author, description, and URL**
2)Allow anyone to update or delete a book entry
3)Allow anyone to view the list of books

DAY TWO TODOs:
On the second day, your application should:

Allow users to register and login
Prevent users from creating, editing, or deleting book entries if they are not logged in

DAY THREE TODOs:
On the third day (today), your application should:

Associate each book entry with a user
Prevent editing a book unless you are the book entry's creator
Prevent deleting a book unless you are the book entry's creator
Added features  

If you finish all of the above, consider some of the following:

Style your application with your own CSS by editing app/assets/stylesheets/application.css or digging into the asset pipeline
Paginate the list of books with Kaminari

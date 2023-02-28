##E-Commerce Product Reviews

This project focuses on the product review feature of an e-commerce platform. The project has three models: User, Review, and Product.

##For this project, we have defined the following associations:

A Product has many Users
A User has many Products
A Review belongs to a User and a Product

##We have created a migration for the Reviews table with the following columns:

- star_rating: an integer column that stores the star rating of the review
- comment: a string column that stores the comment for the review
- user_id: an integer column that stores the user ID of the review
- product_id: an integer column that stores the product ID of the review
After creating and running the migration, we have created the Review class and added seed data to test our code.


##Object Association Methods
We have used Active Record association macros and Active Record query methods to define the following object association methods:

##Review
- Review#user: returns the User instance for this Review
- Review#product: returns the Product instance for this Review
##Product
- Product#reviews: returns a collection of all the Reviews for the Product
- Product#users: returns a collection of all the Users who reviewed the Product
##User
- User#reviews: returns a collection of all the Reviews that the User has given
- User#products: returns a collection of all the Products that the User has reviewed

##Aggregate and Association Methods
We have also defined the following aggregate and association methods:

##Review
- Review#print_review: prints a formatted string representing the review in the terminal
##Product
- Product#leave_review(user, star_rating, comment): creates a new Review in the database associated with this Product and the User
- Product#print_all_reviews: prints a formatted string representing all the reviews for the product in the terminal
- Product#average_rating: returns a float representing the average star rating for all reviews for this product
##User
- User#favorite_product: returns the product instance that has the highest star rating from this user
- User#remove_reviews(product): removes all of this user's reviews for a given product
We have tested these methods using the rake console.

##Conclusion
This project demonstrates how to define associations and implement various aggregate and association methods in an e-commerce platform's product review feature using Active Record.
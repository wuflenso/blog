# KARIM'S NOTES
# This is a model. It works just like dotnet. It represents a db object.

# we autogenerate models using this command:
# bin/rails generate model <ModelName (capitalized singular)> <field 1 title>:<field 1 data> <field 2 title>:<field 3 data>

# like:
# bin/rails generate model Article title:string body:text

# do not include id, created_at, and . It will be generated automatically by Rails.
# this command also creates the migration file in db/migrate, which we execute using
# rake db:migrate

class Article < ActiveRecord::Base
    has_many :comments

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
end

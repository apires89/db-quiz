# Q1
# Tables (foreign keys connecting diff tables)

# Made up of:
# Columns
# Rows - Primary Key (identifies each row)


# Q2
#                   belongs_to                 has_many
# 1:N - 1 to Many (child stores the id of the parent)
# N:N - Many to Many (Join table)
# 1:1 (it doesn't matter / either one)

# Q7:
# SELECT * FROM books
# JOIN authors ON books.author_id = authors.id
# ORDER BY books.year DESC
# LIMIT 3

# Q8:
# - make it easier
# - writes SQL for us
# - models

# - AR is an abstraction of SQL
# that allows to write in ruby and produces
# SQL queries


# Q9:
# - Migrations change the schema (structure) of the DB
# - rake db:migrate


# Q13
#1
author = Author.new(name: "Jack Kerouac")
# [...]
author.save

#2
Author.all

#3
Author.find(8)

#4
jules = Author.find_by(name: "Jules Verne")
jules = Author.find_by_name("Jules Verne")

#5
jules.books

#6
twenty_thousand = Book.new(title: "20000 Leagues under the Seas")

# 7
twenty_thousand.author = jules

#8
twenty_thousand.save


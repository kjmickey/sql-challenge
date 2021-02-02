# SQL-Challenge

## bootcampspot.com homework due 2/1/21
 
### Step one of this homework required:
    examining CSV's
    designing SQL DB tables with the proper relationships
    properly importing CSV's into the tables.
    
I could not figure out how to import the CSV's via code in the PGAdmin query window, so I did it the inefficient way using right-clicking and file selection.  This is something I need to figure out when there's no time pressure.    

### Step two required writing SQL queries to extract data to answer 8 questions.
    Number 4 was the most difficult to write.  
    6 and 8 appeared difficult in a vacuum, but were #4 with a bit of extra code.

### Step three (bonus) required manipulating the data via python queries.  
I am not sure I'll get to this part of the assignment.
Update:  This was brutal. The instructions on connecting to the DB were inadequate and I spent approximately 2 hours trying to get this line working:
    
    engine = create_engine("postgresql://postgres:PASSWORD@localhost:5432/PewlettHackard")

turns out the "user name" is postgres, not the account name on my computer 

### Structure of this repository

    The CSV data files are in /EmployeeSQL
    the ERD diagram is called ERD Diagram.png
    pewletthackard.sql is the table setup file
    SQLqueries.sql is where the actual homework questions were answered
    sql-challenge bonus.ipynb contains the bonus question code

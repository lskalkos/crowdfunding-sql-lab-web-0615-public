# Write your sql queries in this file in the appropriate method like the example below:
# 
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts
"Write your SQL query Here"

<<-SQL
    SELECT projects.title, sum(pledges.amount)
    FROM pledges
    INNER JOIN projects
    ON projects.id = pledges.project_id
    GROUP BY projects.title
  SQL

end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges
"Write your SQL query Here"

<<-SQL
  SELECT users.name, users.age, sum(pledges.amount)
  FROM pledges
  INNER JOIN users
  ON users.id = pledges.user_id
  GROUP BY users.name ORDER BY users.name;
SQL

end

def selects_the_titles_of_all_projects_that_have_met_their_funding_goal
"Write your SQL query Here"

<<-SQL

  SELECT projects.title, projects.funding_goal-sum(pledges.amount)
  FROM pledges
  INNER JOIN projects
  ON projects.id = pledges.project_id
  GROUP BY projects.title
  HAVING projects.funding_goal-sum(pledges.amount) <= 0;
  SQL


end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
"Write your SQL query Here"

<<-SQL
  SELECT users.name, sum(pledges.amount)
  FROM pledges
  INNER JOIN users
  ON users.id = pledges.user_id
  GROUP BY users.name ORDER BY sum(pledges.amount);
  SQL
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"Write your SQL query Here"
<<-SQL
  SELECT projects.category, pledges.amount
  FROM pledges
  INNER JOIN projects
  ON projects.id = pledges.project_id
  WHERE projects.category = "music";
  SQL
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
"Write your SQL query Here"
<<-SQL

  SELECT projects.category, sum(pledges.amount)
  FROM pledges
  INNER JOIN projects
  ON projects.id = pledges.project_id
  WHERE projects.category = 'books';

  SQL
end
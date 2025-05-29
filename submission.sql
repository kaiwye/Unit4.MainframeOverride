-- Find the specific post in `forum_posts` given that it was posted in April 2048
SELECT * FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-04-30';
SELECT content, author FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-04-30';
SELECT content FROM forum_posts WHERE author = 'smart-money-44';

-- Author is `smart-money-44`

-- Now look in `forum_accounts` using the username to find their first_name and last_name
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';

    username    | first_name | last_name
----------------+------------+-----------
 smart-money-44 | Brad       | Steele

-- Search for others with the same last_name
SELECT * FROM forum_accounts WHERE last_name = 'Steele';

    username     | first_name | last_name
-----------------+------------+-----------
 sharp-engine-57 | Andrew     | Steele
 stinky-tofu-98  | Kevin      | Steele
 smart-money-44  | Brad       | Steele

-- Search in `emptystack_accounts` for the password knowing the username, first_name, last_name
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';

    username    |  password   | first_name | last_name
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele
 lance-main-11  | password789 | Lance      | Steele

 -- So now we know Andrew Steele is the leak and we have his credentials

 -- Search in emptystack_messages for a project that mentions `self-driving taxis`
 SELECT subject, body FROM emptystack_messages;
 SELECT subject, body FROM emptystack_messages WHERE subject ILIKE '%self-driving taxis%' OR body ILIKE '%self-driving taxis%';
 SELECT subject, body FROM emptystack_messages WHERE subject ILIKE '%taxi%' OR body ILIKE '%taxi%';
 SELECT * FROM emptystack_messages WHERE subject ILIKE '%taxi%' OR body ILIKE '%taxi%';

 -- Project TAXI
 -- id LidWj
 -- from your-boss-99

 -- Search in emptystack_accounts
 SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';

    username   |    password    | first_name | last_name
--------------+----------------+------------+-----------
 your-boss-99 | notagaincarter | Skylar     | Singer

 -- Search emptystack_projects with the project code TAXI
 SELECT * FROM emptystack_projects WHERE code = 'TAXI';

     id    | code
----------+------
 DczE0v2b | TAXI
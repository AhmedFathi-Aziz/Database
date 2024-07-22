-- finds the maximum score for each distinct `challenge_id`
SELECT MAX(score) FROM Submissions
GROUP BY challenge_id, hacker_id



----------------------------------------
hacker_id        challenge_id    score
---------------------------------------
1                    4            34
1                    4            345
3                    7            9
4                    2            99
---------------------------------------


output:
----------------------------------------
hacker_id        challenge_id    score
---------------------------------------
1                    4            345
3                    7            9
4                    2            99
---------------------------------------
--3- Samantha interviews many candidates from different colleges using coding challenges and contests.
--  Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, 
-- total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are 0.
Select * From(
select contest_id, hacker_id, name,
(select sum(total_submissions) 
from Submission_stats ss
INNER JOIN Challenges C ON
ss.challenge_id = C.challenge_id
INNER JOIN Colleges Co ON
C.college_id = Co.college_id
INNER JOIN Contests con ON
Co.contest_id = con.contest_id
WHERE Co.contest_id = con.contest_id) TotalSub,

(select sum(total_accepted_submissions) 
from Submission_stats ss
INNER JOIN Challenges C ON
ss.challenge_id = C.challenge_id
INNER JOIN Colleges Co ON
C.college_id = Co.college_id
INNER JOIN Contests con ON
Co.contest_id = con.contest_id
WHERE Co.contest_id = con.contest_id) TotalAcc,


(select sum(total_views) 
from View_Stats vs
INNER JOIN Challenges C ON
vs.challenge_id = C.challenge_id
INNER JOIN Colleges Co ON
C.college_id = Co.college_id
INNER JOIN Contests con ON
Co.contest_id = con.contest_id
WHERE Co.contest_id = con.contest_id) tv,


(select sum(total_unique_views) 
from View_Stats vs
INNER JOIN Challenges C ON
vs.challenge_id = C.challenge_id
INNER JOIN Colleges Co ON
C.college_id = Co.college_id
INNER JOIN Contests con ON
Co.contest_id = con.contest_id
WHERE Co.contest_id = con.contest_id) tuv

FROM Contests con) cont
where (cont.tv <> 0 AND cont.tuv <> 0 AND cont.TotalAcc <> 0 AND cont.TotalSub <> 0)
order by cont.contest_id
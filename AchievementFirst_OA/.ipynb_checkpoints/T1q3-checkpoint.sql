WITH RecentEnrollments AS ( 
    SELECT e.personid 
        , MAX(e.startdate) as MostRecentStartDate 
    FROM enrollment e 
        JOIN calendar c ON e.calendarid = c.calendarid 
        JOIN schoolyear sy ON c.endyear = sy.endyear 
    WHERE sy.active = TRUE 
        OR sy.endyear = 2020  /*Updated Active Year*/
    GROUP BY e.personid 
    HAVING COUNT(e.enrollmentid) > 1 
) 
SELECT p.firstname, p.lastname, r.MostRecentStartDate 
FROM RecentEnrollments r 
    JOIN person p ON r.personid = p.personid 
ORDER BY r.MostRecentStartDate DESC 
LIMIT 3 
;
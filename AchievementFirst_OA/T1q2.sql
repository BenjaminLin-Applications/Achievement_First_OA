SELECT COUNT(DISTINCT e.personid) 
FROM enrollment e 
    JOIN calendar c ON e.calendarid = c.calendarid 
    JOIN school s ON c.schoolid = s.schoolid 
WHERE s.name = 'bp'
    AND e.startdate <= '2019-10-01' 
    AND e.enddate > '2019-10-01'; 
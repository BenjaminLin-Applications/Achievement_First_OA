SELECT COUNT(DISTINCT e.personid) 
FROM enrollment e 
    JOIN calendar c ON e.calendarid = c.calendarid 
    JOIN schoolyear sy ON c.endyear = sy.endyear 
WHERE sy.active = TRUE 
    OR sy.endyear = 2020 /*Updated Actice Year*/
; 
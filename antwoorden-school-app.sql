--Joins opdrachten--

--Opdracht 1--
SELECT naam, woonplaats FROM student
JOIN plaats ON plaats.code = student.woonplaats
WHERE plaatsnaam <> 'Haarlem' AND beurs > 90;

--oprdracht 2--

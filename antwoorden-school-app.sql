--Joins opdrachten--

--Opdracht 1--
SELECT naam, woonplaats FROM student
JOIN plaats ON plaats.code = student.woonplaats
WHERE plaatsnaam <> 'Haarlem' AND beurs > 90
ORDER BY plaatsnaam;

--oprdracht 2--
SELECT naam AS voornaam, studie.studie, plaats.plaatsnaam AS woonplaats FROM student
JOIN studie on studie.code = student.studie
JOIN plaats ON plaats.code = student.woonplaats
WHERE studie.plaats <> "Den Haag";
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

--opdracht 3--
SELECT naam, vaknaam, periode FROM student
JOIN deelname on deelname.id = student.id
JOIN vak ON vak.code = deelname.vak
ORDER BY naam, periode;

--opdracht 4--
SELECT vak.vaknaam, AVG(deelname.cijfer) FROM deelname
JOIN vak on vak.code = deelname.vak
JOIN student ON student.id = deelname.id
GROUP by student.naam;

--opdracht 10--
SELECT deelname.periode, student.naam, vak.vaknaam, deelname.cijfer from deelname
JOIN student ON student.id = deelname.id
JOIN vak ON vak.code = deelname.vak
GROUP BY deelname.periode, vak.vaknaam, student.naam
ORDER BY deelname.periode, deelname.cijfer DESC, student.naam;
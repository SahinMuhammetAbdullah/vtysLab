SELECT u.UnvanCalisan, COUNT(u.UnvanCalisanID) AS CalisanSayisi
FROM Unvan u
GROUP BY u.UnvanCalisan
HAVING COUNT(u.UnvanCalisanID) > 1;

SELECT b.BirimAd, COUNT(c.CalisanID) AS CalisanSayisi
FROM Birimler b
LEFT JOIN Calisanlar c ON b.BirimID = c.CalisanBirimID
GROUP BY b.BirimAd;

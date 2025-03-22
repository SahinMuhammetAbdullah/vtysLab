SELECT c.Ad, c.Soyad, c.Maas, b.BirimAd
FROM Calisanlar c
JOIN Birimler b ON c.CalisanBirimID = b.BirimID
WHERE c.Maas IN (
    SELECT MAX(Maas)
    FROM Calisanlar
    GROUP BY CalisanBirimID
);

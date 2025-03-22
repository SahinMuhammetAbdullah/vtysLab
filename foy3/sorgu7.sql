SELECT c.Ad, c.Soyad, c.Maas
FROM Calisanlar c
JOIN Birimler b ON c.CalisanBirimID = b.BirimID
WHERE b.BirimAd IN ('Yazýlým', 'Donaným');

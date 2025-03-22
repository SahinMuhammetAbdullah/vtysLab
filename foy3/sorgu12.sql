SELECT c.Ad, c.Soyad, b.BirimAd, u.UnvanCalisan, i.IkramiyeUvcret
FROM Calisanlar c
JOIN Birimler b ON c.CalisanBirimID = b.BirimID
LEFT JOIN Unvan u ON c.CalisanID = u.UnvanCalisanID
JOIN Ikramiye i ON c.CalisanID = i.IkramiyeCalisanID;

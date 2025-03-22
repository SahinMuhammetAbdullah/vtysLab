SELECT c.Ad, c.Soyad, u.UnvanCalisan
FROM Calisanlar c
JOIN Unvan u ON c.CalisanID = U.UnvanCalisanID
WHERE u.UnvanCalisan IN ('Yönetici', 'Müdür');

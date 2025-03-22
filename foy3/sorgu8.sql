SELECT Ad, Soyad, Maas
FROM Calisanlar
WHERE Maas = (SELECT MAX(Maas) FROM Calisanlar);

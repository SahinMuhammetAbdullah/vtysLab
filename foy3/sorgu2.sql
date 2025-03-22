CREATE TABLE Birimler (
    BirimID INT PRIMARY KEY,
    BirimAd VARCHAR(255)
);

CREATE TABLE Calisanlar (
    CalisanID INT PRIMARY KEY,
    Ad VARCHAR(255) NOT NULL,
    Soyad VARCHAR(255) NOT NULL,
    Maas INT NOT NULL,
	KatilmaTarihi DATETIME NOT NULL,
	CalisanBirimID INT,
	FOREIGN KEY (CalisanBirimID) REFERENCES Birimler(BirimID)
);

CREATE TABLE Unvan (
    UnvanCalisanID INT,
    UnvanCalisan VARCHAR(255),
	UnvanTarih DATETIME,
	FOREIGN KEY (UnvanCalisanID) REFERENCES Calisanlar(CalisanID)
);

CREATE TABLE Ikramiye (
    IkramiyeCalisanID INT,
    IkramiyeUvcret INT,
    IkramiyeTarih DATETIME,
	FOREIGN KEY (IkramiyeCalisanID) REFERENCES Calisanlar(CalisanID)
);
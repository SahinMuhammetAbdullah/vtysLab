CREATE DATABASE [foy2] ON PRIMARY (
    NAME = foy2,
    FILENAME = "D:\databases\foy2data.mdf",
    SIZE = 8MB,
    MAXSIZE = unlimited,
    FILEGROWTH = 10%
) LOG ON (
    NAME = foy2_log,
    FILENAME = "D:\databases\foy2log.ldf",
    SIZE = 8MB,
    MAXSIZE = unlimited,
    FILEGROWTH = 10%
)
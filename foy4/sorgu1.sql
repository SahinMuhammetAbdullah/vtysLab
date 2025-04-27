CREATE DATABASE [foy4] ON PRIMARY (
    NAME = foy4,
    FILENAME = "D:\databases\foy4data.mdf",
    SIZE = 8MB,
    MAXSIZE = unlimited,
    FILEGROWTH = 10%
) LOG ON (
    NAME = foy4_log,
    FILENAME = "D:\databases\foy4log.ldf",
    SIZE = 8MB,
    MAXSIZE = unlimited,
    FILEGROWTH = 10%
)
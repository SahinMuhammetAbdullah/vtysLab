CREATE DATABASE [foy3] ON PRIMARY (
    NAME = foy3,
    FILENAME = "D:\databases\foy3data.mdf",
    SIZE = 8MB,
    MAXSIZE = unlimited,
    FILEGROWTH = 10%
) LOG ON (
    NAME = foy3_log,
    FILENAME = "D:\databases\foy3log.ldf",
    SIZE = 8MB,
    MAXSIZE = unlimited,
    FILEGROWTH = 10%
)
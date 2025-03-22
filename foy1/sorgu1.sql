CREATE DATABASE [foy1] ON PRIMARY (
    NAME = foy1,
    FILENAME = "D:\databases\foy1data.mdf",
    SIZE = 8MB,
    MAXSIZE = unlimited,
    FILEGROWTH = 10%
) LOG ON (
    NAME = foy1_log,
    FILENAME = "D:\databases\foy1log.ldf",
    SIZE = 8MB,
    MAXSIZE = unlimited,
    FILEGROWTH = 10%
)
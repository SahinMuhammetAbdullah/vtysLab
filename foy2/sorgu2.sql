CREATE TABLE Team (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(255),
    MainStadium VARCHAR(255),
    City VARCHAR(255),
);

CREATE TABLE Player (
    PlayerID INT PRIMARY KEY,
    PlayerName VARCHAR(255),
	Birthday DATE,
	StartYear DATE,
	JerseyNumber INT,
    TeamID INT,
	FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
);

CREATE TABLE "Match" (
    MatchID INT PRIMARY KEY,
    HomeTeamID INT,
    AwayTeamID INT,
    Stadium VARCHAR(255),
	MatchDate DATE,
    Result VARCHAR(64),
	FOREIGN KEY (HomeTeamID) REFERENCES Team(TeamID),
	FOREIGN KEY (AwayTeamID) REFERENCES Team(TeamID)
);

CREATE TABLE PlayerParticipation (
    MatchID INT,
    PlayerID INT,
    GoalsScored INT,
    YellowCard INT,
    RedCard Int,
	PRIMARY KEY(MatchID, PlayerID),
	FOREIGN KEY (MatchID) REFERENCES "Match"(MatchID),
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);

CREATE TABLE Substitution (
    SubID INT PRIMARY KEY,
    MatchID INT,
    InPlayerID INT,
    OutPlayerID INT,
    TimeMinute TIME,
    FOREIGN KEY (MatchID) REFERENCES "Match"(MatchID),
    FOREIGN KEY (InPlayerID) REFERENCES Player(PlayerID),
	FOREIGN KEY (OutPlayerID) REFERENCES Player(PlayerID)
);

CREATE TABLE Referee (
    RefereeID INT PRIMARY KEY,
    RefereeName VARCHAR(255),
    RefereeBirthDay DATE,
    ExperienceYears INT
);

CREATE TABLE MatchReferee (
    MatchID INT,
    RefereeID INT,
    RefereeRoel BIT
	PRIMARY KEY(MatchID, RefereeID),
	FOREIGN KEY (MatchID) REFERENCES "Match"(MatchID),
	FOREIGN KEY (RefereeID) REFERENCES Referee(RefereeID)
);
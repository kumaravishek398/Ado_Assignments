create database sampleTeam

use sampleTeam
go
create table footballLeague
( 
MatchID int primary key,
TeamName1 nvarchar(30) not null,
TeamName2 nvarchar(30) not null,
TeamStatus nvarchar(10) not null,
Winning_Team nvarchar(30) ,
Points int not null
);

INSERT INTO footballLeague(MatchID,TeamName1,TeamName2,TeamStatus,Winning_Team,Points)
VALUES(1001,'Italy','France','Win','France',4)

INSERT INTO footballLeague(MatchID,TeamName1,TeamName2,TeamStatus,Points)
VALUES(1002,'Brazil','Portugal','Draw',2)

INSERT INTO footballLeague(MatchID,TeamName1,TeamName2,TeamStatus,Winning_Team,Points)
VALUES(1003,'England','Japan','Win','England',4)

INSERT INTO footballLeague(MatchID,TeamName1,TeamName2,TeamStatus,Winning_Team,Points)
VALUES(1004,'USA','Russia','Win','Russia',4)

INSERT INTO footballLeague(MatchID,TeamName1,TeamName2,TeamStatus,Points)
VALUES(1005,'Portugal','Italy','Draw',2)


INSERT INTO footballLeague(MatchID,TeamName1,TeamName2,TeamStatus,Winning_Team,Points)
VALUES(1006,'Brazil','France','Win','Brazil',4)



--Createing a stored procedure to insert the records in FootBallLeague table.	

create procedure SPInsertValueForTeams
@MatchID int,
@TeamName1 nvarchar(30),
@TeamName2 nvarchar(30),
@TeamStatus nvarchar(10),
@Winning_Team nvarchar(30),
@Points int
as 
begin
INSERT INTO footballLeague(MatchID,TeamName1,TeamName2,TeamStatus,Winning_Team,Points)
VALUES(@MatchID,@TeamName1,@TeamName2,@TeamStatus,@Winning_Team,@Points)
end


--Executing stored procedure
execute SPInsertValueForTeams
@MatchID=1007,
@TeamName1 ='England',
@TeamName2 ='Russia',
@TeamStatus='Win',
@Winning_Team ='Russia',
@Points =4

--Retrieving all the winning TeamNames.
select Winning_Team ,TeamStatus from footballLeague where TeamStatus='Win'



--Creating View  to display the teams whose status is Draw
create view VWFootball
as
select TeamName1,TeamName2,TeamStatus from footballLeague where TeamStatus='Draw'


--Executing the View
select * from VWFootball

--details of all matches in which Japan played
select * from footballLeague where TeamName1='Japan' or TeamName2='Japan'

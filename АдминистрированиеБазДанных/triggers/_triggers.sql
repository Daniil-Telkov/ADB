CREATE TABLE InsertHistory
( 
	id            integer  IDENTITY PRIMARY KEY ,
	columnid       integer  NOT NULL ,
	operation     varchar(900)  NOT NULL ,
	CreateAt      DATETIME NOT NULL DEFAULT GETDATE(),
)
go




CREATE TRIGGER Tables_INSERT
ON DBUSers
AFTER INSERT
AS
INSERT INTO InsertHistory (columnid, operation )
SELECT ID_User, 'Добавлен столбец: ' + Name
FROM INSERTED



INSERT INTO DBUsers
VALUES (1, 'Пользователь1', 191919 );


INSERT INTO DBUsers
VALUES (2, 'Пользователь2', 190019 );
 
SELECT * FROM InsertHistory





CREATE LOGIN clerk
WITH PASSWORD = '1111';

CREATE USER User01 FOR LOGIN clerk;

CREATE LOGIN clerk1
WITH PASSWORD = '2222';

CREATE USER User0 FOR LOGIN clerk1;

GRANT SELECT, INSERT ON  DBUsers TO User01;

REVOKE SELECT ON DBUsers FROM User0; 

INSERT INTO DBUsers
VALUES (1, 'Пользователь1', 191919 );

INSERT INTO OtherUsers
VALUES (1, 'Пользователь0', 919191 );



SElECT *
FROM DBUsers

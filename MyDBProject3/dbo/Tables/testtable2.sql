CREATE TABLE [dbo].[testtable2] (
    [ID]             INT         IDENTITY (1, 1) NOT NULL,
    [randomDate]     DATETIME    NULL,
    [randomBigInt]   INT         NULL,
    [randomSmallInt] INT         NULL,
    [randomSmallDec] FLOAT (53)  NULL,
    [randomTinyDec]  FLOAT (53)  NULL,
    [randomBigDec]   FLOAT (53)  NULL,
    [randomMoney]    VARCHAR (6) NULL
);


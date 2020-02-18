CREATE TABLE [dbo].[testtablewithcolumnstore] (
    [ID]             INT         IDENTITY (1, 1) NOT NULL,
    [randomDate]     DATETIME    NULL,
    [randomBigInt]   INT         NULL,
    [randomSmallInt] INT         NULL,
    [randomSmallDec] FLOAT (53)  NULL,
    [randomTinyDec]  FLOAT (53)  NULL,
    [randomBigDec]   FLOAT (53)  NULL,
    [randomMoney]    VARCHAR (6) NULL
);


GO
CREATE NONCLUSTERED INDEX [myNonclusindex]
    ON [dbo].[testtablewithcolumnstore]([randomSmallInt] ASC, [randomDate] ASC)
    INCLUDE([randomBigInt]);


GO
CREATE CLUSTERED INDEX [clustIndex]
    ON [dbo].[testtablewithcolumnstore]([ID] ASC);


GO
CREATE COLUMNSTORE INDEX [MyColumnStoreIndex]
    ON [dbo].[testtablewithcolumnstore]([randomDate], [randomSmallInt]);


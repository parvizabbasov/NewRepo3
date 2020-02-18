CREATE TABLE [dbo].[testTable] (
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
CREATE NONCLUSTERED INDEX [_dta_index_testTable_5_1095674951__K2_1_3_4_5_6_7_8]
    ON [dbo].[testTable]([randomDate] ASC, [randomSmallInt] ASC)
    INCLUDE([ID], [randomBigInt], [randomSmallDec], [randomTinyDec], [randomMoney]);


GO
CREATE CLUSTERED INDEX [_dta_index_testTable_c_5_1095674951__K1]
    ON [dbo].[testTable]([ID] ASC);


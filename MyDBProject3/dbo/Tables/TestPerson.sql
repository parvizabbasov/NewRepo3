CREATE TABLE [dbo].[TestPerson] (
    [BusinessEntityID]      INT                                                           NOT NULL,
    [PersonTypeID]          NCHAR (2)                                                     NOT NULL,
    [NameStyle]             [dbo].[NameStyle]                                             NOT NULL,
    [Title]                 NVARCHAR (8)                                                  NULL,
    [FirstName]             [dbo].[Name]                                                  NOT NULL,
    [MiddleName]            [dbo].[Name]                                                  NULL,
    [LastName]              [dbo].[Name]                                                  NOT NULL,
    [Suffix]                NVARCHAR (10)                                                 NULL,
    [EmailPromotion]        INT                                                           NOT NULL,
    [AdditionalContactInfo] XML(CONTENT [Person].[AdditionalContactInfoSchemaCollection]) NULL,
    [Demographics]          XML(CONTENT [Person].[IndividualSurveySchemaCollection])      NULL,
    [rowguid]               UNIQUEIDENTIFIER                                              NOT NULL,
    [ModifiedDate]          DATETIME                                                      NOT NULL
);


GO
CREATE CLUSTERED INDEX [_dta_index_TestPerson_c_5_1031674723__K5_K1]
    ON [dbo].[TestPerson]([BusinessEntityID] ASC);


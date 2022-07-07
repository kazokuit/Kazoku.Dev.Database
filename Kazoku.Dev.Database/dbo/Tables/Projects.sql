CREATE TABLE [dbo].[Projects] (
    [Id]          UNIQUEIDENTIFIER   CONSTRAINT [DF_Projects_Id] DEFAULT (newid()) NOT NULL,
    [Name]        NVARCHAR (MAX)     NOT NULL,
    [Image]       NVARCHAR (MAX)     NULL,
    [Description] NVARCHAR (MAX)     NULL,
    [Status]      INT                CONSTRAINT [DF_Projects_Status] DEFAULT ((0)) NOT NULL,
    [Url]         NVARCHAR (MAX)     NULL,
    [Created]     DATETIMEOFFSET (7) CONSTRAINT [DF_Projects_Created] DEFAULT (getdate()) NOT NULL,
    [Updated]     DATETIMEOFFSET (7) NULL,
    [Deleted]     DATETIMEOFFSET (7) NULL,
    [Views]       BIGINT             CONSTRAINT [DF_Projects_Views] DEFAULT ((0)) NOT NULL,
    [Shares]      BIGINT             CONSTRAINT [DF_Projects_Shares] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED ([Id] ASC)
);


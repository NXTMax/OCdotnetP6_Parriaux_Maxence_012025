CREATE TABLE [dbo].[Product] (
    [Id]   BIGINT IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (60) NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[OperatingSystem] (
    [Id]   INT IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (30) NOT NULL,
    CONSTRAINT [PK_os_PK] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_os_name_unicity] UNIQUE ([Name])
);

CREATE TABLE [dbo].[TicketStatus] (
    [Id]   INT IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (30) NOT NULL,
    CONSTRAINT [PK_TicketStatus] PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[ProductBuild] (
    [Id]         BIGINT IDENTITY (1, 1) NOT NULL,
    [Product_ID] BIGINT NOT NULL,
    [Version]    NVARCHAR (50) NOT NULL,
    [OS_ID]      INT NOT NULL,
    CONSTRAINT [PK_ProductBuild] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ProductBuild_Product] FOREIGN KEY ([Product_ID]) 
        REFERENCES [dbo].[Product] ([Id])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT [FK_ProductBuild_OS] FOREIGN KEY ([OS_ID]) 
        REFERENCES [dbo].[OperatingSystem] ([Id])
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT [UC_build_properties] UNIQUE ([Product_ID], [Version], [OS_ID])
);

CREATE TABLE [dbo].[Ticket] (
    [Id]              BIGINT IDENTITY (1, 1) NOT NULL,
    [Build_ID]        BIGINT NOT NULL,
    [Creation_date]   DATETIME NOT NULL,
    [Resolution_date] DATETIME NULL,
    [Status_ID]       INT NOT NULL,
    [Issue]           NVARCHAR(MAX) NOT NULL,
    [Resolution]      NVARCHAR(MAX) NULL,
    CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Ticket_Build] FOREIGN KEY ([Build_ID]) 
        REFERENCES [dbo].[ProductBuild] ([Id])
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT [FK_Ticket_Status] FOREIGN KEY ([Status_ID]) 
        REFERENCES [dbo].[TicketStatus] ([Id])
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

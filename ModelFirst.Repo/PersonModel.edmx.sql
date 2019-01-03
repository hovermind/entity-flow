
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/04/2019 02:39:40
-- Generated from EDMX file: C:\Users\conso\source\repos\EntityFlow\ModelFirst.Repo\PersonModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PersonAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AddressSet] DROP CONSTRAINT [FK_PersonAddress];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AddressSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AddressSet];
GO
IF OBJECT_ID(N'[dbo].[PersonSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PersonSet'
CREATE TABLE [dbo].[PersonSet] (
    [PersonId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AddressSet'
CREATE TABLE [dbo].[AddressSet] (
    [AddressId] int IDENTITY(1,1) NOT NULL,
    [ZipCode] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [Ward] nvarchar(max)  NOT NULL,
    [Street] nvarchar(max)  NOT NULL,
    [PersonPersonId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [PersonId] in table 'PersonSet'
ALTER TABLE [dbo].[PersonSet]
ADD CONSTRAINT [PK_PersonSet]
    PRIMARY KEY CLUSTERED ([PersonId] ASC);
GO

-- Creating primary key on [AddressId] in table 'AddressSet'
ALTER TABLE [dbo].[AddressSet]
ADD CONSTRAINT [PK_AddressSet]
    PRIMARY KEY CLUSTERED ([AddressId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [PersonPersonId] in table 'AddressSet'
ALTER TABLE [dbo].[AddressSet]
ADD CONSTRAINT [FK_PersonAddress]
    FOREIGN KEY ([PersonPersonId])
    REFERENCES [dbo].[PersonSet]
        ([PersonId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonAddress'
CREATE INDEX [IX_FK_PersonAddress]
ON [dbo].[AddressSet]
    ([PersonPersonId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
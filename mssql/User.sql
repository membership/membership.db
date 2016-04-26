--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE [dbo].[User]
(
  [Id]                   UNIQUEIDENTIFIER NOT NULL,
  [Email]                NVARCHAR (256)   NULL,
  [EmailConfirmed]       BIT              NOT NULL,
  [PasswordHash]         NVARCHAR (100)   NULL,
  [SecurityStamp]        NVARCHAR (100)   NULL,
  [ConcurrencyStamp]     UNIQUEIDENTIFIER NOT NULL,
  [PhoneNumber]          NVARCHAR (50)    NULL,
  [PhoneNumberConfirmed] BIT              NOT NULL,
  [TwoFactorEnabled]     BIT              NOT NULL,
  [LockoutEnd]           DATETIME         NULL,
  [LockoutEnabled]       BIT              NOT NULL,
  [AccessFailedCount]    SMALLINT         NOT NULL,
  -- Keys
  CONSTRAINT [PK_User_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
);

GO
ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [DF_User_Id] DEFAULT NEWSEQUENTIALID() FOR [Id];

GO
ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [DF_User_EmailConfirmed] DEFAULT (0) FOR [EmailConfirmed];

GO
ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [DF_User_ConcurrencyStamp] DEFAULT NEWID() FOR [ConcurrencyStamp];

GO
ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [DF_User_PhoneNumberConfirmed] DEFAULT (0) FOR [PhoneNumberConfirmed];

GO
ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [DF_User_TwoFactorEnabled] DEFAULT (0) FOR [TwoFactorEnabled];

GO
ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [DF_User_LockoutEnabled] DEFAULT (0) FOR [LockoutEnabled];

GO
ALTER TABLE [dbo].[User]
  ADD CONSTRAINT [DF_User_AccessFailedCount] DEFAULT (0) FOR [AccessFailedCount];

--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE [dbo].[UserRole]
(
  [Id]   UNIQUEIDENTIFIER NOT NULL,
  [Name] NVARCHAR (256)   NOT NULL,
  -- Keys
  CONSTRAINT [PK_UserRole_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
  CONSTRAINT [UK_UserRole_Name] UNIQUE NONCLUSTERED ([Name] ASC)
);

GO
ALTER TABLE [dbo].[UserRole]
  ADD CONSTRAINT [DF_UserRole_Id] DEFAULT NEWSEQUENTIALID() FOR [Id];

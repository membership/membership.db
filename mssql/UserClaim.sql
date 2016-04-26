--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE [dbo].[UserClaim]
(
  [Id]     UNIQUEIDENTIFIER NOT NULL,
  [UserId] UNIQUEIDENTIFIER NOT NULL,
  [Type]   NVARCHAR (256)   NULL,
  [Value]  NVARCHAR (4000)  NULL,
  -- Keys
  CONSTRAINT [PK_UserClaim_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
  CONSTRAINT [FK_UserClaim_User] FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
);

GO
ALTER TABLE [dbo].[UserClaim]
  ADD CONSTRAINT [DF_UserClaim_Id] DEFAULT NEWSEQUENTIALID() FOR [Id];

GO
CREATE NONCLUSTERED INDEX [IX_UserClaim_UserId]
    ON [dbo].[UserClaim] ([UserId] ASC);

--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE [dbo].[UserUserRole]
(
  [UserId] UNIQUEIDENTIFIER NOT NULL,
  [RoleId] UNIQUEIDENTIFIER NOT NULL,
  -- Keys
  CONSTRAINT [PK_UserUserRole_UserId_RoleId] PRIMARY KEY CLUSTERED ([UserId] ASC, [RoleId] ASC),
  CONSTRAINT [FK_UserUserRole_User] FOREIGN KEY ([UserID])
    REFERENCES [dbo].[User] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT [FK_UserUserRole_UserRole] FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[UserRole] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
);

GO
CREATE NONCLUSTERED INDEX [IX_UserUserRole_UserId]
    ON [dbo].[UserUserRole] ([UserId] ASC);

GO
CREATE NONCLUSTERED INDEX [IX_UserUserRole_RoleId]
    ON [dbo].[UserUserRole] ([RoleId] ASC);

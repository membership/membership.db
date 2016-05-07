--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE UserUserRole
(
  userId INTEGER NOT NULL,
  roleId INTEGER NOT NULL,
  -- Keys
  CONSTRAINT UserUserRole_pk_userId_roleId PRIMARY KEY (userId, roleId),
  CONSTRAINT UserUserRole_fk_userId FOREIGN KEY (userId)
    REFERENCES User (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT UserUserRole_fk_roleId FOREIGN KEY (roleId)
    REFERENCES UserRole (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX UserUserRole_ix_userId ON UserUserRole (userId);
CREATE INDEX UserUserRole_ix_roleId ON UserUserRole (roleId);

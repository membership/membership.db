--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE UserClaim
(
  id     INTEGER PRIMARY KEY,
  userId INTEGER NOT NULL,
  type   TEXT,
  value  TEXT,
  -- Keys
  CONSTRAINT UserClaim_fk_userId FOREIGN KEY (userId)
    REFERENCES User (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX UserClaim_ix_userId ON UserClaim (userId);

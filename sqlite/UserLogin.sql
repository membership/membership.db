--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE UserLogin (
  name   TEXT    NOT NULL,
  key    TEXT    NOT NULL,
  userId INTEGER NOT NULL,
  -- Keys
  CONSTRAINT UserLogin_pk_name_key PRIMARY KEY (name, key),
  CONSTRAINT UserLogin_fk_userId FOREIGN KEY (userId)
    REFERENCES User (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE INDEX UserLogin_ix_userId ON UserLogin (userId);

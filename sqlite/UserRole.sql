--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE UserRole
(
  id   INTEGER PRIMARY KEY,
  name TEXT    NOT NULL,
  -- Keys
  CONSTRAINT UserRole_uk_name UNIQUE (name)
);

--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE User
(
  id                   INTEGER PRIMARY KEY,
  email                TEXT,
  emailConfirmed       NUMERIC NOT NULL DEFAULT 0,
  passwordHash         TEXT,
  securityStamp        TEXT,
  concurrencyStamp     TEXT    NOT NULL DEFAULT (lower(hex(randomblob(16)))),
  phoneNumber          TEXT,
  phoneNumberConfirmed NUMERIC NOT NULL DEFAULT 0,
  twoFactorEnabled     NUMERIC NOT NULL DEFAULT 0,
  lockoutEnd           TEXT,
  lockoutEnabled       NUMERIC NOT NULL DEFAULT 0,
  accessFailedCount    INTEGER NOT NULL DEFAULT 0,
  -- Constraints
  CONSTRAINT User_ck_emailConfirmed CHECK (emailConfirmed IN (0, 1)),
  CONSTRAINT User_ck_phoneNumberConfirmed CHECK (phoneNumberConfirmed IN (0, 1)),
  CONSTRAINT User_ck_twoFactorEnabled CHECK (twoFactorEnabled IN (0, 1)),
  CONSTRAINT User_ck_lockoutEnabled CHECK (lockoutEnabled IN (0, 1))
);

CREATE INDEX User_ix_email ON User (email);

--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE "UserLogin" (
  "userId" uuid NOT NULL,
  "name"   character varying(50),
  "key"    character varying(100),
  -- Keys
  CONSTRAINT "UserLogin_pkey" PRIMARY KEY (name, key),
  CONSTRAINT "UserLogin_User_fkey" FOREIGN KEY ("userId")
      REFERENCES "User" (id) MATCH SIMPLE
      ON DELETE CASCADE ON UPDATE CASCADE
);

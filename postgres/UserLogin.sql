--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/kriasoft/membership.sql
--
-- Copyright © 2016 Kriasoft, LLC. All rights reserved.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE "UserLogin" (
  "userId" UUID NOT NULL,
  "name"   CHARACTER VARYING (50),
  "key"    CHARACTER VARYING (100),
  -- Keys
  CONSTRAINT "UserLogin_pkey" PRIMARY KEY ("name", "key"),
  CONSTRAINT "UserLogin_User_fkey" FOREIGN KEY ("userId")
    REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

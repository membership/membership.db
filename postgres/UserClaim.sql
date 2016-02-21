--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/kriasoft/membership.sql
--
-- Copyright © 2016 Kriasoft, LLC. All rights reserved.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE "UserClaim" (
  "id"     UUID DEFAULT uuid_generate_v1mc() NOT NULL,
  "userId" UUID NOT NULL,
  "type"   CHARACTER VARYING (250),
  "value"  CHARACTER VARYING (4000),
  -- Keys
  CONSTRAINT "UserClaim_pkey" PRIMARY KEY ("id"),
  CONSTRAINT "UserClaim_User_fkey" FOREIGN KEY ("userId")
    REFERENCES "User" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

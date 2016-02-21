--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/kriasoft/membership.sql
--
-- Copyright © 2016 Kriasoft, LLC. All rights reserved.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE "User" (
  "id"       UUID DEFAULT uuid_generate_v1mc() NOT NULL,
  "email"    CHARACTER VARYING (100),
  "password" CHARACTER VARYING (100),
  -- Keys
  CONSTRAINT "User_pkey" PRIMARY KEY ("id"),
  CONSTRAINT "User_email_unq" UNIQUE ("email")
);

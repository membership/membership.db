--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE "User" (
  "id"                uuid NOT NULL DEFAULT uuid_generate_v1mc(),
  "email"             character varying(256),
  "emailConfirmed"    boolean NOT NULL DEFAULT false,
  "passwordHash"      character varying(100),
  "securityStamp"     character varying(100),
  "phone"             character varying(50),
  "phoneConfirmed"    boolean NOT NULL DEFAULT false,
  "twoFactorEnabled"  boolean NOT NULL DEFAULT false,
  "lockoutEnd"        timestamp without time zone,
  "lockoutEnabled"    boolean NOT NULL DEFAULT false,
  "accessFailedCount" smallint NOT NULL DEFAULT 0,
  -- Keys
  CONSTRAINT "User_pkey" PRIMARY KEY (id),
  CONSTRAINT "User_email_unq" UNIQUE (email)
);

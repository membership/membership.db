--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE "UserProfile" (
  "userId"    uuid NOT NULL,
  "name"      character varying(100),
  "picture"   character varying(256),
  "gender"    character varying(50),
  "location"  character varying(100),
  "website"   character varying(256),
  "createdAt" timestamp without time zone DEFAULT timezone('utc'::text, now()),
  "updatedAt" timestamp without time zone DEFAULT timezone('utc'::text, now()),
  -- Keys
  CONSTRAINT "UserProfile_pkey" PRIMARY KEY ("userId"),
  CONSTRAINT "UserProfile_User_fkey" FOREIGN KEY ("userId")
      REFERENCES "User" (id) MATCH SIMPLE
      ON DELETE CASCADE ON UPDATE CASCADE
);

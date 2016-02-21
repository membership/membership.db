--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE "UserClaim" (
  "id"     uuid NOT NULL DEFAULT uuid_generate_v1mc(),
  "userId" uuid NOT NULL,
  "type"   character varying(250),
  "value"  character varying(4000),
  -- Keys
  CONSTRAINT "UserClaim_pkey" PRIMARY KEY (id),
  CONSTRAINT "UserClaim_User_fkey" FOREIGN KEY ("userId")
      REFERENCES "User" (id) MATCH SIMPLE
      ON DELETE CASCADE ON UPDATE CASCADE
);

--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE user_account (
  id                     uuid NOT NULL DEFAULT uuid_generate_v1mc(),
  email                  character varying(256),
  email_confirmed        boolean NOT NULL DEFAULT false,
  password_hash          character varying(100),
  security_stamp         character varying(100),
  concurrency_stamp      uuid NOT NULL DEFAULT uuid_generate_v4(),
  phone_number           character varying(50),
  phone_number_confirmed boolean NOT NULL DEFAULT false,
  two_factor_enabled     boolean NOT NULL DEFAULT false,
  lockout_end            timestamp without time zone,
  lockout_enabled        boolean NOT NULL DEFAULT false,
  access_failed_count    smallint NOT NULL DEFAULT 0,
  -- Keys
  CONSTRAINT user_account_pkey PRIMARY KEY (id),
  CONSTRAINT user_account_email_key UNIQUE (email)
);

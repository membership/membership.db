--------------------------------------------------------------------------------
-- Membership Database Schema
-- https://github.com/membership/membership.db
--
-- Copyright © 2016 Membership Database contributors.
--
-- This source code is licensed under the MIT license found in the
-- LICENSE.txt file in the root directory of this source tree.
--------------------------------------------------------------------------------

CREATE TABLE user_login (
  name    character varying(50),
  key     character varying(100),
  user_id uuid NOT NULL,
  -- Keys
  CONSTRAINT user_login_pk_name_key PRIMARY KEY (name, key),
  CONSTRAINT user_login_user_account_fk_user_id FOREIGN KEY (user_id)
      REFERENCES user_account (id) MATCH SIMPLE
      ON DELETE CASCADE ON UPDATE CASCADE
);

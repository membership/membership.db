## Membership Database Schema for PostgreSQL

### System Requirements

  * [PostgreSQL](http://www.postgresql.org/) 9.1 and higher, or
  * [Amazon RDS for PostgreSQL](https://aws.amazon.com/rds/postgresql/)

### Naming Conventions

  * Singular snake_case names for tables. E.g. `user_login`
  * Singular snake_case names for columns. E.g. `phone_number`
  * Always try to use names that make sense and are descriptive of their purpose
  * Single column primary key fields should be named `id`
  * Use the following pattern for constraints and indexes: `{tablename}_{columnname(s)}_{suffix}` where the suffix is
   one of the following:
    * `pkey` for a Primary Key constraint
    * `key` for a Unique constraint
    * `excl` for an Exclusion constraint
    * `idx` for any other kind of index
    * `fkey` for a Foreign key
    * `check` for a Check constraint
    * `seq` for all sequences

### References

<table width="100%">
  <tr>
    <td width="185">
      <a href="http://amzn.to/21qCtqH">
        <img src="http://ecx.images-amazon.com/images/I/51xWZ8b11ML._SX150.jpg" width="150" height="185" alt="PostgreSQL 9 Administration Cookbook" />
      </a>
    </td>
    <td>
      <p>
        <strong><a href="http://amzn.to/21qCtqH">PostgreSQL 9 Administration Cookbook</a>, 2nd Edition</strong><br />
        by Simon Riggs, Gianni Ciolli, Hannu Krosing; Packt Publishing (May 2015)
      </p>
      <p>
        A practical guide with over 150 recipes, this book will help you to get you back up and running with an
        exploration of the ins and outs of your database, its configuration, server control, tables, and data.
        This is a practical guide aimed at giving sysadmins and database administrators the necessary toolkit to be
        able to set up, run, and extend powerful databases with PostgreSQL.
      </p>
    </td>
  </tr>
</table>

  * [PostgreSQL Documentation](http://www.postgresql.org/docs/current/interactive/index.html) on PostgreSQL.org
  * [User Profiles Data Model](http://www.databaseanswers.org/data_models/user_profiles/index.htm) on DatabaseAnswers.org
  * [How I Write SQL, Part 1: Naming Conventions](https://launchbylunch.com/posts/2014/Feb/16/sql-naming-conventions/) by Sehrope Sarkuni, JackDB
  * [Table Naming Dilemma: Singular vs. Plural Names](http://stackoverflow.com/a/5841297/82686) on StackOverflow.com

### License

Copyright © 2016 Membership Database contributors. This source code is licensed
under the MIT license found in the [LICENSE.txt](https://github.com/membership/membership.db/blob/master/LICENSE.txt)
file. The documentation to the project is licensed under the
[CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/) license.

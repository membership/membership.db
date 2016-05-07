## Membership Database Schema for SQLite

### System Requirements

  * [SQLite](http://sqlite.org/) 3.10 and higher

### Naming Conventions

  * Singular UpperCamelCase for tables. E.g. `UserLogin`
  * Singular lowerCamelCase for columns. E.g. `phoneNumber`
  * Always try to use names that make sense and are descriptive of their purpose
  * Single column primary key fields should be named `id`
  * Use the following pattern for constraints and indexes: `{tablename}_{prefix}_{columnname(s)}` where the prefix is
   one of the following:
    * `pk` for a Primary Key constraint
    * `uk` for a Unique constraint
    * `ix` for any other kind of index
    * `fk` for a Foreign Key constraint
    * `ck` for a Check constraint

### References

<table width="100%">
  <tr>
    <td width="185">
      <a href="https://books.google.ru/books?id=yWzwCwAAQBAJ">
        <img src="https://books.google.ru/books/content?id=yWzwCwAAQBAJ&printsec=frontcover&img=1&zoom=5" width="128" height="181" alt="SQLite Database System Design and Implementation" />
      </a>
    </td>
    <td>
      <p>
        <strong><a href="https://books.google.ru/books?id=yWzwCwAAQBAJ">SQLite Database System Design and Implementation</a>, 2nd Edition</strong><br />
        <sup>by Sibsankar Haldar, Self-published (2016)</sup>
      </p>
      <p>
        This book provides a comprehensive description of SQLite database system. It describes
        design principles, engineering trade-offs, implementation issues, and operations of SQLite.
      </p>
    </td>
  </tr>
</table>

  * [SQLite Documentation](https://www.sqlite.org/docs.html) on SQLite.org
  * [User Profiles Data Model](http://www.databaseanswers.org/data_models/user_profiles/index.htm) on DatabaseAnswers.org
  * [Table Naming Dilemma: Singular vs. Plural Names](http://stackoverflow.com/a/5841297/82686) on StackOverflow.com

### License

Copyright © 2016 Membership Database contributors. This source code is licensed
under the MIT license found in the [LICENSE.txt](https://github.com/membership/membership.db/blob/master/LICENSE.txt)
file. The documentation to the project is licensed under the
[CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/) license.

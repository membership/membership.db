## Membership Database Schema for SQL Server

### System Requirements

  * [Azure SQL Database](https://azure.microsoft.com/services/sql-database/), or
  * [Microsoft SQL Server 2012](https://www.microsoft.com/server-cloud/products/sql-server/) and higher, or
  * [LocalDB 2012](https://www.microsoft.com/server-cloud/products/sql-server-editions/sql-server-express.aspx) and higher

### Naming Conventions

  * Singular UpperCamelCase names for tables. E.g. `UserLogin`
  * Singular UppserCamelCase names for columns. E.g. `PhoneNumber`
  * Always try to use names that make sense and are descriptive of their purpose
  * Single column primary key fields should be named `Id`
  * Use the following pattern for constraints and indexes: `{suffix}_{tablename}_{columnname(s)}` where the suffix is
   one of the following:
    * `PK` for a Primary Key constraint
    * `AK` for a Unique constraint / Alternate Key
    * `IX` for any other kind of index
    * `FK` for a Foreign Key
    * `CK` for a Check constraint
    * `DF` for a Default constraint

### References

<table width="100%">
  <tr>
    <td width="185">
      <a href="http://amzn.to/2bg10x2">
        <img src="http://ecx.images-amazon.com/images/I/41u5XO75fBL._SX150.jpg" width="150" height="183" alt="T-SQL Querying (Developer Reference)" />
      </a>
    </td>
    <td>
      <p>
        <strong><a href="http://amzn.to/2bg10x2">T-SQL Querying (Developer Reference)</a></strong><br />
        <sup>by Itzik Ben-Gan, Adam Machanic, Dejan Sarka, Kevin Farlee; Microsoft Press (Mar 2015)</sup>
      </p>
      <p>
        Squeeze maximum performance and efficiency from every T-SQL query you write or tune. Four
        leading experts take an in-depth look at T-SQL’s internal architecture and offer advanced
        practical techniques for optimizing response time and resource usage. Emphasizing a correct
        understanding of the language and its foundations, the authors present unique solutions they
        have spent years developing and refining. All code and techniques are fully updated to
        reflect new T-SQL enhancements in Microsoft SQL Server 2014 and SQL Server 2012.
      </p>
    </td>
  </tr>
  <tr>
    <td width="185">
      <a href="http://amzn.to/2bBjZnQ">
        <img src="http://ecx.images-amazon.com/images/I/51PswGF7o9L._SX150.jpg" width="150" height="183" alt="Microsoft SQL Server 2012 Internals (Developer Reference)" />
      </a>
    </td>
    <td>
      <p>
        <strong><a href="http://amzn.to/2bBjZnQ">Microsoft SQL Server 2012 Internals (Developer Reference)</a></strong><br />
        <sup>by Kalen Delaney, Bob Beauchemin, Conor Cunningham, Jonathan Kehayias, Paul S. Randal, Benjamin Nevarez; Microsoft Press (Nov 2013)</sup>
      </p>
      <p>
        Explore the core engine of Microsoft SQL Server 2012—and put that practical knowledge to
        work. Led by a team of SQL Server experts, you’ll learn the skills you need to exploit key
        architectural features. Go behind the scenes to understand internal operations for creating,
        expanding, shrinking, and moving databases—whether you’re a database developer, architect,
        or administrator.
      </p>
    </td>
  </tr>
</table>

  * [Microsoft SQL Server Documentation](https://msdn.microsoft.com/library/mt590198.aspx) on MSDN
  * [User Profiles Data Model](http://www.databaseanswers.org/data_models/user_profiles/index.htm) on DatabaseAnswers.org
  * [Table Naming Dilemma: Singular vs. Plural Names](http://stackoverflow.com/a/5841297/82686) on StackOverflow.com

### License

Copyright © 2016 Membership Database contributors. This source code is licensed
under the MIT license found in the [LICENSE.txt](https://github.com/membership/membership.db/blob/master/LICENSE.txt)
file. The documentation to the project is licensed under the
[CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/) license.

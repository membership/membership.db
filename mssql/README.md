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

### License

Copyright © 2016 Membership Database contributors. This source code is licensed
under the MIT license found in the [LICENSE.txt](https://github.com/membership/membership.db/blob/master/LICENSE.txt)
file. The documentation to the project is licensed under the
[CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/) license.

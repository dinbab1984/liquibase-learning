### Include SQL files
liquibase --changelog-file=changelogSQLFiles.xml update-sql
liquibase --changelog-file=changelogSQLFiles.xml update

### change type
liquibase --changelog-file=changelog-changetype.xml update-sql
liquibase --changelog-file=changelog-changetype.xml update

### labels
//changeset with any matching labels in the list and ones without labels(e.g. L1 or L2 + no labels)
liquibase --changelog-file=changelog-labels.xml --labels="L1,L2" update-sql
//changeset with all matching labels in the list and ones without labels(e.g. both L1 and L2 + no labels)
liquibase --changelog-file=changelog-labels.xml --labels="L1 AND L2" update-sql
//changeset with one matching labels in the list and ones without labels(e.g.  L1 + no labels)
liquibase --changelog-file=changelog-labels.xml --labels="L1" update-sql
//changeset with non matching labels in the list and ones without labels (e.g. not L1 + no labels)
liquibase --changelog-file=changelog-labels.xml --labels="!L1" update-sql

### context
//changeset with any matching contexts in the list and ones without contexts(e.g. DEV or QA + no context)
liquibase --changelog-file=changelog-context.xml --contexts="DEV,QA" update-sql
//changeset with all matching contexts in the list and ones without contexts(e.g. both DEV and QA + no context)
liquibase --changelog-file=changelog-context.xml --contexts="DEV AND QA" update-sql
//changeset with one matching contexts in the list and ones without contexts(e.g.  DEV + QA context)
liquibase --changelog-file=changelog-context.xml --contexts="DEV" update-sql
//changeset with non matching contexts in the list and ones without contexts (e.g. not DEV + no conext)
liquibase --changelog-file=changelog-context.xml --contexts="!DEV" update-sql



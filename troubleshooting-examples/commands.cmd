## Validate changelog
liquibase --changelog-file=changelog.xml validate

## test rollback functionality
liquibase --changelog-file=update-testing-rollback.sql --log-level=INFO update-testing-rollback

## future-rollback-sql -- inspect sql used for rollback before/without running the rollback
liquibase --changelog-file=future-rollback-sql.sql --log-level=INFO future-rollback-sql

## check if there exists lock in DATABASECHANGELOGLOCK table
liquibase --changelog-file=changelog.xml list-locks

## release if there exists lock in DATABASECHANGELOGLOCK
liquibase --changelog-file=dbchangelog.xml release-locks

## clear-checksums
liquibase clear-checksums

## mark-next-changeset-ran (skip changeset and keep dbchangelog up-to-date) ,mark-next-changeset-ran-sql (validate sql without running) 
liquibase --changelog-file=mark-next-changeset-ran.sql mark-next-changeset-ran-sql
liquibase --changelog-file=mark-next-changeset-ran.sql mark-next-changeset-ran

## Status of pending changeset
liquibase --changelog-file=status-pending-changes.sql status 
liquibase --changelog-file=status-pending-changes.sql status --verbose

## deployed changes history
liquibase history

## Generate doc with deployed changes for various purposes
liquibase --changelog-file=changelog.xml db-doc 2023_09_21_db-doc




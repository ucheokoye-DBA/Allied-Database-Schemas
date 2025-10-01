# Allied Database Schemas - Table Listing Guide

This repository contains SQL Server database schema files for the Allied Database system. This guide provides comprehensive instructions on how to list all tables from these schema files.

## Quick Start

To get a complete list of all tables across all databases, run:

```bash
./extract_all_tables.sh
```

## Repository Contents

- **ProtechSchema.sql** - Main operational database (721 tables)
- **MTD_01.sql** - Mobile Tracking Device database (69 tables)  
- **ReportingSchema.sql** - Reporting and analytics database (38 tables)
- **extract_all_tables.sh** - Comprehensive table extraction script
- **list_all_tables.sql** - SQL documentation and reference guide

## Database Overview

### Total Tables: 817

| Database | Tables | Description |
|----------|--------|-------------|
| Protech | 721 | Main operational database containing core business logic |
| MTD_01 | 69 | Mobile Tracking Device database for GPS and tracking data |
| Reporting | 38 | Reporting and analytics database |

## Schema Breakdown

| Schema | Tables | Description |
|--------|--------|-------------|
| dbo | 774 | Default schema containing core application tables |
| Association | 3 | Association-related tables |
| Centurion | 12 | Centurion system integration tables |
| Court Management | 3 | Court-related data tables |
| FOTA | 5 | Firmware Over The Air update tables |
| Logging | 1 | Application logging tables |
| MSQTA | 6 | Query tuning and analysis tables |
| Offender Events | 3 | Offender event tracking tables |
| SQL Compliance | 1 | Database audit and compliance tables |
| Vehicle | 2 | Vehicle tracking tables |
| Visits | 7 | Offender visit management tables |

## Usage Examples

### 1. List All Tables (Formatted Report)
```bash
./extract_all_tables.sh
```

### 2. Get Raw Table List
```bash
grep -i "CREATE TABLE \[.*\]\.\[.*\]" *.sql | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort | uniq
```

### 3. Count Tables by Database
```bash
for file in *.sql; do 
    echo "$file: $(grep -c "CREATE TABLE \[.*\]\.\[.*\]" "$file") tables"
done
```

### 4. List Tables from Specific Database
```bash
# Protech database tables only
grep -i "CREATE TABLE \[.*\]\.\[.*\]" ProtechSchema.sql | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort

# MTD_01 database tables only  
grep -i "CREATE TABLE \[.*\]\.\[.*\]" MTD_01.sql | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort

# Reporting database tables only
grep -i "CREATE TABLE \[.*\]\.\[.*\]" ReportingSchema.sql | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort
```

### 5. List Tables by Schema
```bash
# DBO schema tables
grep -i "CREATE TABLE \[dbo\]" *.sql | sed 's/.*CREATE TABLE \[dbo\]\.\[\([^]]*\)\].*/\1/' | sort | uniq

# Visits schema tables
grep -i "CREATE TABLE \[visits\]" *.sql | sed 's/.*CREATE TABLE \[visits\]\.\[\([^]]*\)\].*/\1/' | sort

# Association schema tables
grep -i "CREATE TABLE \[Association\]" *.sql | sed 's/.*CREATE TABLE \[Association\]\.\[\([^]]*\)\].*/\1/' | sort
```

### 6. Search for Specific Tables
```bash
# Find tables containing "Offender" in the name
grep -i "CREATE TABLE.*Offender" *.sql

# Find tables containing "Device" in the name  
grep -i "CREATE TABLE.*Device" *.sql

# Find all MTD-related tables
grep -i "CREATE TABLE.*MTD" *.sql
```

### 7. Export Table List to File
```bash
# Export all tables to a text file
./extract_all_tables.sh > all_tables_report.txt

# Export just table names to CSV
grep -i "CREATE TABLE \[.*\]\.\[.*\]" *.sql | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1,\2/' | sort | uniq > tables.csv
```

## Key Table Categories

### Core Business Tables (dbo schema)
- **Demographics** - Person/entity information
- **Offenders** - Offender management 
- **Devices** - Hardware device tracking
- **Rules** - Business rule definitions
- **Contracts** - Contract management
- **Customers** - Customer information

### Mobile Tracking (MTD_01)
- **MTD_Positions** - GPS position data
- **MTD_Calls** - Device communication logs
- **Events** - System events
- **RulesInAlarm** - Active violations

### Reporting Tables
- **Report_EM_Positions** - Electronic monitoring positions
- **Report_MTDPositions** - Mobile tracking positions  
- **CaseMgmtNotes** - Case management notes
- **ViolationByType** - Violation summaries

### Specialized Schemas
- **visits.*** - Offender visit management
- **vehicle.*** - Vehicle tracking
- **fota.*** - Firmware update management
- **centurion.*** - Centurion system integration

## Command Line Tools Required

- **grep** - Pattern matching
- **sed** - Text manipulation
- **sort** - Sorting output
- **uniq** - Removing duplicates
- **wc** - Counting lines/words

## Notes

- All schema files are SQL Server format
- Tables use bracketed naming convention `[schema].[table]`
- Some tables may be temporary or development tables (prefixed with # or _)
- Schema files represent the complete database structure as of the file creation date

## Support

For questions about specific tables or database structure, refer to the individual SQL schema files or consult the database documentation.

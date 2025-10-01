#!/bin/bash

# =============================================
# Script: extract_all_tables.sh
# Author: Database Administrator
# Created: 2025-01-08
# Description: Extracts and lists all database tables from the Allied Database Schema files
# =============================================

echo "======================================================================"
echo "          ALLIED DATABASE SCHEMAS - TABLE EXTRACTION REPORT"
echo "======================================================================"
echo ""

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Check if SQL files exist
if [ ! -f "$SCRIPT_DIR/ProtechSchema.sql" ] || [ ! -f "$SCRIPT_DIR/MTD_01.sql" ] || [ ! -f "$SCRIPT_DIR/ReportingSchema.sql" ]; then
    echo "ERROR: One or more required SQL schema files not found!"
    echo "Expected files: ProtechSchema.sql, MTD_01.sql, ReportingSchema.sql"
    exit 1
fi

echo "SUMMARY:"
echo "--------"
echo "Schema Files Found:"
for file in "$SCRIPT_DIR"/*.sql; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        table_count=$(grep -c "CREATE TABLE \[.*\]\.\[.*\]" "$file")
        echo "  - $filename: $table_count tables"
    fi
done

total_tables=$(grep -c "CREATE TABLE \[.*\]\.\[.*\]" "$SCRIPT_DIR"/*.sql)
echo ""
echo "Total Tables Found: $total_tables"
echo ""

echo "======================================================================"
echo "                           DETAILED TABLE LISTING"
echo "======================================================================"
echo ""

# Extract all tables and organize by database
echo "1. PROTECH DATABASE TABLES"
echo "============================="
echo ""
protech_tables=$(grep -i "CREATE TABLE \[.*\]\.\[.*\]" "$SCRIPT_DIR/ProtechSchema.sql" | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort | uniq)

# Group Protech tables by schema
echo "DBO Schema Tables:"
echo "------------------"
echo "$protech_tables" | grep "^dbo\." | sed 's/dbo\./  - /' | head -20
echo "  ... and $(echo "$protech_tables" | grep -c "^dbo\.") total dbo tables"
echo ""

echo "Association Schema Tables:"
echo "-------------------------"
echo "$protech_tables" | grep "^Association\." | sed 's/Association\./  - /'
echo ""

echo "Centurion Schema Tables:"
echo "-----------------------"
echo "$protech_tables" | grep "^centurion\." | sed 's/centurion\./  - /'
echo ""

echo "Court Management Schema Tables:"
echo "------------------------------"
echo "$protech_tables" | grep "^courtmanagement\." | sed 's/courtmanagement\./  - /'
echo ""

echo "FOTA Schema Tables:"
echo "------------------"
echo "$protech_tables" | grep "^fota\." | sed 's/fota\./  - /'
echo ""

echo "Logging Schema Tables:"
echo "---------------------"
echo "$protech_tables" | grep "^logging\." | sed 's/logging\./  - /'
echo ""

echo "Offender Events Schema Tables:"
echo "-----------------------------"
echo "$protech_tables" | grep "^offenderevents\." | sed 's/offenderevents\./  - /'
echo ""

echo "Vehicle Schema Tables:"
echo "---------------------"
echo "$protech_tables" | grep "^vehicle\." | sed 's/vehicle\./  - /'
echo ""

echo "Visits Schema Tables:"
echo "--------------------"
echo "$protech_tables" | grep "^visits\." | sed 's/visits\./  - /'
echo ""

echo "SQL Compliance Schema Tables:"
echo "----------------------------"
echo "$protech_tables" | grep "^SQLcompliance" | sed 's/^/  - /'
echo ""

echo ""
echo "2. MTD_01 DATABASE TABLES"
echo "========================="
echo ""
mtd_tables=$(grep -i "CREATE TABLE \[.*\]\.\[.*\]" "$SCRIPT_DIR/MTD_01.sql" | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort | uniq)

echo "DBO Schema Tables:"
echo "------------------"
echo "$mtd_tables" | grep "^dbo\." | sed 's/dbo\./  - /'
echo ""

echo "Association Schema Tables:"
echo "-------------------------"
echo "$mtd_tables" | grep "^Association\." | sed 's/Association\./  - /'
echo ""

echo "MSQTA Schema Tables:"
echo "-------------------"
echo "$mtd_tables" | grep "^msqta\." | sed 's/msqta\./  - /'
echo ""

echo ""
echo "3. REPORTING DATABASE TABLES"
echo "============================"
echo ""
reporting_tables=$(grep -i "CREATE TABLE \[.*\]\.\[.*\]" "$SCRIPT_DIR/ReportingSchema.sql" | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort | uniq)

echo "DBO Schema Tables:"
echo "------------------"
echo "$reporting_tables" | grep "^dbo\." | sed 's/dbo\./  - /'
echo ""

echo "======================================================================"
echo "                              SUMMARY BY SCHEMA"
echo "======================================================================"
echo ""

# Count tables by schema across all databases
all_tables=$(grep -i "CREATE TABLE \[.*\]\.\[.*\]" "$SCRIPT_DIR"/*.sql | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort | uniq)

echo "Schema Distribution:"
echo "-------------------"
echo "DBO:                $(echo "$all_tables" | grep -c "^dbo\.")"
echo "Association:        $(echo "$all_tables" | grep -c "^Association\.")"
echo "Centurion:          $(echo "$all_tables" | grep -c "^centurion\.")"
echo "Court Management:   $(echo "$all_tables" | grep -c "^courtmanagement\.")"
echo "FOTA:               $(echo "$all_tables" | grep -c "^fota\.")"
echo "Logging:            $(echo "$all_tables" | grep -c "^logging\.")"
echo "MSQTA:              $(echo "$all_tables" | grep -c "^msqta\.")"
echo "Offender Events:    $(echo "$all_tables" | grep -c "^offenderevents\.")"
echo "SQL Compliance:     $(echo "$all_tables" | grep -c "^SQLcompliance")"
echo "Vehicle:            $(echo "$all_tables" | grep -c "^vehicle\.")"
echo "Visits:             $(echo "$all_tables" | grep -c "^visits\.")"
echo ""
echo "Total Tables:       $(echo "$all_tables" | wc -l)"

echo ""
echo "======================================================================"
echo "                                COMPLETE"
echo "======================================================================"
echo ""
echo "Table extraction completed successfully!"
echo "For a complete list of all tables, run:"
echo "  grep -i \"CREATE TABLE \\[.*\\]\\.\\[.*\\]\" *.sql | sed 's/.*CREATE TABLE \\[\\([^]]*\\)\\]\\.\\[\\([^]]*\\)\\].*/\\1.\\2/' | sort | uniq"
echo ""
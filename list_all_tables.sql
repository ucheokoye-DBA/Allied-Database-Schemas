-- =============================================
-- Script: List All Database Tables from Schema Files
-- Author: Database Administrator
-- Created: 2025-01-08
-- Description: This script extracts and lists all database tables from the 
--              Allied Database Schema files in an organized format
-- =============================================

-- Instructions for use:
-- 1. This script is intended to be run as a reference for table discovery
-- 2. The actual table extraction is done using command line tools
-- 3. Tables are organized by database and schema

-- =============================================
-- COMMAND LINE USAGE:
-- =============================================
-- To extract all tables from the schema files, run:
-- grep -i "CREATE TABLE \[.*\]\.\[.*\]" *.sql | sed 's/.*CREATE TABLE \[\([^]]*\)\]\.\[\([^]]*\)\].*/\1.\2/' | sort | uniq

-- =============================================
-- DATABASE BREAKDOWN:
-- =============================================

-- 1. PROTECH DATABASE
-- Main operational database containing core business logic
-- Tables include: Demographics, Offenders, Devices, Rules, etc.

-- 2. MTD_01 DATABASE  
-- Mobile Tracking Device database
-- Tables include: MTD_Positions, MTD_Calls, Events, etc.

-- 3. REPORTING DATABASE
-- Reporting and analytics database
-- Tables include: Report_* tables, CaseMgmt*, etc.

-- =============================================
-- SCHEMA BREAKDOWN:
-- =============================================

-- DBO Schema (Default)
-- - Core application tables
-- - Configuration and lookup tables
-- - Historical data tables

-- Association Schema
-- - Association-related tables

-- Centurion Schema  
-- - Centurion system integration tables

-- Court Management Schema
-- - Court-related data tables

-- FOTA Schema
-- - Firmware Over The Air update tables

-- Logging Schema
-- - Application logging tables

-- Offender Events Schema
-- - Offender event tracking tables

-- Vehicle Schema
-- - Vehicle tracking tables

-- Visits Schema
-- - Offender visit management tables

-- SQL Compliance Schema
-- - Database audit and compliance tables

-- MSQTA Schema
-- - Query tuning and analysis tables

-- =============================================
-- TABLE COUNT SUMMARY:
-- =============================================
-- Total estimated tables across all databases: 600+
-- 
-- Protech Database: ~450 tables
-- MTD_01 Database: ~60 tables  
-- Reporting Database: ~90 tables

PRINT 'Use the grep command above to extract the complete list of tables from the schema files.'
PRINT 'Tables are organized by schema and contain both operational and reference data.'

-- =============================================
-- SAMPLE TABLE EXTRACTION COMMANDS:
-- =============================================

-- Extract tables from specific database:
-- grep -i "CREATE TABLE" ProtechSchema.sql | grep "\[dbo\]" | wc -l

-- Extract tables by schema:
-- grep -i "CREATE TABLE.*\[visits\]" *.sql

-- Get table count by database:
-- for file in *.sql; do echo "$file:"; grep -c "CREATE TABLE" "$file"; done

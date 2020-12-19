/*
 Navicat Premium Data Transfer

 Source Server         : localhostOracle
 Source Server Type    : Oracle
 Source Server Version : 120100
 Source Host           : localhost:1521
 Source Schema         : SYSTEM

 Target Server Type    : Oracle
 Target Server Version : 120100
 File Encoding         : 65001

 Date: 19/12/2020 13:11:31
*/


-- ----------------------------
-- Table structure for NEWS
-- ----------------------------
DROP TABLE "SYSTEM"."NEWS";
CREATE TABLE "SYSTEM"."NEWS" (
  "ID" NUMBER VISIBLE NOT NULL,
  "TYPE" VARCHAR2(255 BYTE) VISIBLE,
  "TITLE" VARCHAR2(255 BYTE) VISIBLE,
  "CONTENT" VARCHAR2(255 BYTE) VISIBLE
)
TABLESPACE "SYSTEM"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Primary Key structure for table NEWS
-- ----------------------------
ALTER TABLE "SYSTEM"."NEWS" ADD CONSTRAINT "SYS_C0010257" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table NEWS
-- ----------------------------
ALTER TABLE "SYSTEM"."NEWS" ADD CONSTRAINT "SYS_C0010256" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table NEWS
-- ----------------------------
CREATE TRIGGER "SYSTEM"."INSERT_NEW_AUTOINC" BEFORE INSERT ON "SYSTEM"."NEWS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
begin
SELECT news_autoinc.nextval INTO :new.id FROM dual;
end insert_new_autoinc;
/

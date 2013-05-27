DROP DATABASE IF EXISTS `ganshahao`;
CREATE DATABASE `ganshahao` character set utf8;
USE `ganshahao`;

DROP TABLE IF EXISTS `user`;
CREATE TABLE user(
    id              int unsigned    NOT NULL auto_increment,
    nick_name       varchar(255)    NOT NULL DEFAULT 'nick_name',
    email           varchar(255)    NOT NULL DEFAULT '',
    password        varchar(255)    NOT NULL DEFAULT '',
    description     varchar(255)    NOT NULL DEFAULT '',
    zip_code        int(6)          NOT NULL DEFAULT 200001,
    resume          varchar(255)    NOT NULL DEFAULT '',
    available_time  varchar(255)    NOT NULL DEFAULT '',
    real_name       varchar(255)    NOT NULL DEFAULT '',
    is_veteran      BOOL            NOT NULL DEFAULT 0,
    primary key(id)
)Engine=InnoDB;

DROP TABLE IF EXISTS `company`;
CREATE TABLE company(
    id              int unsigned    NOT NULL auto_increment, 
    name            varchar(255)    NOT NULL DEFAULT '',
    description     varchar(255)    NOT NULL DEFAULT '',
    primary key(id)
)Engine=InnoDB;

DROP TABLE IF EXISTS `job`;
CREATE TABLE job(
    id              int unsigned    NOT NULL auto_increment, 
    company_id      int unsigned    NOT NULL,
    name            varchar(255)    NOT NULL DEFAULT '',
    updated_time    datetime        NOT NULL DEFAULT 0,
    description     varchar(255)    NOT NULL DEFAULT '',
    address         varchar(255)    NOT NULL DEFAULT '',
    zip_code        int(6)          NOT NULL DEFAULT 200001,
    salary          int             NOT NULL DEFAULT 0,
    primary key(id)
)Engine=InnoDB;

DROP TABLE IF EXISTS `training`;
CREATE TABLE training(
    id              int unsigned    NOT NULL auto_increment, 
    job_id          int unsigned    NOT NULL DEFAULT 0,
    name            varchar(255)    NOT NULL DEFAULT '',
    description     varchar(255)    NOT NULL DEFAULT '',
    primary key(id)
)Engine=InnoDB;

DROP TABLE IF EXISTS `question`;
CREATE TABLE question(
    id              int unsigned    NOT NULL auto_increment, 
    training_id     int unsigned    NOT NULL DEFAULT 0,
    content         varchar(255)    NOT NULL DEFAULT '',
    choices         varchar(255)    NOT NULL DEFAULT '',
    answer          tinyint(1)      NOT NULL DEFAULT 0,
    primary key(id)
)Engine=InnoDB;

DROP TABLE IF EXISTS `training_completed`;
CREATE TABLE training_completed(
    id              int unsigned    NOT NULL auto_increment, 
    training_id     int unsigned    NOT NULL DEFAULT 0,
    user_id         int unsigned    NOT NULL DEFAULT 0,
    primary key(id)
)Engine=InnoDB;

DROP TABLE IF EXISTS `job_application`;
CREATE TABLE job_application(
    id              int unsigned    NOT NULL auto_increment, 
    job_id          int unsigned    NOT NULL DEFAULT 0,
    user_id         int unsigned    NOT NULL DEFAULT 0,
    status          tinyint         NOT NULL DEFAULT 0,
    primary key(id)
)Engine=InnoDB;
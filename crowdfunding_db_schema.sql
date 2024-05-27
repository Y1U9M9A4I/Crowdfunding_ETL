-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

drop table if exists "Category";
drop table if exists "Subcategory";
drop table if exists "Contacts";
drop table if exists "Campaign";

CREATE TABLE "Category" (
    "category_id" varchar(150) NOT NULL,
    "category" varchar(150) NOT NULL,
    PRIMARY KEY ("category_id")
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(150) NOT NULL,
    "subcategory" varchar(150) NOT NULL,
    PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "Contacts" (
    "contact_id" int NOT NULL,
    "first_name" varchar(150) NOT NULL,
    "last_name" varchar(150) NOT NULL,
    "email" varchar(150) NOT NULL,
    PRIMARY KEY ("contact_id")
);

CREATE TABLE "Campaign" (
    "cf_id" int NOT NULL,
    "contact_id" int NOT NULL,
    "company_name" varchar(150) NOT NULL,
    "description" varchar(150) NOT NULL,
    "goal" decimal NOT NULL,
    "pledged" decimal NOT NULL,
    "backers_count" int NOT NULL,
    "country" varchar(5) NOT NULL,
    "currency" varchar(5) NOT NULL,
    "launch_date" date NOT NULL,
    "end_date" date NOT NULL,
    "category_id" varchar(150) NOT NULL,
    "subcategory_id" varchar(150) NOT NULL,
    PRIMARY KEY ("cf_id"),
	FOREIGN KEY ("category_id") REFERENCES "Category"("category_id"),
	FOREIGN KEY ("subcategory_id") REFERENCES "Subcategory"("subcategory_id"),
	FOREIGN KEY ("contact_id") REFERENCES "Contacts"("contact_id")
);

SELECT * FROM "Category";
SELECT * FROM "Subcategory";
SELECT * FROM "Contacts";
SELECT * FROM "Campaign";
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "state_race" (
    "Location" varchar   NOT NULL,
    "White" float   NOT NULL,
    "Black" float   NOT NULL,
    "Hispanic" float   NOT NULL,
    "Asian" float   NOT NULL,
    "American_Indian/Alaska_Native" float   NOT NULL,
    "Hawaiian/Other_Pacific_Islander" float   NOT NULL,
    "Two_Or_More_Races" float   NOT NULL,
    CONSTRAINT "pk_state_race" PRIMARY KEY (
        "Location"
     )
);

CREATE TABLE "state_urbanization" (
    "state" varchar   NOT NULL,
    "urbanindex" float   NOT NULL,
    CONSTRAINT "pk_state_urbanization" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "state_elasticity" (
    "state" varchar   NOT NULL,
    "elasticity" float   NOT NULL,
    CONSTRAINT "pk_state_elasticity" PRIMARY KEY (
        "state"
     )
);

ALTER TABLE "state_urbanization" ADD CONSTRAINT "fk_state_urbanization_state" FOREIGN KEY("state")
REFERENCES "state_race" ("Location");

ALTER TABLE "state_elasticity" ADD CONSTRAINT "fk_state_elasticity_state" FOREIGN KEY("state")
REFERENCES "state_race" ("Location");


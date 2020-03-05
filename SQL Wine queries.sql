CREATE TABLE white_wine (
    fixed_acidity float NOT NULL,
    volatile_acidity float  NOT NULL,
    citric_acid float NOT NULL,
	residual_sugar float NOT NULL,
	chlorides float NOT NULL,
	free_sulfur_dioxide float NOT NULL,
	total_sulfur_dioxide float NOT NULL,
	density float NOT NULL,
	pH float NOT NULL,
	sulphates float NOT NULL,
	alcohol float NOT NULL,
	quality float NOT NULL
);
CREATE TABLE red_wine (
    fixed_acidity float NOT NULL,
    volatile_acidity float  NOT NULL,
    citric_acid float NOT NULL,
	residual_sugar float NOT NULL,
	chlorides float NOT NULL,
	free_sulfur_dioxide float NOT NULL,
	total_sulfur_dioxide float NOT NULL,
	density float NOT NULL,
	pH float NOT NULL,
	sulphates float NOT NULL,
	alcohol float NOT NULL,
	quality float NOT NULL
);

ALTER TABLE red_wine
ADD type varchar;

ALTER TABLE white_wine
ADD type varchar;

ALTER TABLE red_wine ALTER type SET DEFAULT 'red';
ALTER TABLE white_wine ALTER type SET DEFAULT 'white';

SELECT sulphates, chlorides, alcohol, quality FROM red_wine ORDER BY quality DESC;
SELECT sulphates, chlorides, alcohol, quality FROM white_wine ORDER  BY quality DESC;



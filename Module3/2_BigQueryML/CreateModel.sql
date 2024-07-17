/*
  Description: Query to create an ML model to predict penguin body mass.
*/

# creating an ML model
CREATE OR REPLACE MODEL `bqml_tutorial.penguins_model`

# specifying that a linear regression model will be created
# and the body mass column will be used as the labels (what will be predicted)
OPTIONS
  (model_type='linear_reg', input_label_cols=['body_mass_g']) AS

# select all columns
SELECT
  *

# acquiring data from a public dataset in BigQuery
FROM
  `bigquery-public-data.ml_datasets.penguins`

# exluding rows with null body mass
WHERE
  body_mass_g IS NOT NULL
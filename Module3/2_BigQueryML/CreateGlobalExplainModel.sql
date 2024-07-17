/*
  Description: Query to create an ML model but with global explanations enabled.
*/

CREATE OR REPLACE MODEL bqml_tutorial.penguins_model

# note that in the options, enable_global_explain is added and set to TRUE
OPTIONS
  (model_type='linear_reg',
  input_label_cols=['body_mass_g'],
  enable_global_explain=TRUE) AS

SELECT
  *

FROM
  `bigquery-public-data.ml_datasets.penguins`

WHERE
  body_mass_g IS NOT NULL
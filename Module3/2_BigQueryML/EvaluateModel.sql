/*
  Description: Query that evaluates the created ML model.
*/

# select all columns from the model
SELECT
  *

FROM
  # using ML.EVALUATE against the created model
  ML.EVALUATE(MODEL `bqml_tutorial.penguins_model`,
    (
      # same query as CREATE MODEL
      SELECT
        *

      FROM
        `bigquery-public-data.ml_datasets.penguins`
      
      WHERE
        body_mass_g IS NOT NULL
    )
  )
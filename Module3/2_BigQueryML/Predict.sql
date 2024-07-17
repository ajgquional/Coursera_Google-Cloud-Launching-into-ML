/*
  Description: Query to predict body mass using the created model.
*/

# retrieves the predicted body mass column as well as all columns in the public dataset
SELECT
  *

FROM
  # using the model to predict resutls
  ML.PREDICT(MODEL `bqml_tutorial.penguins_model`,
    (
      # same query as CREATE MODEL
      SELECT
        *

      FROM
        `bigquery-public-data.ml_datasets.penguins`
      
      # limiting the prediction to only the island of Biscoe
      WHERE
        body_mass_g IS NOT NULL
        AND island = "Biscoe"
    )
  )
/*
  Description: Query to explain prediction results using Explainable AI.
*/

SELECT
  *

FROM
  # returns prediction results with additional columns that explain those results 
  ML.EXPLAIN_PREDICT(MODEL `bqml_tutorial.penguins_model`,
    (
      SELECT
        *
      
      FROM
        `bigquery-public-data.ml_datasets.penguins`
      
      WHERE
        body_mass_g IS NOT NULL
        AND island = "Biscoe"
    ), 
    
    # outputs Top 3 feature attributions per row of the table
    STRUCT(3 as top_k_features)
  )
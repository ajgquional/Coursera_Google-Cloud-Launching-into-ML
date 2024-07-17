/*
  Description: Query to generate global explanations for the model.
*/

SELECT
  *

# accessing global explanations through the GLOBAL_EXPLAIN function
FROM
  ML.GLOBAL_EXPLAIN(MODEL `bqml_tutorial.penguins_model`)
MODEL (
  name sqlmesh_example.full_model,
  kind FULL,
  cron '@daily',
  grain item_id,
  audits (assert_positive_order_ids),
);

SELECT
  item_id,
  COUNT(DISTINCT id) AS num_orders,
  -- Error: Failed to load model definition at '/app/models/full_model.sql'.
  -- cannot import name '_generate_next_value_' from 'enum' (/usr/local/lib/python3.13/enum.py)
  -- commenting out ANY of the 2 lines below makes the import error disappear
  @macro1() AS fieldA,
  @macro2() AS fieldB,
FROM
  sqlmesh_example.incremental_model
GROUP BY item_id
  
-- Hash-based row-level validation
SELECT COUNT(*) AS mismatches
FROM (
  SELECT id, MD5(CONCAT_WS('|', col1, col2, col3)) AS hash
  FROM source_table
  EXCEPT
  SELECT id, MD5(CONCAT_WS('|', col1, col2, col3)) AS hash
  FROM target_table
) AS diffs;

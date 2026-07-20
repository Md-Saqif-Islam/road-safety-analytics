-- View the first 20 rows to check the data
SELECT * FROM fatalities_raw LIMIT 20;

-- Count total rows
SELECT COUNT(*) AS total_rows FROM fatalities_raw;



-- List every column name and their data type
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'fatalities_raw'
ORDER BY ordinal_position;


-- Count how many rows have a blank or unknown-code in key columns.
-- All columns are text (VARCHAR), so check for NULL, blank (''),
-- and unknown codes like '-9'.

SELECT
  COUNT(*) FILTER (
    WHERE "Age" IS NULL
       OR TRIM("Age") IN ('', '-9')
  ) AS missing_age,

  COUNT(*) FILTER (
    WHERE "Speed Limit" IS NULL
       OR TRIM("Speed Limit") IN ('', '-9')
  ) AS missing_speed,

  COUNT(*) FILTER (
    WHERE "Gender" IS NULL
       OR TRIM("Gender") IN ('', '-9', 'Unknown')
  ) AS missing_gender,

  COUNT(*) FILTER (
    WHERE "Road User" IS NULL
       OR TRIM("Road User") IN ('', '-9')
  ) AS missing_road_user

FROM fatalities_raw;



-- Find the crash IDs that appear more than once ( this is expected as one crash can kill more than one person)
SELECT "Crash ID", COUNT(*) AS rows_for_this_crash
FROM fatalities_raw
GROUP BY "Crash ID"
HAVING COUNT(*) > 1
ORDER BY rows_for_this_crash DESC
LIMIT 20;
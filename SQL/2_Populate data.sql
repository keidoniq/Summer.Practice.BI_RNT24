-- Step 1. Populate data to the table "game.ip_addresses"
INSERT INTO game.ip_addresses (ip_address)
SELECT DISTINCT
    s.ip_address AS ip_address
FROM game.sessions AS s;

-- Step 2. Update the table "game.ip_addresses"
UPDATE game.ip_addresses
SET is_banned = TRUE
WHERE ip_address IN (
    '192.168.102.190',
    '192.168.106.11',
    '192.168.69.225',
    '192.168.44.213',
    '192.168.125.80'
);
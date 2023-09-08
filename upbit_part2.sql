SELECT
    d.member_uuid,
    d.currency,
    d.amount,
    m.first_name,
    m.last_name,
    m.birthday,
    m.gender,
    m.nationality,
    m.country_of_birth,
    m.country_location
FROM
    deposits d
JOIN
    memberinfopersonal m
ON
    d.member_uuid = m.member_uuid
WHERE
    d.currency = 'THB'
    AND d.amount >= 5000000
ORDER BY
    d.amount DESC;
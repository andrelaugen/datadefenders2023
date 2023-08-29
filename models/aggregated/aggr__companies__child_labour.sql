select distinct
    ci.reprisk_company_id,
    ci.INCIDENT_DATE,
    cr.company_name,
    related_countries,
    child_labor
from {{ ref("raw__company_incidents") }} ci
join {{ ref("companies_rated") }} cr on cr.reprisk_company_id = ci.reprisk_company_id
where child_labor = true

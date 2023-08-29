select distinct
    ci.reprisk_company_id,
    month(ci.INCIDENT_DATE_date) as INCIDENT_by_month,
    cr.company_name,
    related_countries,
    animal_mistreatment
from {{ ref("raw__company_incidents") }} ci
join {{ ref("companies_rated") }} cr on cr.reprisk_company_id = ci.reprisk_company_id
where animal_mistreatment = true

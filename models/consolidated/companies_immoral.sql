select distinct
    ci.reprisk_company_id,
    cr.company_name,
    related_countries,
    animal_mistreatment,
    child_labor
from {{ ref("raw__company_incidents") }} ci
join {{ ref("companies_rated") }} cr on cr.reprisk_company_id = ci.reprisk_company_id
where animal_mistreatment = true or child_labor = true

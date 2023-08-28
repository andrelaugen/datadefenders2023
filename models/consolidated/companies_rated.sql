select
    pcs.reprisk_company_id,
    pcs.company_name,
    pcs.headquarters,
    pcs.sectors,
    pcs.company_lei,
    mpcs.time_slot_name,
    mpcs.current_rri,
    mpcs.trend_rri,
    mpcs.peak_rri,
    mpcs.peak_rri_date,
    mpcs.reprisk_rating
from {{ ref("raw__company_identifier") }} pcs
join
    {{ ref("raw__company_matrices") }} mpcs
    on pcs.reprisk_company_id = mpcs.reprisk_company_id
order by mpcs.time_slot_name

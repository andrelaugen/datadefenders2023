select reprisk_company_id, company_name, max(peak_rri) as peak_rri_max
from {{ ref('companies_rated') }}
group by reprisk_company_id, company_name
order by peak_rri_max desc

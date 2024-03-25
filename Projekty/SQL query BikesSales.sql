select prod.product_name,cat.category_name,brand_name, prod.list_price, ord.quantity,
(prod.list_price * ord.quantity) as revenue,o.order_date, (st.first_name + ' ' + st.last_name) as FullName, store.store_name
from [production].[products] as prod
join [sales].[order_items] as ord
on ord.product_id = prod.product_id
join [production].[categories] as cat
on prod.category_id = cat.category_id
join  [production].[brands] as br
on br.brand_id = prod.brand_id
join  [sales].[orders] as o
on o.order_id = ord.order_id
join [sales].[staffs] as st
on st.staff_id = o.staff_id
join [sales].[stores] as store
on store.store_id = st.store_id
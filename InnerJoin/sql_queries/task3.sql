SELECT DISTINCT
	product_title.title,
	product.price
FROM
	product_title
	INNER JOIN
	product
	ON product_title.id = product.product_title_id
	INNER JOIN
	product_category
	ON product_title.product_category_id = product_category.id
	INNER JOIN order_details
	ON product.id = order_details.product_id
	INNER JOIN customer_order
	ON order_details.customer_order_id = customer_order.id
	INNER JOIN customer
	ON customer_order.customer_id = customer.person_id
	INNER JOIN person
	ON customer.person_id = person.id
	WHERE person.birth_date BETWEEN '2000-01-01' AND '2010-12-31'

ORDER BY product_title.title, product.price;


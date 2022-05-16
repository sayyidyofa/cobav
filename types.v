module main

struct Response {
	data []string
	pagination Pagination
}

struct Pagination {
	last_visible_page int
	has_next_page bool
	items Items
}

struct Items {
	count int
	total int
	per_page int
}
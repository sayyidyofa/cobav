module main

struct APIResponse {
	data []Data
	pagination Pagination
}

struct Data {
	mal_id int
	url string
	title string
	anime_type string [json: "type"]
	genres []Genre
}

struct Genre {
	mal_id int
	name string
	genre_type string [json: "type"]
	url string
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
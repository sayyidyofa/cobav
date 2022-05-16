module main

import net.http
import json

fn main() {
    resp := http.get('https://api.jikan.moe/v4/anime?q=senko') or {
        println('failed to fetch data from the server')
        return
    }

    senko_result := json.decode(Response, resp.text) or {
        eprintln('failed to decode the response body')
        return
    }

    println(senko_result.pagination.items.per_page)
}
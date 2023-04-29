#!/bin/bash

api="https://bettercallsaul-api.onrender.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_all_characters() {
    curl --request GET \
        --url "$api/characters" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_random_character() {
    curl --request GET \
		--url "$api/characters/random" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_character_by_name_and_status() {
    # 1 - name: (string): <name - required>
    # 2 - status: (string): <status - required>
    curl --request GET \
		--url "$api/characters?name=$1&status=$2" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_character_by_id() {
    # 1 - character_id: (string): <character_id - required>
    curl --request GET \
		--url "$api/characters/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_all_episodes() {
    curl --request GET \
		--url "$api/episodes" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_random_episode() {
    curl --request GET \
		--url "$api/episodes/random" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_episode_by_id() {
    # 1 - episode_id: (string): <episode_id - required>
    curl --request GET \
		--url "$api/episodes/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_episode_by_name_and_status() {
    # 1 - name: (string): <name - required>
    # 2 - status: (string): <status - required>
    curl --request GET \
		--url "$api/episodes?name=$1&status=$2" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_all_quotes() {
    curl --request GET \
		--url "$api/quotes" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_random_quote() {
    curl --request GET \
		--url "$api/quotes/random" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_quote_by_id() {
    # 1 - quote_id: (string): <quote_id - required>
    curl --request GET \
		--url "$api/quotes/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_quote_by_author() {
    # 1 - author: (string): <author - required>
    curl --request GET \
		--url "$api/quotes?author=$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

# compose up
dcu() {
    docker compose up
}

# compose up detached
dcud() {
    docker compose up -d
}

# compose dev up
dcdu() {
    docker compose -f docker-compose.dev.yml up
}

# compose down
dcd() {
    docker compose down "$@"
}

# compose exec
dce() {
    docker compose exec "$@"
}

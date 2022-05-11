# compose up
dcu() {
    docker compose up
}

# compose up detached
dcud() {
    docker compose up -d
}

# compose down
dcd() {
    docker compose down
}

# compose exec
dce() {
    docker compose exec "$@"
}

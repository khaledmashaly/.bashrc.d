# compose dev up
dcu() {
    docker compose -f docker-compose.dev.yml up --remove-orphans -t 1 "$@"
}

# compose dev exec
dce() {
    docker compose -f docker-compose.dev.yml exec "$@"
}

# compose prod up
dpu() {
    docker compose up "$@"
}

# compose prod exec
dpe() {
    docker compose exec "$@"
}

# compose down
dcd() {
    docker compose -f docker-compose.dev.yml down -v --remove-orphans -t 1 "$@"
}

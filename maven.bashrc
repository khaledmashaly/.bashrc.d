# compile
mc() {
    ./mvnw clean compile
}

# test
mt() {
    ./mvnw clean test
}

# spring boot run
mr() {
    SPRING_PROFILES_ACTIVE=dev ./mvnw clean spring-boot:run
}

# install
mi() {
   ./mvnw clean install
}

# deploy
md() {
   ./mvnw clean deploy
}

# setup wrapper
msw() {
    mvn -N io.takari:maven:wrapper
}

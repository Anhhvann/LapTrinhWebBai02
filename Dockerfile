# ------------------------
# Stage 1: Build with Maven + JDK
# ------------------------
FROM maven:3.9.2-eclipse-temurin-17 AS build

# Thư mục làm việc
WORKDIR /app

# Copy pom.xml và src
COPY pom.xml .
COPY src ./src

# Build project (tạo jar hoặc war)
RUN mvn clean package -DskipTests

# ------------------------
# Stage 2: Runtime
# ------------------------
FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy jar/war từ stage build
# Giả sử Maven tạo jar trong target/*.jar
COPY --from=build /app/target/*.jar app.jar

# Mở port 8080 (thường servlet container chạy trên port này)
EXPOSE 8080

# Lệnh chạy ứng dụng
CMD ["java", "-jar", "app.jar"]

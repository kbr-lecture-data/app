# 베이스 이미지 (jar 실행을 위한 jdk 이미지)
FROM openjdk-17-jdk
# 작성자 라벨 생성
LABEL maintainer="kangbroo <teacherboram@gmail.com>"
# 버전 라벨 생성
LABEL version="1.0.0"
# 빌드시에만 사용할 변수 선언
ARG JAR_FILE_PATH=build/libs/*.jar
# root 디렉토리에 app.jar라는 이름으로 파일 복사
COPY ${JAR_FILE_PATH} app.jar
# 컨테이너 실행시 바로 복사된(빌드된)app.jar 자동 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
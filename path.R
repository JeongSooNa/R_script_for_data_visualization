### first test script in RStudio

### R 설치 경로 확인
R.home()
### working 디렉토리 확인 및 설정 
getwd()
setwd()
### 라이브러리(패키지)가 저정되어 있는 경로 확인
.libPaths()
### 새로운 디렉터리 만들기 
dir.create()
### 디렉터리 존재 여부 확인
dir.exists()
### 문자열 → 파일경로 
file.path()
### 운영체제에 따라서 자동으로 경로 표시 해줌 
normalizePath()
### 홈 디렉터리 절대경로 표시 
path.expand()
### R 시스템 파일 접근하기
system.file()
### 경로에서 파일이름과 디렉터리경로 분리하기
basename()
dirname()

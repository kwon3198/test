##종합 포트폴리오

###200-10-16
-샵 메인홈에 썸네일용 사진 구현 OK
-사진 업로드후 폴더 새로고침 OK

###2020-10-14
-헤로쿠클라우드 업로드는 성공
-오류 수정 필요

###2020-10-13
-사진저장 경로 수정
-SHOP 메인 홈페이지에 상품정보 반복문 작성중
-사진 출력 X(사이즈 조정시 나올듯함)
###2020-10-06
-어드민단 뷰,리스트에 프로필사진 구현완료
-사용자단 메인홈페이지 상품출력 수정중 

###2020-09-28
-c태그를 이용하여 SHOP페이지 사용자단 브랜드와 카테고리 메뉴를 구현
-이미지 업로드 구현중(No bean named 'uploadPath' 이 에러 뜰시 root-context와 servlet-context의 component-scan 경로가 겹치는 확인 )

###2020-09-25
-카테고리 따로 분류화 완료
-어드민단 데이터 삽입완료
-브랜드도 따로 분류화 작업중
-카테고리 수정필요
-브랜드는 list,insert까지 완료
-어드민단 카테고리,브랜드 CRUD 구현 완료 (insert시 중복체크도 완료)

###2020-09-22
-사용자단 회원탈퇴 구현
-데이터베이스 조정 및 더미데이터 삽입 완료
-어드민단 CRUD 구현완료 

###2020-09-21
-쇼핑카트,결제창 페이지 만듬(기능은 아직 구현 x)
-상품 리스트, 상세보기 더미데이터 작성(MySQL사용)
-어드민단 상품 상세보기,리스트 구현중 

###2020-09-19
-c태그를 사용하여 로그인을 해야 내정보 확인창과 찜 목록을  볼 수 있도록 작업
-마이페이지 정보 업데이트가능 삭제는 아직 구현 x
-컨텍트,제품,디테일 페이지 만듬(기능은 아직 구현 x)

###2020-09-18
-로고교체(E-SHOPPER -> K-SHOP)
-로그인페이지 컨트롤러 조정
-로그인페이지 팝업창으로 대체 로그인후 이전페이지 리프레쉬 설정(아래 설명)
-(로그인후 로그인오케이 페이지로 이동후 자동창꺼짐 구현
-로그인오케이 페이지가 꺼지면 어미페이지리레쉬
-스프링 시큐리티적용 완료) 
-데이터베이스 생성 더미데이터 삽입완료
-소셜사이트 로그인 구현(현재는 네이버만)
-홈화면에 세션값 전달 가능
-관리자단 아이디 중복 체크 RestAPI적용
-SHOP 회원가입 창 구현 (회원가입시 아이디 중복체크 적용, 관리자단도 적용)
-팝업(로그인,회원가입)성공화면 하나로 통일
-SHOP 마이페이지 내정보 상세보기 구현전


###2020-09-17
-쇼핑사이트 구현예정 메인홈 구현완료
-타일즈 레이아웃 템플릿 적용 예정X나중에
-일단 include로 헤더푸터 나눔
-로그인단과 회원가입단 분리

###2020-09-01~2020-09-16
-멤버CRUD구현완료 각종 메인홈만 구현 (기능추가예정)

###참고자료 링크
-ESHOPPER CSS 템플릿 : https://www.free-css.com/free-css-templates/page203/e-shopper
-AdminLTE :
-로고제작사이트 : https://hatchful.shopify.com/
-메인홈페이지 CSS 템플릿 : https://tympanus.net/codrops/2020/09/01/diagonal-thumbnail-slideshow-animation/

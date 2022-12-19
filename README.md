# Jogong

팀명: 조공
제목: 선물하기
개요: 주변 친구들과 선물을 주고 받을 수 있는 플랫폼
구현기능:
- 회원가입(개인, 기업) / 로그인 / SNS로그인 / 마이페이지(회원정보 수정) / 아이디, 비밀번호찾기
- 상품결제(친구에게, 자신에게)
- 고객센터(1:1문의, F&Q, 공지사항)
- 브랜드별 페이지(브랜드 조회,테마별 조회)
- 테마별 페이지(테마별 상품 조회)
- 리뷰페이지
- 통합검색 페이지
- 선물함(보낸선물함, 받은선물함)
- 장바구니
- 위시리스트
- 친구 기능 (친구 조회, 친구 요청, 친구 수락, 친구 위시리스트 보기)
- 이벤트 페이지


사용기술 및 개발환경:
Tools : Spring Tool Suite 3.9.18,GitHub, Figma, Notion,  
OS : Windows 10

[Back-End]
- Language : Java
- Framework : Spring, MyBatis
- Server : Apache Tomcat 9.0
- Database : mysql

[Front-End]
- Web : CSS, HTML5, JavaScript, JSP, AJAX, jQuery
- API : Bootstrap5, Naver 로그인, Kakao 로그인, Daum 주소찾기, 아임포트 결제 api

<hr/>

# Project

### 🗂 프로젝트 설명

<pre>
“ 선물하기 플랫폼, Jogong ! ”

부모님, 친구, 연인에게 소중한 사람에게 선물할 수 있는 플랫폼입니다 :)
</pre>


### 📆 Project Timeline

- 기간 : 2022.09.18 ~ 2022.10.16
- 개발 언어 : Java, Javascript
- 개발 라이브러리 : JSP
- 개발 프레임워크 : Spring Framework
- 배포 환경 : -
- 협업 툴 : Git / Notion / Figma


## ✨ 페이지 별 기능
- **`선물함`**
  </br>
  선물함에서 친구에게 보낸 선물과 친구에게 받은 선물들을 확인해볼 수 있습니다.
  특히 받은 선물함에서는 친구가 선물과 함께 보낸 메세지 카드와 배너를 같이 볼 수 있으며,
  선물을 받을 주소 또한 변경할 수 있습니다.
  
  
- **`브랜드별`**
  </br>
  브랜드별로 상품들을 찾아볼 수 있는 페이지입니다. 테마별로 해당하는 테마의 브랜드를 확인할 수 있고, 직접 검색하여 원하는 브랜드를 찾아볼 수 있습니다.
  원하는 브랜드를 선택하여 클릭하면, 해당하는 브랜드의 상품들을 인기순, 최신순, 가격순 등으로 필터링하여 상품들을 볼 수 있습니다.

- **`결제페이지`**
  </br>
  원하는 상품들과 수량을 선택하면, 선물과 함께 보낼 메세지카드와 배너를 선택하여 선물과 함께 보낼 수 있습니다.
  최종적으로 결제할 금액과 결제 방법을 확인하고 결제를 누르게 되면, 결제 방법에 따른 일련의 결제 과정을 수행하도록 합니다.
  
<br/>

## 🛠 Tech Stack & Platform

### **Tech**

<p>
<img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
<img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">
<img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
<img src="https://img.shields.io/badge/spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">
</br>
<br>
</p>

### **Tools**

<p>
<img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=Visual Studio Code&logoColor=white"/>
<img src="https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=Discord&logoColor=white"/>
<img src="https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=Figma&logoColor=white"/>
<img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/>
<img src="https://img.shields.io/badge/Github-181717?style=for-the-badge&logo=github&logoColor=white">
<img src="https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=Notion&logoColor=white">
<br>
</p>

</br>
## ERD

<img src="https://raw.githubusercontent.com/Jonghwan-Won/jogong_data/b34c94ae90af1671be24f2441db9f59c81a1c5d2/readmeImage/%EC%84%B8%EB%AF%B8_Jogong_ERD.png" />
</br></br>

## 사이트 데모🎥

<details>
<summary>결제페이지</summary>

|                                                           결제 메세지 및 방법                                                             |                                                           결제완료 및 선물함 확인                                                            |
| :-----------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------: |
| <img src="https://user-images.githubusercontent.com/84282676/208373558-2946d344-7fbd-44da-b235-782c06bff2b8.gif" width="100%"/> | <img src="https://user-images.githubusercontent.com/84282676/208374978-d29808bd-cf62-4bc6-9faf-3346a8a2c329.gif" width="100%"/> |

</details>

<br />
<details>
<summary>선물함 페이지</summary>

|                                                           선물함                                                            |  
| :-----------------------------------------------------------------------------------------------------------------------------: | 
| <img src="https://user-images.githubusercontent.com/84282676/208387290-cef01aee-954a-41c2-85ce-2996092c4d46.gif" width="100%"/> |
</details>

<br />
<details>
<summary>브랜드 페이지</summary>

|                                                           브랜드별 페이지                                                            |  
| :-----------------------------------------------------------------------------------------------------------------------------: | 
| <img src="https://user-images.githubusercontent.com/84282676/208386405-f397be31-3d0f-4a49-b4e0-d3cf2d721af8.gif" width="100%"/> |

</details>

<br />

## 시연 영상🎥

링크(https://www.youtube.com/watch?v=sggx2IHUGws)

## [🏷 프로젝트 노션 🏷](https://shadow-blanket-65e.notion.site/582bd29dd7814c529da9197e9cb0e43c)

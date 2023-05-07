# 2022 소프트웨어 공모전 결과 보고서 FootPrint

|![http//lh5.googleusercontent.com/HCy1Ua5YKiu_2tebEqNGFQ1kxcLH5LQHYIGgklDBpbknZ1KeK5lipJYSBRDoWiB0uUyP7sCRZSvdfjOHZr4AXDW2ZHdu1U9eYFRIC_as7dAzDFkysG7qYg2BP1_8QyiHgg7u3vdvbo2fc3wOlYGfgWI](https://lh5.googleusercontent.com/HCy1Ua5YKiu_2tebEqNGFQ1kxcLH5LQHYIGgklDBpbknZ1KeK5lipJYSBRDoWiB0uUyP7sCRZSvdfjOHZr4AXDW2ZHdu1U9eYFRIC_as7dAzDFkysG7qYg2BP1_8QyiHgg7u3vdvbo2fc3wOlYGfgWI)|![https://lh6.googleusercontent.com/vBdylB3WuBxOnkvHpKw-0uFnjjR4XOkkAk3_tS-3IuTRFnjuDVSsnLua3sjmJhi5YNgwT8Re6qFCczPkNlgsyjCQTcbqHD4t_v09jmth6Jtwp3WGOdkhkd43RKRBkdaSiKCQHdUldwFuzgk3gdBOQHs](https://lh6.googleusercontent.com/vBdylB3WuBxOnkvHpKw-0uFnjjR4XOkkAk3_tS-3IuTRFnjuDVSsnLua3sjmJhi5YNgwT8Re6qFCczPkNlgsyjCQTcbqHD4t_v09jmth6Jtwp3WGOdkhkd43RKRBkdaSiKCQHdUldwFuzgk3gdBOQHs)|

---

출품 분야 : 임베디드SW, 윈도우, 모바일SW, 기타( )

# **1. 작품명**

## FootPrint

---

# **2. 팀 구성**

팀장 – 컴퓨터학부 20193010 심상현

팀원 – 컴퓨터학부 20211799 유진 / 컴퓨터학부 20211781 박윤빈 / 컴퓨터학부 20211815 이현지

---

# **3. 기획의도**

요즘 세대의 가장 큰 욕구는 자기가 하고 있는 일을 공유하고, 다른 사람들과 소통하는 것이라고 생각된다. 그 예로 인스타그램의 폭발적인 성장력을 예를 들 수 있다.

![자료1. 분기별 인스타그램 월간 사용자 증가 표](https://lh6.googleusercontent.com/5AsQmzMf5fAHCvb11s9slJaPrPtCicm67H2FRQiRU2CnLNSLuELrr5r3nQcva_sH7UjqQFLHdGW1ZZSNjY8QRxHr0l0_k_nQMAT5-Ge_iyN6lH0kZYFpQ9KYozGcw1Yg4QMw8ZjwPX8HuZA1pUOAAUE)

자료1. 분기별 인스타그램 월간 사용자 증가 표

 자신이 했던 활동, 갔던 곳, 성취한 목표, 즐길 거리 등을 공유함으로써 사용자 간의  공감대를 형성하는 것 등이 어플리케이션 시장에서 엄청난 크기를 차지하고 있다. 이러한 어플리케이션들의 공통점으로는 단순하게 자신의 활동에 대한 사진에 대해서 코멘트를 달고, 공유를 하는 것으로 목표를 한다는 것이다.

![자료2. MZ세대 sns 사용률](https://lh6.googleusercontent.com/qV4FmbTkPpFwXyxIbZHGRVzyFb6-fUtwcPEaPDM_oG_9yGtj-SyRj3o5qk0a1_2EylmOEVrvFD0gj5JufniPoWDioEjxvU9l9IpX7rt5gnBd-cU1MpBQLrtemMpC6SrZuvdqb-MjmqAwP9NB06m1bg4)

자료2. MZ세대 sns 사용률

 그에 반면 우리 팀은 장소 각각의 개별성보다 장소와 장소 간의 연결성에 집중하여 사용자가 하루 동안 방문한 장소, 이동했던 경로와 수단 등을 더해 전체 루트를 하나의 게시글로 만들고, 타인과 공유하는 것을 목표로 한다.

 여행 계획을 세울 때 보통 유명 관광지 위주로 계획을 만들지만 장소 간의 거리나, 이동 수단, 대중교통 배차 간격 등을 크게 고려하지 못할 때도 있다. 서울과 같은 대도시의 경우 다양한 교통 정보가 제공되기에  '곧도착'이라 '7분 후 도착'등과 같이 실시간으로 정보를 확인 할 수 있지만, 수도권에서 벗어난다면 이를 지원하지 않는 지역도 많다.

 이러한 경우에 사용자의 이동 루트를 하루 단위의 '발자국'으로 만들어 다른 사용자에게 공유함으로써 여행 계획을 손쉽게 세울 수 있다. 또한, 다른 사용자의 발자국을 참고하여 이미 검증된 장소와 경로를 방문할 수 있기에 실패할 확률을 줄일 수 있다.

---

# **4. 작품 설명**

## **가. 작품 개요**

### <개발 목표>

사용자가 하루 동안 돌아다닌 루트를 ‘발자국’으로 기록한다. 사용자 간의 '발자국'을 공유하며 자신과 타인의 하루를 되돌아 볼 수 있도록 도움을 준다. 또한, 서로의 게시물을 통해 생생한 소감과 함께 다양한 추천을 받을 수 있으며, 자신의 경험에서 나아가 새로운 인사이트를 얻을 수 있다.

### <개발 개요>

- 안드로이드/iOS 모두 구동이 가능한 Cross-Platform 개발 언어 중, React-Native보다 다양한 library가 잘 구현되어 있는 Flutter를 이용해 네이티브 앱을 제작한다.
- Flutter를 사용하기 위해 <쉽고 빠른 플러터 앱 개발>, <(Do it!) 플러터 앱 프로그래밍: 실전 코드로 배우는 플러터 기본과 활용법> 등의 도서를 활용하였다.
- 상대적으로 구현 해야 하는 부분이 많고, 경험이 없던 부분인 백엔드를  Firebase를 통해 간단한 데이터 베이스 서버로 활용한다. Firebase Authentication 기능으로 회원가입, 로그인을 쉽게 구현하고, 유저 데이터를 생성 및 저장하였다. 각 트랙 데이터를 Firebase Database에 저장하여 업로드 / 수정 / 검색을 쉽게 하도록 한다.
- Github을 활용한 협업 방식으로는 Github-flow를 사용하여 각 맡은 부분에 대한 기능 구현과 수정 사항을 피드백하여, 빠르게 주요한 기능들을 만들어 내었다. 또한 협업에 대해 처음 경험해보는 팀원을 위해 Source Tree를 사용하여 Git에 대한 이해도를 높인다.

## **나. 시스템 구성도**

![https://lh6.googleusercontent.com/t8ls64RLOSunaLRUJ_CNSUNnjXxRCI5rd62OoceMsCJuoGN9oT3fzYrvZS1hhJEYOXwwJpwnnl4HMOR-9GYrLEvWKMwDbTTbU2gcsH_rHXDQz2N0IFlTygC7DXHQ2D7mTVtdrYAkVtP-d6-cUUfL2Ls](https://lh6.googleusercontent.com/t8ls64RLOSunaLRUJ_CNSUNnjXxRCI5rd62OoceMsCJuoGN9oT3fzYrvZS1hhJEYOXwwJpwnnl4HMOR-9GYrLEvWKMwDbTTbU2gcsH_rHXDQz2N0IFlTygC7DXHQ2D7mTVtdrYAkVtP-d6-cUUfL2Ls)

### **Application User-flow**

1. 사용자가 로그인을 시도한다.
    1. 아이디가 있는 사용자는 로그인을 한다.
    2. 아이디가 없는 사용자는 회원 가입을 시도한다.
2. 로그인 및 회원가입은 Firebase Authentication 기능을 사용하여 유저를 확인한다.
3. 로그인 후에 메인스크린으로 이동하면 현재 유저의 하루 동안의 이동했던 위치 데이터를 보여준다.
    1. 유저는 앱 사용 중 뿐만 아니라 사용이 끝나더라도 위치 데이터를 계속 저장할 수 있도록 백그라운드에서도 돌아갈 수 있도록 flutter의 location 라이브러리를 사용하였다.
        1. location 라이브러리를 통해 해당 날의 오전 4시부터 다음 날 오전 4시까지를 해당 날의 위치 데이터로 설정한다.
        2. 해당 위치 데이터는 10초 간격으로 위치 정보를 확인하고 내부 데이터베이스에 저장한다. 
        3. 위치 데이터 중 특정 장소에 방문 하였는가에 대한 여부는 동일한 위치라도 지속적으로 부정확하게 데이터가 찍히는 경우가 존재하여서, 시작 위치로부터 이동한 길이가 30m이상 이동하였을 때, 즉 위도-경도를 연결하였을 때 그 거리가 0.0003 이상이 되는 경우에는 이동하는 것으로 판단하였다. 위의 조건을 만족하지 않고 25분 이상 동일한 지점에 있는 경우에는 카카오 맵 RestAPI 호출을 통해 해당 좌표에 대한 건물의 정보를 저장한다.
    2. 로그인 및 위치 데이터는 Flutter 앱 내부 저장소를 사용하며, NoSQL Database 라이브러리인 Hive를 사용하였다. 일간 위치 및 유저 데이터 모델을 작성하고 Hive에 저장하고, 필요할 때 불러올 수 있도록 작성하였다.
4. 유저가 하루 동안 혹은 과거의 트랙 데이터를 찾는 경우, Hive에서 해당 날짜의 데이터를 쿼리하고, 결과를 보여준다.
5. 유저가 자신의 트랙(발자국) 데이터를 공유를 시도하면, 해당 데이터를 Firebase 서버에 업로드하여 다른 유저가 트랙을 확인할 수 있도록 한다.
6. 다른 유저가 올린 트랙을 검색 기능을 통해 Firebase Database에 있는 트랙 데이터 정보를 불러오고 해당 데이터를 가공하여 유저에게 보여준다.
    1. 해당 데이터에 대한 검색은 해시 태그를 통한 검색을 지원하여 원하는 필터를 적용하는 검색  시스템을 사용한다.

## **다. 구현 기능**

---

### Splash

![Untitled](https://file.notion.so/f/s/c69fe641-9540-4db9-9e7f-59acdbb8c68c/Untitled.png?id=9c417bcb-b1cf-46d0-ac27-2d1ffc875692&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683540874520&signature=JwpAWWFIA39yA1j6dc_H7eIq6aoTWGNFZMQkoH_igZA&downloadName=Untitled.png)

본 어플리케이션의 내부 데이터들이 로딩 될 때까지 보여지는 스플래쉬 스크린이다. 
해당 스크린은 3초 동안 지속되며, 해당 시간 동안 내부 저장소 초기화 및 자동 로그인, 위치 정보 지속 저장 등의 기능들을 수행하도록 작성하였다.

---

### Login

![https://lh5.googleusercontent.com/_gBz6J1Ee9WgllAqYUzlUPyNiQlN345qjrHJiEy1lGqv15EpF4PJ0-BRW6t9lLwS1fIghu8dcSnOYMTkkEs33kKY7e_OSCqbpJy0H_jmZClsZY33e8letnWyUTnLGqLI6iAn672FvnK86qas3Vjl57M](https://lh5.googleusercontent.com/_gBz6J1Ee9WgllAqYUzlUPyNiQlN345qjrHJiEy1lGqv15EpF4PJ0-BRW6t9lLwS1fIghu8dcSnOYMTkkEs33kKY7e_OSCqbpJy0H_jmZClsZY33e8letnWyUTnLGqLI6iAn672FvnK86qas3Vjl57M)

이메일과 비밀번호를 이용해 로그인한다.

단순하게 내부적으로 서버를 구동시켜 데이터를 주고 받는 것 보다 빠르고 안전하게 사용자를 인증할 수 있는 Firebase의 Authentication기능을 사용 하는 것이 안전하고, 우리 측에서 정보 유출 등의 부담이 적을 것으로 생각하여 사용하였다. 
엑세스 토큰을 발급하고 데이터를 요청하는 단계에도 보다 안전한 데이터베이스 설계를 활용할 수 있을 것으로 기대하였다.
어플리케이션 내부 데이터베이스에 해당 유저에 대한 정보를 미리 저장해두어 어플리케이션이 종료된 후에 다시 유저가 접속한 경우 유저 정보를 읽고, 만약 유저 정보가 존재하는 경우 해당 유저 데이터로 자동 로그인을 시도하여 사용자의 편의성을 높인다.


---

### Register

![](https://file.notion.so/f/s/64e3ab88-4139-46ff-baa2-dc7d146f1594/Untitled.png?id=6cf2ca23-b7f9-49a6-a750-0b4b32135cc4&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683540978650&signature=BLKFEjVSOjC8mfV2Kfvq_zagTOArAoi5tGxjUprPW9I&downloadName=Untitled.png)

> TextField값으로 이메일, 닉네임, 비밀번호, 비밀번호 일치 확인 4가지를 입력 받아 User 데이터를 만든다.
 먼저 비밀번호와 확인 창이 동일한지 판별하고 Firebase Authentication에 새로운 유저 생성을 요청하여 해당 이메일에 대한 중복 여부와 비밀번호 조건에 대한 응답을 받는다. 모두 만족하는 유저 데이터인 경우 로그인 화면으로 Redirect 시킨다.
 유저 생성이 성공하는 경우 Firestore Database에 해당 유저에 대한 정보를 저장하고 해당 유저에 대한 정보를 나중에 요청 시에 보여질 수 있도록 한다.


![](https://file.notion.so/f/s/d1dedc1e-01a3-4178-93fb-bf71d6676c5e/Untitled.png?id=bfe447eb-f5b7-4433-a470-e9ab497ded98&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683541004397&signature=4kf3f_iT4FYEuGrNJ_plxpsGPn1J_mXQw87Pyf2BZYs&downloadName=Untitled.png)

해당 기능으로 만들어진 유저 정보

![](https://file.notion.so/f/s/07dca484-8092-4c43-b121-ccb49732975a/Untitled.png?id=54bda58a-606e-4897-a489-8e7ad1bf9a53&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683541022762&signature=aNB8Z1zJ9foREdngu4FHenop5rYUK1h0mAoNqybyW-c&downloadName=Untitled.png)

유저 정보를 Firestore Database에 저장시키고, 데이터 수정이 있을 경우 해당 데이터를 수정하는 방식을 사용

---

### Main tab

![](https://file.notion.so/f/s/24d5b50a-e708-4f37-b5a1-2dd97165ebbb/Untitled.png?id=bd5c24ea-ff2d-4348-8a47-62eb4b218324&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683541036749&signature=VA5BSptCUMf3LqojceRkYHIa39bx8xD1yYs6MYbdn4w&downloadName=Untitled.png)

사용자가 하루 동안 움직인 기록에 대한 Raw data가 메인 탭에 보여진다. Main tab에서 공유하기 아이콘 버튼을 눌러서 자신의 발자국을 feed로 post할 수 있다.

TimeLine에 자신이 하루 내에 방문 시각과 장소가 표시되며, 해당 위치는 Kakao Map RestAPI 서버 통신을 통해 방문 장소에 대한 정보를 획득한다. 해당 기능은 중간에 HTTP 통신을 위한 interceptor 서비스를 추가하여 플러터에서 위치에 대한 request에 지도용 Access Key를 추가하고, 해당 위도/경도를 Header에 추가하여 해당 위치의 건물이나 도로명 주소 등에 대한 정보를 받아온다.

---

### Myrecord tab

![](https://file.notion.so/f/s/e1ab9adb-aa47-4c0e-b234-069fd505c3f6/Untitled.png?id=89d73b5a-1004-4720-be07-25e34ea83484&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683541049672&signature=OIUzhm2yuF9ETtO5SjgoDLzdgJ7PvEITi-FW2aljP3s&downloadName=Untitled.png)

자신이 FootPrint 어플리케이션을 설치 하고부터 이동했던 루트들을 모두 보여준다. 한 번에 너무 많은 데이터를 로딩할 경우, 내부 저장소 불러오기 및 해당 위젯 로딩(빌드) 시간이 오래 걸릴 것으로 생각하여 한번에 5개의 기록만 불러오고 스크롤을 모두 내린 경우 다음 발자국을 추가적으로 불러오는 형식을 사용하였다.

---

### Posting Screen

![](https://file.notion.so/f/s/c266bda0-f6b5-4237-b727-430d20a9f317/Untitled.png?id=8fb3aea1-53ef-4b90-b35c-303177ce7a1c&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683541063917&signature=9I6JUQUR9FAiAE7iLgBf_fE_RjVlOV7_W0hinj7XinQ&downloadName=Untitled.png)

Main Tab에서 우측 상단에 공유하기 아이콘을 누르거나, 내 발자국들 탭에서 공유하기 아이콘을 눌러서 전환되는 스크린이다.
 해당 날의 발자국을 새롭게 업로드하여 사람들과 공유할 수 있도록 포스팅 가능하다.
 Main Tab 혹은 내 발자국 루트들에서 보여지는 Raw data를 가공하여 보여준다. 이 과정에서 게시글에 포함될 TIMELINE요소들을 지정하고 게시글의 공개 여부(Public / Private)를 결정한다.
 업로드 시, 해시태그 들을 추가하도록 하여 후에 검색이나 데이터 활용에서 쉽게 사용할 수 있도록 한다.

---

### Feed tab

|![](https://file.notion.so/f/s/8e9cb58f-983e-4cff-8651-c0c9268a3d1e/Untitled.png?id=6968c68a-e884-4ca2-bcc2-2735421f3859&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683541076436&signature=JG-5sspznnumfcbnSFbnVPUxd11bXnNGjpoCSxapCU4&downloadName=Untitled.png)|![](https://file.notion.so/f/s/befd9ae1-4653-4b4f-9c2b-d4c3dceeedb4/%EB%8C%80%EC%A7%80_1-1.png?id=04dbd129-ff20-4ab8-8768-a6f2fb9a9e45&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683541092039&signature=w3gnMyqWyI23fK7vxbxAyIa9Z6C7fjQklt_kH6g_1OU&downloadName=%EB%8C%80%EC%A7%80+1-1.png)|

사용자가 올린 각각의 게시물을 ‘feed’라 칭하며, 모든 사용자들의 feed를 모아둔 페이지이다.
카테고리를 나누어 사용자가 보고 싶은 feed를 정리해서 볼 수 있다. 카테고리를 선택한 후 스크롤하여 원하는 게시물을 클릭하면 해당하는 feed에 대한 상세 정보를 볼 수 있다.
해당 발자국의 이동 경로, 게시자가 올린 사진과 코멘트를 볼 수 있으며, 다른 유저들은 게시물에 대해 smile/good/liked 이모지를 눌러 다른 유저에 대해 공감할 수 있다.

---

### Search

![](https://file.notion.so/f/s/be9c374a-f8b4-47ac-b55f-45b76f143485/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7_2022-08-26_%EC%98%A4%ED%9B%84_3.29.12.png?id=2bdeaf1c-54b7-4895-88e9-f92550bae571&table=block&spaceId=3e915a9b-e334-4059-bb5c-66f25bea08a1&expirationTimestamp=1683541111417&signature=deNMkIeCEjR3OqG-xbvW54nqTakXJcUS8CFBT9fGgsE&downloadName=%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7+2022-08-26+%EC%98%A4%ED%9B%84+3.29.12.png)

feed tab에서 돋보기 버튼을 누르면 검색 창으로 넘어간다. 해시 태그들을 이용해 사용자가 원하는 주제의 발자국들을 쉽게 찾을 수 있다.

</aside>

---

# **5. 개발 환경**

앱 개발 - Flutter(iOS, Android)

백엔드용 서버 - FireBase

협업용 저장소 - Github

협업용 저장소 툴 - Source Tree

디자인 - Figma

---

# **6. 자료 출처**

### 자료1.

[https://magazine.contenta.co/2019/09/%EC%9D%B8%EC%8A%A4%ED%83%80%EA%B7%B8%EB%9E%A8-%EB%A7%88%EC%BC%80%ED%8C%85-%EC%A7%84%EC%A0%95%EC%84%B1/](https://magazine.contenta.co/2019/09/%EC%9D%B8%EC%8A%A4%ED%83%80%EA%B7%B8%EB%9E%A8-%EB%A7%88%EC%BC%80%ED%8C%85-%EC%A7%84%EC%A0%95%EC%84%B1/)

### 자료2.

[https://www.dailypop.kr/news/articleView.html?idxno=55226](https://www.dailypop.kr/news/articleView.html?idxno=55226)

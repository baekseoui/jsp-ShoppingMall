# jsp-ShoppingMall
jsp를 이용해 만든 쇼핑몰 NorthWind 입니다

# 기획의도 및 개발 목표

#### 프로젝트 컨셉

최신 브랜드와 엄선된 디자이너 상품을 제공하는 감각적인 편집샵



#### 기획의도

- <자바 웹 개발자 과정>을 통해 학습한 내용을 종합적으로 검증하고 인증하는 가장 적합한 방식으로 온라인몰 개발을 기획했습니다

- 사용자로써 익숙한 쇼핑몰을 개발자 관점으로  설계하여 구현하는 일련의 프로세스를 이해하고 적용시켜보자는 목적에서 기획했습니다



#### 개발목표

이 프로젝트는 아래의 내용을 증명하는 것을 목표로 합니다

1. 웹 및 프로그래밍 언어에 대한 전반적인 이해수준

2. 보편적인 개발 원칙에 따라 개발하는 능력

3. 목적에 따라 특정 기능을 구현하고 설계하는 응용능력

4. 프로젝트 전반을 책임지고 신기술에 적응하는 개발자의 태도

   



# 설계

#### 프로젝트 개요

- 프로젝트명: Northwind 쇼핑몰
- 개발기간:2020년 6월 24일~2020년 7월 22일



#### 개발환경

- Window 7(x64)
- Tomcat Server 8.5
- Oracle JDK 1.8.0_241
- Oracle 11g Express Edition
- Spring Tool Suite



#### 구현기술

- JQuery 3.4.1
- jsp
- HTML5, CSS3, JavaScript ES6



#### DB

| Table Name     | Customers               | 고객정보를 저장하는 테이블                                   |       |                     |                                            |
| -------------- | ----------------------- | ------------------------------------------------------------ | ----- | ------------------- | :----------------------------------------- |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | CustomerID              | varchar                                                      | PK    | N                   | 회사명(CompanyName)의 첫 5글자             |
| 2              | CompanyName             | varchar                                                      |       | N                   | 회사명                                     |
| 3              | ContactName             | varchar                                                      |       | Y                   | 고객명                                     |
| 4              | ContactTitle            | varchar                                                      |       | Y                   | 고객직위                                   |
| 5              | Address                 | varchar                                                      |       | Y                   | 고객주소                                   |
| 6              | City                    | varchar                                                      |       | Y                   | 도시명                                     |
| 7              | Region                  | varchar                                                      |       | Y                   | 지역명                                     |
| 8              | PostalCode              | varchar                                                      |       | Y                   | 우편번호                                   |
| 9              | Country                 | varchar                                                      |       | Y                   | 나라                                       |
| 10             | Phone                   | varchar                                                      |       | Y                   | 고객 전화번호                              |
| 11             | Fax                     | varchar                                                      |       | Y                   | 고객 팩스번호                              |
| **Table Name** | **Employees**           | **직원정보를 저장하는 테이블 / Order 테이블에서 직원ID를 통해 판매기록을 알 수 있음** |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | EmployeeID              | int                                                          |       | N                   | 직원 ID (시퀀스)                           |
| 2              | LastName                | varchar                                                      |       | N                   | 성                                         |
| 3              | FirstName               | varchar                                                      |       | N                   | 이름                                       |
| 4              | Title                   | varchar                                                      |       | Y                   | 직위                                       |
| 5              | TitleOfCourtesy         | varchar                                                      |       | Y                   | 영어호칭(Mr, Ms, Mrs ….)                   |
| 6              | BirthDate               | date                                                         |       | Y                   | 생일                                       |
| 7              | HireDate                | date                                                         |       | Y                   | 고용일                                     |
| 8              | Address                 | varchar                                                      |       | Y                   | 주소                                       |
| 9              | City                    | varchar                                                      |       | Y                   | 도시명                                     |
| 10             | Region                  | varchar                                                      |       | Y                   | 지역명                                     |
| 11             | PostalCode              | varchar                                                      |       | Y                   | 우편번호                                   |
| 12             | Country                 | varchar                                                      |       | Y                   | 나라                                       |
| 13             | HomePhone               | varchar                                                      |       | Y                   | 집전화                                     |
| 14             | Extension               | varchar                                                      |       | Y                   | 내선번호                                   |
| 15             | Photo                   | blob                                                         |       | Y                   | 사진                                       |
| 16             | Notes                   | varchar                                                      |       | N                   | 직원 정보 기록                             |
| 17             | ReportsTo               | int                                                          |       | Y                   | 매니저 ID (self join으로 매니저 찾기 가능) |
| 18             | PhotoPath               | varchar                                                      |       | Y                   |                                            |
| 19             | Salary                  | int                                                          |       | Y                   | 급여                                       |
| **Table Name** | **Region**              | **Territories 테이블에서 FK로 사용 (종류 동부,서부,남부,북부 4가지)** |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | RegionID                | int                                                          | PK    | N                   | 지역ID (시퀀스)                            |
| 2              | RegionDescription       | varchar                                                      |       | N                   | 지역정보                                   |
| Table Name     | Territories             |                                                              |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | TerritoryID             | varchar                                                      | PK    | N                   | ZIP code(=postal code)우편변호             |
| 2              | TerritoryDescription    | varchar                                                      |       | N                   | 지역이름                                   |
| 3              | RegionID                | int                                                          | FK    | N                   | 지역ID                                     |
| **Table Name** | **EmployeeTerritories** | **territories 테이블과 함께 직원 별 담당지역정보를 알 수 있음. 지역 4개 미포함** |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | EmployeeID              | int                                                          | PK,FK | N                   | 직원 ID                                    |
| 2              | TerritoryID             | varchar                                                      | PK,FK | N                   | ZIP code(=postal code)우편변호             |
| **Table Name** | **Categories**          | **Products 테이블과 함께 해당 제품의 카테고리 확인 가능**    |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | CategoryID              | int                                                          | PK    | N                   | 카테고리 ID(시퀀스)                        |
| 2              | CategoryName            | varchar                                                      |       | N                   | 카테고리명                                 |
| 3              | Description             | text                                                         |       | Y                   | 카테고리 정보                              |
| 4              | Picture                 | blob                                                         |       | Y                   | 사진                                       |
| **Table Name** | **Suppliers**           | **공급업체 정보 테이블**                                     |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | SupplierID              | int                                                          | PK    | N                   | 공급업체 ID(시퀀스)                        |
| 2              | CompanyName             | varchar                                                      |       | N                   | 회사명                                     |
| 3              | ContactName             | varchar                                                      |       | Y                   | 이름                                       |
| 4              | ContactTitle            | varchar                                                      |       | Y                   | 직위                                       |
| 5              | Address                 | varchar                                                      |       | Y                   | 주소                                       |
| 6              | City                    | varchar                                                      |       | Y                   | 도시명                                     |
| 7              | Region                  | varchar                                                      |       | Y                   | 지역                                       |
| 8              | PostalCode              | varchar                                                      |       | Y                   | 우편번호                                   |
| 9              | Country                 | varchar                                                      |       | Y                   | 나라                                       |
| 10             | Phone                   | varchar                                                      |       | Y                   | 연락처                                     |
| 11             | Fax                     | varchar                                                      |       | Y                   | 팩스번호                                   |
| 12             | HomePage                | text                                                         |       | Y                   | 홈페이지주소                               |
| **Table Name** | **Products**            | **제품정보 테이블**                                          |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | ProductID               | int                                                          | PK    | N                   | 제품ID(시퀀스)                             |
| 2              | ProductName             | varchar                                                      |       | N                   | 제품명                                     |
| 3              | SupplierID              | int                                                          | FK    | N                   | 공급업체 ID                                |
| 4              | CategoryID              | int                                                          | FK    | N                   | 카테고리 ID                                |
| 5              | QuantityPerUnit         | varchar                                                      |       | Y                   | 단위당 수량                                |
| 6              | UnitPrice               | decimal                                                      |       | N Default 0         | 단가                                       |
| 7              | UnitsInStock            | int                                                          |       | N Default 0         | 재고                                       |
| 8              | UnitsOnOrder            | int                                                          |       | N Default 0         | 주문단위                                   |
| 9              | ReorderLevel            | int                                                          |       | N Default 0         |                                            |
| 10             | Discontinued            | boolean                                                      |       | N Default False     | 할인여부                                   |
| **Table Name** | **Shippers**            | **화물발송 (송하인)관련 테이블**                             |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | ShipperID               | int                                                          | PK    | N                   | 화물발송자 ID(시퀀스)                      |
| 2              | CompanyName             | varchar                                                      |       | N                   | 회사명                                     |
| 3              | Phone                   | varchar                                                      |       | Y                   | 연락처                                     |
| **Table Name** | **Orders**              | **주문정보(고객 ID, 배송일자, 배송지정보) 테이블**           |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | OrderID                 | int                                                          | PK    | N                   | 주문 ID (시퀀스)                           |
| 2              | CustomerID              | varchar                                                      | FK    | Y                   | 고객 ID (customers 테이블)                 |
| 3              | EmployeeID              | int                                                          | FK    | N                   | 담당직원 ID                                |
| 4              | OrderDate               | date                                                         |       | Y                   | 주문일자                                   |
| 5              | RequiredDate            | date                                                         |       | Y                   | 요청일자                                   |
| 6              | ShippedDate             | date                                                         |       | Y                   | 배송일자                                   |
| 7              | ShipVia                 | int                                                          | FK    | Y                   | 발송회사ID(shippers 테이블의 ShipperID)    |
| 8              | Freight                 | decimal                                                      |       | N Default 0         | 운임요금(?)                                |
| 9              | ShipName                | varchar                                                      |       | Y                   | 배송받는 회사명(Customer테이블의 회사명)   |
| 10             | ShipAddress             | varchar                                                      |       | Y                   | 배송지 주소                                |
| 11             | ShipCity                | varchar                                                      |       | Y                   | 배송지 도시명                              |
| 12             | ShipRegion              | varchar                                                      |       | Y                   | 배송지 지역명                              |
| 13             | ShipPostalCode          | varchar                                                      |       | Y                   | 배송지 우편번호                            |
| 14             | ShipCountry             | varchar                                                      |       | Y                   | 배송지 나라                                |
| **Table Name** | **Order Details**       | **주문정보(단가, 주문량, 할인여부) 테이블**                  |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | OrderID                 | int                                                          | PK,FK | N                   | 주문 ID                                    |
| 2              | ProductID               | int                                                          | PK,FK | N                   | 제품 ID                                    |
| 3              | UnitPrice               | decimal                                                      |       | N Default 999999.99 | 단가                                       |
| 4              | Quantity                | int                                                          |       | N Default 1         | 주문량                                     |
| 5              | Discount                | double                                                       |       | N Default 0         | 할인여부                                   |
| Table Name     | CustomerDemographics    |                                                              |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | CustomerTypeID          | varchar                                                      | PK    | N                   |                                            |
| 2              | CustomerDesc            | text                                                         |       | Y                   |                                            |
| Table Name     | CustomerCustomerDemo    |                                                              |       |                     |                                            |
| NO             | Column Name             | Data Type                                                    | Key   | Null Option         | Comments                                   |
| 1              | CustomerID              | varchar                                                      | PK    | N                   |                                            |
| 2              | CustomerTypeID          | varchar                                                      | PK    | N                   |                                            |



# 주요 구현 기능 : 목차

#### 일반

1. 구성요소와 인터페이스
2. Interceptor : 권한에 따른 접근 제한

#### 사용자

1. Sign In/Up : 회원가입과 로그인
2. Order Process : 상품조회부터 상품주문까지
3. Login-Member : 회원정보관리,1:1문의, 회원탈퇴
4. Login-None Member : 주문관리,권한
5. Board : 고객게시판

#### 관리자

1. Shop : 매출관리
2. Product : 재고관리, 상품관리
3. Order : 주문상태변경,주문정보 수정
4. Member : 회원공지/회원혜택지급,회원정보조회 및 관리
5. Board : 고객문의답변, 1:1문의 답변 메일 전송



# 프로젝트를 마치며

#### 프로젝트로부터 느낀 점

- 고객의 눈높이에 맞춘 기능의 구현과 실현을 위한 기반 지식,기술이 상당하다는 것을 프로젝트 개발로부터 느꼈습니다. 간단한 기능라도 구현에 필요한 기능이 간단한 경우는 별로 없으며, 이를 통해 충분한 기반 학습이 필요함을 절감하였습니다.
- 견고히 설계 시간을 갖지 않아서 개발 도중 시행착오가 많이 생겼습니다. 앞으로는 설계 시간을 충분히 가진 후에 개발에 착수하는 것이 개발 효율을 상당히 개선시킬 것 이라고 생각합니다.  또한 이를 위하여 디자인 패턴에 대한 학습을 강화할 것입니다. 

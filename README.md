# Redash

### -ERD 예를 들어 쉽게 보기
<details>
  <summary>펼쳐보기</summary>
  Customers 와 Orders 는 1 vs N 관계이다.<br>
  그러므로 아래와 같다
 <br><br>
  <b> ||- vs >||  이와 같은 표식으로 나타낼 수 있다 </b>
 <br><br> 
  <b> 이유 </b>
  
- Customer 입장에서 Orders는 반드시 있어야 하고 여러개 주문 가능하다
- Orders 입장에서 Customer는 반드시 있어야 하고 하나만 존재한다
 
</details> 

---
### -ERD 시각화 정리
<img src="https://user-images.githubusercontent.com/70833455/131254066-6e8124d6-6847-4256-8f2b-0c1a6453377e.jpg"  width=500px height=480px>

### -PRIMARY KEY

IDENTITY 식별자

중복되지 않는 값을 가지는 데이터

### -Cardinality

1 또는 n으로 나타내는 기수<br><br>
<img src="https://user-images.githubusercontent.com/70833455/131254274-ac030de6-9550-4e61-bc80-ada4dd529532.PNG" width=300px height=360px>

### -Optionality

옵션 , 꼭 필요한 관계가 아닐때, Relation이 필요하지 않은것

### -Mandatory

꼭 필요한 관계, 반드시 가져야하는 속성<br><br>
### -Optionality 와 Madatory 비교 
<img src="https://user-images.githubusercontent.com/70833455/131254340-f94e1105-cdf3-49e5-81b6-7fb1236d0614.PNG" width=400px height=220px>

### -Cardinality + Optionality
<img src="https://user-images.githubusercontent.com/70833455/131254482-6ea59062-c67f-4867-a843-7e4b347efae7.PNG" width=250px height=250px>

### -관계 기호 요약
<img src="https://user-images.githubusercontent.com/70833455/131254594-36f349e8-4224-463a-a952-8d8d0bafe04d.PNG" width=400px height=200px>

---
### - 오류문장 해결||정리

<details> 
<summary>  오류발생 문장 1 </summary>
  
 Operand should contain 1 colums
- 서브쿼리 사용시 나타난 문장
- 컬럼 갯수가 동일하지 않아서 나타난다
</details>

<details>
  <summary> 해결방법 </summary>
  
  - row(1, 1) 와 같은 함수를 통해서 컬럼수를 일치시켜줘서 해결이 가능하다
</details>

<details>
  <summary>오류 원인 2</summary>
  
  - 오류 1055번
  - group by 절에 포함되지 않은 컬럼을 Select절에서 뽑아올 경우
  - 즉 집계되지 않은 칼럼을 select 절에서 뽑아오는 경우
  - 집계 되지 않은 칼럼을 `**nonaggregated column**` 이라 부른다
</details>

<details>
  <summary>해결방법</summary>
  
  - group by 절에 `**nonaggregated column**` 추가
  - 서버에서 임의로 집계하는 함수 ANY_VALUE() 사용 - 주의필요!
  - 참고 사이트 - [https://developyo.tistory.com/20](https://developyo.tistory.com/20)
</details>

<details> <summary> MEMO 1 </summary>
풀지 못한 쿼리문</br></br> 
현재 재고 현황을 알기 위해 입고-판매수량 을 빼고 싶었다</br>
하지만 조인(left, right, inner)을 이용하면 (입고수량+판매수량)-판매수량 이라는 엉뚱한 결과가 나왔고</br>
UNION ALL 을 써도 각 두개의 select 문 결과가 나오지 않았다</br> 
많은 시간을 들였지만 아쉬운 결과를 가져가게 되어 힘들었다 </details>

<details>
  <summary> MEMO 2 </summary>
SUM(count(~)) 이 문법은 안된다 <br>
개수를 먼저 집계하고 덧셈할것
</details>

---
### - 주요 키워드 조사

💐**인사이트(insight)**

‘안(in)’과 ‘보다(sight)’라는 의미가 결합된 단어로,이를 통해 한 단계 더 나은 의사결정을 하여 새롭거나 더 나은 가치를 만드는 것이 이 단계의 목표.

💐**최적화(optimization)**

빅데이터를 분석하는 과정의 마지막 단계로, 
빅데이터를 활용해 무엇이 왜 어떻게 일어나고 있는지 분석한 후 원하는 결과를 얻기 위해 무엇을 해야 하는지를 찾는 것이다.

💐**data driven한 인사이트**

**driven:** 중심의

***참고 사이트***

[세상을 읽는 새로운 언어, 빅데이터 - 미래를 혁신하는 빅데이터의 모든 것>](https://www.aladin.co.kr/shop/ebook/wPreviewViewer.aspx?itemid=207811694)

# Redash

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


<details> <summary> 풀지 못한 쿼리문1</br></br> </summary>
현재 재고 현황을 알기 위해 입고-판매수량 을 빼고 싶었다</br>
하지만 조인(left, right, inner)을 이용하면 (입고수량+판매수량)-판매수량 이라는 엉뚱한 결과가 나왔고</br>
UNION ALL 을 써도 각 두개의 select 문 결과가 나오지 않았다</br> 
많은 시간을 들였지만 아쉬운 결과를 가져가게 되어 힘들었다</br> </details>

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

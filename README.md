# R script for data visualization
### Can R do develop drug?
#### update at : 2022.11.09
#### Create at : 2022.10.18
#### JeongSoo Na
##### - Assistant Scientist
##### - Ai Development Operation Team
##### - Syntekabio
##### - Korea(South)
---
## plot options
|**Option**|**information**|
|------|------|
|main = "메인 제목"|제목 설정|
|sub = "서브 제목"|서브 제목|
|xlab = "문자", ylab = "문자"|x, y축에 사용할 문자열을 지정합니다.|
|ann=F|x, y축 제목을 지정하지 않습니다.|
|tmag=2|제목 등에 사용되는 문자의 확대율 지정|
|axes=F|x, y축을 표시하지 않습니다.|
|axis|x, y축을 사용자의 지정값으로 표시합니다.|
|**그래프 타입 선택**||
|type="p"|점 모양 그래프 (기본값)|
|type="l"|선 모양 그래프 (꺾은선 그래프)|
|type="b"|점과 선 모양 그래프|
|type="c"|"b"에서 점을 생략한 모양|
|type="o"|점과 선을 중첩해서 그린 그래프|
|type="h"|각 점에서 x축 까지의 수직선 그래프|
|type="s"|왼쪽값을 기초로 계단모양으로 연결한 그래프|
|type="S"|오른쪽 값을 기초로 계단모양으로 연결한 그래프|
|type="n"|축 만 그리고 그래프는 그리지 않습니다.|
|**선의 모양 선택**||
|lty=0, lty="blank"|투명선|
|lty=1, lty="solid"|실선|
|lty=2, lty="dashed"|대쉬선|
|lty=3, lty="dotted"|점선|
|lty=4, lty="dotdash"|점선과 대쉬선|
|lty=5, lty="longdash"|긴 대쉬선|
|lty=6, lty="twodash"|2개의 대쉬선|
|**색, 기호 등**||
|col=1, col="blue"|기호의 색지정, 1-검정, 2-빨강, 3-초록, 4-파랑, 5-연파랑, 6-보라, 7-노랑, 8-회색|
|pch=0, pch="문자"|점의 모양을 지정합니다|
|bg="blue"|그래프의 배경색 지정|
|lwd="숫자"|선을 그릴 때 선의 굵기를 지정|
|cex="숫자"| 점이나 문자를 그릴 때 점이나 문자의 굵기를 지정|
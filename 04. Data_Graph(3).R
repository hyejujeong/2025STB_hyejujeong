# Step2: table()함수/구분 1개 (Gender)의 인자를 가지고 도수분포표 작성
table(X2025STB_survey $Gender)#성별

# Step3: Gender 인자를 가지고  상대도수분포표 작성
ECN <- table(X2025STB_survey $Gender)
prop.table(ECN)

# Step4: table()함수/2개의 인자(Gender,Grade)를 가지고 교차표를 작성
table(X2025STB_survey $Gender, X2025STB_survey $Grade)

# Step5: Nationality 1개의 인자를 가지고 막대그래프 작성 
barplot(table(X2025STB_survey $Nationality),col='blue',xlab="Nationality area", ylab="Number", ylim=c(0,50))

# Step6: residential area 1인자를 가지고 가로 막대그래프 작성
barplot(table(X2025STB_survey $`residential area`),col='green', xlab= "Number", ylab="residential area", xlim=c(0,50), horiz = TRUE)

# Step7: Gender, Grade 2가지 인자를 가지고 막대그래프 작성
entry <- table(X2025STB_survey $Gender, X2025STB_survey $Grade)
barplot(entry, legend=TRUE)

# Step8: Grade 인자를 이용하여 파이차트 작성
pie(table(X2025STB_survey $Grade))

# Step9: Age 인자를 가지고 히스토그램 작성
hist(X2025STB_survey $`Age`, main="Age 히스토그램", col=terrain.colors(10))

# Step10: 각 Grade별 Age 박스 플롯 작성
boxplot(X2025STB_survey$"Age" ~ X2025STB_survey$"Grade", main="각 Grade별 Age의 박스플롯", col="yellow", names=c("2학년","3학년","4학년"))

# Step10: 각 Grade 별 Age에 대한 기술통계분석
by (X2025STB_survey$Age ,X2025STB_survey$"Grade" ,summary,na.rm=T)

# Step11: Grade를 X값으로 Age를 Y값으로 하는 산점도 작성
plot(x=X2025STB_survey$'Grade' , y=X2025STB_survey$'Age' , xlab="Grade 값" , ylab="Age 값", main="산점도")
        

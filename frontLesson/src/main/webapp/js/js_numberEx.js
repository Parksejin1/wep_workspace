/**
 * 
 */
const calculate = () => {
	//데이터 가져올 요소를 변수에 저장하기
	const op1 = document.getElementById('operand1')
	const op2 = document.getElementById('operand2')
	const op = document.getElementById('operator')
	let result;		//계산 결과 저장할 변수
	//value 또는 innerHTML 로 가져오는 것은 문자열*
	switch(op.value){
         case '+':
			 result=Number(op1.value)+Number(op2.value)
			 //Number() 문자열을 Number 타입으로 전환
			 //Number('12') 는 12 Number('abc') 는 변환 못하므로 NAN(Not a Number) 로리턴
			 break;		
         case '-':
			 result= Number(op1.value)-Number(op2.value)
			 break;		
         case '*':
			 result= Number(op1.value)*Number(op2.value)
			 break;		
         case '/':
			 result= Number(op1.value)/Number(op2.value)
			 break;	
			 	
        default : alter('알수없는 연산입니.')
			 
			 		
	}
	document.getElementById('result').value=result
	
}
 document.getElementById('executeBtn').addEventListener('click',calculate)

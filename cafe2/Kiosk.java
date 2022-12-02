package com.kmc.cafe2;



import java.util.ArrayList;
import java.util.Scanner;

public class Kiosk {


	
		int sumPrice = 0;
		ArrayList<Product> basket1 = new ArrayList<Product>();
		ArrayList<Product> basket2 = new ArrayList<Product>();
		ArrayList<Product> basket3 = new ArrayList<Product>();
		//자동임포트 단축키: ctrl+shift+o(영문자O)
		Scanner sc = new Scanner(System.in);
		
		Product p1 = new Product("아아",1000);
		Product p2 = new Product("뜨아",1500);
		Product p3 = new Product("오렌지쥬스",2000);
		void run() {
		for(int i=0;i<basket1.size();i=i+1) {
			basket1.get(i).info();
		}
		for(int i=0;i<basket2.size();i=i+1) {
			basket2.get(i).info();
		}
		for(int i=0;i<basket3.size();i=i+1) {
			basket3.get(i).info();
		}
		
		String cmd;
                                 	
		xx:while(true) {
			System.out.print("명령 입력[1.음료선택/2.디저트선택/e.프로그램종료]:");
			cmd = sc.next();
			switch(cmd) {
			case "1":
				yy:while(true) {
					//메뉴출력
					
					
					
					
					System.out.println("[1.아아/2.뜨아/3.오렌지쥬스/x.이전메뉴로]");
					System.out.println("");
					cmd = sc.next();
					switch(cmd) {
					case "1":
						System.out.println("아아 선택됨");
						p1.info();
						Product x1 = new Product("아아",1000);
						basket1.add(x1);
						System.out.println("아아:"+basket1.size()+"개");
						break;
					case "2":
						System.out.println("뜨아 선택됨");
						p2.info();
						Product x2 = new Product("뜨아",1500);
						basket2.add(x2);
						System.out.println("뜨아:"+basket2.size()+"개");
						break;
					case "3":
						System.out.println("오렌지쥬스 선택됨");
						p3.info();
						Product x3 = new Product("오렌지쥬스",2000);
						basket3.add(x3);
						System.out.println("오렌지쥬스:"+basket3.size()+"개");
						break;
					case "x":
						System.out.println("이전 메뉴 이동");
						break yy;
					}
				}
			case "2":
				System.out.println("2번");
				break;
			case "e":
				System.out.println("프로그램종료");
				
				int count = basket1.size()+basket2.size()+basket3.size();
				System.out.println("장바구니에 담긴 상품 아아 : "+basket1.size()+"개 / "
						                        + "뜨아 : "+basket2.size()+"개 / "
								            + "오렌지쥬스 : "+basket3.size()+"개");
				
				int sum1 = 0;
				for(int i=0;i<basket1.size();i=i+1) {
					sum1 = sum1 + basket1.get(i).price;
				}
				int sum2 = 0;
				for(int i=0;i<basket2.size();i=i+1) {
					sum2 = sum2 + basket2.get(i).price;
				}
				int sum3 = 0;
				for(int i=0;i<basket3.size();i=i+1) {
					sum3 = sum3 + basket3.get(i).price;
				}
				
				int sum = sum1+sum2+sum3;
				System.out.println("총 상품 "+count+"개");
				System.out.println("계산하실 금액은 :"+sum+"원 입니다.");
				
				break xx;
			}
		}		
	}
}


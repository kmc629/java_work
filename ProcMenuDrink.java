package com.kmc.cafe2;

public class ProcMenuDrink {

	public void run() {
		yy: while (true) {
			// 메뉴출력
			Kiosk.p1.info();
			Kiosk.p2.info();
			Kiosk.p3.info();
			System.out.println("[1.아아/2.뜨아/3.오렌지쥬스/x.이전메뉴로]");
			System.out.println("");
			Kiosk.cmd = Kiosk.sc.next();
			switch (Kiosk.cmd) {
			case "1":
				System.out.println("아아 선택됨");
				Kiosk.p1.info();
				Product x1 = new Product("아아", 1000);
				Kiosk.basket1.add(x1);
				System.out.println("아아:" + Kiosk.basket1.size() + "개");
				break;
			case "2":
				System.out.println("뜨아 선택됨");
				Kiosk.p2.info();
				Product x2 = new Product("뜨아", 1500);
				Kiosk.basket2.add(x2);
				System.out.println("뜨아:" + Kiosk.basket2.size() + "개");
				break;
			case "3":
				System.out.println("오렌지쥬스 선택됨");
				Kiosk.p3.info();
				Product x3 = new Product("오렌지쥬스", 2000);
				Kiosk.basket3.add(x3);
				System.out.println("오렌지쥬스:" + Kiosk.basket3.size() + "개");
				break;
			case "x":
				System.out.println("이전 메뉴 이동");
				break yy;
			}
		}
	}
}

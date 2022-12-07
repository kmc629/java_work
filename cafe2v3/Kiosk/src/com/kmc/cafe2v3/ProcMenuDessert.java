package com.kmc.cafe2;

import com.kmc.util.Cw;

public class ProcMenuDessert {
	public void run() {
		zz: while (true) {
			// 메뉴출력
			Kiosk.p4.info();
			Kiosk.p5.info();
			Kiosk.p6.info();
			Cw.wn("[1.츄러스/2.마카롱/3.허니브레드/x.이전메뉴로]");
			Cw.wn("");
			Kiosk.cmd = Kiosk.sc.next();
			switch (Kiosk.cmd) {
			case "1":
				Cw.wn("츄러스 선택됨");
				Kiosk.p1.info();
				Product x4 = new Product("츄러스", 3000);
				Kiosk.basket4.add(x4);
				Cw.wn("츄러스:" + Kiosk.basket4.size() + "개");
				break;
			case "2":
				Cw.wn("마카롱 선택됨");
				Kiosk.p2.info();
				Product x5 = new Product("마카롱", 2500);
				Kiosk.basket5.add(x5);
				Cw.wn("마카롱:" + Kiosk.basket5.size() + "개");
				break;
			case "3":
				Cw.wn("허니브레드 선택됨");
				Kiosk.p3.info();
				Product x6 = new Product("허니브레드", 4000);
				Kiosk.basket6.add(x6);
				Cw.wn("허니브레드:" + Kiosk.basket6.size() + "개");
				break;
			case "x":
				Cw.wn("이전 메뉴 이동");
				break zz;
			}
		}
	}
}

package com.kmc.cafe2;

import java.util.ArrayList;
import java.util.Scanner;

import com.kmc.util.Cw;
import com.kmc.util.Disp;

public class Kiosk {
	ProcMenuDrink procMenuDrink = new ProcMenuDrink();
	ProcMenuDessert procMenuDessert = new ProcMenuDessert();
	public static ArrayList<Product> basket1 = new ArrayList<Product>();
	public static ArrayList<Product> basket2 = new ArrayList<Product>();
	public static ArrayList<Product> basket3 = new ArrayList<Product>();
	public static ArrayList<Product> basket4 = new ArrayList<Product>();
	public static ArrayList<Product> basket5 = new ArrayList<Product>();
	public static ArrayList<Product> basket6 = new ArrayList<Product>();

	// 자동임포트 단축키: ctrl+shift+o(영문자O)
	public static Scanner sc = new Scanner(System.in);

	public static Product p1 = new Product("아아", 1000);
	public static Product p2 = new Product("뜨아", 1500);
	public static Product p3 = new Product("오렌지쥬스", 2000);
	public static Product p4 = new Product("츄러스", 3000);
	public static Product p5 = new Product("마카롱", 2500);
	public static Product p6 = new Product("허니브레드", 4000);

	public static String cmd;

	void run() {
		Disp.title();

		for (Product String : basket1) {
		}
		for (Product String : basket2) {
		}
		for (Product String : basket3) {
		}
		for (Product String : basket4) {
		}
		for (Product String : basket5) {
		}
		for (Product String : basket6) {
		}

		String cmd;
		xx: while (true) {
			System.out.print("명령 입력[1.음료선택/2.디저트선택/e.프로그램종료]:");
			cmd = sc.next();
			switch (cmd) {
			case "1":
				procMenuDrink.run();
				break;

			case "2":
				procMenuDessert.run();
				break;
			case "e":
				Cw.wn("프로그램종료");

				int count = basket1.size() + basket2.size() + basket3.size();
				Cw.wn("장바구니에 담긴 상품 아아 : " + basket1.size() + "개 / " + "뜨아 : " + basket2.size() + "개 / "
						+ "오렌지쥬스 : " + basket3.size() + "개 / " + "츄러스 : " + basket4.size() + "개 / " + "마카롱 : "
						+ basket5.size() + "개 / " + "허니브레드 : " + basket6.size() + "개");

				int sum1 = 0;
				for (Product String : basket1) {
					sum1 = sum1 + String.price;
				}
				int sum2 = 0;
				for (Product String : basket2) {
					sum2 = sum2 + String.price;
				}
				int sum3 = 0;
				for (Product String : basket3) {
					sum3 = sum3 + String.price;
				}
				int sum4 = 0;
				for (Product String : basket4) {
					sum4 = sum4 + String.price;
				}
				int sum5 = 0;
				for (Product String : basket5) {
					sum5 = sum5 + String.price;
				}
				int sum6 = 0;
				for (Product String : basket6) {
					sum6 = sum6 + String.price;
				}

				int sum = sum1 + sum2 + sum3 + sum4 + sum5 + sum6;
				Cw.wn("총 상품 " + count + "개");
				Cw.wn("계산하실 금액은 :" + sum + "원 입니다.");

				break xx;
			}
		}
	}
}

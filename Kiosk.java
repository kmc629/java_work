package com.kmc.cafe2;

import java.util.ArrayList;
import java.util.Scanner;

import com.kmc.util.Cw;
import com.kmc.util.Disp;

public class Kiosk {
	ProcMenuDrink procMenuDrink = new ProcMenuDrink();

	int sumPrice = 0;
	public static ArrayList<Product> basket1 = new ArrayList<Product>();
	public static ArrayList<Product> basket2 = new ArrayList<Product>();
	public static ArrayList<Product> basket3 = new ArrayList<Product>();
	// 자동임포트 단축키: ctrl+shift+o(영문자O)
	public static Scanner sc = new Scanner(System.in);

	public static Product p1 = new Product("아아", 1000);
	public static Product p2 = new Product("뜨아", 1500);
	public static Product p3 = new Product("오렌지쥬스", 2000);

	public static String cmd;

	void run() {
		Disp.title();

		for (int i = 0; i < basket1.size(); i = i + 1) {
			basket1.get(i).info();
		}
		for (int i = 0; i < basket2.size(); i = i + 1) {
			basket2.get(i).info();
		}
		for (int i = 0; i < basket3.size(); i = i + 1) {
			basket3.get(i).info();
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
				System.out.println("2번");
				break;
			case "e":
				System.out.println("프로그램종료");

				int count = basket1.size() + basket2.size() + basket3.size();
				System.out.println("장바구니에 담긴 상품 아아 : " + basket1.size() + "개 / " + "뜨아 : " + basket2.size() + "개 / "
						+ "오렌지쥬스 : " + basket3.size() + "개");

				int sum1 = 0;
				for (int i = 0; i < basket1.size(); i = i + 1) {
					sum1 = sum1 + basket1.get(i).price;
				}
				int sum2 = 0;
				for (int i = 0; i < basket2.size(); i = i + 1) {
					sum2 = sum2 + basket2.get(i).price;
				}
				int sum3 = 0;
				for (int i = 0; i < basket3.size(); i = i + 1) {
					sum3 = sum3 + basket3.get(i).price;
				}

				int sum = sum1 + sum2 + sum3;
				System.out.println("총 상품 " + count + "개");
				System.out.println("계산하실 금액은 :" + sum + "원 입니다.");

				break xx;
			}
		}
	}
}

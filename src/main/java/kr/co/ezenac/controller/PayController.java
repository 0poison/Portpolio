package kr.co.ezenac.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PayController {

	@RequestMapping("/order/pay")
	@ResponseBody
	public String kakaoPay() {

		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("Authorization", "KakaoAK dac41410dcd5ff733cd027436da94a5c");
			con.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			con.setDoOutput(true);

			String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=eZenComputer&quantity=1&total_amount=100&vat_amount=10&tax_free_amount=0&approval_url=http://pc.java-webapp.blog/pay_success&fail_url=http://pc.java-webapp.blog/pay_fail&cancel_url=http://pc.java-webapp.blog/pay_cancel";
			OutputStream give = con.getOutputStream();
			DataOutputStream dataGive = new DataOutputStream(give);
			dataGive.writeBytes(parameter);
			dataGive.flush();
			dataGive.close();

			int resultCode = con.getResponseCode();

			InputStream receive;
			if (resultCode == 200) {
				receive = con.getInputStream();

			} else {
				receive = con.getErrorStream();
			}

			InputStreamReader read = new InputStreamReader(receive);
			BufferedReader shape = new BufferedReader(read);

			return shape.readLine();

		} catch (MalformedURLException e) {
			e.printStackTrace();

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "user/order/order_info";
	}

	@RequestMapping("/pay/pay_success")
	public String pay_success() {
		return "user/pay/pay_success";
	}

	@RequestMapping("/pay/pay_fail")
	public String pay_fail() {
		return "user/pay/pay_fail";
	}

	@RequestMapping("/pay/pay_cancel")
	public String pay_cancel() {
		return "user/pay/pay_ceancel";
	}

}

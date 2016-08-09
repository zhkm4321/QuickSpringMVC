package ssm;

import org.junit.Test;

import com.google.gson.Gson;

import me.pwcong.ssm.entity.User;
import me.pwcong.ssm.utils.DigestCoder;
import me.pwcong.ssm.utils.HttpClientUtil;



public class TestUser {

	static Gson gson;
	static{
		gson=new Gson();
	}

	//@Test
	public void Test01(){

		User user=new User();
		user.setUserId("test0001");
		user.setPassword(DigestCoder.MD5Encode("123456"));

		String postJsonEntity = HttpClientUtil.postJsonEntity("http://localhost:8080/simplechat/user/register.action", user);
		System.out.println(postJsonEntity);




	}



	@Test
	public void Test03(){


		User user=new User();
		user.setUserId("test0001");
		user.setPassword(DigestCoder.MD5Encode("123456"));
		String postJsonEntity = HttpClientUtil.postJsonEntity("http://localhost:8080/QuickSpringMVC/user/login.action", user);
		System.out.println(postJsonEntity);

	}


}

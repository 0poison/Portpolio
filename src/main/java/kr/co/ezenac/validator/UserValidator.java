package kr.co.ezenac.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.co.ezenac.beans.UserBean;

public class UserValidator implements Validator {
	
	@Override
	public boolean supports(Class<?> clazz) {
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		UserBean userBean = (UserBean) target;

		String beanName = errors.getObjectName();

		if (beanName.equals("joinUserBean") || beanName.equals("modifyUserBean")) {
			if (userBean.getUserPw().equals(userBean.getUserPw2()) == false) {
				errors.rejectValue("userPw", "NotEquals");
				errors.rejectValue("userPw2", "NotEquals");
			}
		}

		if (beanName.equals("joinUserBean")) {

			if (userBean.isUserIdExist() == false) {
				errors.rejectValue("userId", "DontCheckUserIdExist");
			}
		}
	}
}

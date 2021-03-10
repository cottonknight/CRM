package interceptor;


import javax.annotation.Resource;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import biz.CustomerBiz;


@Aspect
@Component
public class AopInterceptor {
	@Resource
	private CustomerBiz biz;
	// 1.第一个* 代表任意的返回类型 2.类名 3.方法名 (..所有参数)
	@Pointcut("execution(* biz.impl.*.*(..))")
	private void anyMethod() {
	}; // 声明一个切入点

	@Around("anyMethod()")
	public Object doAround(ProceedingJoinPoint pjp) throws Throwable { // 要执行pip.proceed方法
		String classname = pjp.getSignature().getDeclaringTypeName();
		System.out.println("日志log-----------------"+classname);
		return pjp.proceed(); // 继续往下执行
	}
}

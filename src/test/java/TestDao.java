import com.fyx.mvc.dao.ManagerDao;
import com.fyx.mvc.entity.Employee;
import com.fyx.mvc.service.EmployeeService;
import com.fyx.mvc.service.ManagerService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestDao {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/applicationContext.xml");
		
		/*ManagerDao md = (ManagerDao) ctx.getBean("managerDao");
		
		System.out.println(md.selectByPrimaryKey("tom111"));*/

		/*ManagerService ms = (ManagerService) ctx.getBean("managerService");

		System.out.println(ms.login("tom111","111"));*/

		/*ManagerService managerService = (ManagerService) ctx.getBean("managerService");

		System.out.println(managerService.selectByPrimaryKey(4));*/

		EmployeeService employeeService = (EmployeeService)ctx.getBean("employeeService");
		System.out.println(employeeService.selectById(7));
		
	}

}

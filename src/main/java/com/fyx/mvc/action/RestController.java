package com.fyx.mvc.action;

import com.fyx.mvc.entity.Manager;
import com.fyx.mvc.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/rest")
public class RestController {
    @Autowired
    ManagerService managerService;

/*

    @GetMapping
    @ResponseBody
    public ResponseEntity<Manager> m1(){
        try {
            Manager manager = managerService.selectByPrimaryKey("tom111");
            if(manager == null){
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
            }
            return ResponseEntity.ok(manager);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }

    @PostMapping("/m2")
    public @ResponseBody ResponseEntity m2(@RequestBody Manager manager){
        try {
            boolean flag = managerService.insert(manager);
            return ResponseEntity.ok(flag);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
    }

    @DeleteMapping("/m3")
    @ResponseBody
    public boolean m3(@RequestBody String mgrname){
        return managerService.deleteByPrimaryKey("管理员12");
    }

    @PutMapping("/m4")
    public boolean m4(Manager manager){
        return managerService.updateByPrimaryKey(manager);
    }


    @GetMapping("/m5")
    @ResponseBody
    public boolean m5(@RequestBody Manager manager){

        System.out.println(manager.getMgrname());
        System.out.println(manager.getMgrpwd());

        return false;

    }
*/

}

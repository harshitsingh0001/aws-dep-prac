package com.example.ec2practice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Controller {
    
    @GetMapping("/getdata")
    public void getData(){
        System.out.println("running applcation");
        System.out.println("hello hello");
    }
}

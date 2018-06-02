package com.fhgroup.analysis.Task.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TaskController {

    @ResponseBody
    @RequestMapping("/task")
    public String task(){
        return "task";
    }
}

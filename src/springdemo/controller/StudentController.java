package springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import springdemo.beans.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

    @RequestMapping("/showForm")
    public String studentForm(Model theModel)
    {
        theModel.addAttribute("student", new Student());
        return "student-form";
    }

    @RequestMapping("/processForm")
    public String studentProcessForm(@ModelAttribute("student") Student stu)
    {
        return "student-process-form";
    }
}

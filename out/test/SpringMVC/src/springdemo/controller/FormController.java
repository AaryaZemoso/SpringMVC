package springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class FormController {

    @RequestMapping("/showForm")
    public String showForm(){   return "form"; }

    @RequestMapping("/processForm")
    public String showFormOutput(){ return "form-output"; }

    @RequestMapping("/showForm2")
    public String showForm2(){  return "form-2"; }

    @RequestMapping("/processForm2")
    public String letsShoutDude(HttpServletRequest request, Model model)
    {
        model.addAttribute("message", request.getParameter("uname").toUpperCase());
        return "helloworld";
    }

    @RequestMapping("/processForm3")
    public String newShoutDude(@RequestParam("uname") String name, Model model)
    {
        model.addAttribute("message", name);
        return "helloworld";
    }

}

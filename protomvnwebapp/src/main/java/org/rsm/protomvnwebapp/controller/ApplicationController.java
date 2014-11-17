package org.rsm.protomvnwebapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class ApplicationController {

   @RequestMapping(value="/Test", method = RequestMethod.GET)
   public String welcome(ModelMap model) {
      model.addAttribute("msgArgument", "Maven Java Web Application Project: Success!");

      return "index";
   }
   
   @RequestMapping(value="/Testjs", method = RequestMethod.GET)
   public String welcomejs(ModelMap model) {
      model.addAttribute("msgArgument", "Testing java script frameworks !");

      return "testjs";
   }

   @RequestMapping(value="/Print/{arg}", method = RequestMethod.GET)
   public String welcomeName(@PathVariable String arg, ModelMap model) {
      model.addAttribute("msgArgument", "Maven Java Web Application Project, input variable: " + arg);

      return "index";
   }
   
   @RequestMapping(value="/Welcome", method = RequestMethod.GET)
   public String welcomeValid(ModelMap model) {
      model.addAttribute("msgArgument", "Testing java script frameworks !");

      return "welcome";
   }
}
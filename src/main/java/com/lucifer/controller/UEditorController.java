package com.lucifer.controller;

import com.baidu.ueditor.ActionEnter;
import org.json.JSONException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by liufx on 17/1/18.
 */
@Controller
@RequestMapping(value = "/ueditor")
public class UEditorController {


    @RequestMapping(value = "/controller.json")
    public String exec(HttpServletRequest request,HttpServletResponse response) throws JSONException {

           return new ActionEnter( request, "/" ).exec();
    }


}

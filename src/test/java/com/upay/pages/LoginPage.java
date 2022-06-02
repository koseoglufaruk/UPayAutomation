package com.upay.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LoginPage extends BasePage{
    @FindBy(xpath = "//input[@name='email']")
    public WebElement username;
    @FindBy(xpath = "//input[@name='password']")
    public WebElement password;
    @FindBy(css = ".signin.btn.green.uppercase.col-xs-12")
    public WebElement loginBtn;

    public void login(){
        username.sendKeys("upay@yopmail.com");
        password.sendKeys("123456");
        loginBtn.click();
    }
}

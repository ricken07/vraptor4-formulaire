/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ricken.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import com.ricken.model.Bean;
import javax.inject.Inject;

/**
 *
 * @author Ricken BAZOLO
 */
@Controller
public class MainController {
    
    private Result result;

    public MainController() {
    }

    @Inject
    public MainController(Result result) {
        this.result = result;
    }
    
    
    @Get("/")
    public void index(){
        
    }
    
    @Post("/test")
    public void test(Bean bean){
        result.include("nom", bean.getNom());
        result.include("prenom", bean.getPrenom());
        result.forwardTo(this).index();
    }
    
}

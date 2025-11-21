package com.idat.API_REST_security.controller;

import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PublicController {

    @GetMapping("/api/publico")
    public String publico() {
        return "¡Bienvenido! Este es un recurso público. Todos pueden verlo.";
    }

    @GetMapping("/api/interno")
    public String interno(Authentication auth) {
        return "Hola " + auth.getName() + ", tienes acceso al área interna.";
    }

    @GetMapping("/api/admin/gestion")
    public String admin() {
        return "¡Bienvenido ADMIN! Tienes acceso al panel de gestión.";
    }
}

package ru.netology.hwdaolayer.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.hwdaolayer.service.DaoService;

import java.util.List;

@RestController
public class DaoController {
    private DaoService service;

    public DaoController(DaoService service) {
        this.service = service;
    }

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam String name) {
        return service.getProductName(name);
    }

}

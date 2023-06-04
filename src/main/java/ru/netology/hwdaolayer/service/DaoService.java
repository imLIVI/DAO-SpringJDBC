package ru.netology.hwdaolayer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.netology.hwdaolayer.repository.DaoRepository;

import java.util.List;

@Service
public class DaoService {
    private DaoRepository daoRepository;

    @Autowired
    public DaoService(DaoRepository daoRepository) {
        this.daoRepository = daoRepository;
    }

    public List<String> getProductName(String name) {
        if (isEmpty(name)) {
            return null;
        }
        return daoRepository.getProductName(name);
    }

    private boolean isEmpty(String str) {
        return str == null || str.isEmpty();
    }
}

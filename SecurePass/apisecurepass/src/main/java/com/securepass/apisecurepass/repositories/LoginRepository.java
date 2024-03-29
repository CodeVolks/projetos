package com.securepass.apisecurepass.repositories;

import com.securepass.apisecurepass.models.LoginModel;
import com.securepass.apisecurepass.models.UserModel;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;
import java.util.UUID;

public interface LoginRepository extends JpaRepository<LoginModel, UUID> {

    List<LoginModel> findByUser(UserModel user);
}
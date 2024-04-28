package org.example.controller.auth;

import jakarta.servlet.http.HttpSession;
import org.example.auth.AuthenticationService;
import org.example.auth.RegisterRequest;

import org.example.entities.Account;
import org.example.services.IAccountService;
import org.example.services.Impl.EmailServiceImpl;
import org.example.services.securityService.AuthService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import  org.example.repository.*;
import org.example.repository.*;
import org.example.services.securityService.*;
import java.util.HashMap;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicReference;

@Controller
@RequiredArgsConstructor
public class AuthController {

    private final AuthenticationService service;
    private final AccountRepository accountRepository;
    private final AuthService authService;
    private final PasswordEncoder passwordEncoder;
    private final GetIDAccountFromAuthService getIDAccountFromAuthService;
    @Autowired
    private final EmailServiceImpl emailService;
    @Autowired
    private final IAccountService accountService;
    @GetMapping("/login**")
    public String login() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String loginPage(Model model) {
        model = authService.common(model);
        return "views/auth/signin";
    }

    @GetMapping("/register**")
    public String register() {
        return "redirect:/register";
    }

    @GetMapping("/register")
    public String registerPage(Model model) {
        RegisterRequest user = new RegisterRequest();
        model.addAttribute("user", user);
        return "views/auth/signup";
    }

    @Validated
    @PostMapping("/register/save")
    public String registerHandle(@Valid @ModelAttribute("user") RegisterRequest request,
                                 BindingResult result,
                                 RedirectAttributes redirectAttributes) {
        HashMap<String, Object> log = new HashMap<String, Object>();
        log.put("type", "success");
        log.put("message", "success, confirm your gmail and then you can login");
        HashMap<String, Object> error = new HashMap<String, Object>();
        var existingUserEmail = accountRepository.findByEmail(request.getEmail());
        if (existingUserEmail.isPresent() && existingUserEmail.get().getEmail() != null && !existingUserEmail.get().getEmail().isEmpty()) {
            result.rejectValue("email", "There is already a user with this email");
            error.put("email", "There is already a user with this email");

        }
        var existingUserName = accountRepository.findByUsername(request.getUsername());
        if (existingUserName.isPresent() && existingUserName.get().getUsername() != null && !existingUserName.get().getUsername().isEmpty()) {
            result.rejectValue("username", "There is already a user with this username");
            error.put("username", "There is already a user with this username");

        }
        if (!result.hasErrors()) {
            service.register(request);
        } else {
            log.put("type", "error");
            log.put("message", "something wrong");
            for (Object object : result.getAllErrors()) {
                if (object instanceof FieldError) {
                    FieldError fieldError = (FieldError) object;
//                    error.put(fieldError.getField(), fieldError.getDefaultMessage());
                    if (error.containsKey(fieldError.getField())) {
                        String currentValue = (String) error.get(fieldError.getField());
                        if (fieldError.getDefaultMessage() != null) {
                            // Concatenate the new value with ',' in the middle
                            String updatedValue = currentValue + "," + fieldError.getDefaultMessage();

                            // Update the value in the HashMap
                            error.put(fieldError.getField(), updatedValue);
                        }
                    } else {
                        error.put(fieldError.getField(), fieldError.getDefaultMessage());
                    }
                }
            }
            log.put("errors", error);
        }
        redirectAttributes.addFlashAttribute("log", log);
        RegisterRequest user = new RegisterRequest();
        redirectAttributes.addFlashAttribute("user", user);

        return "redirect:/login";
    }

    @GetMapping("/logout")
    public String logout() {
        System.out.println("Toi Day");
        return "home";
    }
    @GetMapping(value="/fill_email")
    public String fill_email(){
        return "views/auth/forgot";
    }

    @PostMapping(value="/fill_email") // forgot password
    public String fill_email(@RequestParam("email") String email,
                             RedirectAttributes redirectAttributes,
                             HttpSession session){
        Optional<Account> userOpt = accountService.findAccountByEmail(email);
        if(userOpt.isPresent()){
            Account user = userOpt.get();
            String code = emailService.generateRandomCode();

            String newspass= passwordEncoder.encode(code);
            user.setPassword(newspass);
            accountService.save(user);
            // send email
            String subject = "[Book Shop] Quên mật khẩu";
            String text = "Mật khẩu mới của bạn là: " + code + "\n" +
                    "Hãy đổi mật khẩu ngay khi có thể.";
            emailService.sendSimpleMessage(email,subject,text);

            return "redirect:/login";
        }
        else{
            redirectAttributes.addFlashAttribute("error","Email chưa được đăng ký");
            return "redirect:/fill_email";
        }
    }
}

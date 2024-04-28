package org.example.controller.user;

import lombok.RequiredArgsConstructor;
import org.example.entities.*;
import org.example.repository.AccountRepository;
import org.example.services.*;
import org.example.services.securityService.AuthService;
import org.example.services.securityService.GetIDAccountFromAuthService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequiredArgsConstructor
public class InfoAccountController {
    private final AuthService authService;
    private final GetIDAccountFromAuthService getIDAccountService;
    private final IAccountService accountService;
    private final ICategoryService categoryService;
    private final ITypeService typeService;
    private final IBillInfoService billInfoService;
    private final PasswordEncoder passwordEncoder;
    private final IReviewService reviewService;

    @RequestMapping("/info")
    public String Cart (Model model){
        model = authService.common(model);
        int idAccount = getIDAccountService.common(model);
        Account account = accountService.findAccountByAccountID(idAccount);
        List<Category> categories = categoryService.findAll();
        List<Type>types=typeService.findAll();
        List<BillInfo> billinfo = billInfoService.findBillInfoByBillIDAccountID(idAccount);
        List<Review> reviews = reviewService.findReviewByAccountIDAccountID(idAccount);

        model.addAttribute("categories", categories);
        model.addAttribute("types", types);
        model.addAttribute("billinfo", billinfo);
        model.addAttribute("account", account);
        model.addAttribute("reviews", reviews);
        if (idAccount!=-1)
            return "views/auth/account";
        else
            return "redirect:/login";
    }

    @PostMapping("/updateinfo")
    public void updateProductListTypeAgeAndPriceAndLanguage(@RequestParam("nameUpdate") String nameUpdate,
                                                              @RequestParam("phonenumberUpdate") String phonenumberUpdate,
                                                              @RequestParam("AddressUpdate") String AddressUpdate,
                                                              Model model) {
        model = authService.common(model);
        int idAccount = getIDAccountService.common(model);

        accountService.updateAddressEmailPhoneNumberAccount(nameUpdate,phonenumberUpdate,AddressUpdate,idAccount);
    }
    @PostMapping("/changepassword")
    public void updateChangePassword(@ RequestParam("newpass") String newpass,@RequestParam("conpass") String conpass,Model model) {
        model = authService.common(model);
        int idAccount = getIDAccountService.common(model);
        String updatepass = passwordEncoder.encode(newpass);
        accountService.updatePassword(updatepass,idAccount);
    }


}

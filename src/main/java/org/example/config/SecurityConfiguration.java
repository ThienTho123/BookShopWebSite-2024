package org.example.config;

import jakarta.servlet.DispatcherType;
import lombok.RequiredArgsConstructor;
import org.example.config.JwtAuthenticationFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher.Builder;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;


import java.util.ArrayList;
import java.util.List;

import static org.example.entities.enums.Role.ADMIN;
import static org.example.entities.enums.Role.USER;
import static org.springframework.security.config.http.SessionCreationPolicy.ALWAYS;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
@EnableMethodSecurity
public class SecurityConfiguration {

    private static final String[] WHITE_LIST_URL = {"/api/v1/auth/**",
            "/api/v1/admin/**",
            "/api/v1/payments/viewgiohang/**",
            "/v3/api-docs/**",
            "/swagger-resources",
            "/swagger-resources/**",
            "/configuration/ui",
            "/configuration/security",
            "/swagger-ui/**",
            "/webjars/**",
            "/swagger-ui.html",
            "/resources/**",

    };
    private final JwtAuthenticationFilter jwtAuthFilter;
    private final AuthenticationProvider authenticationProvider;
    private final LogoutHandler logoutHandler;

    @Bean
    Builder mvc(HandlerMappingIntrospector introspector) {
        return new Builder(introspector);
    }


    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http, Builder mvc) throws Exception {
        http
                .csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests(req ->
                                req
                                        .requestMatchers(
                                                mvc.pattern(WHITE_LIST_URL[0]),
                                                mvc.pattern(WHITE_LIST_URL[1]),
                                                mvc.pattern(WHITE_LIST_URL[2]),
                                                mvc.pattern(WHITE_LIST_URL[3]),
                                                mvc.pattern(WHITE_LIST_URL[4]),
                                                mvc.pattern(WHITE_LIST_URL[5]),
                                                mvc.pattern(WHITE_LIST_URL[6]),
                                                mvc.pattern(WHITE_LIST_URL[7]),
                                                mvc.pattern(WHITE_LIST_URL[8]),
                                                mvc.pattern(WHITE_LIST_URL[9]),
                                                mvc.pattern(WHITE_LIST_URL[11]),
                                                mvc.pattern(WHITE_LIST_URL[10]),
                                                mvc.pattern("/bookshop/**")
                                        )
                                        .permitAll()
                                        .requestMatchers(mvc.pattern("/api/v1/management/**")).hasAnyRole(ADMIN.name())
//                                .requestMatchers(GET, "/api/v1/management/**").hasAnyAuthority(ADMIN_READ.name(), MANAGER_READ.name())
//                                .requestMatchers(POST, "/api/v1/management/**").hasAnyAuthority(ADMIN_CREATE.name(), MANAGER_CREATE.name())
//                                .requestMatchers(PUT, "/api/v1/management/**").hasAnyAuthority(ADMIN_UPDATE.name(), MANAGER_UPDATE.name())
                                        .requestMatchers(mvc.pattern("/admin")).hasAnyAuthority(USER.name())
                                        .requestMatchers(mvc.pattern("/dashboard")).hasAnyAuthority(USER.name())
                                        .dispatcherTypeMatchers(DispatcherType.FORWARD, DispatcherType.REQUEST).permitAll()
                                        .anyRequest()
//                                        .permitAll()
//                                        .denyAll()
                                        .authenticated()
                )
                .sessionManagement(session -> session.sessionCreationPolicy(ALWAYS))
                .authenticationProvider(authenticationProvider)
                .addFilterBefore(jwtAuthFilter, UsernamePasswordAuthenticationFilter.class)
                .formLogin(form -> form
                        .loginPage("/login")
                        .defaultSuccessUrl("/")
                        .loginProcessingUrl("/login")
                        .failureForwardUrl("/register")
                        .failureUrl("/login?error") // Chuyển hướng đến /login với tham số ?error khi đăng nhập thất bại
                        .permitAll()

                )
                .logout(logout ->
                        logout.logoutUrl("/logout")
                                .addLogoutHandler(logoutHandler)
                                .logoutSuccessUrl("/")
                )
        ;

        return http.build();
    }
}
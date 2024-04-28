package org.example.services.Impl;

import org.example.entities.*;
import org.example.repository.*;
import org.example.services.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BannerServiceImpl  implements IBannerService {
    @Autowired
    private BannerRepository bannerRepository;

    @Override
    public List<Banner> find3BannerLeft() {
        return bannerRepository.find3BannerLeft();
    }

    @Override
    public List<Banner> find4BannerMid() {
        return bannerRepository.find4BannerMid();
    }

    @Override
    public Banner find1BannerRight() {
        return bannerRepository.find1BannerRight();
    }

    @Override
    public List<Banner> find4BannerUnder() {
        return bannerRepository.find4BannerUnder();
    }
}

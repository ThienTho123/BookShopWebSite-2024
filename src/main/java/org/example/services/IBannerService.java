package org.example.services;

import org.example.entities.*;

import java.util.List;

public interface IBannerService {
    List<Banner>find3BannerLeft();
    List<Banner>find4BannerMid();
    Banner find1BannerRight();
    List<Banner>find4BannerUnder();

}

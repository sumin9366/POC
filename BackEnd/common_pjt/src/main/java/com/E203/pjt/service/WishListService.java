package com.E203.pjt.service;

import com.E203.pjt.model.dto.res.PartyResVO;
import com.E203.pjt.model.entity.Party;
import com.E203.pjt.model.entity.WishList;

import java.util.List;

public interface WishListService {
    List<PartyResVO> listWishList(Integer userSeq);
    WishList insertWishList(Integer partySeq);
    boolean deleteWishList(Integer partySeq);
}

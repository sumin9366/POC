package com.E203.pjt.service;

import com.E203.pjt.model.dto.req.MyPartyReqVO;
import com.E203.pjt.model.entity.MyParty;

import java.util.List;

public interface MyPartyService {
    void insertMyParty(MyPartyReqVO myPartyReqVO);
    void deleteMyParty(MyPartyReqVO myPartyReqVO);
}

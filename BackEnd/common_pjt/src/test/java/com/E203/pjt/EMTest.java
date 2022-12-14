//package com.E203.pjt;
//
//import com.E203.pjt.model.entity.*;
//import org.junit.jupiter.api.Test;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.test.annotation.Rollback;
//import org.springframework.transaction.annotation.Transactional;
//
//import javax.persistence.EntityManager;
//import javax.persistence.PersistenceContext;
//import java.time.LocalDateTime;
//import java.util.Optional;
//
//@SpringBootTest
//@Transactional
//@Rollback(value = false)
//public class EMTest {
//    @PersistenceContext
//    EntityManager em;
//
//    @Test
//    void myPartyTest() {
//        MyPartyPK pk = new MyPartyPK(2, 1);
//        MyParty myParty = new MyParty();
//        myParty.setMyPartyPK(pk);
//        myParty.setParty(em.find(Party.class, 2));
//        myParty.setUser(em.find(User.class, 1));
//        myParty.setPartyListCode("host");
//        em.persist(myParty);
//        em.flush();
//        em.clear();
//    }
//
//    @Test
//    void chatLogTest() {
//        ChatLog chatLog = new ChatLog();
//        ChatRoom chatRoom = em.find(ChatRoom.class, 1);
//        em.persist(chatRoom);
//        chatLog.setChatRoom(chatRoom);
//        chatLog.setChatContent("제가사고싶어요");
//        chatLog.setChatCreatedAt(LocalDateTime.now());
//        chatLog.setChatUpdatedAt(LocalDateTime.now());
//        chatLog.setUserNickname("nickname");
//
//        em.persist(chatLog);
//    }
//
//    @Test
//    void partyTest() {
//        Party party = new Party();
//        User u = em.find(User.class, 1);
//        em.persist(u);
//        party.setUser(u);
//        party.setPartyCode("001");
//        party.setPartyTitle("eee");
//        party.setPartyContent("eee");
//        party.setPartyRegDt(LocalDateTime.now());
//        party.setPartyRdvLat("44");
//        party.setPartyRdvLng("234");
//        party.setPartyMemberNumTotal(3);
//        party.setPartyMemberNumCurrent(2);
//        party.setPartyRdvDt(LocalDateTime.now());
//        party.setPartyAddr("ee");
//        party.setPartyAddrDetail("ee");
//        party.setPartyStatus(0);
//        party.setItemLink("ee");
//        party.setTotalAmount("12341234");
//        em.persist(party);
//    }
//
//    @Test
//    void userTest() {
//    }
//
//
//}

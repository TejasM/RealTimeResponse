package rtr.repo;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import rtr.domain.Member;

@Repository
@Transactional
public class MemberDaoImpl implements MemberDao
{
    @Autowired
    private EntityManager em;

    public Member findById(String username)
    {
        return em.find(Member.class, username);
    }

    public void register(Member member)
    {
        em.persist(member);
        return;
    }
}

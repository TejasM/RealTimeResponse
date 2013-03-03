package rtr.repo;

import rtr.domain.Member;

public interface MemberDao
{
    public Member findById(String username);

    public void register(Member member);
}

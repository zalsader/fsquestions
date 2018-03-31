update fsfunction f set tally = (select count(distinct fp.postId) from fsfunctionposts fp where fp.fsId = f.Id);
select name, tally from fsfunction;

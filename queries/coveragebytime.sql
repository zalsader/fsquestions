select
concat(m.yearp, '-', m.monthp) as yearmonth,
((m.yearp - 2008) * 12 + m.monthp) as yearmonthnum,
count(distinct if(m.tally >=1, m.fsid, null)) as covered1,
count(distinct if(m.tally >=2, m.fsid, null)) as covered2,
count(distinct if(m.tally >=5, m.fsid, null)) as covered5,
count(distinct if(m.tally >=10, m.fsid, null)) as covered10
from (
	select count(distinct postId) as tally, fsid, Year(p.CreationDate) as yearp, Month(p.CreationDate) as monthp
	from fsfunctionposts fp
	inner join postsfiltered p on p.Id = COALESCE(fp.answerPostId, fp.postId)
	group by fsid
) m
group by m.yearp, m.monthp;

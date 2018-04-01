select p.title from postsfiltered p where p.id in (select fp.postid from fsfunctionposts fp);
select p.body from postsfiltered p where p.id in (select fp.postid from fsfunctionposts fp);
select p.body from postsfiltered p where p.parentid in (select fp.postid from fsfunctionposts fp);

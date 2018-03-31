delete p
FROM posts p left join posts m on (m.Id = p.ParentId and m.PostTypeId = 1 )
where p.PostTypeId = 2 and m.Id is null
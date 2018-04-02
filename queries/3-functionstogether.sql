select f1.name as firstname, c1.name as firstcategory, f2.name as secondname, c2.name as secondcategory, count(fp1.id) as freq from fsfunctionposts fp1
inner join fsfunctionposts fp2 on fp1.fsid < fp2.fsid and fp1.postId = fp2.postId
inner join fsfunction f1 on fp1.fsId = f1.id
inner join fscategories c1 on c1.Id = f1.categoryId
inner join fsfunction f2 on fp2.fsId = f2.id
inner join fscategories c2 on c2.Id = f2.categoryId
where c1.id = c2.id
group by fp1.fsid, fp2.fsid order by freq desc;
select f1.name as firstname, c1.name as firstcategory, f2.name as secondname, c2.name as secondcategory, count(fp1.id) as freq from fsfunctionposts fp1
inner join fsfunctionposts fp2 on fp1.fsid < fp2.fsid and fp1.postId = fp2.postId
inner join fsfunction f1 on fp1.fsId = f1.id
inner join fscategories c1 on c1.Id = f1.categoryId
inner join fsfunction f2 on fp2.fsId = f2.id
inner join fscategories c2 on c2.Id = f2.categoryId
where c1.id != c2.id
group by fp1.fsid, fp2.fsid order by freq desc;

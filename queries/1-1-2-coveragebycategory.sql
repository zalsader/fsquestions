select c.name, count(f.Id) as totalCount, count(if(f.tally >= 1, 1, null)) as covered1, count(if(f.tally >= 2, 1, null)) as covered2, count(if(f.tally >= 5, 1, null)) as covered5, count(if(f.tally >= 10, 1, null)) as covered10 from fsfunction f
inner join fscategories c on c.Id = f.categoryId
group by c.Id;

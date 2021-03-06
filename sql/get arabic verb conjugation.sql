select * from AllVerbs 
where lemma IN (
select distinct lemma from wordpartinformation 
where type = 'STEM' and Tag = 'V')
and grammar IN ( N'الماضي المعلوم', N'المضارع المعلوم')
and pronoun in ( N'هو',N'هما', N'هم',N'أنت', N'أنتما', N'أنتم', N'أنا', N'نحن')
and vowel = N'ُ'
order by lemma, 
	grammar, case 
	
	when Pronoun=N'هو' then 1
	when Pronoun=N'هما' then 2
	when Pronoun=N'هم' then 3
	when Pronoun=N'أنت' then 4
	when Pronoun=N'أنتما' then 5
	when Pronoun=N'أنتم' then 6
	when Pronoun=N'أنا' then 7
	when Pronoun=N'نحن' then 8
	when Pronoun=N'هي' then 9
	when Pronoun=N'هن' then 10
	end 

--Problem 310
/*
Alice and Bob play the game Nim Square.
Nim Square is just like ordinary three-heap normal play Nim, but the players may only remove a square number of stones from a heap.
The number of stones in the three heaps is represented by the ordered triple (a,b,c).
If 0≤a≤b≤c≤29 then the number of losing positions for the next player is 1160.

Find the number of losing positions for the next player if 0≤a≤b≤c≤100 000.
*/

with
num as
(
select 1 as num
union all select num + 1 from num where num < 29
),
piles as
(
select n1.num as a, n2.num as b, n3.num as c
from num n1 cross join num n2 cross join num n3
where
n1.num <= n2.num
and n2.num <= n3.num
), 
squares as
(
select 0 as sq union all select 1 union all select 4 union all select 9 union all select 16 union all select 25
),
squares_combinations as
(
select 
sq1.sq as [1], sq2.sq as [2], sq3.sq as [3], sq4.sq as [4], sq5.sq as [5], sq6.sq as [6], sq7.sq as [7],
sq8.sq as [8], sq9.sq as [9], sq10.sq as [10], sq11.sq as [11], sq12.sq as [12], sq13.sq as [13], sq14.sq as [14], 
sq15.sq as [15], sq16.sq as [16], sq17.sq as [17], sq18.sq as [18], sq19.sq as [19], sq20.sq as [20],
sq21.sq as [21], sq22.sq as [22], sq23.sq as [23], sq24.sq as [24], sq25.sq as [25], sq26.sq as [26],
sq27.sq as [27], sq28.sq as [28], sq29.sq as [29],
sq1.sq+sq2.sq+sq3.sq+sq4.sq+sq5.sq+sq6.sq+sq7.sq+sq8.sq+sq9.sq+
sq10.sq+sq11.sq+sq12.sq+sq13.sq+sq14.sq+sq15.sq+sq16.sq+sq17.sq+sq18.sq+sq19.sq+
sq20.sq+sq21.sq+sq22.sq+sq23.sq+sq24.sq+sq25.sq+sq26.sq+sq27.sq+sq28.sq+sq29.sq as sm
from squares sq1
cross join squares sq2
cross join squares sq3
cross join squares sq4
cross join squares sq5
cross join squares sq6
cross join squares sq7
cross join squares sq8
cross join squares sq9
cross join squares sq10
cross join squares sq11
cross join squares sq12
cross join squares sq13
cross join squares sq14
cross join squares sq15
cross join squares sq16
cross join squares sq17
cross join squares sq18
cross join squares sq19
cross join squares sq20
cross join squares sq21
cross join squares sq22
cross join squares sq23
cross join squares sq24
cross join squares sq25
cross join squares sq26
cross join squares sq27
cross join squares sq28
cross join squares sq29
where 
1=1
and sq1.sq>=sq2.sq
and sq2.sq>=sq3.sq
and sq3.sq>=sq4.sq
and sq4.sq>=sq5.sq
and sq5.sq>=sq6.sq
and sq6.sq>=sq7.sq
and sq7.sq>=sq8.sq
and sq8.sq>=sq9.sq
and sq9.sq>=sq10.sq
and sq10.sq>=sq11.sq
and sq11.sq>=sq12.sq
and sq12.sq>=sq13.sq
and sq13.sq>=sq14.sq
and sq14.sq>=sq15.sq
and sq15.sq>=sq16.sq
and sq16.sq>=sq17.sq
and sq17.sq>=sq18.sq
and sq18.sq>=sq19.sq
and sq19.sq>=sq20.sq
and sq20.sq>=sq21.sq
and sq21.sq>=sq22.sq
and sq22.sq>=sq23.sq
and sq23.sq>=sq24.sq
and sq24.sq>=sq25.sq
and sq25.sq>=sq26.sq
and sq26.sq>=sq27.sq
and sq27.sq>=sq28.sq
and sq28.sq>=sq29.sq
and sq1.sq+sq2.sq+sq3.sq+sq4.sq+sq5.sq+sq6.sq+sq7.sq+sq8.sq+sq9.sq+
sq10.sq+sq11.sq+sq12.sq+sq13.sq+sq14.sq+sq15.sq+sq16.sq+sq17.sq+sq18.sq+sq19.sq+
sq20.sq+sq21.sq+sq22.sq+sq23.sq+sq24.sq+sq25.sq+sq26.sq+sq27.sq+sq28.sq+sq29.sq<=29
)
select *, 
case when sc1.[1] > 0 then 1 else 0 end +
case when sc1.[2] > 0 then 1 else 0 end +
case when sc1.[3] > 0 then 1 else 0 end +
case when sc1.[4] > 0 then 1 else 0 end +
case when sc1.[5] > 0 then 1 else 0 end +
case when sc1.[6] > 0 then 1 else 0 end +
case when sc1.[7] > 0 then 1 else 0 end +
case when sc1.[8] > 0 then 1 else 0 end +
case when sc1.[9] > 0 then 1 else 0 end +
case when sc1.[10] > 0 then 1 else 0 end +
case when sc1.[11] > 0 then 1 else 0 end +
case when sc1.[12] > 0 then 1 else 0 end +
case when sc1.[13] > 0 then 1 else 0 end +
case when sc1.[14] > 0 then 1 else 0 end +
case when sc1.[15] > 0 then 1 else 0 end +
case when sc1.[16] > 0 then 1 else 0 end +
case when sc1.[17] > 0 then 1 else 0 end +
case when sc1.[18] > 0 then 1 else 0 end +
case when sc1.[19] > 0 then 1 else 0 end +
case when sc1.[20] > 0 then 1 else 0 end +
case when sc1.[21] > 0 then 1 else 0 end +
case when sc1.[22] > 0 then 1 else 0 end +
case when sc1.[23] > 0 then 1 else 0 end +
case when sc1.[24] > 0 then 1 else 0 end +
case when sc1.[25] > 0 then 1 else 0 end +
case when sc1.[26] > 0 then 1 else 0 end + 
case when sc1.[27] > 0 then 1 else 0 end + 
case when sc1.[28] > 0 then 1 else 0 end + 
case when sc1.[29] > 0 then 1 else 0 end +
case when sc2.[1] > 0 then 1 else 0 end +
case when sc2.[2] > 0 then 1 else 0 end +
case when sc2.[3] > 0 then 1 else 0 end +
case when sc2.[4] > 0 then 1 else 0 end +
case when sc2.[5] > 0 then 1 else 0 end +
case when sc2.[6] > 0 then 1 else 0 end +
case when sc2.[7] > 0 then 1 else 0 end +
case when sc2.[8] > 0 then 1 else 0 end +
case when sc2.[9] > 0 then 1 else 0 end +
case when sc2.[10] > 0 then 1 else 0 end +
case when sc2.[11] > 0 then 1 else 0 end +
case when sc2.[12] > 0 then 1 else 0 end +
case when sc2.[13] > 0 then 1 else 0 end +
case when sc2.[14] > 0 then 1 else 0 end +
case when sc2.[15] > 0 then 1 else 0 end +
case when sc2.[16] > 0 then 1 else 0 end +
case when sc2.[17] > 0 then 1 else 0 end +
case when sc2.[18] > 0 then 1 else 0 end +
case when sc2.[19] > 0 then 1 else 0 end +
case when sc2.[20] > 0 then 1 else 0 end +
case when sc2.[21] > 0 then 1 else 0 end +
case when sc2.[22] > 0 then 1 else 0 end +
case when sc2.[23] > 0 then 1 else 0 end +
case when sc2.[24] > 0 then 1 else 0 end +
case when sc2.[25] > 0 then 1 else 0 end +
case when sc2.[26] > 0 then 1 else 0 end + 
case when sc2.[27] > 0 then 1 else 0 end + 
case when sc2.[28] > 0 then 1 else 0 end + 
case when sc2.[29] > 0 then 1 else 0 end +
case when sc3.[1] > 0 then 1 else 0 end +
case when sc3.[2] > 0 then 1 else 0 end +
case when sc3.[3] > 0 then 1 else 0 end +
case when sc3.[4] > 0 then 1 else 0 end +
case when sc3.[5] > 0 then 1 else 0 end +
case when sc3.[6] > 0 then 1 else 0 end +
case when sc3.[7] > 0 then 1 else 0 end +
case when sc3.[8] > 0 then 1 else 0 end +
case when sc3.[9] > 0 then 1 else 0 end +
case when sc3.[10] > 0 then 1 else 0 end +
case when sc3.[11] > 0 then 1 else 0 end +
case when sc3.[12] > 0 then 1 else 0 end +
case when sc3.[13] > 0 then 1 else 0 end +
case when sc3.[14] > 0 then 1 else 0 end +
case when sc3.[15] > 0 then 1 else 0 end +
case when sc3.[16] > 0 then 1 else 0 end +
case when sc3.[17] > 0 then 1 else 0 end +
case when sc3.[18] > 0 then 1 else 0 end +
case when sc3.[19] > 0 then 1 else 0 end +
case when sc3.[20] > 0 then 1 else 0 end +
case when sc3.[21] > 0 then 1 else 0 end +
case when sc3.[22] > 0 then 1 else 0 end +
case when sc3.[23] > 0 then 1 else 0 end +
case when sc3.[24] > 0 then 1 else 0 end +
case when sc3.[25] > 0 then 1 else 0 end +
case when sc3.[26] > 0 then 1 else 0 end + 
case when sc3.[27] > 0 then 1 else 0 end + 
case when sc3.[28] > 0 then 1 else 0 end + 
case when sc3.[29] > 0 then 1 else 0 end 
from piles 
left outer join squares_combinations sc1 on a=sc1.sm
left outer join squares_combinations sc2 on b=sc2.sm
left outer join squares_combinations sc3 on c=sc3.sm
order by a, b, c

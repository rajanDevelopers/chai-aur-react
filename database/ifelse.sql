-- isi tarah se if else ka condition lagaya jata hai 
 /*
     conditons of the Traingle ==> when will be given the three value A,B,C 
    (A + B > C  AND A + C > B  AND  B + C > A ) ==> ye hota hai 
    */
       select 
       CASE     
            WHEN A + B > C AND B + C > A  AND A + C > B THEN
                CASE    
                    WHEN A = B AND B = C  THEN 'Equilateral'
                    WHEN A = B  OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'       
                END 
            ELSE 'Not A Triangle'
       END
       from triangles; 


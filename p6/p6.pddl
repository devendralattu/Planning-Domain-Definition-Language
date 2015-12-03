(define (problem p6)
  (:domain prodigy-bw)
  (:objects a b c 
  			bru_1 bru_2 bru_3
  			pai_red pai_green pai_blue
  			red green blue)
  (:init (arm-empty)
         
         (block a)
         (on-table a)
         (not (clear a))
         
         (block b)
         (not (on-table b))
         (not (clear b))
         (on b a)
         
         (block c)
         (not (on-table c))
         (clear c)
		 (on c b)	
         
         (brush bru_1)
         (on-table bru_1)
         (clear bru_1)
         (clean bru_1)

         (brush bru_2)
         (on-table bru_2)
         (clear bru_2)
         (clean bru_2)

         (brush bru_3)
         (on-table bru_3)
         (clear bru_3)
         (clean bru_3)

         
         (paint pai_red)
         (on-table pai_red)
         (clear pai_red)
		 (has-color pai_red red)
		 
		 (paint pai_green)
         (on-table pai_green)
         (clear pai_green)
		 (has-color pai_green green)
		          
         (paint pai_blue)
         (on-table pai_blue)
         (clear pai_blue)
		 (has-color pai_blue blue)
		 		 
         (paint-color red) 
         (paint-color green) 
         (paint-color blue)    
         
   )
   
  (:goal 
  	(and 
  		(arm-empty)  		
		(color a red) 
  		(color b green) 
  		(color c blue) 
  		(on a b)
  		(on b c)
  		(on-table c)
  	)
  )
)

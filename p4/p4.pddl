(define (problem p2)
  (:domain prodigy-bw)
  (:objects a b c w bru 
  			spr_red
  			pai_green pai_blue
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
         
         (spray spr_red)
         (on-table spr_red)
         (clear spr_red)
         (has-color spr_red red)
         
         (spray-color red)
         
         (bucket w)
         (on-table w)
         (clear w)
         
         (brush bru)
         (on-table bru)
         (clear bru)
         (clean bru)
         
		 (paint pai_green)
         (on-table pai_green)
         (clear pai_green)
		 (has-color pai_green green)
		          
         (paint pai_blue)
         (on-table pai_blue)
         (clear pai_blue)
		 (has-color pai_blue blue)
		 
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
  		(clean bru)
  	)
  )
)

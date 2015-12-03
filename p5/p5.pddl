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
         (not (clear spr_red))
         (has-color spr_red red)
         
         (spray-color red)
         
         (bucket w)
         (not (on-table w))
         (not (clear w))
         (on w pai_blue)
         
         (brush bru)
         (clean bru)
         (not (on-table bru))
         (clear bru)
		 (on bru w)
         
		 (paint pai_green)
		 (not (on-table pai_green))
         (not (clear pai_green))
         (on pai_green spr_red)
		 (has-color pai_green green)
		          
         (paint pai_blue)
         (not (on-table pai_blue))
         (not (clear pai_blue))
         (on pai_blue pai_green)
		 (has-color pai_blue blue)
		 
		 (paint-color green) 
         (paint-color blue)    
   )
   
  (:goal 
  	(and 
  		;(arm-empty)
		(color a red) 
  		(color b green) 
  		(color c blue)   		
  		(on a b)
  		(on b c)
  		(on-table c)
  		(clean bru)
  		(on bru pai_green)
  	)
  )
)

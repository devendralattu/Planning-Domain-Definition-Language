(define (problem p2)
  (:domain prodigy-bw)
  (:objects a b c w bru 
  			spr_red spr_green spr_blue
  			pai_red pai_green pai_blue
  			red green blue)
  (:init (arm-empty)
         
         (block a)
         (on-table a)
         (clear a)
         
         (block b)
         (on-table b)
         (clear b)
         
         (block c)
         (on-table c)
         (clear c)
         
         (spray spr_red)
         (on-table spr_red)
         (clear spr_red)
         (has-color spr_red red)
         
         (spray spr_green)
         (on-table spr_green)
         (clear spr_green)
         (has-color spr_green green)
         
         (spray spr_blue)
         (on-table spr_blue)
         (clear spr_blue)
         (has-color spr_blue blue)
                 
         (spray-color red)
         (spray-color green)
         (spray-color blue)
         
         (bucket w)
         (on-table w)
         (clear w)
         
         (brush bru)
         (on-table bru)
         (clear bru)
         (clean bru)
         ;(not (has-color bru red))
         ;(not (has-color bru green))
         ;(not (has-color bru blue))
         
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
  		(color b blue) 
  		(color c green) 
  		(clean bru)
  	)
  )
)

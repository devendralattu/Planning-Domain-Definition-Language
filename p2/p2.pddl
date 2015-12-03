(define (problem p2)
  (:domain prodigy-bw)
  (:objects a b w bru 
  			spr_blue pai_red
   			red blue)
  (:init (arm-empty)
         
         (block a)
         (on-table a)
         (not (clear a))
         
         (block b)
         (on b a)
         (clear b)
         (not (on-table b))
         
         (spray spr_blue)
         (on-table spr_blue)
         (clear spr_blue)
         (has-color spr_blue blue)
         
         (spray-color blue)
                  
         (bucket w)
         (on-table w)
         (clear w)
         
         (brush bru)
         (on-table bru)
         (clear bru)
         (clean bru)
         ;(not (has-color bru red))

         (paint pai_red)
         (on-table pai_red)
         (clear pai_red)
         (has-color pai_red red)
         
         (paint-color red)     
   )
   
  (:goal 
  	(and 
  		(arm-empty)
		(color a red) 
  		(color b blue) 
  		(clean bru)
  	)
  )
)

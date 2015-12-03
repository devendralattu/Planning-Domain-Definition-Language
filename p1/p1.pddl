(define (problem p1)
  (:domain prodigy-bw)
  (:objects a pai bru red)
  (:init (arm-empty)
  
         (block a)
         (on-table a)
         (clear a)
  		 
  		 (brush bru)
         (on-table bru)
         (clear bru)
         (clean bru)
         
         (paint pai)
         (on-table pai)
         (clear pai)
  		 (has-color pai red)
         
         (paint-color red)
	 )
         
  (:goal 
  	(and (arm-empty)
  		(color a red)
  	)
  )
)

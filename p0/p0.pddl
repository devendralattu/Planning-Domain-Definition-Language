(define (problem 1)
  (:domain prodigy-bw)
  (:objects a spr red)
  (:init (arm-empty)
  
         (block a)
         (on-table a)
         (clear a)
         
         (spray spr)
         (on-table spr)
         (clear spr)
         (has-color spr red)
         
         (spray-color red)
  )       
  (:goal (and (arm-empty) 
  	(color a red))
  )
  
  
)

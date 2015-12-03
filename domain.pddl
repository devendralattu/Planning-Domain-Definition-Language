;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Prodigy blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain prodigy-bw)
  (:requirements :strips)
  (:constants red green blue)
  (:predicates (on ?x ?y)
	       (on-table ?x)
	       (clear ?x)
	       (clean ?x)
	       (arm-empty)
	       (holding ?x)
	       (spray-color ?x)
	       (paint-color ?x)
	       (has-color ?x ?y)
  )
  
  (:action pick-up
	     :parameters (?ob1)
	     :precondition (and (clear ?ob1) (on-table ?ob1) (arm-empty))
	     :effect
	     (and 
	       (not (on-table ?ob1))
		   (not (clear ?ob1))
		   (not (arm-empty))
		   (holding ?ob1)
		 )
  )
  
  (:action put-down
	     :parameters (?ob)
	     :precondition (holding ?ob)
	     :effect
	     (and 
	       (not (holding ?ob))
		   (clear ?ob)
		   (arm-empty)
		   (on-table ?ob)
		 )
  )
  
  (:action stack
	     :parameters (?sob ?sunderob)
	     :precondition (and (holding ?sob) (clear ?sunderob))
	     :effect
	     (and 
	       (not (holding ?sob))
		   (not (clear ?sunderob))
		   (clear ?sob)
		   (arm-empty)
		   (on ?sob ?sunderob)
		 )
  )
  
  (:action unstack
	     :parameters (?sob ?sunderob)
	     :precondition (and (on ?sob ?sunderob) (clear ?sob) (arm-empty))
	     :effect
	     (and 
	       (holding ?sob)
		   (clear ?sunderob)
		   (not (clear ?sob))
		   (not (arm-empty))
		   (not (on ?sob ?sunderob))
		 )
  )
		   
  (:action spray-paint
		 :parameters (?spr ?a ?c)
		 :precondition 
		 (and 
			(clear ?a) (on-table ?a) 
			(holding ?spr)
			(spray ?spr) (spray-color ?c) (has-color ?spr ?c)
		 ) 
		 :effect
	     (and
			(color ?a ?c)
	     )
  )
		   
  (:action load-brush
		 :parameters (?bru ?pai ?c)
		 :precondition 
		 (and 
			(on-table ?pai) (clear ?pai) 
			(clean ?bru) 
			(holding ?bru)
			(paint ?pai) (brush ?bru)
			(paint-color ?c) (has-color ?pai ?c)
		 ) 
		 :effect
	     (and
			(color ?bru ?c)
			(not (clean ?bru))
			(has-color ?bru ?c)
		 )
  )
  	   
  (:action brush-paint
		 :parameters (?bru ?a ?c)
		 :precondition 
		 (and 
			(clear ?a) (on-table ?a) 
			(not (clean ?bru)) (holding ?bru)
			(brush ?bru) (paint-color ?c) 
			(has-color ?bru ?c)
		 ) 
		 :effect
	     (and 
			(color ?a ?c)
		 )
  )
  
  (:action water-bucket
		 :parameters (?bru ?c ?w)
		 :precondition 
		 (and
   		 	 (holding ?bru) (not (clean ?bru)) 
		 	 (on-table ?w) (clear ?w) (bucket ?w)
		 	 (paint-color ?c) (has-color ?bru ?c)
		 ) 
		 :effect
		 (and
			(clean ?bru)
			(not (has-color ?bru ?c))
		 )
   )

)

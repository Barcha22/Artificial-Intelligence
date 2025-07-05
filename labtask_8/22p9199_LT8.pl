%  "," represents a "and" || "." represents a "end of a query or statement"||":-" represents "if" || "%" is ignored by prolog

% Facts 
has_symptom(ali, fever). 
has_symptom(ali, cough).
has_symptom(ali, headache).
has_symptom(ahmed, sore_throat).
has_symptom(ahmed, fever).
has_symptom(ahmed, fatigue).
has_symptom(saood, sneezing).
has_symptom(saood, runny_nose).
has_symptom(saood, itchy_eyes).
has_symptom(saad, nausea).
has_symptom(saad, vomiting).
has_symptom(saad, stomach_pain).

%Rules
has_disease(Person,flu):-
    has_symptom(Person,fever),
    has_symptom(Person,cough),
    has_symptom(Person,headache).

has_disease(Person,common_cold):-
    has_symptom(Person,sneezing),
    has_symptom(Person,runny_nose),
    has_symptom(Person,itchy_eyes).
    
has_disease(Person,strep_throat):-
    has_symptom(Person,sore_throat),
    has_symptom(Person,fever),
    has_symptom(Person,fatigue).
    
has_disease(Person,food_poisoning):-
    has_symptom(Person,nausea),
    has_symptom(Person,vomiting),
    has_symptom(Person,stomach_pain).
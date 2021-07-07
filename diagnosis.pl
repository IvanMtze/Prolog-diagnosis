:- use_module(library(http/http_server)).

hypothesis(Patient,german_measles) :-
has_symptom(Patient,fever),
has_symptom(Patient,headache),
has_symptom(Patient,runny_nose),
has_symptom(Patient,rash).

hypothesis(Patient,common_cold) :-
has_symptom(Patient,headache),
has_symptom(Patient,sneezing),
has_symptom(Patient,sore_throat),
has_symptom(Patient,runny_nose),
has_symptom(Patient,chills).

hypothesis(Patient,measles) :-
has_symptom(Patient,cough),
has_symptom(Patient,sneezing),
has_symptom(Patient,runny_nose).

hypothesis(Patient,flu) :-
has_symptom(Patient,fever),
has_symptom(Patient,headache),
has_symptom(Patient,body_ache),
has_symptom(Patient,conjunctivitis),
has_symptom(Patient,chills),
has_symptom(Patient,sore_throat),
has_symptom(Patient,runny_nose),
symptom(Patient,cough).

hypothesis(Patient,mumps) :-
has_symptom(Patient,fever),
has_symptom(Patient,swollen_glands).

hypothesis(Patient,chicken_pox) :-
has_symptom(Patient,fever),
has_symptom(Patient,chills),
has_symptom(Patient,body_ache),
has_symptom(Patient,rash).

has_symptom(ivan,headache).
has_symptom(ivan,sneezing).
has_symptom(ivan,sore_throat).
has_symptom(ivan,runny_nose).
has_symptom(ivan,chills).

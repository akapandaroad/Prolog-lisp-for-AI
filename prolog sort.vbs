Prolog for bubble sort algorithm
bubblesort(L, L1) :-
        (   bubble(L, L2)
        ->  bubblesort(L2, L1)
        ;   L = L1 ).

bubble([A, B|T], L) :-
        (   A > B
        ->  L = [B, A|T]
        ;   L = [A | L1],
            bubble([B|T], L1)).


 bubblesort([2,4,2,3, 2, 6,6,3,1, 11, 2, 3, 1], Out).
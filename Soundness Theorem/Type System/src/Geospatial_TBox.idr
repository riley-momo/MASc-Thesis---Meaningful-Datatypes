module Geospatial_TBox

%access public export

data Geospatial_atom = A | B | C

Eq Geospatial_atom where
    A == A = True
    B == B = True
    C == C = True
    x == y = False

Geospatial_region : Type
Geospatial_region = List Geospatial_atom

subregion : Geospatial_region -> Geospatial_region -> Bool
subregion r1 r2 = (all (==True) [elem r r2 | r <- r1])

overlaps : Geospatial_region -> Geospatial_region -> Bool
overlaps r1 r2 = (any (==True) [elem r r2 | r <- r1])

disjoint_regions : Geospatial_region -> Geospatial_region -> Bool
disjoint_regions r1 r2 = not ((overlaps r1 r2))

disjoint_region : Geospatial_region -> Bool
disjoint_region [] = True
disjoint_region (r :: rs) = (not (elem r rs)) && (disjoint_region rs)

preconditions : (Geospatial_region, Geospatial_region) -> Bool
preconditions gs = (disjoint_regions (fst gs) (snd gs)) && (disjoint_region (fst gs)) && (disjoint_region (snd gs))

geospatial_sum : (rs: (Geospatial_region, Geospatial_region) ** (preconditions(rs) = True)) -> Geospatial_region
geospatial_sum (rs ** preconditions_hold) = (Prelude.Basics.fst rs) ++ (Prelude.Basics.snd rs)

Geospatial_atom : Type
Geospatial_atom = String

Geospatial_region : Type
Geospatial_region = List Geospatial_atom

subregion : Geospatial_region -> Geospatial_region -> Bool
subregion ["Scarborough"] ["Toronto"] = True
subregion r1 r2 = (commonElement r1 r2)

disjoint_region : Geospatial_region -> Geospatial_region -> Bool
disjoint_region r1 r2 = ! ((subregion r1 r2) | (subregion r2 r1))

preconditions : (Geospatial_region, Geospatial_region) -> Bool
preconditions gs = disjoint_region (fst gs) (snd gs)

combine_region : (rs : (Geospatial_region, Geospatial_region) ** (preconditions rs = True)) -> Geospatial_region 
combine_region (rs ** preconditionsHold) = (fst rs) ++ (snd rs) 

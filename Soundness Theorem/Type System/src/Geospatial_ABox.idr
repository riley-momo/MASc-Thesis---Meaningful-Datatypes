module Geospatial_ABox

import Geospatial_TBox

a : Geospatial_atom
a = A

b : Geospatial_atom
b = B

c : Geospatial_atom
c = C

r1 : Geospatial_region
r2 : Geospatial_region
r3 : Geospatial_region
r4 : Geospatial_region

r1 = [a,b]
r2 = [b]
r3 = [a,c]
r4 = geospatial_sum((r2, r3) ** Refl)

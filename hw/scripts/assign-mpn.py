#!/usr/bin/env python3
import skip

sch_file = 'thejas32-testbed.kicad_sch'
schem = skip.Schematic(sch_file)

caps = schem.symbol.reference_matches(r'C.*')
#  Run through all caps and assign MPN same as value
for c in caps:
    print(c.property.Reference.value)
    c.property['MPN'].value = c.property['Value'].value
print(len(caps))
schem.write(sch_file)


#sym = schem.symbol.R1
#sym_mpn = sym.property['MPN']
#print(sym_mpn.value)
#sym_mpn.value = '10E'
#for p in sym.property:
#    print(p)

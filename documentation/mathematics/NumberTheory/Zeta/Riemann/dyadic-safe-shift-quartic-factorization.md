# Exact dyadic quartic factorization and terminal supplier

The dyadic safe-shift packing now has the same exact monomial decomposition as the pointwise source.

With

a = Re(s)-1/2,
t = Im(s),

totalize normalized dyadic vertical coordinates by dividing the axial source by a^2 and the transverse source by a*t away from their zero loci.

Determinant scaling then gives exactly

axialDyadicGram_j
 = a^4 A_j^D,

transverseDyadicGram_j
 = a^2 t^2 T_j^D,

with A_j^D,T_j^D nonnegative squared Gram coefficients. Hence

Q_j^D
 = a^4 A_j^D
   + 3 a^2 t^2 T_j^D.

Together with the previously proved finite-stage bound

Q_j^D
 <= 148 (B_j^2+B_(j+1)^2)(B_(j+1)^2+B_(j+2)^2),

the complete off-line terminal supplier is now explicit.

For each hypothetical off-line actual zero, it is enough to produce r_j>=0 and L>0 such that

r_j A_j^D -> L,
r_j T_j^D -> L,

and

r_j * 148 (B_j^2+B_(j+1)^2)(B_(j+1)^2+B_(j+2)^2) -> 0.

Those conditions directly imply a=0 by squeezing the occupied volume, so an all-off-line supplier implies RH.

This is now the precise arithmetic asymptotic problem. Upper Green-energy control supplies the enclosure side; the genuinely missing information is a common positive asymptotic/lower normalization for the two dyadic Gram coefficients.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d8481fe89e5d1c9286bc71f41712698a6bde1ecba3b47a7b7c22ee79f1c4ecd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

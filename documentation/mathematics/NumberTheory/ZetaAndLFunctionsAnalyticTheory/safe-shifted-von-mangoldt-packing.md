# Safe shifted von Mangoldt packing

The final zero-facing arithmetic data should depend on the zero through an exact source transform, but the prime Dirichlet series must not be evaluated inside the critical strip.

For an actual nontrivial zero

s = 1/2 + a + i t,

define

zPlus  = 2 + a + i t,
zMinus = 2 - a + i t.

Since 0 < Re(s) < 1, both zPlus and zMinus have real part strictly greater than one. Therefore the pinned theorem

L(Lambda,w) = -zeta'(w)/zeta(w)

applies exactly at both points.

The horizontal defect a and height t are now carried by genuine prime-side terms

Lambda(q) / q^zPlus
and
Lambda(q) / q^zMinus,

rather than inserted into a residual after forming a zero-independent packing.

Critical reflection sends a to -a and preserves t, and consequently swaps zPlus with zMinus. This is the desired source-level compatibility with the zero symmetry.

The concrete positive family takes the real and imaginary parts of the plus-shift Dirichlet term as the planar point for each canonical prime-power event. The resulting sliding three-point Gram remains automatically nonnegative.

This is not yet the quartic comparison. The next obligation is to determine the exact symmetric combination of the plus/minus source terms, gamma/pole channels, and finite residue head whose local expansion produces the signed quartic witness and a controlled residual.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=221935a9961de2df26e79d88b1eb00e70e227b68d5d3f5fa1f5a87de0036d0ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

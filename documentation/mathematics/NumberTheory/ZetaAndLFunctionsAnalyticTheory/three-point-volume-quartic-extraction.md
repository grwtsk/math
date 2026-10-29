# Three-point volume packing for quartic positivity

This increment replaces an arbitrary positive finite Gram stage by a smaller geometric carrier.

At each stage retain exactly three sequential planar source points p0, p1, p2. Define the consecutive edges

u = p1 - p0,
v = p2 - p1.

The positive witness is the squared oriented area

V^2 = (u_x v_y - u_y v_x)^2.

Algebraically this is exactly the two-by-two Gram determinant

V^2 = ||u||^2 ||v||^2 - <u,v>^2 >= 0.

Because the determinant is quadratic in the Gram entries and each Gram entry is quadratic/linear in edge coordinates, it is quartic in the underlying point coordinates. Thus positivity is structural and requires tracking only the three points in sequence.

The zeta-facing comparison remains separate:

V_n^2 = lambda_n H(Re(s)-1/2, Im(s)) + R_n,

with H(a,t) = -4 a^2 (a^2 + 3 t^2), lambda_n -> L > 0, and the complete residual ledger R_n -> 0.

The three points carry exactly three source labels and proofs that each label belongs to the selected prime-power source predicate. No claim is made that the accepted detector trace already supplies these points.

The next theorem is therefore a source map from the accepted mechanism trace/local witness to these three source points, together with the quartic comparison identity and decay of the named residual channels.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fbf9735d486f11f7b45fe229536c2c3fe6103019e8cd1154c0c007ecc3f75a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Sequential three-point packing

The positive packing state is now one coherent sequence rather than a family of independent triples.

For a sequence p_0,p_1,p_2,..., stage n uses only

p_n, p_(n+1), p_(n+2).

The next stage uses

p_(n+1), p_(n+2), p_(n+3),

so adjacent stages share two points exactly. No extra gluing witness is needed merely to identify the overlap.

Each stage carries the positive quartic

V_n^2 = det(u_n,v_n)^2
      = ||u_n||^2 ||v_n||^2 - <u_n,v_n>^2 >= 0,

where u_n=p_(n+1)-p_n and v_n=p_(n+2)-p_(n+1).

The source labels are also one sequence. Therefore every window inherits the three prime-power-source proofs from the global label sequence.

This reduces the remaining arithmetic construction to one map:

accepted mechanism trace/local witness
  -> coherent point sequence + coherent source-label sequence.

The analytic comparison remains

V_n^2 = lambda_n H(Re(s)-1/2,Im(s)) + R_n,

with lambda_n -> L>0 and the complete residual ledger R_n ->0.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf4851d09459808339dbc5a49bccb144d51bdf9a0a2703d4c04ed5f1ecd617ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

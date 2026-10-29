# Necessary low-coordinate decay

The full finite witness stage is a sum of nonnegative quantities. Consequently any proof of the all-scale explicit-coordinate bound must already prove the same dyadic decay for several individual arithmetic channels.

In particular, for every eta>0 the coordinate bound forces, eventually along X=2^(j+1),

mass0(X)^2
 <= C X^(-1+eta),

mass1(X)^2
 <= C X^(-1+eta),

|c_X(-1)|^2
 <= C X^(-1+eta),

|c_X(1)|^2
 <= C X^(-1+eta).

Here c_X(k) is the explicit weighted-DFT discrepancy

B(k) - [S_X(k)-M_X]/[-2 pi i k].

Thus the unresolved arithmetic theorem is not merely a high-dimensional frame estimate. It already contains square-root-scale cancellation in the first endpoint and oscillatory coordinates.

Chebyshev-type upper bounds only give bounded octave mass and do not provide this decay. Any successful supplier must therefore contribute genuine cancellation, not merely source positivity or boundedness.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfcbcfb04e90065d6f660bd2b0f13eb37588a2f13d26f52f456cd8facc182f7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

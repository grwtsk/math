# Graded psi threshold transport

Define AllDyadicPsiAtThreshold(rho) by requiring

|psi(u)-u|+1 <= C X^(rho+eta/2)

uniformly on each sufficiently large dyadic octave.

Localized Abel reconstruction gives the corresponding graded energy estimate

augmentedEnergy(X)
 <= C' X^(-2(1-rho)+eta),

so for 1/2<=rho<1 it implies zeta nonvanishing on Re(s)>rho.

Pinned Chebyshev also gives psi-theta=O(sqrt x). For rho>=1/2, sqrt(x) is absorbed by the same threshold amplitude on a dyadic octave. Therefore

AllDyadicPsiAtThreshold(rho)
 -> AllDyadicThetaAtThreshold(rho).

This removes one ambiguity from the reverse explicit-formula gate: a reverse theorem may naturally output a psi estimate rather than a theta estimate, without changing the threshold-descent program.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4c2ca0e459f5be25bf7c0a007c63a7a982e4a4d04bc2a56cf96799529c9827e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

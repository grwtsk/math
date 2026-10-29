# Prime-only theta octave supplier

The Abel supplier can itself be reduced from psi to theta.

Pinned Mathlib proves

0 <= psi(u)-theta(u) <= C_hp sqrt(u).

For every eta>0 and u in [X,2X], the RH-G01 target amplitude

X sqrt(X^(-1+eta))

dominates sqrt(u), up to one fixed factor. Therefore the higher-prime-power difference between psi and theta is absorbed automatically.

Define AllDyadicThetaOctaveSquareRootBound by requiring

|theta(u)-u| + 1
 <= C X sqrt(X^(-1+eta))

uniformly on each sufficiently large dyadic octave.

Then source-level:

AllDyadicThetaOctaveSquareRootBound
 -> AllDyadicPsiOctaveSquareRootBound
 -> AllDyadicEnergyBound
 -> RH.

This gives a purely prime sufficient supplier. Together with the earlier weighted-DFT reduction, the remaining arithmetic frontier is now recognizable in two equivalent-looking classical languages:
- local square-root-plus-epsilon control of theta(u)-u;
- simultaneous log-prime endpoint and weighted-DFT cancellation.

No theta error estimate of this strength is proved here.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76d7ad5dac3397d08518316a97dd56b470c7b97620a1266751edc454f75c0d22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

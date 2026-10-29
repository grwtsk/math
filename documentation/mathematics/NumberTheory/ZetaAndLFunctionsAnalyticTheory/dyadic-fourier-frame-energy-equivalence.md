# The admissible action-frame bound is exactly the original dyadic energy premise

At a fixed positive octave X, the complete finite source-action stages satisfy

fullStage_X(N) <= augmentedEnergy(X)

for every N, and

fullStage_X(N) -> augmentedEnergy(X).

Therefore an all-scale bound on augmentedEnergy is equivalent to the same all-scale bound holding uniformly for every finite source-faithful action stage.

Define AllDyadicAdmissibleActionFrameBound by requiring, for every eta>0, an eventual bound

fullStage_(dyadicScale j)(N)
 <= C * dyadicScale(j)^(-1+eta)

for every finite frequency cutoff N.

Then

AllDyadicAdmissibleActionFrameBound
iff
AllDyadicEnergyBound.

The forward direction takes N to infinity using the exact stage convergence. The reverse direction is immediate from stage <= augmentedEnergy.

This is a significant typing result but not a new arithmetic estimate. It says the old open scalar premise can be stated completely as a uniform theorem over finite, source-faithful, admissible Fourier action witnesses.

The repository already proves conditionally that AllDyadicEnergyBound implies RH through Mellin normal convergence, Euler identification, analytic continuation, and zero exclusion. Hence the equivalent action-frame premise has the same conditional RH consequence.

This reframes the remaining arithmetic problem sharply:

prove the uniform decay bound directly on the finite admissible action-frame stages from arithmetic source structure.

No explicit-formula or Weil positivity theorem is needed for this existing conditional return. The explicit-formula/Weil route remains a separate possible global comparison program under issues #189/#197/#207/#219.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d4f7cd919ed55f3984eb437b4ad3a5399ecf66ccad237159ac19a5757f1587c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

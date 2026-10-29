# Finite cyclic-distance regrouping closure

The final finite kernel pairing is now source-written.

The residue sum is regrouped exactly by the cyclic-distance map

d(r) = min(r.val, 4X-r.val).

Every residue maps into [0,2X]. For each fixed distance d:

- the fiber contains at most two residues;
- each cyclic kernel sample is bounded by the norm sample at distance d;
- the translation factor is exactly 2d.

Hence each fiber contributes at most

4 d kappa_{4X,N}(d).

Summing over d in [0,2X] and removing the zero-distance term gives exactly

4 sum_{1 <= d <= 2X} d kappa_{4X,N}(d),

the corrected cyclic step budget.

This discharges CyclicDistanceWeightedKernelPairingClaim and therefore the
corrected factor-four L1 first-moment claim and arithmetic Fejer comparison.

Status:
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FINITE_DISTANCE_REGROUPING_SOURCE_WRITTEN /
FINITE_KERNEL_PAIRING_SOURCE_PROVED /
FACTOR_FOUR_L1_SOURCE_PROVED /
CORRECTED_ARITHMETIC_FEJER_COMPARISON_SOURCE_PROVED.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10b625bdfe04845700913e9d06c2708eab9fdf75b1614dfb96b9d14ad561c3e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

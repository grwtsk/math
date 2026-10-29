# Holomorphic Line Section Inner Product

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicLineSectionInnerProduct.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af29b543f7985cd7948ee77c96a4b814819f7c3f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicLineSectionInnerProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [quotientAddCommGroup](declarations/quotientaddcommgroup.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [quotientModule](declarations/quotientmodule.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [quotientInnerCore](declarations/quotientinnercore.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [quotientNormedAddCommGroup](declarations/quotientnormedaddcommgroup.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [quotientInnerProductSpace](declarations/quotientinnerproductspace.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero_eq_operation](declarations/zero-eq-operation.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [add_eq_operation](declarations/add-eq-operation.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [neg_eq_operation](declarations/neg-eq-operation.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [smul_eq_operation](declarations/smul-eq-operation.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sub_eq_operations](declarations/sub-eq-operations.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inner_eq_pairing](declarations/inner-eq-pairing.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inner_classOf](declarations/inner-classof.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [norm_eq_sqrt_energy](declarations/norm-eq-sqrt-energy.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [norm_sq_eq_energy](declarations/norm-sq-eq-energy.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofReal_norm_sq_eq_energy](declarations/ofreal-norm-sq-eq-energy.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [norm_eq_zero_iff_class](declarations/norm-eq-zero-iff-class.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [norm_classOf](declarations/norm-classof.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pairing_norm_le](declarations/pairing-norm-le.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pairing_norm_le_energy](declarations/pairing-norm-le-energy.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [norm_add_le_sections](declarations/norm-add-le-sections.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [norm_smul_sections](declarations/norm-smul-sections.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dist_eq_sqrt_energy_sub](declarations/dist-eq-sqrt-energy-sub.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [gaugeLinearEquiv](declarations/gaugelinearequiv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [gaugeLinearIsometryEquiv](declarations/gaugelinearisometryequiv.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gaugeLinearIsometryEquiv_apply](declarations/gaugelinearisometryequiv-apply.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gaugeLinearIsometryEquiv_symm_apply](declarations/gaugelinearisometryequiv-symm-apply.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gaugeLinearIsometryEquiv_inner](declarations/gaugelinearisometryequiv-inner.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gaugeLinearIsometryEquiv_isometry](declarations/gaugelinearisometryequiv-isometry.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zeroMeasure_eq_zero](declarations/zeromeasure-eq-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [equal_norm_distinct_classes](declarations/equal-norm-distinct-classes.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [bundled_imaginary_pairing](declarations/bundled-imaginary-pairing.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bundled_reversed_imaginary_pairing](declarations/bundled-reversed-imaginary-pairing.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2202e13630569e7e612b9a015cddd44b26b3e24be70f5d70afb6e4f88b922076 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicLineSectionInnerProduct.lean","GRWTSK/Analysis/ComplexAnalysis/HolomorphicLineSectionInnerProduct.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

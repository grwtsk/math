# Holomorphic Multiplier Atomic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Operator/HolomorphicMultiplierAtomic.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceb1d90b259a9da68acafca162e1ad41946ba588`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HolomorphicMultiplierAtomic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveAtom](declarations/positiveatom.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ae_at](declarations/ae-at.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [density_le](declarations/density-le.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [value](declarations/value.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [value_classOf](declarations/value-classof.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [value_sq_bound](declarations/value-sq-bound.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [value_norm_bound](declarations/value-norm-bound.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [functional](declarations/functional.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [functional_classOf](declarations/functional-classof.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [functional_norm_le](declarations/functional-norm-le.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [pointPort](declarations/pointport.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [finiteMassPointPort](declarations/finitemasspointport.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [atomicPorts](declarations/atomicports.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [norm_eq_of_dense_atoms](declarations/norm-eq-of-dense-atoms.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [closed_range_of_dense_atoms](declarations/closed-range-of-dense-atoms.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [atomicMeasure](declarations/atomicmeasure.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [atomicMeasure_univ](declarations/atomicmeasure-univ.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [summandAtom](declarations/summandatom.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rangeAtoms](declarations/rangeatoms.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [atomicMeasure_norm_eq](declarations/atomicmeasure-norm-eq.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [geometricWeight](declarations/geometricweight.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [geometricWeight_pos](declarations/geometricweight-pos.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [geometricWeight_sum](declarations/geometricweight-sum.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [denseAtomicMeasure](declarations/denseatomicmeasure.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [denseAtomicMeasure_univ](declarations/denseatomicmeasure-univ.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [denseAtomicMeasure_finite](declarations/denseatomicmeasure-finite.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [denseAtomicMeasure_norm_eq](declarations/denseatomicmeasure-norm-eq.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [denseAtomicRepresentation](declarations/denseatomicrepresentation.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [denseAtomicRepresentation_apply](declarations/denseatomicrepresentation-apply.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [denseAtomicRepresentation_closed](declarations/denseatomicrepresentation-closed.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [exists_finite_norming_measure](declarations/exists-finite-norming-measure.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [zero_weight_dominated](declarations/zero-weight-dominated.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [no_half_atom_at_center](declarations/no-half-atom-at-center.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [disk_has_norming_measure](declarations/disk-has-norming-measure.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03e6a8d18b9e018e993c407098fbe91c2a2d9f330b65b8d443ddde67c7ad9046 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicMultiplierAtomic.lean","GRWTSK/Analysis/OperatorTheory/HolomorphicMultiplierAtomic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Holomorphic Multiplier Norm

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Operator/HolomorphicMultiplierNorm.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8017b7c3bff8fc295716a810cc6321a5cb6c2d43`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HolomorphicMultiplierNorm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [boundedFunction](declarations/boundedfunction.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [boundedFunction_apply](declarations/boundedfunction-apply.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [boundedFunctionHom](declarations/boundedfunctionhom.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [boundedFunctionHom_injective](declarations/boundedfunctionhom-injective.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [boundedFunction_smul](declarations/boundedfunction-smul.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [symbolNormedCommRing](declarations/symbolnormedcommring.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [symbolNormedAlgebra](declarations/symbolnormedalgebra.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [symbolTopology_coherent](declarations/symboltopology-coherent.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [norm_eq_boundedFunction](declarations/norm-eq-boundedfunction.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_eq_infimum](declarations/norm-eq-infimum.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [norm_value_le](declarations/norm-value-le.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [norm_le_iff](declarations/norm-le-iff.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_sub_le_iff](declarations/norm-sub-le-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [norm_constants](declarations/norm-constants.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [functionLinearIsometry](declarations/functionlinearisometry.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [functionLinearIsometry_apply](declarations/functionlinearisometry-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [evaluation](declarations/evaluation.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [evaluation_apply](declarations/evaluation-apply.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [valueMap_continuous](declarations/valuemap-continuous.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [forgetHolomorphic_continuous](declarations/forgetholomorphic-continuous.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [completedRepresentation_norm_le](declarations/completedrepresentation-norm-le.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [quotientRepresentation_norm_le](declarations/quotientrepresentation-norm-le.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [quotientRepresentationCLM](declarations/quotientrepresentationclm.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [completedRepresentationCLM](declarations/completedrepresentationclm.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [quotientRepresentationCLM_apply](declarations/quotientrepresentationclm-apply.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [completedRepresentationCLM_apply](declarations/completedrepresentationclm-apply.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [quotientRepresentationCLM_toLinearMap](declarations/quotientrepresentationclm-tolinearmap.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [completedRepresentationCLM_toLinearMap](declarations/completedrepresentationclm-tolinearmap.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [quotientRepresentationCLM_norm_le](declarations/quotientrepresentationclm-norm-le.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [completedRepresentationCLM_norm_le](declarations/completedrepresentationclm-norm-le.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [completedRepresentation_sub_norm_le](declarations/completedrepresentation-sub-norm-le.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [completedRepresentation_continuous](declarations/completedrepresentation-continuous.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [completedRepresentation_tendsto](declarations/completedrepresentation-tendsto.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [completedRepresentationCLM_gauge](declarations/completedrepresentationclm-gauge.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [empty_symbol_eq_zero](declarations/empty-symbol-eq-zero.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [empty_symbol_norm](declarations/empty-symbol-norm.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [strict_operator_norm_loss](declarations/strict-operator-norm-loss.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f00e6525fcbbf8d9d8681b3b2bfe590dbb4741585351c0f7dc9cbe8a9bbf2f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicMultiplierNorm.lean","GRWTSK/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

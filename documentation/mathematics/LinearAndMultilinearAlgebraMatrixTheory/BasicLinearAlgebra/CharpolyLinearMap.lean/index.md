# Charpoly Linear Map

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bb032e29a0d0cf41abb123507b1ca4ff6b08aaf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyLinearMap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PiToModule.fromMatrix](declarations/pitomodule-frommatrix.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [PiToModule.fromMatrix_apply](declarations/pitomodule-frommatrix-apply.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [PiToModule.fromMatrix_apply_single_one](declarations/pitomodule-frommatrix-apply-single-one.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [PiToModule.fromEnd](declarations/pitomodule-fromend.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [PiToModule.fromEnd_apply](declarations/pitomodule-fromend-apply.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [PiToModule.fromEnd_apply_single_one](declarations/pitomodule-fromend-apply-single-one.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [PiToModule.fromEnd_injective](declarations/pitomodule-fromend-injective.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Matrix.Represents](declarations/matrix-represents.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Matrix.Represents.congr_fun](declarations/matrix-represents-congr-fun.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Matrix.represents_iff](declarations/matrix-represents-iff.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Matrix.represents_iff'](declarations/matrix-represents-iff-source-edition-2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Matrix.Represents.mul](declarations/matrix-represents-mul.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Matrix.Represents.one](declarations/matrix-represents-one.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Matrix.Represents.add](declarations/matrix-represents-add.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Matrix.Represents.zero](declarations/matrix-represents-zero.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Matrix.Represents.smul](declarations/matrix-represents-smul.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Matrix.Represents.algebraMap](declarations/matrix-represents-algebramap.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Matrix.Represents.eq](declarations/matrix-represents-eq.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Matrix.isRepresentation](declarations/matrix-isrepresentation.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Matrix.isRepresentation.toEnd](declarations/matrix-isrepresentation-toend.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Matrix.isRepresentation.toEnd_represents](declarations/matrix-isrepresentation-toend-represents.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Matrix.isRepresentation.eq_toEnd_of_represents](declarations/matrix-isrepresentation-eq-toend-of-represents.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Matrix.isRepresentation.toEnd_exists_mem_ideal](declarations/matrix-isrepresentation-toend-exists-mem-ideal.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Matrix.isRepresentation.toEnd_surjective](declarations/matrix-isrepresentation-toend-surjective.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [LinearMap.exists_monic_and_coeff_mem_pow_and_aeval_eq_zero_of_range_le_smul](declarations/linearmap-exists-monic-and-coeff-mem-pow-and-aeval-eq-zero-of-range-le-s.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [LinearMap.exists_monic_and_aeval_eq_zero](declarations/linearmap-exists-monic-and-aeval-eq-zero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec14c2394d8fee761bb7bdfe867669f0dd3b6066fb245a12772feba4ceec80f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant54e2e6911fa8d8c5729c7c6c027a61c9eefd5420e47e2025b11018bedd80cb53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

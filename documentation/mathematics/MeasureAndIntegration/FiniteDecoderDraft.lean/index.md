# Finite Decoder Draft

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e6f99981182e05f31223856b1f9be05535bb135`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/FiniteDecoderDraft.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cell](declarations/cell.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rightSelector](declarations/rightselector.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [decodedTest](declarations/decodedtest.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cell_unique](declarations/cell-unique.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [exists_cell](declarations/exists-cell.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rightSelector_on_cell](declarations/rightselector-on-cell.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [decodedTest_on_cell](declarations/decodedtest-on-cell.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rightSelector_zero](declarations/rightselector-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rightSelector_bounds](declarations/rightselector-bounds.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rightSelector_dist](declarations/rightselector-dist.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rightSelector_upper](declarations/rightselector-upper.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [decodedTest_eq_comp](declarations/decodedtest-eq-comp.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rightSelector_measurable](declarations/rightselector-measurable.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decodedTest_measurable](declarations/decodedtest-measurable.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cell_constant_integrable](declarations/cell-constant-integrable.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [decodedTest_integrable](declarations/decodedtest-integrable.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cell_subset](declarations/cell-subset.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cell_constant_integral](declarations/cell-constant-integral.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [decodedTest_integral](declarations/decodedtest-integral.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [atom_cell_identity](declarations/atom-cell-identity.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [prime_cell_readout](declarations/prime-cell-readout.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [square_cell_readout](declarations/square-cell-readout.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [prime_decoded_ledger](declarations/prime-decoded-ledger.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [square_decoded_ledger](declarations/square-decoded-ledger.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [complete_decoded_ledger](declarations/complete-decoded-ledger.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mesh](declarations/mesh.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [resolutionCount](declarations/resolutioncount.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mesh_pos](declarations/mesh-pos.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mesh_grid](declarations/mesh-grid.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mesh_decoded_ledger](declarations/mesh-decoded-ledger.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [resolutionCount_pos](declarations/resolutioncount-pos.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [modulus_coarse](declarations/modulus-coarse.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [resolution_budget](declarations/resolution-budget.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [resolutionCount_monotone](declarations/resolutioncount-monotone.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [resolving_error](declarations/resolving-error.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [resolving_error_unconditional](declarations/resolving-error-unconditional.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad37b34831f31cdffbc4bf665be5aa4bddb0cd85630672ced250f95c57fcf80b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

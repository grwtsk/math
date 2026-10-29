# Fundamental Groupoid Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e546e922140aa5bf429dd7a9c8cf89f9489bf3cc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AlgebraicTopology/FundamentalGroupoidBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [reflTransSymmAux](declarations/refltranssymmaux.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [continuous_reflTransSymmAux](declarations/continuous-refltranssymmaux.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [reflTransSymmAux_mem_I](declarations/refltranssymmaux-mem-i.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [reflTransSymm](declarations/refltranssymm.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [reflSymmTrans](declarations/reflsymmtrans.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [transReflReparamAux](declarations/transreflreparamaux.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [continuous_transReflReparamAux](declarations/continuous-transreflreparamaux.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [transReflReparamAux_mem_I](declarations/transreflreparamaux-mem-i.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [transReflReparamAux_zero](declarations/transreflreparamaux-zero.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [transReflReparamAux_one](declarations/transreflreparamaux-one.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [trans_refl_reparam](declarations/trans-refl-reparam.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [transRefl](declarations/transrefl.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [reflTrans](declarations/refltrans.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [transAssocReparamAux](declarations/transassocreparamaux.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous_transAssocReparamAux](declarations/continuous-transassocreparamaux.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [transAssocReparamAux_mem_I](declarations/transassocreparamaux-mem-i.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [transAssocReparamAux_zero](declarations/transassocreparamaux-zero.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [transAssocReparamAux_one](declarations/transassocreparamaux-one.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [trans_assoc_reparam](declarations/trans-assoc-reparam.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [transAssoc](declarations/transassoc.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [FundamentalGroupoid](declarations/fundamentalgroupoid.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_eq](declarations/comp-eq.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [id_eq_path_refl](declarations/id-eq-path-refl.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [fundamentalGroupoidFunctor](declarations/fundamentalgroupoidfunctor.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_eq](declarations/map-eq.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toTop](declarations/totop.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [fromTop](declarations/fromtop.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toPath](declarations/topath.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fromPath](declarations/frompath.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e546a040f96df3d979855e3f2be0ef86b17169358ebafe77d99cce2199d93d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant07bf4b8dcdee40ef307fed145ee400b53c434f61eda9aefbdb837a6a05fd4031.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

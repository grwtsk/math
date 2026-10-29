# Fundamental Groupoid Basic Equiv

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6968563145948b67953f4aa49441c0ce263f4c7f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AlgebraicTopology/FundamentalGroupoidBasicEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [reflTransSymmAux](declarations/refltranssymmaux.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [continuous_reflTransSymmAux](declarations/continuous-refltranssymmaux.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [reflTransSymmAux_mem_I](declarations/refltranssymmaux-mem-i.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [reflTransSymm](declarations/refltranssymm.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [reflSymmTrans](declarations/reflsymmtrans.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [transReflReparamAux](declarations/transreflreparamaux.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [continuous_transReflReparamAux](declarations/continuous-transreflreparamaux.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [transReflReparamAux_mem_I](declarations/transreflreparamaux-mem-i.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [transReflReparamAux_zero](declarations/transreflreparamaux-zero.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [transReflReparamAux_one](declarations/transreflreparamaux-one.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [trans_refl_reparam](declarations/trans-refl-reparam.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [transRefl](declarations/transrefl.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [reflTrans](declarations/refltrans.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [transAssocReparamAux](declarations/transassocreparamaux.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous_transAssocReparamAux](declarations/continuous-transassocreparamaux.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [transAssocReparamAux_mem_I](declarations/transassocreparamaux-mem-i.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [transAssocReparamAux_zero](declarations/transassocreparamaux-zero.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [transAssocReparamAux_one](declarations/transassocreparamaux-one.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [trans_assoc_reparam](declarations/trans-assoc-reparam.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [transAssoc](declarations/transassoc.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [FundamentalGroupoid](declarations/fundamentalgroupoid.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [equiv](declarations/equiv.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isEmpty_iff](declarations/isempty-iff.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [nonempty_iff](declarations/nonempty-iff.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [subsingleton_iff](declarations/subsingleton-iff.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comp_eq](declarations/comp-eq.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [id_eq_path_refl](declarations/id-eq-path-refl.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [fundamentalGroupoidFunctor](declarations/fundamentalgroupoidfunctor.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [map_eq](declarations/map-eq.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [toTop](declarations/totop.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [fromTop](declarations/fromtop.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `abbrev` | [toPath](declarations/topath.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [fromPath](declarations/frompath.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfa8b7d5077fe4b0b3e47e84710f8c8c4e7cd77e27168d78bdaf623efa1c00fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

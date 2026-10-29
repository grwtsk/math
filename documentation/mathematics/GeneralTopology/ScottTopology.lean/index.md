# Scott Topology

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e70ba6638b52955640391a74b81ec8d17a97e53`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/ScottTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [DirSupInaccOn](declarations/dirsupinaccon.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [DirSupInacc](declarations/dirsupinacc.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [dirSupInaccOn_univ](declarations/dirsupinaccon-univ.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [DirSupInacc.dirSupInaccOn](declarations/dirsupinacc-dirsupinaccon.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [DirSupInaccOn.mono](declarations/dirsupinaccon-mono.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [DirSupClosed](declarations/dirsupclosed.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [dirSupInacc_compl](declarations/dirsupinacc-compl.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [dirSupClosed_compl](declarations/dirsupclosed-compl.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [DirSupClosed.inter](declarations/dirsupclosed-inter.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [DirSupInacc.union](declarations/dirsupinacc-union.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsUpperSet.dirSupClosed](declarations/isupperset-dirsupclosed.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsLowerSet.dirSupInacc](declarations/islowerset-dirsupinacc.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [dirSupClosed_Iic](declarations/dirsupclosed-iic.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [dirSupInacc_iff_forall_sSup](declarations/dirsupinacc-iff-forall-ssup.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [dirSupClosed_iff_forall_sSup](declarations/dirsupclosed-iff-forall-ssup.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [scottHausdorff](declarations/scotthausdorff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `class` | [IsScottHausdorff](declarations/isscotthausdorff.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [topology_eq](declarations/topology-eq-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isOpen_iff](declarations/isopen-iff.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [dirSupInaccOn_of_isOpen](declarations/dirsupinaccon-of-isopen.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [dirSupClosed_of_isClosed](declarations/dirsupclosed-of-isclosed.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isOpen_of_isLowerSet](declarations/isopen-of-islowerset.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isClosed_of_isUpperSet](declarations/isclosed-of-isupperset.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [scott](declarations/scott.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [upperSet_le_scott](declarations/upperset-le-scott.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [scottHausdorff_le_scott](declarations/scotthausdorff-le-scott.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `class` | [IsScott](declarations/isscott.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [topology_eq](declarations/topology-eq.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isOpen_iff_isUpperSet_and_scottHausdorff_open](declarations/isopen-iff-isupperset-and-scotthausdorff-open.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isOpen_iff_isUpperSet_and_dirSupInaccOn](declarations/isopen-iff-isupperset-and-dirsupinaccon.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [isClosed_iff_isLowerSet_and_dirSupClosed](declarations/isclosed-iff-islowerset-and-dirsupclosed.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [isUpperSet_of_isOpen](declarations/isupperset-of-isopen.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isLowerSet_of_isClosed](declarations/islowerset-of-isclosed.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [dirSupClosed_of_isClosed](declarations/dirsupclosed-of-isclosed-source-edition-2.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [lowerClosure_subset_closure](declarations/lowerclosure-subset-closure.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [isClosed_Iic](declarations/isclosed-iic.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [closure_singleton](declarations/closure-singleton.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [monotone_of_continuous](declarations/monotone-of-continuous.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [scottContinuous_iff_continuous](declarations/scottcontinuous-iff-continuous.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [isOpen_iff_Iic_compl_or_univ](declarations/isopen-iff-iic-compl-or-univ.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [scott_eq_upper_of_completeLinearOrder](declarations/scott-eq-upper-of-completelinearorder.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [isOpen_iff_scottContinuous_mem](declarations/isopen-iff-scottcontinuous-mem.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [WithScott](declarations/withscott.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toScott](declarations/toscott.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [ofScott](declarations/ofscott.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [toScott_symm_eq](declarations/toscott-symm-eq.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [ofScott_symm_eq](declarations/ofscott-symm-eq.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [toScott_ofScott](declarations/toscott-ofscott.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [ofScott_toScott](declarations/ofscott-toscott.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [toScott_inj](declarations/toscott-inj.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [ofScott_inj](declarations/ofscott-inj.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [rec](declarations/rec.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [isOpen_iff_isUpperSet_and_scottHausdorff_open'](declarations/isopen-iff-isupperset-and-scotthausdorff-open-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [scottHausdorff_le_lower](declarations/scotthausdorff-le-lower.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [IsScott.withScottHomeomorph](declarations/isscott-withscotthomeomorph.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [IsScott.scottHausdorff_le](declarations/isscott-scotthausdorff-le.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [IsLower.scottHausdorff_le](declarations/islower-scotthausdorff-le.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3aa9b28771d206e62c4e7d6e3bfc120536786ad6022d9a3cb170850c6f01aaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

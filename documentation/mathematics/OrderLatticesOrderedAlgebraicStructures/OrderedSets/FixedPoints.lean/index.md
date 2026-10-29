# Fixed Points

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c92fe9e87140b33e40bd7ce3a9736a94dacaf88b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/FixedPoints.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lfp](declarations/lfp.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [gfp](declarations/gfp.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lfp_le](declarations/lfp-le.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lfp_le_fixed](declarations/lfp-le-fixed.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [le_lfp](declarations/le-lfp.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [map_le_lfp](declarations/map-le-lfp.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_lfp](declarations/map-lfp.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isFixedPt_lfp](declarations/isfixedpt-lfp.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lfp_le_map](declarations/lfp-le-map.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isLeast_lfp_le](declarations/isleast-lfp-le.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isLeast_lfp](declarations/isleast-lfp.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lfp_induction](declarations/lfp-induction.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_gfp](declarations/le-gfp.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gfp_le](declarations/gfp-le.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isFixedPt_gfp](declarations/isfixedpt-gfp.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_gfp](declarations/map-gfp.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_le_gfp](declarations/map-le-gfp.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gfp_le_map](declarations/gfp-le-map.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isGreatest_gfp_le](declarations/isgreatest-gfp-le.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isGreatest_gfp](declarations/isgreatest-gfp.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gfp_induction](declarations/gfp-induction.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_lfp_comp](declarations/map-lfp-comp.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_gfp_comp](declarations/map-gfp-comp.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lfp_lfp](declarations/lfp-lfp.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gfp_gfp](declarations/gfp-gfp.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gfp_const_inf_le](declarations/gfp-const-inf-le.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [prevFixed](declarations/prevfixed.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [nextFixed](declarations/nextfixed.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prevFixed_le](declarations/prevfixed-le.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_nextFixed](declarations/le-nextfixed.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nextFixed_le](declarations/nextfixed-le.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nextFixed_le_iff](declarations/nextfixed-le-iff.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [le_prevFixed_iff](declarations/le-prevfixed-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [le_prevFixed](declarations/le-prevfixed.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [le_map_sup_fixedPoints](declarations/le-map-sup-fixedpoints.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [map_inf_fixedPoints_le](declarations/map-inf-fixedpoints-le.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [le_map_sSup_subset_fixedPoints](declarations/le-map-ssup-subset-fixedpoints.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_sInf_subset_fixedPoints_le](declarations/map-sinf-subset-fixedpoints-le.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [completeLattice](declarations/completelattice.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e0bd1c5499735fafa697bd940dadd039303d4930f2be5d20158e39ffcef7f01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant74c08e2d46cccf02704e6f18114caae8ad4fa8a27dcd9185abc59353b576c8b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Continuous Map Zero

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**72 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dba3ff124acba0d76d7c945eba80379fb8982fc3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/ContinuousMapZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMapZero](declarations/continuousmapzero.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instFunLike](declarations/instfunlike.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instContinuousMapClass](declarations/instcontinuousmapclass.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instZeroHomClass](declarations/instzerohomclass.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [ext](declarations/ext.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [coe_mk](declarations/coe-mk.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [toContinuousMap_injective](declarations/tocontinuousmap-injective.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [range_toContinuousMap](declarations/range-tocontinuousmap.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [comp](declarations/comp.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [comp_apply](declarations/comp-apply.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [le_def](declarations/le-def.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isEmbedding_toContinuousMap](declarations/isembedding-tocontinuousmap.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instContinuousEvalConst](declarations/instcontinuousevalconst.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instContinuousEval](declarations/instcontinuouseval.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isClosedEmbedding_toContinuousMap](declarations/isclosedembedding-tocontinuousmap.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [continuous_comp_left](declarations/continuous-comp-left.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [id](declarations/id.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [toContinuousMap_id](declarations/tocontinuousmap-id.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instZero](declarations/instzero.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [coe_zero](declarations/coe-zero.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instAdd](declarations/instadd.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [coe_add](declarations/coe-add.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instMul](declarations/instmul.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [coe_mul](declarations/coe-mul.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instSMul](declarations/instsmul.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [coe_smul](declarations/coe-smul.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instNonUnitalCommSemiring](declarations/instnonunitalcommsemiring.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instModule](declarations/instmodule.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instSMulCommClass'](declarations/instsmulcommclass-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instIsScalarTower](declarations/instisscalartower-source-edition-2.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instIsScalarTower'](declarations/instisscalartower.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instStarRing](declarations/inststarring.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instStarModule](declarations/inststarmodule.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [coe_star](declarations/coe-star.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instCanLift](declarations/instcanlift.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toContinuousMapHom](declarations/tocontinuousmaphom.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [coe_toContinuousMapHom](declarations/coe-tocontinuousmaphom.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [toContinuousMapCLM](declarations/tocontinuousmapclm.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [evalCLM](declarations/evalclm.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [evalCLM_apply](declarations/evalclm-apply.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [coeFnAddMonoidHom](declarations/coefnaddmonoidhom.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [coeFnAddMonoidHom_apply](declarations/coefnaddmonoidhom-apply.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [coe_sum](declarations/coe-sum.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [instSub](declarations/instsub.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [instNeg](declarations/instneg.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [instNonUnitalCommRing](declarations/instnonunitalcommring.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [coe_neg](declarations/coe-neg.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [instUniformSpace](declarations/instuniformspace.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [isUniformEmbedding_toContinuousMap](declarations/isuniformembedding-tocontinuousmap.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [isUniformEmbedding_comp](declarations/isuniformembedding-comp.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [_root_.UniformEquiv.arrowCongrLeft₀](declarations/root-uniformequiv-arrowcongrleft.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [nonUnitalStarAlgHom_precomp](declarations/nonunitalstaralghom-precomp.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [nonUnitalStarAlgHom_postcomp](declarations/nonunitalstaralghom-postcomp.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [norm_def](declarations/norm-def.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3699186481009c525ede589357a1577c0349fdc736b07724e51cb5e2fdf27a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

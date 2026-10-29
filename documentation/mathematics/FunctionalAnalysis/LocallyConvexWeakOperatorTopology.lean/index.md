# Locally Convex Weak Operator Topology

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa061b040caa3f2c95f0f244508bf33c5f17fc07`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/LocallyConvexWeakOperatorTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ContinuousLinearMapWOT](declarations/continuouslinearmapwot.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instModule](declarations/instmodule.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [_root_.ContinuousLinearMap.toWOT](declarations/root-continuouslinearmap-towot.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instFunLike](declarations/instfunlike.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instContinuousLinearMapClass](declarations/instcontinuouslinearmapclass.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [_root_.ContinuousLinearMap.toWOT_apply](declarations/root-continuouslinearmap-towot-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [ext](declarations/ext.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [ext_iff](declarations/ext-iff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ext_dual](declarations/ext-dual.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [zero_apply](declarations/zero-apply.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [add_apply](declarations/add-apply.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [sub_apply](declarations/sub-apply.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [neg_apply](declarations/neg-apply.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [smul_apply](declarations/smul-apply.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [inducingFn](declarations/inducingfn.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [inducingFn_apply](declarations/inducingfn-apply.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [continuous_inducingFn](declarations/continuous-inducingfn.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [continuous_dual_apply](declarations/continuous-dual-apply.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [continuous_of_dual_apply_continuous](declarations/continuous-of-dual-apply-continuous.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isInducing_inducingFn](declarations/isinducing-inducingfn.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isEmbedding_inducingFn](declarations/isembedding-inducingfn.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [tendsto_iff_forall_dual_apply_tendsto](declarations/tendsto-iff-forall-dual-apply-tendsto.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [le_nhds_iff_forall_dual_apply_le_nhds](declarations/le-nhds-iff-forall-dual-apply-le-nhds.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instT3Space](declarations/instt3space.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instContinuousAdd](declarations/instcontinuousadd.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instContinuousNeg](declarations/instcontinuousneg.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instContinuousSMul](declarations/instcontinuoussmul.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instIsTopologicalAddGroup](declarations/instistopologicaladdgroup.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instUniformSpace](declarations/instuniformspace.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instIsUniformAddGroup](declarations/instisuniformaddgroup.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [seminorm](declarations/seminorm.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [seminormFamily](declarations/seminormfamily.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [withSeminorms](declarations/withseminorms.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [hasBasis_seminorms](declarations/hasbasis-seminorms.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instLocallyConvexSpace](declarations/instlocallyconvexspace.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [ContinuousLinearMap.continuous_toWOT](declarations/continuouslinearmap-continuous-towot.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [ContinuousLinearMap.toWOTCLM](declarations/continuouslinearmap-towotclm.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abc02c6e57c46eea5bd100295d6f324c767b5e7dac6047bc8285465920451ab3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

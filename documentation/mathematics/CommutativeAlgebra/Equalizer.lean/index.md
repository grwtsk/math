# Equalizer

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3618d01cce05a735c4231e2513394b9a0220505c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/Equalizer.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [Module.Flat.ker_lTensor_eq](declarations/module-flat-ker-ltensor-eq.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [Module.Flat.eqLocus_lTensor_eq](declarations/module-flat-eqlocus-ltensor-eq.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LinearMap.tensorEqLocusBil](declarations/linearmap-tensoreqlocusbil.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [LinearMap.tensorKerBil](declarations/linearmap-tensorkerbil.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [LinearMap.tensorEqLocus](declarations/linearmap-tensoreqlocus.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [LinearMap.tensorKer](declarations/linearmap-tensorker.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [LinearMap.tensorKer_tmul](declarations/linearmap-tensorker-tmul.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [LinearMap.tensorKer_coe](declarations/linearmap-tensorker-coe.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [LinearMap.tensorEqLocus_tmul](declarations/linearmap-tensoreqlocus-tmul.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [LinearMap.tensorEqLocus_coe](declarations/linearmap-tensoreqlocus-coe.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [LinearMap.tensorKerInv](declarations/linearmap-tensorkerinv.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [LinearMap.lTensor_ker_subtype_tensorKerInv](declarations/linearmap-ltensor-ker-subtype-tensorkerinv.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [LinearMap.tensorEqLocusInv](declarations/linearmap-tensoreqlocusinv.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [LinearMap.lTensor_eqLocus_subtype_tensorEqLocusInv](declarations/linearmap-ltensor-eqlocus-subtype-tensoreqlocusinv.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [LinearMap.tensorKerEquiv](declarations/linearmap-tensorkerequiv.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [LinearMap.tensorKerEquiv_apply](declarations/linearmap-tensorkerequiv-apply.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [LinearMap.lTensor_ker_subtype_tensorKerEquiv_symm](declarations/linearmap-ltensor-ker-subtype-tensorkerequiv-symm.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [LinearMap.tensorEqLocusEquiv](declarations/linearmap-tensoreqlocusequiv.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [LinearMap.tensorEqLocusEquiv_apply](declarations/linearmap-tensoreqlocusequiv-apply.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [LinearMap.lTensor_eqLocus_subtype_tensoreqLocusEquiv_symm](declarations/linearmap-ltensor-eqlocus-subtype-tensoreqlocusequiv-symm.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [AlgHom.tensorEqualizerAux](declarations/alghom-tensorequalizeraux.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [AlgHom.coe_tensorEqualizerAux](declarations/alghom-coe-tensorequalizeraux.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [AlgHom.tensorEqualizerAux_mul](declarations/alghom-tensorequalizeraux-mul.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [AlgHom.tensorEqualizer](declarations/alghom-tensorequalizer.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [AlgHom.coe_tensorEqualizer](declarations/alghom-coe-tensorequalizer.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [AlgHom.tensorEqualizerEquiv](declarations/alghom-tensorequalizerequiv.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [AlgHom.tensorEqualizerEquiv_apply](declarations/alghom-tensorequalizerequiv-apply.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2fee68c7ffe66ba48dbf8787736fa401b60c44ad8fdf088959a1f99107a2b73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant25a82fb74cabf08ef86869004cea0213841bd27f9b9c6f9c3be06df4174ad880.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

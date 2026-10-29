# Verification target: Gelfand Naimark Segal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20b1d410bf992fc76f5afe6bd0e4832162acb4b3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Variant5304445e15b8cc8e241ceff1f7b2032b48ab0ae4a446693a51302066f00bbaea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20b1d410bf992fc76f5afe6bd0e4832162acb4b3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Variant5304445e15b8cc8e241ceff1f7b2032b48ab0ae4a446693a51302066f00bbaea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Variant5304445e15b8cc8e241ceff1f7b2032b48ab0ae4a446693a51302066f00bbaea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreGNS](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/pregns.md) | 66 | `declaration-track:7e189ee3063d2c18b30e0f0ba41a1bd50ebe960e3777ddfc607daabcee485ba2` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/instance.md) | 68 | `declaration-track:9af9746c4d4974766f12a2981fe27efa25ff7c6c5de8b7fd799a227749680189` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 69 | `declaration-track:c4922e2b1164eaacd93d5c60f226ee9954772729221a2758c76e98dfc4443327` |
| 4 | `def` | [toPreGNS](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/topregns.md) | 72 | `declaration-track:f0a6830964701e79a8a11f52cf49e1710d5839cb93adc3d15332692e8c6af233` |
| 5 | `def` | [ofPreGNS](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/ofpregns.md) | 75 | `declaration-track:ad5b54adab7272a0f4455d22fdf94c23575f09777af5dd1554efed9310bd686f` |
| 6 | `lemma` | [toPreGNS_ofPreGNS](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/topregns-ofpregns.md) | 78 | `result-track:5107a137becc781b63a2360b0d2e1d589d6e975763636140b592086c5cfd9bed` |
| 7 | `lemma` | [ofPreGNS_toPreGNS](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/ofpregns-topregns.md) | 81 | `result-track:8dcf645b992cc3144fb9c54e002e60c849a72c9203f8e41b60d99d8d0d9c47c0` |
| 8 | `abbrev` | [preGNSpreInnerProdSpace](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/pregnspreinnerprodspace.md) | 90 | `declaration-track:e2174a5a002e8d6ca74993e877f9355541e07f2a98df335d88a95921afa7e8f8` |
| 9 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 97 | `declaration-track:ba7244d51099a41d9602006eda52837b4f61f0730e458a19c00fdb66578b97f8` |
| 10 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:b742e4dfc41c5b995171eb2bed588c84495b4351bd3628e10627786f2c84d8e2` |
| 11 | `lemma` | [preGNS_inner_def](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/pregns-inner-def.md) | 102 | `result-track:23e5e6f8f7276b47eb47205473d649435648845eac155e51c59a1e415856ebb0` |
| 12 | `lemma` | [preGNS_norm_def](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/pregns-norm-def-source-edition-2.md) | 105 | `result-track:3e888c2042a3f91eb9546b00c2376d077c1c12e743a7cf94fd4ba86243b0f31f` |
| 13 | `lemma` | [preGNS_norm_sq](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/pregns-norm-sq.md) | 108 | `result-track:0b9c03a52ec2fa3528109478f93b364b4f6eb9cdb5a9ead8efc5c6a5c291cc01` |
| 14 | `lemma` | [preGNS_norm_def'](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/pregns-norm-def.md) | 113 | `result-track:39655c596d9370f03b03b73617aae2a74a2f8cba5db00750a0df6dc144969d3e` |
| 15 | `lemma` | [norm_map_star_mul_le](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/norm-map-star-mul-le.md) | 122 | `result-track:77cc321b09b0118f6f66676d80a01ba44a0cb913ad54a04accd5fc3a75e291a8` |
| 16 | `lemma` | [norm_map_star_mul_sq_le](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/norm-map-star-mul-sq-le.md) | 129 | `result-track:2a071b0bd04cfee118a291957c92aceefd892f8d1291633519521f78813c6144` |
| 17 | `lemma` | [norm_map_mul_star_le](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/norm-map-mul-star-le.md) | 135 | `result-track:faf9dfd82d3580d8ba8185fedb7768cb54506ff48cd20650baf1cb2d6e614383` |
| 18 | `lemma` | [norm_map_mul_star_sq_le](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/norm-map-mul-star-sq-le.md) | 141 | `result-track:54365835166d9e3b15b84dea29c77b0db1b627d75a9ffd8d496a9db481de1a28` |
| 19 | `abbrev` | [GNS](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/gns.md) | 156 | `declaration-track:edd849c015f9bcda0841aeeaef8ce76276be11b4a79ab2a2a5705641b8a88591` |
| 20 | `def` | [leftMulMapPreGNS](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/leftmulmappregns.md) | 167 | `declaration-track:c37c11fb8aedf0c50f62672c66fb5ab99f356c9f2013e80cc79de1800dc983a1` |
| 21 | `lemma` | [leftMulMapPreGNS_mul_eq_comp](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/leftmulmappregns-mul-eq-comp.md) | 182 | `result-track:a807825ddd8b10c3cda97de5eff830dcf32112b95bac8127b9045d716a2bfac6` |
| 22 | `lemma` | [completion_leftMulMapPreGNS_map_smul](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/completion-leftmulmappregns-map-smul.md) | 191 | `result-track:62ac5d9271e14396ddcacfbe1074c35c4e555f4730acbbf84600074fce03dc0e` |
| 23 | `def` | [gnsNonUnitalStarAlgHom](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/gnsnonunitalstaralghom.md) | 205 | `declaration-track:53f8cdd76e81bec2a91e9d8c8415fe907e055d41b6fefd4bffb078fba101b289` |
| 24 | `lemma` | [gnsNonUnitalStarAlgHom_apply](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/gnsnonunitalstaralghom-apply.md) | 227 | `result-track:b81dfcf6d426a5f3db4e6dff9402e9700d8c4ef2bc1439b7a41c20c6c3d9418b` |
| 25 | `lemma` | [gnsNonUnitalStarAlgHom_apply_coe](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/gnsnonunitalstaralghom-apply-coe.md) | 231 | `result-track:3395b0fccdc7daffa938c9bbf3e906ea5f7dd18f6d261a38fe37cf8aed57e331` |
| 26 | `lemma` | [gnsNonUnitalStarAlgHom_map_one](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/gnsnonunitalstaralghom-map-one.md) | 242 | `result-track:fe1a56a951cd5115095fb419843c27a47ddbcb667a6d692247cdc659fae1a9fe` |
| 27 | `def` | [gnsStarAlgHom](../../../../FunctionalAnalysis/GelfandNaimarkSegalNamespacedPublic.lean/declarations/gnsstaralghom.md) | 255 | `declaration-track:70306e53ef69ceb8b6ec632dc7df561d361aed53de640670221b7fedb7d4c64f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c1541a06e1a7c0348eed28854288e75988197471b6e65ac66f6961738a208e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Variant5304445e15b8cc8e241ceff1f7b2032b48ab0ae4a446693a51302066f00bbaea.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Variant5304445e15b8cc8e241ceff1f7b2032b48ab0ae4a446693a51302066f00bbaea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Fold Namespaced Public Fold Congr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41eb32a721fd60c0c7cef415e36045231fe665f",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41eb32a721fd60c0c7cef415e36045231fe665f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/fold.md) | 38 | `declaration-track:a3a72006438136c556a48b0f364f64b5bf8ca89b6780d278e8b300339ee8b4d2` |
| 2 | `def` | [foldTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldtr.md) | 54 | `declaration-track:4230035798b7248d6cf51448bef7a6442e5764887052628cd7e0780e3cb14069` |
| 3 | `def` | [foldRev](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldrev.md) | 69 | `declaration-track:48ff914f3915b153a9bdb7b56caf06369f891f8500d9d9dad8182f3ee463ff78` |
| 4 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/any.md) | 82 | `declaration-track:fd6a88f913a631946bdcb5ef79a0cc61eef1dc22667e7a4076f1c2a2fc01cd16` |
| 5 | `def` | [anyTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/anytr.md) | 97 | `declaration-track:9d918dcc9514c4f5b17f2f34fae64044b40cb2bbf32ef77eeddf4cc56d1ae5ea` |
| 6 | `def` | [all](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/all.md) | 112 | `declaration-track:ceb5f7131a892d605053db9e11611d99c83fe0ee1d5dec94a1398e137db430b2` |
| 7 | `def` | [allTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/alltr.md) | 127 | `declaration-track:d60ebf8c30f19ed9d2f2ee09430e6613a476cf4fd943a671d3ccf54bc1b317dc` |
| 8 | `theorem` | [fold_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/fold-congr.md) | 135 | `result-track:f1602e4585c2831cec5b529616642c0d04f83bd4e010da770b6776c1af7b576f` |
| 9 | `theorem` | [foldRev_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldrev-congr.md) | 141 | `result-track:ebc25a6da05c70718f51b1fb6006a39d08fe14b9f26a14e848ed9248719469da` |
| 10 | `theorem` | [foldTR_loop_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldtr-loop-congr.md) | 147 | `result-track:f0fc792b3a6f8385a2f0c58631cdf316b236ba8ceb991542c3f04ede50b3ede9` |
| 11 | `theorem` | [fold_eq_foldTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/fold-eq-foldtr.md) | 153 | `result-track:f6960fc62cc88f99b7e57a0c9f203ccbc8ba19cd265726bba32e0e789ea2bcc7` |
| 12 | `theorem` | [any_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/any-congr.md) | 169 | `result-track:0cd3b4f9d5f56cd5880de9d019e2514179b31f68b653772ef71314666af8d961` |
| 13 | `theorem` | [anyTR_loop_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/anytr-loop-congr.md) | 173 | `result-track:dbc09d247c7c092e3abbf2f9b614017dad219500339dc46da5ddb29ed4f647d1` |
| 14 | `theorem` | [any_eq_anyTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/any-eq-anytr.md) | 178 | `result-track:e7a536c1032838681416e00bd688555f0a930a232aa121e37b7e85aaa796445e` |
| 15 | `theorem` | [all_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/all-congr.md) | 194 | `result-track:7b5b9d7466fd9ce001ab2366d66de789bac96d5b5fb2ed29d746452d8776d11c` |
| 16 | `theorem` | [allTR_loop_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/alltr-loop-congr.md) | 198 | `result-track:c0638f5b0cef1b9ed07ee6a4d03dae10b64a5699dce6363b2752764957e07fc0` |
| 17 | `theorem` | [all_eq_allTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/all-eq-alltr.md) | 202 | `result-track:e8df394c9072f421faf6d97ec91718a96a1e230987ef58f437705a8a97f83095` |
| 18 | `def` | [dfoldCast](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldcast.md) | 220 | `declaration-track:3be0cbf182ef8803e52c9028dbee3e1594ff611bc89f74be2e1f5551f4c94abc` |
| 19 | `theorem` | [dfoldCast_rfl](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldcast-rfl.md) | 225 | `result-track:04c1917b2137c99d766923b9d3216a9865eab77bbae10f511a9fd6f2ba74ad4e` |
| 20 | `theorem` | [dfoldCast_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldcast-trans.md) | 228 | `result-track:ae0c7672c9963e7721d61319d7622bc783d56834073ce15121443ee47e23738b` |
| 21 | `theorem` | [dfoldCast_eq_dfoldCast_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldcast-eq-dfoldcast-iff.md) | 234 | `result-track:e10e80782a08c0372dbf58b598a6f352e66dcfacdfdcb4d3b2ac30ea2f32d946` |
| 22 | `theorem` | [apply_dfoldCast](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/apply-dfoldcast.md) | 240 | `result-track:02ca99c1a430877c7d79d832aa9cdf9dcb2fd82f6330dc581ea10b9a8bdc0971` |
| 23 | `def` | [dfold](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfold.md) | 252 | `declaration-track:171af8e043808b36b77dcd56bfc1808d1d0d1ca41713be8279bea22bfdfac844` |
| 24 | `def` | [dfoldRev](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldrev.md) | 266 | `declaration-track:ef6a6510022bd32a8b53a2ea5e0afa8843a79c7b97cd3dae574741a64a2c0b6d` |
| 25 | `theorem` | [fold_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/fold-zero.md) | 276 | `result-track:3e5816338b38becaaf0baf64d3f1beda79c4028306f4492a26e981bb70c678cd` |
| 26 | `theorem` | [fold_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/fold-succ.md) | 279 | `result-track:e1858d86334904fcf65762413f6a69badcb26e5bf6102ee96a235d6b1bf5abbb` |
| 27 | `theorem` | [fold_eq_finRange_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/fold-eq-finrange-foldl.md) | 282 | `result-track:e686d43e599676b3dfc45f45cffe783b7d540cd9b6918cd368ec7f50b4e36b3e` |
| 28 | `theorem` | [fold_add](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/fold-add.md) | 289 | `result-track:a568dc3ad372e1d9af29cff56f84ca5de70edbf057867fa00991813986fc7d49` |
| 29 | `theorem` | [foldRev_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldrev-zero.md) | 301 | `result-track:6dbb6ed6ae3e7233a35ad737b2bf582b5baefd73c25f15d94839384fda8e95e7` |
| 30 | `theorem` | [foldRev_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldrev-succ.md) | 304 | `result-track:137f11fc406bd26441041e349ec061a2b21f1429cde85d4573e13188da28d0bf` |
| 31 | `theorem` | [foldRev_eq_finRange_foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldrev-eq-finrange-foldr.md) | 308 | `result-track:decf8e47917e3b307b8c1998d2f5458d3d271ba7764eb82d7be77139088571cc` |
| 32 | `theorem` | [foldRev_add](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldrev-add.md) | 314 | `result-track:ae92c5cc6fcb8c69e902299cced08fa44ed0fffc7c5f78f5dfa97274db519e62` |
| 33 | `theorem` | [any_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/any-zero.md) | 327 | `result-track:1d761354dd871c74b29ef94410cae122fa4171ba27b53e4eeb3236ee4a55f33c` |
| 34 | `theorem` | [any_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/any-succ.md) | 329 | `result-track:be712577783909673c27e56752c0009390402eab114b9c3ac57e3ffc2459417e` |
| 35 | `theorem` | [any_eq_finRange_any](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/any-eq-finrange-any.md) | 332 | `result-track:7ce5459cd32e5a0637d89422920e7cf6f8bc971364e7f922c8f93a36c12342fe` |
| 36 | `theorem` | [all_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/all-zero.md) | 340 | `result-track:55952ce170911b288d548f209293ed7d031f0d20824dd1e9deea0dc2fe1a9382` |
| 37 | `theorem` | [all_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/all-succ.md) | 342 | `result-track:42719445ebe4748cfcd61d36c20cf2eb3c5272fcf9f200c14d39b00897fa7096` |
| 38 | `theorem` | [all_eq_finRange_all](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/all-eq-finrange-all.md) | 345 | `result-track:b3a924720492211b751f76a3e357ef398efb55d00b9987d0b16a607931d23609` |
| 39 | `theorem` | [dfold_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfold-zero.md) | 354 | `result-track:9b1cbd747c4e54aef22dc39f3cda3008283315ca3f02ffda4a90802c89ed0241` |
| 40 | `theorem` | [dfold_loop_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfold-loop-succ.md) | 360 | `result-track:e930b55dafd5586d384aa94bf2814f8e4ac495869528033d88db85a4d15c69fa` |
| 41 | `theorem` | [dfold_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfold-succ.md) | 379 | `result-track:d778d31f52199acf0fa19960bb01d51a96a139095095df49087053f4ee63d865` |
| 42 | `theorem` | [dfold_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfold-congr.md) | 392 | `result-track:d52ab1fb6204aa454ec111efd65f23811c9e8e9455fcd72c2af875d428802ba4` |
| 43 | `theorem` | [dfold_add](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfold-add.md) | 402 | `result-track:851a6b40c95eb95522d0f70e08fd3e1f0794f6e663ca8a5ba7755704b102166a` |
| 44 | `theorem` | [dfoldRev_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldrev-zero.md) | 413 | `result-track:4a09775b0a865a04b70fd19e45adc33804b4f1cab157f4c8324c90beaab9c145` |
| 45 | `theorem` | [dfoldRev_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldrev-succ.md) | 419 | `result-track:45ba0c0dd073ec931f0d1803c99188c2f126295539d314ede328aec310824c89` |
| 46 | `theorem` | [dfoldRev_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldrev-congr.md) | 427 | `result-track:466f95fa03116080c55e45539358a27e69355e18b6568801f0a3f5e83dc72218` |
| 47 | `theorem` | [dfoldRev_add](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/dfoldrev-add.md) | 437 | `result-track:b25a83d36dabd8317b34256d0331012fd02a2c9b0fae58994d1d59b1a89ee55a` |
| 48 | `def` | [foldI](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/foldi.md) | 463 | `declaration-track:4ef158370ccc6f22c9baca2df270ac286bfeef4dcd8b0baceff820b9ed7314cc` |
| 49 | `def` | [anyI](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/anyi.md) | 477 | `declaration-track:9f35009e2ce627d3ca4b4a47a1c3ffa7c7b7f1c4cd418859a0a4c6c8d6d1d0a5` |
| 50 | `def` | [allI](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/declarations/alli.md) | 491 | `declaration-track:5baad6ff3f41fc7a2f2fe1a8ecca358723d70189b81bb4d7704c600e402bc50f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0bfc46fd2f92e24b44bfa18aecf0889fad9813228d5a15d1db0c797e1c1f9e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

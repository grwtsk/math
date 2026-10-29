# Verification target: Simplicial Set Skeleton Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae3c3f3cde6555c13d871454a132d1868a92db04`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean.json)

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
| 1 | `def` | [skeleton](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeleton.md) | 48 | `declaration-track:d6aff12f4470381bc429b22f2e168d90f332fb8c47699bd7fe3aa2ea684f6465` |
| 2 | `lemma` | [mem_skeleton](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/mem-skeleton.md) | 56 | `result-track:1b3e42116a86f8329c59f5dfa956fa30950c6ac495d29f5ef664157d09baa51f` |
| 3 | `lemma` | [skeleton_obj_eq_top](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeleton-obj-eq-top.md) | 65 | `result-track:9bd3479cc53c34d7dfe0494739452a75b72696c784ac1f63e582626f3ec03544` |
| 4 | `lemma` | [ofSimplex_le_skeleton](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/ofsimplex-le-skeleton.md) | 71 | `result-track:b9af8cce3bd67ce21435c9290cd8e561d2a95feb774891d91f450fefb2221725` |
| 5 | `lemma` | [mem_skeleton_obj_iff_of_nonDegenerate](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/mem-skeleton-obj-iff-of-nondegenerate.md) | 76 | `result-track:7add46ece2213cd13eb29e000396b591fe76deaffb83889bba01173e1524a374` |
| 6 | `lemma` | [skeleton_zero](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeleton-zero.md) | 90 | `result-track:bac867dfeabcaa66b06ffc5dd3b02ece235264eaa668b5104d1b1ef7a63105e8` |
| 7 | `lemma` | [iSup_skeleton](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/isup-skeleton.md) | 93 | `result-track:66ab65c33669cfffd922a94b2c4c34b57cbaab45bba31dac4176f3f3af6de14b` |
| 8 | `lemma` | [skeleton_succ](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeleton-succ.md) | 102 | `result-track:5bb0f1607294cd231b94b60f92fc5de0c003312f6f556ed0652e951879a51c63` |
| 9 | `def` | [skeletonOfMono](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeletonofmono.md) | 128 | `declaration-track:8b8ffff71fced00906b547a8575631588e6d2ca8382aa8c141d04f3679a19908` |
| 10 | `lemma` | [skeleton_le_skeletonOfMono](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeleton-le-skeletonofmono.md) | 137 | `result-track:7d6870562c82e9d8d685a5f9166ad18a10cf0ca5de2b28940aa50dfac5416504` |
| 11 | `lemma` | [skeletonOfMono_zero](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeletonofmono-zero.md) | 142 | `result-track:55e72988467c517435c911a713fef07a764a7956678cd300f8945b48b1e8b09e` |
| 12 | `lemma` | [iSup_skeletonOfMono](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/isup-skeletonofmono.md) | 146 | `result-track:fbcd143e8cd05a140a29be40caf6e8d33df77c9082e0bf32781ee30628109a96` |
| 13 | `lemma` | [mem_skeletonOfMono_obj_iff_of_nonDegenerate](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/mem-skeletonofmono-obj-iff-of-nondegenerate.md) | 154 | `result-track:abe8ba211fad1e0608029b418b087b72dc5bf25eb08d6693c49a911fe4f1dc98` |
| 14 | `lemma` | [skeletonOfMono_obj_eq_top](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeletonofmono-obj-eq-top.md) | 160 | `result-track:f15f8edc91e388a231ff694e5a037b1298b373d6b6cab2e9decba08df6bcef5e` |
| 15 | `lemma` | [skeletonOfMono_succ](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/skeletonofmono-succ.md) | 166 | `result-track:68ce5cd8c7aab36c86b30d8931274bd5ef6e69303877ea26c2c0d372325d487d` |
| 16 | `structure` | [Cell](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/cell.md) | 208 | `declaration-track:d60c3f2d0833857123bd2e9bc295a7b3b2025fbb47765c3e0fc3ed6c4f73439a` |
| 17 | `abbrev` | [sigmaStdSimplex](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/sigmastdsimplex-source-edition-2.md) | 219 | `declaration-track:ff6a54ff37f1227a7fe01f20dda647145fc28e511e3ed0253a4c4d49d71de249` |
| 18 | `abbrev` | [sigmaBoundary](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/sigmaboundary-source-edition-2.md) | 225 | `declaration-track:971cf4ab177f6ad180a5ceaf6228a75f308f0947005dc0fd150886acd585dc99` |
| 19 | `abbrev` | [ιSigmaStdSimplex](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/sigmastdsimplex.md) | 235 | `declaration-track:dc3b69e7d8cb67bbfe078fbead729f671d9fefd4cca65faf8279f8cab963cc33` |
| 20 | `abbrev` | [ιSigmaBoundary](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/sigmaboundary.md) | 241 | `declaration-track:7213d5c06eea215e4c6fe0d102a61ff593e9f6bd1a24b23cd727a356e032617a` |
| 21 | `abbrev` | [map](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/map.md) | 246 | `declaration-track:af6543742fdd5bfd2d302944f61481f0f7bb5a28dddaa79b8c3cbf1dbe7c50ad` |
| 22 | `lemma` | [mem_skeletonOfMono_obj_iff](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/mem-skeletonofmono-obj-iff.md) | 249 | `result-track:cea720627d151fd05b2d475edc5a5ebe834bd08b5ced29b626b5fc3270653552` |
| 23 | `lemma` | [range_map_le](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/range-map-le.md) | 254 | `result-track:7ed13a7e1ff7a7d90feb849987e3cc68837b617d477401dd079aaab12408ea62` |
| 24 | `lemma` | [preimage_map](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/preimage-map.md) | 259 | `result-track:0ebdd7920bce3819aee9982105a4c55703410daece5f4e650357912d41c938d4` |
| 25 | `lemma` | [ιSigmaStdSimplex_jointly_surjective](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/sigmastdsimplex-jointly-surjective.md) | 273 | `result-track:c9a8544518fbb878718bd076b3ecbb119472d6123bb727ede5de315bd6742f57` |
| 26 | `abbrev` | [l](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/l.md) | 283 | `declaration-track:4bf0a5865c3e987045cc146a046b71a3c9279c7691c94fd2633e997362198dc3` |
| 27 | `abbrev` | [t](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/t.md) | 287 | `declaration-track:43d0d4a060ef8237f317677765c88326c2a0bf453670c377f9899d6db95a6f68` |
| 28 | `abbrev` | [b](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/b.md) | 292 | `declaration-track:71bb86a08205a3b13d975ef803f95e14fa0c7b0e95dc02dc973b990e6fdaa522` |
| 29 | `abbrev` | [r](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/r.md) | 296 | `declaration-track:2e57a70c49a1885c9f0c2e8d2b9ceb86ac2a7cac0ed8851658ab8c7366117ff7` |
| 30 | `lemma` | [w](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/w.md) | 300 | `result-track:ddb6717eb49fd424a427a525d6713b234e9607a629ac755e2db6258a10af8c74` |
| 31 | `lemma` | [ι_t_ι_eq_ι_l_b_ι](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/t-eq-l-b.md) | 309 | `result-track:25f5caa6b2bf8b04cc58a128f7c4da9a492e0a545f913d8ce79ed29f8a38881e` |
| 32 | `lemma` | [ι_l](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/l-source-edition-2.md) | 315 | `result-track:e239132d65868e5e522bcacf961dce23f1055ec8389d87201d1fdeda1e37fa31` |
| 33 | `lemma` | [ι_b_ι](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/b-source-edition-2.md) | 327 | `result-track:b8585a55dbbe7beb72c6bceaa5deed0b02c960105889633af0403297a8296721` |
| 34 | `lemma` | [b_app_ι_app_objEquiv_symm_val](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/b-app-app-objequiv-symm-val.md) | 331 | `result-track:59d829a83566c5b6327a1c79b3932937a9f0e35fe441bc5c4298d47a997cc553` |
| 35 | `lemma` | [isPullback](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/ispullback.md) | 340 | `result-track:de7750feee3e1819feeb08d6d6ba28407543cde7c07ed2e800c3d7fafd4edb3b` |
| 36 | `lemma` | [sup_range_r_range_b](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/sup-range-r-range-b.md) | 362 | `result-track:5c347a4ad1bb7d8ef665b71f6de3337f1b9f38b02cc116610127a1d02f8e8362` |
| 37 | `lemma` | [range_r_app_union_range_b_app](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/range-r-app-union-range-b-app.md) | 378 | `result-track:8ce3d94768977c19256b24d91daf35482eb2b619ac9f2bfbc80d9d6fc1a1c282` |
| 38 | `lemma` | [isPushout_aux](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/ispushout-aux.md) | 384 | `result-track:39de7f5b56e1cb22e2556a83390925990164e59b57c746759c78a192fa458749` |
| 39 | `lemma` | [isPushout](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/ispushout.md) | 395 | `result-track:7853fc16347a9a7c15bf2aae067e2eb9efabc204ff4eb6c9dd0da657aba4aea9` |
| 40 | `def` | [relativeCellComplexOfMono](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/relativecellcomplexofmono.md) | 428 | `declaration-track:a9d1a8523701361cc4d193f0b01c3fd494f77aafb2dc4fe7f2b02336ddb67932` |
| 41 | `abbrev` | [relativeCellComplex](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/relativecellcomplex.md) | 453 | `declaration-track:3f81db3e6049909b07b2f0cca995a881473928e706dd248750a98938423232b4` |
| 42 | `def` | [relativeCellComplexCellsEquiv](../../../../AlgebraicTopology/SimplicialSetSkeletonPublic.lean/declarations/relativecellcomplexcellsequiv.md) | 461 | `declaration-track:f5485ac6f13236df974fac779aee2b1779dd7248aadac15df4e90930155a026c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d5756deace58cad1bed729deecf5d4694cec4241c40eee00bf4300a0c4bb487 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

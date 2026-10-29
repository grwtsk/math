# Verification target: Abs Convex Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c65b8be47878eb795e21aef0d387558062cb90c",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c65b8be47878eb795e21aef0d387558062cb90c`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean.json)

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
| 1 | `def` | [AbsConvex](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex.md) | 63 | `declaration-track:1ec3040e8ab27f2a0203cf6696ecfc816682f9753926e61f396ef4529a51f506` |
| 2 | `theorem` | [AbsConvex.empty](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-empty.md) | 67 | `result-track:62128b9ad3f0f983cca9eb66cac21b8a93605545efa44500460d971d4b2e2e5c` |
| 3 | `theorem` | [AbsConvex.univ](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-univ.md) | 69 | `result-track:645da2f547a8a2b2a2ea29e13e84f783c3d0eb354dea865ec979d193e00ed3b2` |
| 4 | `theorem` | [AbsConvex.inter](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-inter.md) | 71 | `result-track:11ccee0becb892836c0cb0c8663bdd11f2916d9a8fc7dd342cd5268f6664c4fb` |
| 5 | `theorem` | [AbsConvex.sInter](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-sinter.md) | 74 | `result-track:4f9ff3a85b44ad3b227634f258b12f5dcb2c06aaa5f6a6bb76bc283642043e54` |
| 6 | `theorem` | [AbsConvex.iInter](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-iinter-source-edition-2.md) | 77 | `result-track:ba36e13bd960a97a68e063ce6374167a8012002f46cc9f1cd05fb0c3b66ec05e` |
| 7 | `theorem` | [AbsConvex.iInter₂](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-iinter.md) | 81 | `result-track:a060b315dd151e7fedf121411c2f116be60f6274e5dc6aeeefbb9ad9ac19d7f4` |
| 8 | `def` | [absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull.md) | 89 | `declaration-track:164112d811aaac834104ad5ef44ae25711aa4d4d7b98d1d533db2a0ea6383cb5` |
| 9 | `theorem` | [subset_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/subset-absconvexhull.md) | 94 | `result-track:42e5026eae5d7c538d967bb5dba8bbc48ad703bec97f903e23903b55930eafa0` |
| 10 | `theorem` | [absConvex_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-absconvexhull.md) | 97 | `result-track:a484ef21cba2904d5607bb4c4bf16657142a0c2379af06a2a9969c5b3aa1f1ba` |
| 11 | `theorem` | [balanced_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/balanced-absconvexhull.md) | 100 | `result-track:ec9dbf454b236e2105a577aea0773a891acc8b09b1e62a2d87742f3ccafced56` |
| 12 | `theorem` | [convex_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/convex-absconvexhull.md) | 103 | `result-track:a16c27a0cad4960e95b7f4cafba85df7968e1c2433262798ff746c5ca5f480f2` |
| 13 | `theorem` | [absConvexHull_eq_iInter](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-eq-iinter.md) | 108 | `result-track:103f364b5b56f7343ab678ca7033c2b30c8ec5ba5bf0397e95c184795f7c84cf` |
| 14 | `theorem` | [mem_absConvexHull_iff](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/mem-absconvexhull-iff.md) | 114 | `result-track:dfbb6068f9ad94d8ed8e47c4da1a7439cb734ef3ac15a47b6c2ab5bcbc64746d` |
| 15 | `theorem` | [absConvexHull_min](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-min.md) | 117 | `result-track:b2c6f3aa9da08f7de20a33d6c601eb13a34c0b3ba72829c8af73805b0232b1ee` |
| 16 | `theorem` | [AbsConvex.absConvexHull_subset_iff](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-absconvexhull-subset-iff.md) | 120 | `result-track:44556e3d5989bacbd2fff870fff4d8d10bfe115303fb58d60f27058059c2c6e7` |
| 17 | `theorem` | [absConvexHull_mono](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-mono.md) | 124 | `result-track:55d88c188cd7220f8b071422223327a57d3a3770f91952e6fc54ef5f47688b13` |
| 18 | `lemma` | [absConvexHull_eq_self](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-eq-self.md) | 127 | `result-track:650a9d5b41efb03d0ee9694886b4cde1ed702e271bb882ffe6fb0d945f9d43b6` |
| 19 | `theorem` | [absConvexHull_univ](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-univ.md) | 133 | `result-track:3886331a9c87c4724055d22ecdcb4cef2582f7030dffd36747cf1d6fa1d3871c` |
| 20 | `theorem` | [absConvexHull_empty](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-empty.md) | 137 | `result-track:bc92fb43430c0d58c65e3d09fa3518a941951a27c601ab4edd03c718efdaef29` |
| 21 | `theorem` | [absConvexHull_eq_empty](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-eq-empty.md) | 141 | `result-track:6bd9e03994bbee8ae4bf831f650a35e8abebeb0995eb94152e3d5ab1fa0c3505` |
| 22 | `theorem` | [absConvexHull_nonempty](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-nonempty.md) | 150 | `result-track:4fcf3ddbba9c0e4115a5a371e653d7a54c7e45bd2ba3670a6ef435cb14100306` |
| 23 | `theorem` | [absConvex_closed_sInter](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-closed-sinter.md) | 158 | `result-track:36de4abab015ad0c50b67fe2bc00851a4a72db8f0a540ef5cede7d83fd14340c` |
| 24 | `def` | [closedAbsConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/closedabsconvexhull.md) | 166 | `declaration-track:e624b778a51b06c652c9d54a7499c11169e8244e29015d826e8bef2fd5ee4171` |
| 25 | `theorem` | [absConvex_convexClosedHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-convexclosedhull.md) | 169 | `result-track:e140a3d94f899b50983a43baf89c5b25aeeeb525eeb48274b8c3a232584d1c50` |
| 26 | `theorem` | [isClosed_closedAbsConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/isclosed-closedabsconvexhull.md) | 172 | `result-track:5f5220cad0cac6f53f2557edfc93af0f14a0a02c8df85a79986e55f026664697` |
| 27 | `theorem` | [subset_closedAbsConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/subset-closedabsconvexhull.md) | 175 | `result-track:3c310a2ccbb3375150ee81d3c93218e028e8bd490c417a853506681e4691589e` |
| 28 | `theorem` | [closure_subset_closedAbsConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/closure-subset-closedabsconvexhull.md) | 178 | `result-track:73a275c841e296dccb118ff920f3c6e1bf43aaff4e969bd67c1b1eaebb010c14` |
| 29 | `theorem` | [closedAbsConvexHull_min](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/closedabsconvexhull-min.md) | 181 | `result-track:8cb017bcd51fcc60b739408c8a2fdda729a6e7782434289359b67838e4697fc8` |
| 30 | `theorem` | [absConvexHull_subset_closedAbsConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-subset-closedabsconvexhull.md) | 185 | `result-track:27cded9a59defc6671e4c8a603b3b77bc691a6136fd3458fc7e54adb3fb1ecb7` |
| 31 | `theorem` | [closedAbsConvexHull_closure_eq_closedAbsConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/closedabsconvexhull-closure-eq-closedabsconvexhull.md) | 190 | `result-track:23e38a2957733b6b685d788ddb4ed4eefd9d3e097f83c1edd2214f735ed818ab` |
| 32 | `theorem` | [AbsConvex.closure](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvex-closure.md) | 204 | `result-track:c4b454545c0113a178b0ed0a083820a1a461a0a0ef49c799b225dd75069d0bd2` |
| 33 | `theorem` | [closedAbsConvexHull_eq_closure_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/closedabsconvexhull-eq-closure-absconvexhull.md) | 207 | `result-track:cb73f57ff4b9335933a7d6c4146bdd1d26ff26bc6cf7a666e662ec3ac7609006` |
| 34 | `theorem` | [absConvexHull_add_subset](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-add-subset.md) | 220 | `result-track:8b5bbf6449dc26cab56cbb12ae796d3300134cf64741b4432b9762fb6760a0a8` |
| 35 | `theorem` | [absConvexHull_eq_convexHull_balancedHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/absconvexhull-eq-convexhull-balancedhull.md) | 226 | `result-track:c6a72d0e75aa393c6e306f9951aea3528d99f7454c6935217b139e3976a6607b` |
| 36 | `theorem` | [balancedHull_convexHull_subset_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/balancedhull-convexhull-subset-absconvexhull.md) | 235 | `result-track:9fe09f7822da54ff9ea427c51f76fe2fe53e778ce63b77ee1b264ccab7bd8037` |
| 37 | `theorem` | [IsOpen.absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/isopen-absconvexhull.md) | 245 | `result-track:6fd638d787f2732bd7efd54efab56ce0c6ac40ee42e0361e0e267492d6d23892` |
| 38 | `theorem` | [nhds_hasBasis_absConvex](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/nhds-hasbasis-absconvex.md) | 258 | `result-track:ebfc18cbd591be5b068734345d07fa89b9032a1a17f5e8de4126e8ff6b3e9e65` |
| 39 | `theorem` | [nhds_hasBasis_absConvex_open](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/nhds-hasbasis-absconvex-open.md) | 270 | `result-track:d2d94bbb10eb32800f52a30721bdf4ab62356e5f98e118c14c67a4ed9504b3e3` |
| 40 | `theorem` | [nhds_hasBasis_absConvex_closed](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/nhds-hasbasis-absconvex-closed.md) | 281 | `result-track:87de69b1f7f6dd67898c407b4fb28fa52a30b50ccf8627a38b5ab9b4dfd95742` |
| 41 | `theorem` | [exists_nhds_hasAntitoneBasis_absConvex_open_add_closure_subset](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/exists-nhds-hasantitonebasis-absconvex-open-add-closure-subset.md) | 297 | `result-track:6d3d4067597b516cab3e71edf9e9770fba8c64fcb6dc097dd0001dad4239b1e8` |
| 42 | `lemma` | [balancedHull_subset_convexHull_union_neg](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/balancedhull-subset-convexhull-union-neg.md) | 335 | `result-track:9709622cf8afef5ebdea740a0c37fbba2ca15a942911718711964754f2238b09` |
| 43 | `theorem` | [convexHull_union_neg_eq_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/convexhull-union-neg-eq-absconvexhull.md) | 347 | `result-track:10d6e29f817f434391842403fb2b1e56bffd3698edd38e3d08b61312e24e8d8c` |
| 44 | `lemma` | [totallyBounded_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/totallybounded-absconvexhull.md) | 361 | `result-track:e55a9f7cb827a8b8bb51d8b30bb0e181c68e028dcadd1324d299f7ddd8b55228` |
| 45 | `lemma` | [zero_mem_absConvexHull](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/zero-mem-absconvexhull.md) | 368 | `result-track:0301808d02058bfa8880e2283ff6fb119ba70d3eb0a2d9e391e33b55f25e38c0` |
| 46 | `theorem` | [isCompact_closedAbsConvexHull_of_totallyBounded](../../../../FunctionalAnalysis/AbsConvexNamespacedPublic.lean/declarations/iscompact-closedabsconvexhull-of-totallybounded.md) | 373 | `result-track:f0c9e95f0d59eae7b95713237a2ff7dfc8702012617f18809a5da10a2067ca7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b37f8d4a95fcff92f47a8555f51dd322d03805576c57c7b028684bab63ea3e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Relative Morphism Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30ebf9125b6e64309b138902624c514f1bad2c19",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30ebf9125b6e64309b138902624c514f1bad2c19`.

Source path: `GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean.json)

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
| 1 | `structure` | [RelativeMorphism](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/relativemorphism.md) | 48 | `declaration-track:0954ea992723885d67cffabbc5372f81d905069a4cb07339ad574fe84d9b388e` |
| 2 | `def` | [const](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/const.md) | 61 | `declaration-track:bfb0ecf40a456ec5ad56533493eeed0b3482298f3cb93453f53e26ef63525d83` |
| 3 | `def` | [ofSimplex₀](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/ofsimplex.md) | 68 | `declaration-track:c88d951f8202d3af4cee93d0a8da28ea1358881f89eef3e78d3143d6af7b843e` |
| 4 | `lemma` | [map_eq_of_mem](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/map-eq-of-mem.md) | 75 | `result-track:bcad9709dc07e1b193c2a43a4f25a5e576f55b304df68badf6249b46441f2a4d` |
| 5 | `lemma` | [map_coe](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/map-coe.md) | 80 | `result-track:07070fc4b86c900df6afabf04b438e7afd2a38bd562caca35c9d51df075a4553` |
| 6 | `lemma` | [image_le](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/image-le.md) | 84 | `result-track:1baf71d43637d433952e1730efd90abf49ad0050ae2e2429ca8480084ea4d967` |
| 7 | `lemma` | [le_preimage](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/le-preimage.md) | 89 | `result-track:c2a6846e5962b045b6b331c0e2b106311b06a89f94431c0419e81eb238e3ca65` |
| 8 | `structure` | [Homotopy](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopy.md) | 96 | `declaration-track:e7391881378ae4acc68c9e6b7603d43a109b16f104443f11947addbcd001b5d6` |
| 9 | `def` | [ofEq](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/ofeq.md) | 110 | `declaration-track:1355b506c618340b65af2cfe308222acca1fa41392249679349ee91cd15e8e14` |
| 10 | `def` | [refl](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/refl.md) | 115 | `declaration-track:7130a3df7a74fa92ea6a109b74fcfbad5ea80323265a1abbce04ffd88ed7c925` |
| 11 | `def` | [HomotopyClass](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopyclass.md) | 123 | `declaration-track:9dcd4695f1a1e339e37fe344fe9b2030427271a50dd3e8a067cbb6c4c28ef809` |
| 12 | `def` | [homotopyClass](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopyclass-source-edition-2.md) | 129 | `declaration-track:b66b0dd7aea2e4e1d365ff0a80c934f7a82f1e6ca56e78f99934978220d7400a` |
| 13 | `lemma` | [Homotopy.eq](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopy-eq.md) | 131 | `result-track:b050b89bf8d65ac2e5dd327e7dfca02b768c9509059a45d1d70d1b7ea184baea` |
| 14 | `lemma` | [HomotopyClass.eq_homotopyClass](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopyclass-eq-homotopyclass.md) | 135 | `result-track:753685e7fe7b4a3b8933f58f3e5bf9eec01eaeb3bfa4fb7f1af207fbd8f66932` |
| 15 | `def` | [comp](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/comp.md) | 143 | `declaration-track:77884c1986ca735556444641b29256f013b9871a6d4bf98a19d43ed061778913` |
| 16 | `def` | [Homotopy.postcomp](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopy-postcomp.md) | 151 | `declaration-track:9516002ff975455a6cc867761dd9e68bcdeb1a2d03d3bd565516a327fbac6d9f` |
| 17 | `def` | [Homotopy.precomp](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopy-precomp.md) | 160 | `declaration-track:f2223b74551030ff20886f6d1a451d9497e22fbe8c0a8c41e1bb9106fef4ae13` |
| 18 | `def` | [HomotopyClass.postcomp](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopyclass-postcomp.md) | 171 | `declaration-track:d0dd3c7e5b51b404dcf6c6a0407b2587b55fbcf623f71617eb8235965e562da1` |
| 19 | `lemma` | [postcomp_homotopyClass](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/postcomp-homotopyclass.md) | 179 | `result-track:965db9b5c9e79dd53a24d8cdf6f531c422b7796ececc02e9ba0616673303fe8f` |
| 20 | `def` | [HomotopyClass.precomp](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/homotopyclass-precomp.md) | 186 | `declaration-track:a09938736ab48f25d0c8d9c7c5bd8ea793e95636884443bcd4f2bc2d890e1228` |
| 21 | `lemma` | [precomp_homotopyClass](../../../../AlgebraicTopology/RelativeMorphismNamespacedPublic.lean/declarations/precomp-homotopyclass.md) | 195 | `result-track:52c67d9309089365d5a67b7a1281c1d47a44517a94773adfec13de3a1360ac9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3d92d51ef263199e23dc2110e5a268c23119adf56fc63d71d9ff3fe99beb582 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/RelativeMorphism/Variant9b0be0f55afff47bc1b13baacae8dc1e8c716660f78dc8946c4a91cf7af20df9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

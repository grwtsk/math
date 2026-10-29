# Verification target: Local Diffeomorph Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da2f771d21560dafda5cfd832d4ce0655565f558",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da2f771d21560dafda5cfd832d4ce0655565f558`.

Source path: `GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean.json)

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
| 1 | `structure` | [PartialDiffeomorph](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/partialdiffeomorph.md) | 90 | `declaration-track:703a86d94a2b40b8a0e73f84ff39fad3df1f3d3ead826a6be48c2e036c109f1d` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/instance.md) | 99 | `declaration-track:57c48ead1d05a177f8e2a6ae1856032ff31f4d07aad67701e3a01b8d3cc00f5e` |
| 3 | `def` | [Diffeomorph.toPartialDiffeomorph](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/diffeomorph-topartialdiffeomorph.md) | 105 | `declaration-track:17d7e9749211646c741ce57ef048eb047430510b742059e12b0ebe144a3396d4` |
| 4 | `def` | [toOpenPartialHomeomorph](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/toopenpartialhomeomorph.md) | 119 | `declaration-track:45d95e4aa0ceeb1a1d9aad15d6f51e8afa1e68d64084058e74cfbeafb524e748` |
| 5 | `def` | [symm](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/symm.md) | 128 | `declaration-track:ebdf2eaa8af4cd455cec2bbb530f9354965d4822dd0901d02c6955095c6e95ea` |
| 6 | `theorem` | [contMDiffOn](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/contmdiffon.md) | 135 | `result-track:e8d9ee495eddd5fbd539c7703f6fe7d2e84570bb7523517b6d8f4ec871fe8b71` |
| 7 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/mdifferentiableon.md) | 137 | `result-track:facf90f6c59bbbdfde702d9cca8ea2cd0ff1db6d1500b0055073363b941648fb` |
| 8 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/mdifferentiableat.md) | 140 | `result-track:9815e609edef98c14befd336e311822990120a237c5b547b3e113dc10d22d8f7` |
| 9 | `def` | [trans](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/trans.md) | 146 | `declaration-track:a6086c431889edb56fe1ba5f625d8d6be28cff0469dcedd4dcb390973b7b9a15` |
| 10 | `def` | [IsLocalDiffeomorphAt](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphat.md) | 166 | `declaration-track:90b0b6609a008b1ab9a0868f205926714f8e7ad93b95a894f51d54abfdef5662` |
| 11 | `lemma` | [PartialDiffeomorph.isLocalDiffeomorphAt](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/partialdiffeomorph-islocaldiffeomorphat.md) | 169 | `result-track:ecc789842ce59e55570a0d28d2c846fc97ddfaa94911277e29e52cc252014550` |
| 12 | `def` | [localInverse](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse.md) | 180 | `declaration-track:20014ea52fb7fafb5b90e581360b1f7756e81cdc9a04bd5fa5b27464b12b1da0` |
| 13 | `lemma` | [localInverse_open_source](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-open-source.md) | 183 | `result-track:393bd0d07c6c0585e6360f331d048f2f9ebb58eb5c4d41e6a40a08e052075980` |
| 14 | `lemma` | [localInverse_mem_source](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-mem-source.md) | 187 | `result-track:9478b77e70d73739ac686e21a7112aa5a444e72ab85869f8aaf2a4bb48ed4e4a` |
| 15 | `lemma` | [localInverse_mem_target](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-mem-target.md) | 192 | `result-track:29d2ff97ce809c3d207ae4c557b3516d6efd2e9bde6537e959d47f2d3e210364` |
| 16 | `lemma` | [contmdiffOn_localInverse](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/contmdiffon-localinverse.md) | 196 | `result-track:a527b6d4c184c59e46e45442400b589886b1b5f1372c0d92d4ed7df14beb0166` |
| 17 | `lemma` | [continuousAt_localInverse](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/continuousat-localinverse.md) | 200 | `result-track:5aaa689dfa48c78d112c66ebc5c4a4009d2ef226d14adb9aebff6a40992ad9f6` |
| 18 | `lemma` | [localInverse_right_inv](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-right-inv.md) | 205 | `result-track:f29b0ec8b114e6f487a31afb6c22ff6278f044fdc7a852a99b3991535f89e7d8` |
| 19 | `lemma` | [localInverse_eqOn_right](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-eqon-right.md) | 213 | `result-track:3a2b235ba7252004aaaa5c493d32796b64f7aae6bf435e977bb1931bc971efc3` |
| 20 | `lemma` | [localInverse_eventuallyEq_right](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-eventuallyeq-right.md) | 217 | `result-track:5d19cfdbfe21bf5f255c2aae4941c987bc95fa5cc0dcc248da0958e850e55e68` |
| 21 | `lemma` | [localInverse_left_inv](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-left-inv.md) | 223 | `result-track:f6368732f973adf4103976bfd33253d25d604650dcd31e3ca8c65999ba5e3401` |
| 22 | `lemma` | [localInverse_eqOn_left](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-eqon-left.md) | 228 | `result-track:fed243f932f1775aa3e49e6bc27863f08b1bb1188b197a4d5769cf6aae61ac31` |
| 23 | `lemma` | [localInverse_eventuallyEq_left](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-eventuallyeq-left.md) | 232 | `result-track:bf79f544b101d20c142140da29c0b1029fcf939191caa407c7631ee6e1c0a406` |
| 24 | `lemma` | [localInverse_isLocalDiffeomorphAt](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-islocaldiffeomorphat.md) | 237 | `result-track:78e635c1265fff513ddc6dc410fcc4067a28707937fff6f53d070ef7ab34356f` |
| 25 | `lemma` | [localInverse_contMDiffOn](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-contmdiffon.md) | 241 | `result-track:35ba8a68abba8533fab3ee418635831ac3002732da293879be9bc616f14c9b24` |
| 26 | `lemma` | [localInverse_contMDiffAt](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-contmdiffat.md) | 245 | `result-track:9a5ce8de878f85568c1cb9519b6dd079a3b299ca15663405b7d5af147df8321f` |
| 27 | `lemma` | [localInverse_mdifferentiableAt](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/localinverse-mdifferentiableat.md) | 250 | `result-track:2908b72503125bf16b45a6bde6c9a64575a7123d8ac723b17bcf0396144821c9` |
| 28 | `lemma` | [comp](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/comp.md) | 254 | `result-track:8514f3f701a9d8beacce3a66ac678736805e7ee24288b3dd555e26c21316e41b` |
| 29 | `def` | [IsLocalDiffeomorphOn](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphon.md) | 268 | `declaration-track:d38a7a438e492dea0f27d516346945bcaa5960e3006220bc482979b3452ee069` |
| 30 | `def` | [IsLocalDiffeomorph](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph.md) | 273 | `declaration-track:5e0f385ac6b7fd085e1e7c30f16b8cefb64bfd9550678fa6ab1cd177dc95962a` |
| 31 | `lemma` | [isLocalDiffeomorphOn_iff](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphon-iff.md) | 277 | `result-track:212134e242174fdc93dad1ed939e3cfe7951ea917ee6e64d6fa9d9b63df3bf63` |
| 32 | `lemma` | [isLocalDiffeomorph_iff](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-iff.md) | 281 | `result-track:39a6f3f798aa307f86c117df2277370e07b284cd292e5f0b2acf7cac4b9e45d2` |
| 33 | `theorem` | [isLocalDiffeomorph_iff_isLocalDiffeomorphOn_univ](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-iff-islocaldiffeomorphon-univ.md) | 285 | `result-track:6495cb282abc65fc1b234156724f1948216d7a6ae15239a44d5b900c628bb85f` |
| 34 | `lemma` | [IsLocalDiffeomorph.isLocalDiffeomorphOn](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-islocaldiffeomorphon.md) | 290 | `result-track:1cc6745618504e3fd6e521d43e842910b96b295e09796b439526666958ccea7b` |
| 35 | `lemma` | [IsLocalDiffeomorphAt.contMDiffAt](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphat-contmdiffat.md) | 300 | `result-track:b6ac8cf59bbeb37b164fb39e77c95b429ecff42f6c2da4a4e9555bad11706b68` |
| 36 | `lemma` | [IsLocalDiffeomorphAt.mdifferentiableAt](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphat-mdifferentiableat.md) | 307 | `result-track:d3a8c54163a831883fc092fe5e65a0f2cb1fe8dab0e04f14c69ede50acd6c6bb` |
| 37 | `lemma` | [IsLocalDiffeomorphOn.contMDiffOn](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphon-contmdiffon.md) | 312 | `result-track:55a691c4021f6575244ff732b13682351d1a43391b45e90939231a65d18f1b70` |
| 38 | `lemma` | [IsLocalDiffeomorphOn.mdifferentiableOn](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphon-mdifferentiableon.md) | 317 | `result-track:0580ff3eaa5110cd8a9623ab7f88f1d02bcaf6ef825fbffa017e23a1714c97a1` |
| 39 | `lemma` | [IsLocalDiffeomorph.contMDiff](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-contmdiff.md) | 322 | `result-track:7905d1af3203f9cc8ca9203be9a1327a926293c364cf229d9e50f8a19f2b58c5` |
| 40 | `lemma` | [IsLocalDiffeomorph.mdifferentiable](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-mdifferentiable.md) | 326 | `result-track:14d6b218535e02e3d5bac40b242fb65d1934cc6090ef6813d271caa25a8d4e96` |
| 41 | `lemma` | [Diffeomorph.isLocalDiffeomorph](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/diffeomorph-islocaldiffeomorph.md) | 331 | `result-track:1e09793d6d6d27faf831716bbfa300dee4dd2a39ef2b0288e15837c088a0a372` |
| 42 | `theorem` | [IsLocalDiffeomorphOn.isLocalHomeomorphOn](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphon-islocalhomeomorphon.md) | 337 | `result-track:788b876bc763284a3c492b39a282dfa32e1790f9c624d4673f33df1a757b997b` |
| 43 | `theorem` | [IsLocalDiffeomorph.isLocalHomeomorph](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-islocalhomeomorph.md) | 345 | `result-track:64fd6906f678bc443f287e6798c60b2dcf18e4ba2fe737aa9e03d1d7ce1c5fed` |
| 44 | `lemma` | [IsLocalDiffeomorph.isOpenMap](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-isopenmap.md) | 352 | `result-track:5839ece4e164effad5ea56c032d43314a2a02cc973d4db2958cb067d05e5690f` |
| 45 | `lemma` | [IsLocalDiffeomorph.isOpen_range](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-isopen-range.md) | 356 | `result-track:eba17eea8b442cc1dcbf0fe747cbaad7c98e76f152223ad6105b6362ac506db1` |
| 46 | `def` | [IsLocalDiffeomorph.image](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-image.md) | 360 | `declaration-track:2849b693e2311254b27039059378a5c54a34e9a347bdd8e688007c42e7c5730e` |
| 47 | `lemma` | [IsLocalDiffeomorph.image_coe](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-image-coe.md) | 363 | `result-track:bbaa0215093b9bfa36d26a71fd06c0f5d7e47d5578175c5fed0b6d6f0fab4b25` |
| 48 | `def` | [IsLocalDiffeomorph.diffeomorphOfBijective](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-diffeomorphofbijective.md) | 370 | `declaration-track:7bc1bee0983f162ed3daa66ce0e574ef14c422247dc93155b7fbd80da14f4b5d` |
| 49 | `def` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv.md) | 409 | `declaration-track:96ff2ef7d6aa748a681d231f82a65b8d1383a560ed341a9e391d4075a840ac69` |
| 50 | `lemma` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv_coe](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv-coe.md) | 435 | `result-track:53b8873fe5d302be14431caffbc96603715e9738fe9d00626c4c34c13010c8de` |
| 51 | `lemma` | [IsLocalDiffeomorphAt.isInvertible_mfderiv](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorphat-isinvertible-mfderiv.md) | 439 | `result-track:79ea38f320743edd7b49d5edacd7f7d6e43967b953740566dfdadc88b588c3b3` |
| 52 | `def` | [Diffeomorph.mfderivToContinuousLinearEquiv](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/diffeomorph-mfderivtocontinuouslinearequiv.md) | 445 | `declaration-track:8bb8e78f60812dcd676452c3bac34273138f0e7450739a26b4382c3ff7695b14` |
| 53 | `lemma` | [Diffeomorph.mfderivToContinuousLinearEquiv_coe](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/diffeomorph-mfderivtocontinuouslinearequiv-coe.md) | 450 | `result-track:2e43545c963d21d04fc82d7875fc6bfd6c44ef8fcc14d6eadda9434ec0a4982a` |
| 54 | `lemma` | [Diffeomorph.isInvertible_mfderiv](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/diffeomorph-isinvertible-mfderiv.md) | 453 | `result-track:5dba656bc4ad26896fb024fd0c7d9f3f4a836482c91eb44e1e3f3e0631873dcc` |
| 55 | `def` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv.md) | 459 | `declaration-track:c92bc4432d43fc49aaaba2bf5f9ea4f5bf3878fe02d4eb3cc44d27f38d064125` |
| 56 | `lemma` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv_coe](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv-coe.md) | 464 | `result-track:5ca99b74ba2bad8a4b29b9ffe7af8f1f6400fb42451e195be97ce8981035641a` |
| 57 | `lemma` | [IsLocalDiffeomorph.isInvertible_mfderiv](../../../../DifferentialGeometry/LocalDiffeomorphNamespacedPublic.lean/declarations/islocaldiffeomorph-isinvertible-mfderiv.md) | 469 | `result-track:56fda93392a57a8300d592bd0bf952b159b770e7c94fda6f138af4db755d8a19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d172bf686112746a1748d3935eeecc9808f088332ba51e63ccdc10cea7d1925 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean","GRWTSK/_verification/specifications/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

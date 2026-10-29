# Verification target: Triangulated Pretriangulated Namespaced Rot Of Dist Triangle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a0bab7104dbd5f973e0fc9e600ab36b624a9cf9",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant81bf26003a154ecd2bd721f40a961f50433ca4d207bade6af79e9378a936d831.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a0bab7104dbd5f973e0fc9e600ab36b624a9cf9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant81bf26003a154ecd2bd721f40a961f50433ca4d207bade6af79e9378a936d831.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant81bf26003a154ecd2bd721f40a961f50433ca4d207bade6af79e9378a936d831.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Rotate` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Pretriangulated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/pretriangulated.md) | 75 | `declaration-track:f4cca9a74a7a0e5fa93bf3a274ad16ff0491428b98b67108a2bfb51769c8cb74` |
| 2 | `lemma` | [distinguished_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/distinguished-iff-of-iso.md) | 110 | `result-track:80e6c86b2dce652314e5f91efba6d6ec7c5110310cbdf91298c481b1929755e9` |
| 3 | `theorem` | [rot_of_dist_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/rot-of-dist-triangle.md) | 117 | `result-track:96f4dc2aedde60cf8b1a1f98518e9af37dcce632dcbb74c7c57ffd4f10b39dc2` |
| 4 | `theorem` | [inv_rot_of_dist_triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/inv-rot-of-dist-triangle.md) | 123 | `result-track:402c9ee8affdf1e1183b1dfd1a6263f522a3d0318c313b30188b172f0d54938c` |
| 5 | `theorem` | [comp_dist_triangle_mor_zero₁₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/comp-dist-triangle-mor-zero-source-edition-3.md) | 138 | `result-track:e1f2241fca879625d7277e3b86171e8a6d80e15c01a3242e2c8964a1ed0cc301` |
| 6 | `theorem` | [comp_dist_triangle_mor_zero₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/comp-dist-triangle-mor-zero.md) | 154 | `result-track:bd2512bdc5c467f8e0ca2f13d9c577b323707409c744d6d90941a0ac79538375` |
| 7 | `theorem` | [comp_dist_triangle_mor_zero₃₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/comp-dist-triangle-mor-zero-source-edition-2.md) | 168 | `result-track:c91730780cbe172c5a4a750191c6beb8c1db58cecdf544129ec9ba65f06ee568` |
| 8 | `lemma` | [distinguished_cocone_triangle₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/distinguished-cocone-triangle.md) | 175 | `result-track:3a4b510461c3f18d2db31dfcdc200921fe73caf3b3b83e8a96feb44d67a108c5` |
| 9 | `lemma` | [distinguished_cocone_triangle₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/distinguished-cocone-triangle-source-edition-2.md) | 181 | `result-track:b67c397c055eec94176c4e7a18bdfcce8290d8f66e1cd6a989231565e2d8e3df` |
| 10 | `lemma` | [complete_distinguished_triangle_morphism₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/complete-distinguished-triangle-morphism.md) | 193 | `result-track:04b6a1a21e5444cdb39c20de82f6095592669132c685fc2e3735da1ed25e9973` |
| 11 | `lemma` | [complete_distinguished_triangle_morphism₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/complete-distinguished-triangle-morphism-source-edition-2.md) | 209 | `result-track:bc19c828ad3fa5ef498a463affa1982ece4f52af62defeb63b04f7e855fc93df` |
| 12 | `lemma` | [contractible_distinguished₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/contractible-distinguished.md) | 224 | `result-track:2f151046b1b6f196e6271065e7df836e6244c580dacc35548ace3145e6523a74` |
| 13 | `lemma` | [contractible_distinguished₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/contractible-distinguished-source-edition-2.md) | 232 | `result-track:ff80e0c91341f045563bc25f415aafbf560dcad169c0e516c86528340a46a659` |
| 14 | `lemma` | [yoneda_exact₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/yoneda-exact-source-edition-2.md) | 244 | `result-track:f64d7cabd26f45b8794460d31e365d908387c091859ed3ae203339ad0912e833` |
| 15 | `lemma` | [yoneda_exact₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/yoneda-exact.md) | 250 | `result-track:d3e19caa2b7c8d3036c769d8ac42351cfc1b7c1a288dd79c5f290d15be3874e5` |
| 16 | `lemma` | [coyoneda_exact₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/coyoneda-exact.md) | 254 | `result-track:4b7c87bbae7fddbf63390f5153521aa9dd44f681478d2d23110e593b91f15178` |
| 17 | `lemma` | [coyoneda_exact₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/coyoneda-exact-source-edition-3.md) | 260 | `result-track:f2b805c6bd3541d4542b5fbd38fa20295aa4a421c9e7836084e1e4c2a38db522` |
| 18 | `lemma` | [coyoneda_exact₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/coyoneda-exact-source-edition-2.md) | 264 | `result-track:ef1a2b899ea1ceb8a4e208aa20a7a45e946eec1acd9d01fd2862a8e7af536b7d` |
| 19 | `lemma` | [mor₃_eq_zero_iff_epi₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-iff-epi.md) | 268 | `result-track:0997d07b05487bcc76f041ac298d04c2a157927d559159de00e3e213ba86ef70` |
| 20 | `lemma` | [mor₂_eq_zero_iff_epi₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-iff-epi-source-edition-2.md) | 278 | `result-track:a1253bf61759034fad7290594939957a4713e5494b6bdf111fcce2b7deb2c841` |
| 21 | `lemma` | [mor₁_eq_zero_iff_epi₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-iff-epi-source-edition-3.md) | 283 | `result-track:a1757a36602c99eed59433df1029d4b57f24b9dc97ee3f15ffc313a3e1249633` |
| 22 | `lemma` | [mor₃_eq_zero_of_epi₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-of-epi-source-edition-2.md) | 293 | `result-track:6050017f09cea39d60482554cc83a75c5f8b2e5d10545adccd9e9a2b57473ef1` |
| 23 | `lemma` | [mor₂_eq_zero_of_epi₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-of-epi-source-edition-3.md) | 294 | `result-track:60cbf5915b85e3d2906a27a201b6493fe747b5fd3a181077ea2a5243316e2225` |
| 24 | `lemma` | [mor₁_eq_zero_of_epi₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-of-epi.md) | 295 | `result-track:27651cd0a76623147523b992593c0e4cba17f33f05bafb3707dd652cb4ccbf60` |
| 25 | `lemma` | [epi₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/epi-source-edition-2.md) | 297 | `result-track:6725565a81e793c63eff27f887058d53d92552f2f45cf4705cdf4dd34cc4df74` |
| 26 | `lemma` | [epi₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/epi.md) | 298 | `result-track:11dcda339376a700c6a40131504df05d9034842d8ce1892c6fde42d97288fad9` |
| 27 | `lemma` | [epi₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/epi-source-edition-3.md) | 299 | `result-track:e4dd18f825cd16648f45e457f86cd07cce2bf1b8af7add7b34f61128b00a7b5c` |
| 28 | `lemma` | [mor₁_eq_zero_iff_mono₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-iff-mono-source-edition-3.md) | 301 | `result-track:dec6e22bfca15275d9aa43442ee71f774008cd51edbfeba8056d277b9c80084e` |
| 29 | `lemma` | [mor₂_eq_zero_iff_mono₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-iff-mono-source-edition-2.md) | 311 | `result-track:9ad0fb64bd6f1ffcd78eb1902cb3390519d6415ee2278c4a9af1da5dac4152fb` |
| 30 | `lemma` | [mor₃_eq_zero_iff_mono₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-iff-mono.md) | 314 | `result-track:7d2e4d374e81318cf2fdc042d07faa353d3533bb99faa404307aa5bfe1b1c864` |
| 31 | `lemma` | [mor₁_eq_zero_of_mono₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-of-mono-source-edition-3.md) | 324 | `result-track:86a891cea70020838da8fe42558434e9b12786e726456f777a8ce68ca056f496` |
| 32 | `lemma` | [mor₂_eq_zero_of_mono₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-of-mono-source-edition-2.md) | 325 | `result-track:447becd95e9f6aff74d1661315fbbd885f63bf92f8d601e2e6bf521d31baa5f3` |
| 33 | `lemma` | [mor₃_eq_zero_of_mono₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mor-eq-zero-of-mono.md) | 326 | `result-track:23bb2bd3d836cfd1700cc3c204ab32fe31aeb983bd804deb0df2da97d6aadcd5` |
| 34 | `lemma` | [mono₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mono.md) | 328 | `result-track:4007ea4363f534b50c42b351db2c2c7672062186f042ca7ae7c45754811a0751` |
| 35 | `lemma` | [mono₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mono-source-edition-3.md) | 329 | `result-track:fc9251527e4a0dc4a7f1886661da56544f8f69ae96c09c2c64e4fcc9d1283939` |
| 36 | `lemma` | [mono₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/mono-source-edition-2.md) | 330 | `result-track:64bcd8e7f88fe4b42138f2034d0bb5a2ff7f58190dd4cd40b440987c87bd7987` |
| 37 | `lemma` | [isZero₂_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-iff-source-edition-3.md) | 332 | `result-track:85b6b72a3652658e416449c6d36d94e043f802909ff36981cd1734a5e74ff950` |
| 38 | `lemma` | [isZero₁_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-iff.md) | 340 | `result-track:1b9f8ec92956247b773b66f7467756fa920143fc6330fed56a6773270b286e39` |
| 39 | `lemma` | [isZero₃_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-iff-source-edition-2.md) | 346 | `result-track:7df40d6be199a154dd93c565c2d18523d06fc41910541be4660a8001b7957ca6` |
| 40 | `lemma` | [isZero₁_of_isZero₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-of-iszero-source-edition-2.md) | 351 | `result-track:8d33cc8f71a2a5cd31753e500cc515c7de82199dfe5fe2fdf5c4fc9756bb766f` |
| 41 | `lemma` | [isZero₂_of_isZero₁₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-of-iszero-source-edition-3.md) | 355 | `result-track:d77c6f4b5c2d7b1a15761304d93dddfacf63ac711cee1579ccffd2297e24faf5` |
| 42 | `lemma` | [isZero₃_of_isZero₁₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-of-iszero.md) | 359 | `result-track:3039ee13165f4b3a3f39f775dca7862ffa29e85beb5b7a330943b452534ebbc3` |
| 43 | `lemma` | [isZero₁_iff_isIso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-iff-isiso.md) | 365 | `result-track:349b45730e8e210dc9691591f9abcf610732ba2ddbdd76ae7542f2649ad8c0a2` |
| 44 | `lemma` | [isZero₂_iff_isIso₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-iff-isiso-source-edition-2.md) | 377 | `result-track:7c1a724c6437a368ca3a2c447253b695b758230170c63134a5e5e3d322285a08` |
| 45 | `lemma` | [isZero₃_iff_isIso₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-iff-isiso-source-edition-3.md) | 380 | `result-track:f2f83aaf9557ee548ad4145680ae6e60ea5c5f2e81f7b71db64924eef10357af` |
| 46 | `lemma` | [isZero₁_of_isIso₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-of-isiso-source-edition-3.md) | 385 | `result-track:7d657500f371383251312b8e6946646438ca60049146030c79f4ab2890a3db76` |
| 47 | `lemma` | [isZero₂_of_isIso₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-of-isiso.md) | 386 | `result-track:1a27dd960b7f724b2dbe8f99d1e18d1d06d758069259c48682eb0e62059c301e` |
| 48 | `lemma` | [isZero₃_of_isIso₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/iszero-of-isiso-source-edition-2.md) | 387 | `result-track:54e865df2c8aabf453311626483062404c2d3d4e35ece72d4c96761cbe90f39d` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/instance.md) | 391 | `declaration-track:6b97f5b729efc5f9004a4c936df299a8a01639506d3693627bc5d5e7be663ea5` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedPretriangulatedNamespacedRotOfDistTriangle.lean/declarations/instance-source-edition-2.md) | 398 | `declaration-track:773fede893987eb7162090ba9882c2a9b58385c676e296bf6a9a93e2f7b78715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c05c6f86983589bc6d931e6d8415989f8e220d3dcafb634f5da6f3efbab2422e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant81bf26003a154ecd2bd721f40a961f50433ca4d207bade6af79e9378a936d831.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant81bf26003a154ecd2bd721f40a961f50433ca4d207bade6af79e9378a936d831.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

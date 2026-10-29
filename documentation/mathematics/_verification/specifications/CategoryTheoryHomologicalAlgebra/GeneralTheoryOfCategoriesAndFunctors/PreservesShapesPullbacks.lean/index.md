# Verification target: Preserves Shapes Pullbacks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77d2f0eb2a3ed36079e9426d9042552028ed02b3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77d2f0eb2a3ed36079e9426d9042552028ed02b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/map.md) | 47 | `declaration-track:564650809df2baf9cc4e4b4fdd13aea255a64ab62fbbca89fb7d2c52ced53ca1` |
| 2 | `def` | [isLimitMapConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/islimitmapconeequiv.md) | 53 | `declaration-track:65b5f82574d48e0485383f81941e617913d45cd679ecd5356e0ceb9daae0ac75` |
| 3 | `def` | [isLimitMapConePullbackConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/islimitmapconepullbackconeequiv.md) | 70 | `declaration-track:8a15c0a9ca4ce5fc47e3964b2be05df27c1bfc12721bb92edde884a38b3badba` |
| 4 | `def` | [isLimitPullbackConeMapOfIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/islimitpullbackconemapofislimit.md) | 78 | `declaration-track:f5694392c2d8a5567eaecc24f1f970ee3b6ee45698f88b05cd039039317a9337` |
| 5 | `def` | [isLimitOfIsLimitPullbackConeMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/islimitofislimitpullbackconemap.md) | 85 | `declaration-track:3edd4c59be292f6647828febc1434e63c206f7ff1c41aaddfae441af8891a10a` |
| 6 | `def` | [isLimitOfHasPullbackOfPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/islimitofhaspullbackofpreserveslimit.md) | 95 | `declaration-track:6e9003b8310ad7bf38bcbcaf7a32c3a997d1bf845692eb98a0df22087d4dd828` |
| 7 | `lemma` | [preservesPullback_symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespullback-symmetry.md) | 102 | `result-track:b2e4020d6e55f0be2c729b8bf2241084f6999a8f4cfe8971f2fa56f359331201` |
| 8 | `theorem` | [hasPullback_of_preservesPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/haspullback-of-preservespullback.md) | 118 | `result-track:9ce262dd9f1d1405c241b84023772bd0379608a3c57ffcc70743312b1e360127` |
| 9 | `def` | [PreservesPullback.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespullback-iso.md) | 125 | `declaration-track:f72ac8bec177664032760752ce144c74a98e65280b784720e77cdf807ee5e911` |
| 10 | `theorem` | [PreservesPullback.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespullback-iso-hom.md) | 129 | `result-track:ea9d86565d860960766ec47d1253d0fea400d4788696237323c75af6d03d85a8` |
| 11 | `theorem` | [PreservesPullback.iso_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespullback-iso-hom-fst.md) | 133 | `result-track:d0d5b947fa374742d5bebf1c8163339cf4318d5f5f49d1c4776fbc0e20b8bdd1` |
| 12 | `theorem` | [PreservesPullback.iso_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespullback-iso-hom-snd.md) | 138 | `result-track:61ab16bf36c06fbd9e5b83e1616bba25700dc2b0a6e029cc9885d658df108d86` |
| 13 | `theorem` | [PreservesPullback.iso_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespullback-iso-inv-fst.md) | 143 | `result-track:78916d92019095554cdc42cac4f2eddfa910cab3b32e8e3ad0a5289f46416676` |
| 14 | `theorem` | [PreservesPullback.iso_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespullback-iso-inv-snd.md) | 148 | `result-track:a673930e59cfd799722f5115572cc14052ac8e3f30312232d36539dde52c8857` |
| 15 | `def` | [PullbackCone.isLimitCoyonedaEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/pullbackcone-islimitcoyonedaequiv.md) | 154 | `declaration-track:dc0f2b186f47606039d96edd69c2637aeaffb059cb96af0a90fa063422134525` |
| 16 | `abbrev` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/map-source-edition-2.md) | 171 | `declaration-track:74234e13e8010e30fe9515d1c1b55aef0c08498c1a7d6bb1f8986785e3ae7c54` |
| 17 | `def` | [isColimitMapCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/iscolimitmapcoconeequiv.md) | 176 | `declaration-track:451413ccf6cc9435efb74e5193a5dfb90d5aa9450fd6ff96bd98aad98e36146a` |
| 18 | `def` | [isColimitMapCoconePushoutCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/iscolimitmapcoconepushoutcoconeequiv.md) | 193 | `declaration-track:7c740a82b6d6def9af8f66c1233ef5a9460c35d4434a8d502ce978d8844d0c89` |
| 19 | `def` | [isColimitPushoutCoconeMapOfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/iscolimitpushoutcoconemapofiscolimit.md) | 205 | `declaration-track:8ce28e80672c9b4834bf23d95d4761b71898c00b859b4f35468ed85f38881149` |
| 20 | `def` | [isColimitOfIsColimitPushoutCoconeMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/iscolimitofiscolimitpushoutcoconemap.md) | 212 | `declaration-track:ff8b7c0e1b447f613389e5a8334d30240d0d4ea5c8acb731daaaca2bfcfa7ec1` |
| 21 | `def` | [isColimitOfHasPushoutOfPreservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/iscolimitofhaspushoutofpreservescolimit.md) | 222 | `declaration-track:b996eca80a5535c552d953910d6075c3dd08badc723ce57a94b626b2d53707de` |
| 22 | `lemma` | [preservesPushout_symmetry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespushout-symmetry.md) | 229 | `result-track:2f3aab688b11ca5a4b7dde81cc51c099e2a93bbecdd4c7cb325c489bbbf64cba` |
| 23 | `theorem` | [hasPushout_of_preservesPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/haspushout-of-preservespushout.md) | 240 | `result-track:471737990a4b05c0e96b217b422c0db410e6b9939474e44d9094be14daea47e2` |
| 24 | `def` | [PreservesPushout.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespushout-iso.md) | 247 | `declaration-track:3dd8372ee1c47e9e7954528ad97e2278a5c00e1a70f3451389ff9bdc61df04da` |
| 25 | `theorem` | [PreservesPushout.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespushout-iso-hom.md) | 252 | `result-track:b7e9d21f7d593e9346626f862973a21409a2a09fed7bdbe8998227dc78c00459` |
| 26 | `theorem` | [PreservesPushout.inl_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespushout-inl-iso-hom.md) | 256 | `result-track:a888b861cca9f0718f96a6d945474804857ee2aba7b73e67a4b6eba5ed986fca` |
| 27 | `theorem` | [PreservesPushout.inr_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespushout-inr-iso-hom.md) | 262 | `result-track:aeab040d530b82f0817482fc448179bc41507256c2cc5fd5d8a23e2c87306578` |
| 28 | `theorem` | [PreservesPushout.inl_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespushout-inl-iso-inv.md) | 268 | `result-track:504aa0769fac317c3c4bfec28d31faed222639a12489ecede0354e52e1724598` |
| 29 | `theorem` | [PreservesPushout.inr_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespushout-inr-iso-inv.md) | 273 | `result-track:e16541ca4eb305a0d48f81bd9bb6c9a3bf326a086fb86464d812ddccebf9d9ce` |
| 30 | `lemma` | [PreservesPullback.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespullback-of-iso-comparison.md) | 292 | `result-track:79184b4e9a8de8f8fddbc066300c875b4aef3e011458e227ad6c6e964f910b94` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/instance.md) | 300 | `declaration-track:3c6218efa3b8a2968422a796e075d5849dd6b3f77f669fc070e9fb6dcb6080a2` |
| 32 | `lemma` | [PreservesPushout.of_iso_comparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/preservespushout-of-iso-comparison.md) | 313 | `result-track:3557de0607bd0d37924f2098eae73b431a4cce87848a2a360f21147c7d6f670f` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/instance-source-edition-2.md) | 322 | `declaration-track:aef82b4bb5985ff798ca23097533405e58c88737177509551d2880a7fe1eb5f5` |
| 34 | `def` | [PushoutCocone.isColimitYonedaEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesPullbacks.lean/declarations/pushoutcocone-iscolimityonedaequiv.md) | 328 | `declaration-track:d322d8c0749e9653fd9232965dec7fdf078fea94c7b537093de5d4f169a7680f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d33377ffd04d4a305b54c5306a415608e7103d9e9161c566ca81287957f69f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

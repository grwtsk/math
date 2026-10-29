# Verification target: Sieves Presheaf Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14b035a3ab63e14bc08ccd26da2019a1e801f6c8",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantd3349c0f3569452211aa02d3fa31ee86f6028287ce11855eb6ebd70da8761585.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14b035a3ab63e14bc08ccd26da2019a1e801f6c8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantd3349c0f3569452211aa02d3fa31ee86f6028287ce11855eb6ebd70da8761585.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantd3349c0f3569452211aa02d3fa31ee86f6028287ce11855eb6ebd70da8761585.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/functor.md) | 53 | `declaration-track:7ee192faf5234662f4db6653223959c44d683b541057e58250201c221cf7314d` |
| 2 | `def` | [natTransOfLe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/nattransofle.md) | 61 | `declaration-track:1bb00459913e9353b3193e6730c4fd744772a6490ce89d784f74ff2e90b0dc2f` |
| 3 | `def` | [functorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/functorinclusion.md) | 66 | `declaration-track:bca9b52611bdeda4b4f8180200620c1f207e1086eff2107bd3b1e5e29ccbbb02` |
| 4 | `def` | [toFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/tofunctor.md) | 73 | `declaration-track:0fa5325e8279d7fc2f11cbfa4cb064b778da27e501d5992313cde742e83b49e8` |
| 5 | `theorem` | [natTransOfLe_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/nattransofle-comm.md) | 76 | `result-track:001b586fd0d9799ca52ee6c77851ab11f3dd78d21ad6a6fe14da9505e09b0a29` |
| 6 | `instance` | [functorInclusion_is_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/functorinclusion-is-mono.md) | 85 | `declaration-track:3d941f6fc2282e1d6b7c8ced7379f5f5ee6f81e902a5d04a25148170e5ab17de` |
| 7 | `def` | [sieveOfSubfunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/sieveofsubfunctor.md) | 95 | `declaration-track:0df3c999ced620f3c40b84b7a22f572d0b059c5425f4a0e34e74bf2890552df7` |
| 8 | `theorem` | [sieveOfSubfunctor_functorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/sieveofsubfunctor-functorinclusion.md) | 102 | `result-track:aa4a6a9d2f43ec319a64e967ae2c25e727044068bb321e0c8a2f9c2659da6cda` |
| 9 | `instance` | [functorInclusion_top_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/functorinclusion-top-isiso.md) | 111 | `declaration-track:0a21b34712debdaa332794194b2db1a979945b5f360038267c867e6f316fe1f8` |
| 10 | `abbrev` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/uliftfunctor.md) | 115 | `declaration-track:850c40a2462ed486ab63ae3c866b9964d8eb806283e00d4845c7711bf8aff099` |
| 11 | `def` | [uliftNatTransOfLe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/uliftnattransofle.md) | 120 | `declaration-track:a591c2df01abf5191e742dee40330b825c679dd6590e908be6c65976ab09bb02` |
| 12 | `def` | [uliftFunctorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/uliftfunctorinclusion.md) | 126 | `declaration-track:be7a4dbf2c45450fe4b2df67f92265a1030bd230b905867035345005b8aa199f` |
| 13 | `def` | [toUliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/touliftfunctor.md) | 133 | `declaration-track:6d761389a000737a25893c9725be2527985132d375c3639786c8bc2a18e53cd7` |
| 14 | `theorem` | [uliftNatTransOfLe_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/uliftnattransofle-comm.md) | 137 | `result-track:d1d325ddc39ca33b06404585fd33dc6ac0eb90b43babae60bab9ab397045d376` |
| 15 | `instance` | [uliftFunctorInclusion_is_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/uliftfunctorinclusion-is-mono.md) | 144 | `declaration-track:40ab1ee983463aded19facbc66a2fa7de7aeadc8f8155ff469aba85987425a0c` |
| 16 | `def` | [sieveOfUliftSubfunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/sieveofuliftsubfunctor.md) | 153 | `declaration-track:4ba38a7bf209cf0b6e418ee7200f156951f31820fbb6d3d94c4b09d225e100c6` |
| 17 | `theorem` | [sieveOfUliftSubfunctor_uliftFunctorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/sieveofuliftsubfunctor-uliftfunctorinclusion.md) | 163 | `result-track:4cb221dbf2f9fd603c84f523fa09c2f9b83a2ee51006782cd05f3d384a41239e` |
| 18 | `instance` | [uliftFunctorInclusion_top_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesPresheafNamespacedPublic.lean/declarations/uliftfunctorinclusion-top-isiso.md) | 167 | `declaration-track:42f8a3ce8587022e80ea035ad3f5a4b5287d2bb8bfb0c2e7234ea0ffd3205b6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0ab011baabcd952dd789b2983d6920ce92251f4a8c8326c70f3deead4e23267 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantd3349c0f3569452211aa02d3fa31ee86f6028287ce11855eb6ebd70da8761585.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantd3349c0f3569452211aa02d3fa31ee86f6028287ce11855eb6ebd70da8761585.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

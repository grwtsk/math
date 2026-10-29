# Verification target: Derived Right Derived Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "791e7686294dbf8c55da9fc02d4263df093ddaaf",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantda10080ac912d70b0b353acd2a56db99132c12adc75da5eb088aa1dca52eb9f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `791e7686294dbf8c55da9fc02d4263df093ddaaf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantda10080ac912d70b0b353acd2a56db99132c12adc75da5eb088aa1dca52eb9f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantda10080ac912d70b0b353acd2a56db99132c12adc75da5eb088aa1dca52eb9f3.lean.json)

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
| 1 | `class` | [IsRightDerivedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/isrightderivedfunctor.md) | 54 | `declaration-track:21c4e6720e31c7c8bc780ec8da28c208e0c238ba7424c65cfe6a259a1c200867` |
| 2 | `lemma` | [isRightDerivedFunctor_iff_isLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/isrightderivedfunctor-iff-isleftkanextension.md) | 58 | `result-track:19109910742f7da3afb93ea88c7abb16ce13da595ce8bb60c4164dda35674992` |
| 3 | `lemma` | [isRightDerivedFunctor_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/isrightderivedfunctor-iff-of-iso.md) | 65 | `result-track:d8b25e8a76fa776c1149b50b9622b4cf6ac6db756f0336ca90dd831060f71877` |
| 4 | `def` | [rightDerivedDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderiveddesc.md) | 76 | `declaration-track:c6642e5749a2cbb80d2c4be8a815a6af342dae34a390f8b403a398174bee1c09` |
| 5 | `lemma` | [rightDerived_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderived-fac.md) | 81 | `result-track:cd6801f3a69d450ecf3466f3a1ad38c9b8ae954af63ea55311bbc0482b006aec` |
| 6 | `lemma` | [rightDerived_fac_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderived-fac-app.md) | 87 | `result-track:7aa20faffc8dbb463df2c01af338be0a0460e4f47e3f1d5a38a2722388faeaf8` |
| 7 | `lemma` | [rightDerived_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderived-ext.md) | 93 | `result-track:7ff9b1b5074d3a8b514ac0650bb7d72b02c7f569ea7c37bca091c69148ada46e` |
| 8 | `def` | [rightDerivedNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderivednattrans.md) | 100 | `declaration-track:d0f1024630452b3de7406106509f86a6e84f1520d5aa1b3dcaa240cbcfd911e3` |
| 9 | `lemma` | [rightDerivedNatTrans_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderivednattrans-fac.md) | 104 | `result-track:1b3c6e56389def98a76f479f08ff9ab49c67d5be928f8f4acfc38f1776f771fa` |
| 10 | `lemma` | [rightDerivedNatTrans_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderivednattrans-app.md) | 110 | `result-track:617206bf2c099d03fe74609ffd3196081b9c352569ab8255ed6b4c62b3dae53f` |
| 11 | `lemma` | [rightDerivedNatTrans_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderivednattrans-id.md) | 117 | `result-track:088f016620e3bce1c483c563d319a4309a33e0b45b875ab23dc1e75ed3000063` |
| 12 | `lemma` | [rightDerivedNatTrans_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderivednattrans-comp.md) | 124 | `result-track:6d8196ef598789a54fe062e3f4b3901b7fb15a410a7288760f027ef725a44381` |
| 13 | `def` | [rightDerivedNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderivednatiso.md) | 132 | `declaration-track:57767c29aa16fd724a5ad518139a2f6796e7d878e7fccd66fd8b8a0413cc147c` |
| 14 | `abbrev` | [rightDerivedUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/rightderivedunique.md) | 138 | `declaration-track:afd84d803960c1cd7f359b4b8c50d7bb9b59eb5ff5daca11d54f00bbaab0d47f` |
| 15 | `lemma` | [isRightDerivedFunctor_iff_isIso_rightDerivedDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/isrightderivedfunctor-iff-isiso-rightderiveddesc.md) | 141 | `result-track:53e5d202348f912e7cc1026c0c0298a6a4da4b3af970d5116ce728a52becd622` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/instance.md) | 147 | `declaration-track:3faae4b37759021a4337ec95148b49cda2ea6a51a5e3af9f00be1db506285570` |
| 17 | `class` | [HasRightDerivedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/hasrightderivedfunctor.md) | 162 | `declaration-track:a5d045b4075349ae2661da3859f322e462ea58eb878aa944115dd66f0e703a01` |
| 18 | `lemma` | [hasRightDerivedFunctor_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/hasrightderivedfunctor-iff.md) | 168 | `result-track:a22425bf782312d888a425690975ebacf32212e0db5a3011752ec2d652bce529` |
| 19 | `lemma` | [hasRightDerivedFunctor_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/hasrightderivedfunctor-iff-of-iso.md) | 177 | `result-track:248746ed631f2d1b417456feda6cb4423549b396996ad2d91ef64ce64306d06a` |
| 20 | `lemma` | [HasRightDerivedFunctor.hasLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/hasrightderivedfunctor-hasleftkanextension.md) | 184 | `result-track:b394951d956a694cc89429ef9312d13e9285eba6a1a2ca8bc35bf47ed8e05ea9` |
| 21 | `lemma` | [HasRightDerivedFunctor.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/hasrightderivedfunctor-mk.md) | 190 | `result-track:a14fb180e9ab34adde63c8658757c0299221cd34ea064fda6fe1114c81e15ec0` |
| 22 | `def` | [totalRightDerived](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/totalrightderived.md) | 202 | `declaration-track:e3cf207fb9cba00ec84a2d73a8b3ab491c6ad30be06eb541717fdc1268d02875` |
| 23 | `def` | [totalRightDerivedUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/totalrightderivedunit.md) | 207 | `declaration-track:a96814b1a3a24df585155f2a9f11c5d69778c78fae1c13b2efd7d002b7f07c56` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/instance-source-edition-2.md) | 211 | `declaration-track:45f5db52cbf6f826ce1858eade779b8efc8897f9a342540b36b2ee7f4a7303af` |
| 25 | `lemma` | [isRightDerivedFunctor_iff_precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DerivedRightDerivedPublic.lean/declarations/isrightderivedfunctor-iff-precomp.md) | 228 | `result-track:9ff93970a85230bbb45fe101477f175c27a6fab065b9238f01b3f633f07b68ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dc25bf4e0fc709d4aab1edf608fd84b730f21bb2d567441086ae5e0b7dc3352 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantda10080ac912d70b0b353acd2a56db99132c12adc75da5eb088aa1dca52eb9f3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantda10080ac912d70b0b353acd2a56db99132c12adc75da5eb088aa1dca52eb9f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Precoverage To Grothendieck Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "801321f4438ed7a239b08c9286537093c33a35fb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `801321f4438ed7a239b08c9286537093c33a35fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean.json)

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
| 1 | `inductive` | [Saturate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/saturate.md) | 44 | `declaration-track:4a2f3ba2f48410c6575792468cc67c3b62b1b1574345ea60396fad3733f8d89e` |
| 2 | `def` | [toGrothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/togrothendieck.md) | 61 | `declaration-track:713e0bd1a6c02fa31c424ae1bb8862441ce286af9fe4c524bff414035f8f2d48` |
| 3 | `lemma` | [mem_toGrothendieck_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/mem-togrothendieck-iff.md) | 67 | `result-track:aed9ace08c6144af7cb5c071d17033e84154fd91202e614bbc8c955ab38f4ab2` |
| 4 | `lemma` | [generate_mem_toGrothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/generate-mem-togrothendieck.md) | 71 | `result-track:29b3a6808e2dfa0f9aaca3a0efccdd67a05db408f96d21729ac31e0d8894fa87` |
| 5 | `lemma` | [toGrothendieck_eq_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/togrothendieck-eq-sinf.md) | 80 | `result-track:27405c53be745ec6612a316a59787d1528dc70cfdb542004bc9f86731ab4ebfc` |
| 6 | `theorem` | [isSheaf_toGrothendieck_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/issheaf-togrothendieck-iff.md) | 98 | `result-track:712abd2870ed5986d75001cd5ce177ec8c1608327e4f35ac9532ae0ef6585526` |
| 7 | `lemma` | [mem_toGrothendieck_iff_of_isStableUnderComposition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/mem-togrothendieck-iff-of-isstableundercomposition.md) | 166 | `result-track:1d72022ba4ab310d5a19be8c6bd5e7956ce0896754724d233683ce19513b5bea` |
| 8 | `lemma` | [toGrothendieck_toPretopology_eq_toGrothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/togrothendieck-topretopology-eq-togrothendieck.md) | 202 | `result-track:5af471e668b513412eeeab668dc278e212161b9952655e695ab6b64df3b73111` |
| 9 | `lemma` | [Presieve.IsSheaf.isSheafFor_of_mem_precoverage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/presieve-issheaf-issheaffor-of-mem-precoverage.md) | 211 | `result-track:2367b4be4942f6e635966e4dd4343f847ff9a15ae28c4e79931ba93de0eef17f` |
| 10 | `lemma` | [PreZeroHypercover.isSheafFor_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/prezerohypercover-issheaffor-iff-of-iso.md) | 217 | `result-track:fec7fc9b0bbdfdf80fd4e10a1dced98714f65ba84788dd95d097b863f3a396c8` |
| 11 | `lemma` | [Presieve.isSheafFor_ofArrows_comp_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/presieve-issheaffor-ofarrows-comp-iff.md) | 223 | `result-track:411b3790ab4ae2c1edfa377096ab3bac84ec44c78aee95792abc8f1df373253b` |
| 12 | `lemma` | [Presieve.isSheafFor_singleton_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/presieve-issheaffor-singleton-iff-of-iso.md) | 231 | `result-track:dbac15e5c68d6d7df36e3af391671a352cec45b02d3df4408916e347afe4b14b` |
| 13 | `lemma` | [Presieve.IsSheafFor.comp_iff_of_preservesPairwisePullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/presieve-issheaffor-comp-iff-of-preservespairwisepullbacks.md) | 243 | `result-track:a9ed711c8b8962d3faccd0771f4c8192fbcb0f5baf75e20739818d051a556dd9` |
| 14 | `def` | [toPrecoverage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/toprecoverage.md) | 268 | `declaration-track:0dc4364fa1aa1a3bdc78f1def1fde0acefa7286af0363fc9f4c96602b1982768` |
| 15 | `lemma` | [mem_toPrecoverage_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/mem-toprecoverage-iff.md) | 271 | `result-track:c324883110f7987e38f9bd00dfcdc1a24932f1db774ccc306410afbfd3ed18b5` |
| 16 | `lemma` | [arrows_mem_toPrecoverage_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/arrows-mem-toprecoverage-iff.md) | 274 | `result-track:46f8ba7696aabdc489fadabd43680122624259e4aa7a64b3bb54154a760f105a` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/instance-source-edition-3.md) | 278 | `declaration-track:b22f7341dd3cb9103e66bccbdbb594bd71b090dd36c6ce2a001240c4370bb563` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/instance-source-edition-2.md) | 281 | `declaration-track:66b912c3f98492d3209f0b1114598eb6c96283ef4d83a981718aa36c6a1a4cf6` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/instance.md) | 286 | `declaration-track:31ec10c7e550f92ef16ea9c675ae0015df8aeb31d5c52e9a1d6acfcbed9ccbc0` |
| 20 | `lemma` | [toGrothendieck_le_iff_le_toPrecoverage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/togrothendieck-le-iff-le-toprecoverage.md) | 298 | `result-track:aafa279ec5ea7480eee4f2500ec7a3c1c15c41bf0693b9a4fbab9aaabd88a5df` |
| 21 | `lemma` | [galoisConnection_toGrothendieck_toPrecoverage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/galoisconnection-togrothendieck-toprecoverage.md) | 310 | `result-track:0398e9f13bf074b0e7bf495782da57de0f9b403aa72a9e11d33c2f6e956717a7` |
| 22 | `lemma` | [Precoverage.toGrothendieck_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/precoverage-togrothendieck-bot.md) | 317 | `result-track:d556201be2cfb6f523fdd71ea79d36d337f6495228084dba9a6da3795e327128` |
| 23 | `lemma` | [GrothendieckTopology.toPrecoverage_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/grothendiecktopology-toprecoverage-top.md) | 321 | `result-track:875f294eed748d6564ee89389c8cdc58c9365b7b18fd0dcbb031159b4cb8309c` |
| 24 | `lemma` | [Precoverage.toGrothendieck_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/precoverage-togrothendieck-monotone.md) | 324 | `result-track:a7df640b840c23c641bdb5ad761eb81c7213b66e94d5b423afcc0ee986c0c076` |
| 25 | `lemma` | [Precoverage.toGrothendieck_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/precoverage-togrothendieck-mono.md) | 328 | `result-track:b872c4d28a0069860eebf56402b4e8499a9398684be747251a3cf77207e7b953` |
| 26 | `lemma` | [GrothendieckTopology.toPrecoverage_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/grothendiecktopology-toprecoverage-monotone.md) | 333 | `result-track:b29699b0a5176a6520e3b7f1f5f7d59ae0d2e6cd9436ad5e7ccc63d60d01884b` |
| 27 | `lemma` | [Precoverage.le_toPrecoverage_toGrothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/precoverage-le-toprecoverage-togrothendieck.md) | 336 | `result-track:c9497a7b477356816f52d2ba684da93422a0c90c70e9906cdd76e5caa13fc3d8` |
| 28 | `lemma` | [GrothendieckTopology.toGrothendieck_toPrecoverage_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PrecoverageToGrothendieckPublic.lean/declarations/grothendiecktopology-togrothendieck-toprecoverage-le.md) | 340 | `result-track:83e9a1b7b41e1cf56ef7092913c48bb9ef619196a3a95c3657f0cc70fce2d39e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc5d311bfa902860e4f205f0f95de4f982446d9a0a0d34d18343c7be96f76a36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PrecoverageToGrothendieck/Variant8380b9e3409337fec47e46ab70096377e544940a09af2674b31d908624a90536.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

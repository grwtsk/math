# Verification target: Monoidal Mod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b886160b5fd764a06157d9f9d7bb82341cc8fa9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b886160b5fd764a06157d9f9d7bb82341cc8fa9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mod_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/mod.md) | 20 | `declaration-track:ebff302899db1352babaed9e71dbe5229fe730d6b2b5c664f702a71714e8c643` |
| 2 | `theorem` | [assoc_flip](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/assoc-flip-source-edition-2.md) | 34 | `result-track:95cb716dbe3c911a21b69d26d5dbb8080eefcc239c24619e1a2ecca0a4f30a16` |
| 3 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/hom.md) | 39 | `declaration-track:0c9e07aaedba7c37424f26fbd08a5adbfd02053bac4ddd777f6063381fd26dda` |
| 4 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/id.md) | 48 | `declaration-track:32e037ac845408e82ddcc8b43e7f833c3ed60318fc11aeb75fd28614f5e5c52b` |
| 5 | `instance` | [homInhabited](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/hominhabited.md) | 50 | `declaration-track:0714f84fad13685d77933dcd0b21db80bc689319fd64f692c10785c2aa3ea640` |
| 6 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/comp.md) | 55 | `declaration-track:9f00f1c33b4bb12a36baaa31d66b03c99f6dab78aa2b66bbddc74648db22248f` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:e1a88170aee1268d5ec189c7d3f2c5ac57b388a3ba5b2938005b92c1a854ed7c` |
| 8 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/hom-ext.md) | 63 | `result-track:484e5d90603b1f8d7141037025487daf0938e49d9d255889f33f58cb0879b122` |
| 9 | `theorem` | [id_hom'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/id-hom.md) | 67 | `result-track:c5e1811c8377c6f1f7fb0f0336f0ef0e4298a17901f378dde936bb9e891a5f56` |
| 10 | `theorem` | [comp_hom'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/comp-hom.md) | 71 | `result-track:591315ab2d1f3b4f19e602a613025aa7cc6b109d35e325650d6ffcaa1e713444` |
| 11 | `def` | [regular](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/regular-source-edition-2.md) | 79 | `declaration-track:d6ff3e4f550cbf453aeaa07db46f2c1731e0eb1baf2dc4a064e436fd8ba697cd` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/instance-source-edition-3.md) | 83 | `declaration-track:f9f707528f5fb51e922b072513a1a75e9f8d4de0d4263da7ab77cb3171115547` |
| 13 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/forget.md) | 87 | `declaration-track:42021f1d08723457244d5c05decc3580d133a9a8392f5db0d407556f5cb307f0` |
| 14 | `def` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/comap.md) | 102 | `declaration-track:ba77aad1dd263db05000e82dcfc79d3d706b68822b373acb8c084dd242e8d15b` |
| 15 | `class` | [Mod_Class](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/mod-class.md) | 142 | `declaration-track:71909c7fa2e40149eedfd26e4669a58f2da26bba6f86da1c1cebe6658122232a` |
| 16 | `theorem` | [assoc_flip](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/assoc-flip.md) | 159 | `result-track:73e1155ad724a198316dbde6c73597f814aefa669f75fa87b7ef4302b76a7b17` |
| 17 | `abbrev` | [regular](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/regular.md) | 164 | `declaration-track:d6f8d1ee276b09762882db6a14335a3324abfa2beaeb162ea6589cb189a4b8ee` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/instance.md) | 166 | `declaration-track:3991663e09d2318a8f99842a034f6c54a4c6be97cbb98c708415e5db3c28eeab` |
| 19 | `def` | [Mod_.mk'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMod.lean/declarations/mod-mk.md) | 176 | `declaration-track:202143e7cac90f956190490cc61178d80cc83609b8ac4edc0cfe143be26d67ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9592842c179710bd9197c515f8aa80226ff85bb7e8881ff5177a54c89434ef20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

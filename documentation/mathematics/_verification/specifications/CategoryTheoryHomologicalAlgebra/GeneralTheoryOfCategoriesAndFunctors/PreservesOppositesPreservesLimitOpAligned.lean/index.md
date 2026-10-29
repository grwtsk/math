# Verification target: Preserves Opposites Preserves Limit Op Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a01ebc289b32f2b1fe4021a5e7884c73314ceec7",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a01ebc289b32f2b1fe4021a5e7884c73314ceec7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Opposites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preservesLimitOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitop.md) | 41 | `declaration-track:a9eb02a24818b38ed851e46db35f599cba3ab34d7f941410e65771804827d70f` |
| 2 | `def` | [preservesLimitLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitleftop.md) | 48 | `declaration-track:0e7f863c4eab1527dff6275b297561b741c9b8a1e920c86bee0f92ad8dcb7718` |
| 3 | `def` | [preservesLimitRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitrightop.md) | 56 | `declaration-track:bc6ca185897290c7afb993923fc7407bdc3ea22788b612d467308e0915e7aeaf` |
| 4 | `def` | [preservesLimitUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitunop.md) | 64 | `declaration-track:eb7f840db4527a7cc04b908ba9851af600e9641fb1f204578d25e5c0f70a6df4` |
| 5 | `def` | [preservesColimitOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitop.md) | 72 | `declaration-track:046f61893d7daccab66810eed005cbe854da36869b6caeb227c4d30bb1a14f2a` |
| 6 | `def` | [preservesColimitLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitleftop.md) | 80 | `declaration-track:093e451415721a6d0bddb4bc2eb93155a3a11d662cd35406d481c0a6ca674a6d` |
| 7 | `def` | [preservesColimitRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitrightop.md) | 88 | `declaration-track:0b070e3a07227b0bcaa6f5a8117666ea9295ea8bdeff2782a35b4c90d8544047` |
| 8 | `def` | [preservesColimitUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitunop.md) | 96 | `declaration-track:5b8ddcc968a61ce30c330ed6d41f5b3ed936edb8239983d3f49f1013f72a4ec7` |
| 9 | `def` | [preservesLimitsOfShapeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitsofshapeop.md) | 108 | `declaration-track:6c5c211c14465ef30dc555308e7fe6f2fbaa2cc7393966bf0418ac4b256a72e6` |
| 10 | `def` | [preservesLimitsOfShapeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitsofshapeleftop.md) | 114 | `declaration-track:1b63c8d5c20fe9b1e410d7be45ff10607615c7cdc7d7286d673d1111edd784c2` |
| 11 | `def` | [preservesLimitsOfShapeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitsofshaperightop.md) | 120 | `declaration-track:f597a120fede19d2021098ce079fe159e7c99508ac6ee4fa85884300efb3395c` |
| 12 | `def` | [preservesLimitsOfShapeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitsofshapeunop.md) | 126 | `declaration-track:83bb0207a5d0ba2b1403f5d547a285c899fb5006bf12995d57e536162f3ee60a` |
| 13 | `def` | [preservesColimitsOfShapeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitsofshapeop.md) | 132 | `declaration-track:319bb83e523d2484dc3abf44fdb2ab34dc41a972c03c4988a21a2c28e5911924` |
| 14 | `def` | [preservesColimitsOfShapeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitsofshapeleftop.md) | 138 | `declaration-track:00163683774daddb8a2d59fb2becdca873dd85bebcf6c2855433bb304000cd9d` |
| 15 | `def` | [preservesColimitsOfShapeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitsofshaperightop.md) | 144 | `declaration-track:c94f6d4c45041114f59f74c0cd2b52e727f1d07da7788eb1abadbc4727b8161e` |
| 16 | `def` | [preservesColimitsOfShapeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitsofshapeunop.md) | 150 | `declaration-track:f0341451c13dc5945257b151435e77f1eeec7070273d90b7e8c04cb352ea3e86` |
| 17 | `def` | [preservesLimitsOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitsop.md) | 157 | `declaration-track:654bd0d9b0f9016ad5e2f8ca9cbff9ed40c3b8e0ae2b0b38fb93062111c29a62` |
| 18 | `def` | [preservesLimitsLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitsleftop.md) | 162 | `declaration-track:2dc4ad6c72073a62b25560c11ed5f6f3c86e7926890f4f8c56f8d16b91fd6f33` |
| 19 | `def` | [preservesLimitsRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitsrightop.md) | 167 | `declaration-track:944b44e1620081a5cb3233963d1a40fb51be989437bb1e6b2b17a1e2f45bb2a4` |
| 20 | `def` | [preservesLimitsUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preserveslimitsunop.md) | 172 | `declaration-track:6b5cb77cd11b90b1d4177ede6dce18ab8256de6b1c75e9771032ae2bc3fc16c4` |
| 21 | `def` | [perservesColimitsOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/perservescolimitsop.md) | 177 | `declaration-track:d71c714ec6bd84a01898658cf6197401540d68dd34111c74f744ae43114b7dd0` |
| 22 | `def` | [preservesColimitsLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitsleftop.md) | 182 | `declaration-track:28bd8b070181c5a0cc16c128aeb757224dc05cbb7e590a11ede0384efc765907` |
| 23 | `def` | [preservesColimitsRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitsrightop.md) | 187 | `declaration-track:18d4c1addd0b6dcccee19f379f6e456ba5e4b8967ef40771fa10a77c430564d2` |
| 24 | `def` | [preservesColimitsUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservescolimitsunop.md) | 192 | `declaration-track:220e7f8c7ae69185eed40757a11dbc1e0ac857818fce9a54c1faae7bed082dc8` |
| 25 | `def` | [preservesFiniteLimitsOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservesfinitelimitsop.md) | 206 | `declaration-track:ddc657983d6920c0e9f6c9a11f9e3dbca61c31deb44c80a5df7eee7ba1252a50` |
| 26 | `def` | [preservesFiniteLimitsLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservesfinitelimitsleftop.md) | 212 | `declaration-track:5adc377241e4e6869dd9a51af738e1f7b32505df7ffda85334586e8a26826276` |
| 27 | `def` | [preservesFiniteLimitsRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservesfinitelimitsrightop.md) | 219 | `declaration-track:6fea0c0ea849cc54e7c02a679890f514092e20ef6ec138f6e68d3f69955adab4` |
| 28 | `def` | [preservesFiniteLimitsUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservesfinitelimitsunop.md) | 226 | `declaration-track:3a461783f05576bf509d361dffe2dd5ea07b4cbab98e8634746d80917964662f` |
| 29 | `def` | [preservesFiniteColimitsOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservesfinitecolimitsop.md) | 233 | `declaration-track:88c14656333e3f3bafa163af29ab08fea8784c7bf87865b5fa0d4f8b23822cac` |
| 30 | `def` | [preservesFiniteColimitsLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservesfinitecolimitsleftop.md) | 239 | `declaration-track:10434bf6f472a80660f0732f2a77b8972649ad58a2254673f7ab80cf1d501311` |
| 31 | `def` | [preservesFiniteColimitsRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservesfinitecolimitsrightop.md) | 246 | `declaration-track:6ecb8d9cff01558917513ad0227b1f3f5a92c8a77ec20e76b94597a500b10c58` |
| 32 | `def` | [preservesFiniteColimitsUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesOppositesPreservesLimitOpAligned.lean/declarations/preservesfinitecolimitsunop.md) | 253 | `declaration-track:10a7ad41b9eeac5be55941ae09f0c3335799b2a1c86314606770ceea3e1c4112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3af8e7e34233385da2399db3258eac658c3fbc4e998f8b8af275d6d98ee7cef8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant540373e06a6c9276fda8e95bbe5aff5a4e4fe578788de1b5d20f7840414adabe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

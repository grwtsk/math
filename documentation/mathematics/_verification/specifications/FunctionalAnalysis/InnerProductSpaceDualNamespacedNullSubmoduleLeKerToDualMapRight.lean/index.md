# Verification target: Inner Product Space Dual Namespaced Null Submodule Le Ker To Dual Map Right

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70f4edd2aa5608a87042be47134129238f04bb36",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/index.md) · [Full source](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70f4edd2aa5608a87042be47134129238f04bb36`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.NullSubmodule` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualMap](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/todualmap.md) | 71 | `declaration-track:74dbd3fa763797446e04b1948ee177caad3dd510cac88155fbe12f6acbb50714` |
| 2 | `theorem` | [toDualMap_apply](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/todualmap-apply.md) | 77 | `result-track:569c39196e1e42f0309df7f387f05eb43ce64200060c6b2d100e1863fa0e90b7` |
| 3 | `lemma` | [nullSubmodule_le_ker_toDualMap_right](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/nullsubmodule-le-ker-todualmap-right.md) | 85 | `result-track:564817d7922fee23d5eb2cfdc520cee9427e6986c08466ef60ff32eb064e46f2` |
| 4 | `lemma` | [nullSubmodule_le_ker_toDualMap_left](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/nullsubmodule-le-ker-todualmap-left.md) | 89 | `result-track:5654f89fcc0d3da3f2786bd744325cfdc7a67274c6dbb8720ba8c2a3c66a18c6` |
| 5 | `theorem` | [innerSL_norm](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/innersl-norm.md) | 103 | `result-track:b1fa0e0a30f0a066bb3d0663333e1f81044a63ed6de4f04e78316d6533e02b14` |
| 6 | `theorem` | [ext_inner_left_basis](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/ext-inner-left-basis.md) | 108 | `result-track:b465ed056c984181b5bb0c37f15d2b6d18210d095cfb32f3a7761bcd66ec264b` |
| 7 | `theorem` | [ext_inner_right_basis](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/ext-inner-right-basis.md) | 119 | `result-track:b3aadb34fc5579390fb147a2035a4585d61ae84e1147f10ae71d5fc90f54ff39` |
| 8 | `def` | [toDual](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/todual.md) | 132 | `declaration-track:e0615883dd1fa759498c55b64d846c2673ba296b035f6c34597d603520494bbc` |
| 9 | `theorem` | [toDual_apply](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/todual-apply.md) | 175 | `result-track:77d1ed51752a58c1fe1a496f019801ebc9ac3de3158eb9834e233c14445b1779` |
| 10 | `theorem` | [toDual_symm_apply](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/todual-symm-apply.md) | 179 | `result-track:408e542b9443a079c392bec5c607958fea30189dd8af21d40d74d034aff67d34` |
| 11 | `def` | [continuousLinearMapOfBilin](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/continuouslinearmapofbilin.md) | 187 | `declaration-track:fec2af198b397b7e044a13d9b52f008c62d9a938236abd5f06fd59edd7a681ef` |
| 12 | `theorem` | [continuousLinearMapOfBilin_apply](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/continuouslinearmapofbilin-apply.md) | 195 | `result-track:1852f83a653d07d33398c839186ebe3baf0ea6a575c0d0beb98854175c2e492a` |
| 13 | `theorem` | [unique_continuousLinearMapOfBilin](../../../../FunctionalAnalysis/InnerProductSpaceDualNamespacedNullSubmoduleLeKerToDualMapRight.lean/declarations/unique-continuouslinearmapofbilin.md) | 199 | `result-track:f4f23b897188470ce043271ddbbe9854dd4f70c98dc0f9df8f98b90efc92c32b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1d02359c9b686f1700f97f514986670b5bc544979f480ddf5423260b7536cfb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Dual/Variantd080ceabd84e33dd44dc769c4abae8f0b4724fadb90599f5ad94045888d18a4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

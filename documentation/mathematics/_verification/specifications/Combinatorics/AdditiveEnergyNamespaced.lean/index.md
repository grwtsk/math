# Verification target: Additive Energy Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d5e9af16f25c9150446c496520151af447bffd6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d5e9af16f25c9150446c496520151af447bffd6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulEnergy](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy.md) | 61 | `declaration-track:be0e574d11f0e0eab97e31345c1ddca545e51c07c2f2f198ebe70fc97d50208c` |
| 2 | `lemma` | [mulEnergy_mono](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-mono.md) | 83 | `result-track:df829a804b32391ffdb467e0701adf174899c4c18b96bfffd9c5589b590af654` |
| 3 | `lemma` | [mulEnergy_mono_left](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-mono-left.md) | 86 | `result-track:8cea09792c472e196037fee38ec880f62a73ca21488c1bf9139e8d2aa95ef22e` |
| 4 | `lemma` | [mulEnergy_mono_right](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-mono-right.md) | 89 | `result-track:0248d9604c1b67f6ebbfeca69f6e688a79caa27f2fd3466b98cb4eaae2a035a2` |
| 5 | `lemma` | [le_mulEnergy](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/le-mulenergy.md) | 92 | `result-track:70cb36e37b9c05b5485173f64dd43fc7475060e3a450d6ae094cf4ac097cf428` |
| 6 | `lemma` | [mulEnergy_pos](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-pos.md) | 99 | `result-track:2e4a2646ed572d1e1d0760355e1443565257ab8e8927706fe2d2754c8eb2dda0` |
| 7 | `lemma` | [mulEnergy_empty_left](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-empty-left.md) | 104 | `result-track:510de4efee527b7469307eb817898746d9b086ab59d69c7f4dce4dcd41e5624c` |
| 8 | `lemma` | [mulEnergy_empty_right](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-empty-right.md) | 106 | `result-track:5faccc5dc71ee0220e61a14d4437735bec9f8cceaa0ac1f1442209412425784b` |
| 9 | `lemma` | [mulEnergy_pos_iff](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-pos-iff.md) | 110 | `result-track:2ccc109a00c212f817343cd51d4fd1ab4c0e5584b892b3c2b17ff931d68f0ddc` |
| 10 | `lemma` | [mulEnergy_eq_zero_iff](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-eq-zero-iff.md) | 116 | `result-track:fdc7bef8aedd712bb3ad76733f1d97e07c89fbebd5bd5d0cb86f0520d9c323ba` |
| 11 | `lemma` | [mulEnergy_eq_card_filter](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-eq-card-filter.md) | 119 | `result-track:2b795a96727d7c921b564924d2fb80651f28d83f3dcfdafb741dc02b6b771952` |
| 12 | `lemma` | [mulEnergy_eq_sum_sq'](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-eq-sum-sq-source-edition-2.md) | 123 | `result-track:69c8c7d5289ac08ed412f5b5d3740174f9ee3e3bd926ed6f9487741c4ed84b60` |
| 13 | `lemma` | [mulEnergy_eq_sum_sq](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-eq-sum-sq.md) | 137 | `result-track:0a4237d06cef654a8a269e67c6ddf1a1f677931aa4f1c8cbd06f3c0bfd720d40` |
| 14 | `lemma` | [card_sq_le_card_mul_mulEnergy](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/card-sq-le-card-mul-mulenergy.md) | 143 | `result-track:a6172a06fe0c30da793ca044d0f5f6cc625d00fb3aa7cc22672f00a2eaefae10` |
| 15 | `lemma` | [le_card_add_mul_mulEnergy](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/le-card-add-mul-mulenergy.md) | 155 | `result-track:4dbeb6efec6a7b9c280ecabea304dbfc1308215c01409be4fc62b055ec5674bd` |
| 16 | `lemma` | [mulEnergy_comm](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-comm.md) | 170 | `result-track:da730fca47155f27748a2db45f9886ab3ca2dcdc4c12d4ae80e1cc8751d08d94` |
| 17 | `lemma` | [mulEnergy_univ_left](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-univ-left.md) | 181 | `result-track:30378572aa6380ba915ddb8e275722c8d796a858dd19cb46cba5acdd792daf92` |
| 18 | `lemma` | [mulEnergy_univ_right](../../../../Combinatorics/AdditiveEnergyNamespaced.lean/declarations/mulenergy-univ-right.md) | 198 | `result-track:3ac513c34dc8ecf903ccc0731371f02ddc5c924b38dbfdfd0d6f75246fef946e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dc94f85d54c43a894e9269b96d07142e16f69c3d66525b31b2f4a1e0991400b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Energy/Variant70cac99f5161ec188d4e69ec049699450f46cf9ea40b24cc8f94b9591d50d65a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

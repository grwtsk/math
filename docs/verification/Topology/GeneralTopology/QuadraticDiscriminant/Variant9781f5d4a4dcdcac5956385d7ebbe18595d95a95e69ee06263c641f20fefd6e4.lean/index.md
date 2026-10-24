# Verification target: GRWTSK.Topology.GeneralTopology.QuadraticDiscriminant.Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5288efc621f4c8ce643732c934d84357139f900",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5288efc621f4c8ce643732c934d84357139f900`.

Source path: `GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discrim](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/discrim--f0dbb0a991c438d0d3f96319.md) | 45 | `declaration-track:f0dbb0a991c438d0d3f963196c83445120eaa7492d95a043048097b637d7395c` |
| 2 | `lemma` | [discrim_neg](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/discrim-neg--d666a4f4cf688c090e6dcaa1.md) | 49 | `result-track:d666a4f4cf688c090e6dcaa1a6055cdb3f66c208acbb446aa1f95f1cd936d91a` |
| 3 | `lemma` | [discrim_eq_sq_of_quadratic_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/discrim-eq-sq-of-quadratic-eq-zero--da92bf96b7ff72f7d895f13e.md) | 55 | `result-track:da92bf96b7ff72f7d895f13e635a7463647ba890edc3e907705f01bb05f59652` |
| 4 | `theorem` | [quadratic_eq_zero_iff_discrim_eq_sq](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/quadratic-eq-zero-iff-discrim-eq-sq--cedc4b4d805c08df52e4585f.md) | 63 | `result-track:cedc4b4d805c08df52e4585f411dc74a51a4e005dfe534e1ef25dfd92b1b3a42` |
| 5 | `theorem` | [quadratic_ne_zero_of_discrim_ne_sq](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/quadratic-ne-zero-of-discrim-ne-sq--0c0410fb01e22edcdc1cb2e6.md) | 74 | `result-track:0c0410fb01e22edcdc1cb2e6cff69ae56ef9bac937bc0a5d010d3e381478dadb` |
| 6 | `theorem` | [quadratic_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/quadratic-eq-zero-iff--700f8b273915cef21ae8e3e8.md) | 86 | `result-track:700f8b273915cef21ae8e3e8120af32a33c5139d087bdfbfe11885cc91b716a7` |
| 7 | `theorem` | [exists_quadratic_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/exists-quadratic-eq-zero--4fd2b6377882b31ad3d11d11.md) | 96 | `result-track:4fd2b6377882b31ad3d11d113ea2c063c130bbf5935886b5b1f504e572005ea0` |
| 8 | `theorem` | [quadratic_eq_zero_iff_of_discrim_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/quadratic-eq-zero-iff-of-discrim-eq-zero--4e0c8345ad9ebdadccfe27ca.md) | 105 | `result-track:4e0c8345ad9ebdadccfe27cab1fdec120c3bceab3212b3568776bb6cf2f589c2` |
| 9 | `theorem` | [discrim_le_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/discrim-le-zero--d650a7dbb3e85af411b88f81.md) | 118 | `result-track:d650a7dbb3e85af411b88f811c7f36785790bbf44d87c111957bb8236b2853d9` |
| 10 | `lemma` | [discrim_le_zero_of_nonpos](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/discrim-le-zero-of-nonpos--22f2bfb8d1c612a6ec197dc9.md) | 141 | `result-track:22f2bfb8d1c612a6ec197dc92ede0bff3e4ef2d5052655f216d0ab9b8a068346` |
| 11 | `theorem` | [discrim_lt_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/discrim-lt-zero--780d778ac59265b5e975c6f8.md) | 148 | `result-track:780d778ac59265b5e975c6f87cc10a95008a1473b541544ba2e27825db254da3` |
| 12 | `lemma` | [discrim_lt_zero_of_neg](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/declarations/discrim-lt-zero-of-neg--ae56fd0fb25c44335e537454.md) | 158 | `result-track:ae56fd0fb25c44335e537454b75feb787427771dcb113cb0ad2bbbe267836cfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

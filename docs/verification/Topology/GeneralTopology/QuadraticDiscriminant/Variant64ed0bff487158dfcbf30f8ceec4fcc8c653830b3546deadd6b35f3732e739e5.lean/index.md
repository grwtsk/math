# Verification target: GRWTSK.Topology.GeneralTopology.QuadraticDiscriminant.Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68e9c94b5f1dabb8d55e20bc9c075213debe675c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68e9c94b5f1dabb8d55e20bc9c075213debe675c`.

Source path: `GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discrim](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/discrim--67e03913dfc1f1c9f0385928.md) | 53 | `declaration-track:67e03913dfc1f1c9f038592871317527eb70a8650cacb7df697ba9e76b4c64f8` |
| 2 | `lemma` | [discrim_neg](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/discrim-neg--da120b8025e7fffe6d1b1a7f.md) | 57 | `result-track:da120b8025e7fffe6d1b1a7f6533c935b8608b69ae5378b9e8553cc47d0ea61c` |
| 3 | `lemma` | [discrim_eq_sq_of_quadratic_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/discrim-eq-sq-of-quadratic-eq-zero--b18c0fcebae8b11c828b96c0.md) | 63 | `result-track:b18c0fcebae8b11c828b96c0ff01fc7550002e1a49efec4e6eda0af81615dab0` |
| 4 | `theorem` | [quadratic_eq_zero_iff_discrim_eq_sq](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/quadratic-eq-zero-iff-discrim-eq-sq--8c003a141b37f231c2056226.md) | 71 | `result-track:8c003a141b37f231c20562268f5c0c40b14ff77f1081a4f8c5c32658f2b166b0` |
| 5 | `theorem` | [quadratic_ne_zero_of_discrim_ne_sq](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/quadratic-ne-zero-of-discrim-ne-sq--3d9d3fa4598e2da67ec55278.md) | 82 | `result-track:3d9d3fa4598e2da67ec55278413ce4f1e54d8859d52bd7617ef36e2e5cb40fc9` |
| 6 | `theorem` | [quadratic_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/quadratic-eq-zero-iff--1bc214dfe717665215af58ef.md) | 94 | `result-track:1bc214dfe717665215af58ef428ace14ff281d87dff887c76d7a4e53d302d328` |
| 7 | `theorem` | [exists_quadratic_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/exists-quadratic-eq-zero--28c1e1fae9f4aa8f9989d605.md) | 104 | `result-track:28c1e1fae9f4aa8f9989d605fab4545735c3baa9e89f555351827c82c7ba78df` |
| 8 | `theorem` | [quadratic_eq_zero_iff_of_discrim_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/quadratic-eq-zero-iff-of-discrim-eq-zero--25ce132a7dd9b04d1e26322a.md) | 113 | `result-track:25ce132a7dd9b04d1e26322ae1688e3d6f0be9d830b6949015332e741bdf5f76` |
| 9 | `theorem` | [discrim_le_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/discrim-le-zero--4a9038c47e710c0c60a302ee.md) | 126 | `result-track:4a9038c47e710c0c60a302ee3afb510d597241e5e61379f4328d2cc120e1b4a5` |
| 10 | `lemma` | [discrim_le_zero_of_nonpos](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/discrim-le-zero-of-nonpos--369870c5497e03f1c19c65a3.md) | 149 | `result-track:369870c5497e03f1c19c65a3a05701e97222ccb3d9a0f07f8f11b3897949c4df` |
| 11 | `theorem` | [discrim_lt_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/discrim-lt-zero--f60757ea0041e825455daf6d.md) | 156 | `result-track:f60757ea0041e825455daf6d8589d07da5a5fbf738b4db4ed45055f556869700` |
| 12 | `lemma` | [discrim_lt_zero_of_neg](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variant64ed0bff487158dfcbf30f8ceec4fcc8c653830b3546deadd6b35f3732e739e5.lean/declarations/discrim-lt-zero-of-neg--12a1c3e5c520e92b65b3b8df.md) | 166 | `result-track:12a1c3e5c520e92b65b3b8df458540019f3b99556d547d227f124b6b51a12b0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

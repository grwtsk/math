# Verification target: GRWTSK.Topology.GeneralTopology.Prototype.Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c52648a518bac71d49a907a26266a67dbb1ae53",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c52648a518bac71d49a907a26266a67dbb1ae53`.

Source path: `GRWTSK/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernstein](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/bernstein--a38ab4120844fb71f3779c6f.md) | 24 | `declaration-track:a38ab4120844fb71f3779c6feaa2b005d13d5c91dc42bdfbe5f334c59107188f` |
| 2 | `theorem` | [bernstein_nonneg](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/bernstein-nonneg--27bf1199a3b75ff06fd13790.md) | 27 | `result-track:27bf1199a3b75ff06fd13790c4dbf1e69e0f48f73b6128340616a7e2e8188f1d` |
| 3 | `theorem` | [bernstein_sum_one](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/bernstein-sum-one--c4cd09757863c9bcf1f0e4b7.md) | 34 | `result-track:c4cd09757863c9bcf1f0e4b7d363e17a1169ea5f76070c57b8030fe5ee47f991` |
| 4 | `theorem` | [bernstein_zero](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/bernstein-zero--5a6b0885c5f6e939d23e15af.md) | 52 | `result-track:5a6b0885c5f6e939d23e15af93c45a13c59fba65cd8ca75ec6cf8a47330d74df` |
| 5 | `theorem` | [bernstein_one](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/bernstein-one--43cf1a628ab478fae470761d.md) | 63 | `result-track:43cf1a628ab478fae470761d89b2ce38cf11e29e1f0c02d40d961d44be9e510e` |
| 6 | `theorem` | [bernstein_rev](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/bernstein-rev--64908d6f957e9daf31f6c70a.md) | 73 | `result-track:64908d6f957e9daf31f6c70a41f9b8aded7554b7fe902a2f692669ef723aa5dd` |
| 7 | `structure` | [RationalSegment](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/rationalsegment--fd0de2538d58fb9bad871f53.md) | 81 | `declaration-track:fd0de2538d58fb9bad871f53a3b8c60f93486262de9c35ed58090a823259b567` |
| 8 | `def` | [denominator](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/denominator--ebee827f636e9548a30f4e0e.md) | 90 | `declaration-track:ebee827f636e9548a30f4e0ed121854f748c2b9402b78796b5a0b3bda0b8f2a0` |
| 9 | `def` | [numerator](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/numerator--7993cfddc641346bd4c641e6.md) | 93 | `declaration-track:7993cfddc641346bd4c641e6dfa96e27e52212818b7f023da02b7fc5e46bd251` |
| 10 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/eval--92df4b86728c68c2d3f2cc61.md) | 96 | `declaration-track:92df4b86728c68c2d3f2cc61c99d15ea2450af1da63c9483a7db26554664e164` |
| 11 | `theorem` | [denominator_pos](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/denominator-pos--4c7c8f9c3c5aabd1e92ee3b5.md) | 99 | `result-track:4c7c8f9c3c5aabd1e92ee3b503aadbd11e7b25c900c58080b217ce5f9ddfb8d0` |
| 12 | `theorem` | [eval_zero](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/eval-zero--1cb234a2868ce4c1f2ee400b.md) | 120 | `result-track:1cb234a2868ce4c1f2ee400baafb1ebe71b6d15acf253fdf9e45c4071d1a0875` |
| 13 | `theorem` | [eval_one](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/eval-one--a9d6a9b70644aa5ff8c6f15e.md) | 125 | `result-track:a9d6a9b70644aa5ff8c6f15e063b55c1ad97ca3ce4c1b9451266758fc8575d9c` |
| 14 | `theorem` | [continuous_denominator](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/continuous-denominator--509cfe305eabcf38734d245b.md) | 129 | `result-track:509cfe305eabcf38734d245b2f1b53f89d5edee6be97b535d9e03f746230f274` |
| 15 | `theorem` | [continuous_numerator](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/continuous-numerator--1dd78e7afb89fbf855eb0bfd.md) | 138 | `result-track:1dd78e7afb89fbf855eb0bfd37930d4285eeb6a5d958cc43471ccd9b57a8abad` |
| 16 | `theorem` | [continuous_eval](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/continuous-eval--149aee5a2b4a6fc31c0fd2cc.md) | 143 | `result-track:149aee5a2b4a6fc31c0fd2cc85357ca591ab3fed77f5a919cb9790f46d3dd0c1` |
| 17 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/reverse--7b4a8de798bb0383bb49d09e.md) | 154 | `declaration-track:7b4a8de798bb0383bb49d09e64a5f1f735f21d928f537a8d1dc64cf6008ee5fc` |
| 18 | `theorem` | [reverse_point](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/reverse-point--09254ffbc03c738606415df9.md) | 160 | `result-track:09254ffbc03c738606415df9675eafce66624d5173ed9c91757797a0f5250534` |
| 19 | `theorem` | [reverse_weight](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/reverse-weight--2ac6c0c4d5923c5827e130f5.md) | 164 | `result-track:2ac6c0c4d5923c5827e130f5946ef52819e0aebf48cec275b74b1b166224562c` |
| 20 | `theorem` | [reverse_reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/reverse-reverse--3d8d6e8b4a2a1e5122a959c5.md) | 168 | `result-track:3d8d6e8b4a2a1e5122a959c5c0a7cceb837f98170de09130abe9cfd088d2afcf` |
| 21 | `theorem` | [denominator_reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/denominator-reverse--8c3f431102c78ac144bb16c0.md) | 173 | `result-track:8c3f431102c78ac144bb16c0956c2a288540266a118e0825e1ca53c64838e674` |
| 22 | `theorem` | [numerator_reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/numerator-reverse--fb40c5fa2197be297502935d.md) | 184 | `result-track:fb40c5fa2197be297502935d9e831954d2b9ac9ed06d031113d28d5015a36bd0` |
| 23 | `theorem` | [eval_reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variant878f37a479b76936179af9a3ae8de66c6cedf8f22f1a615cfd613ef32496c215.lean/declarations/eval-reverse--0f353e8aa8afd2ed7180d2e7.md) | 195 | `result-track:0f353e8aa8afd2ed7180d2e73482d716ff77b39c9516b422aff82dcdb9a696ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.MetricTopology.Finsupp.Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e27605fce0f263083778555c9606e3c3bb82221d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e27605fce0f263083778555c9606e3c3bb82221d`.

Source path: `GRWTSK/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MeanInequalities` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Basic.ENNReal.BigOperators` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/declarations/instance--53c779b6501494939646e58a.md) | 47 | `declaration-track:53c779b6501494939646e58a046c12a669af8c15dd8b2e7e8abb456d3734248d` |
| 2 | `lemma` | [edist_def](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/declarations/edist-def--0122b6af89304e8eb36c954e.md) | 70 | `result-track:0122b6af89304e8eb36c954eaa78a5a60e74ace41528f9c4a9e4d670267efef7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/declarations/instance--e08eee9a5126840e1db0821f.md) | 76 | `declaration-track:e08eee9a5126840e1db0821f32c193d243eb391c4f3169ab812832dd5b367ea4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/declarations/instance--add3c46c7b3f2502b73763c7.md) | 80 | `declaration-track:add3c46c7b3f2502b73763c724db5f1d9dd55636cd63640372fad97f20e0d2d6` |
| 5 | `lemma` | [dist_def](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/declarations/dist-def--95b1267be2b2d76baf17d384.md) | 91 | `result-track:95b1267be2b2d76baf17d384e8495c9182a91e8990bf2225435a36c82cec3b6e` |
| 6 | `lemma` | [nndist_def](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/declarations/nndist-def--428a7022da99a8e4d7ca353e.md) | 95 | `result-track:428a7022da99a8e4d7ca353ec6b78bb05b47b3dd55f45e7937dfc6061cf16a5c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Finsupp/Varianta080bcdb71900405dfb0be5d0ba6224b2802b739aafb0c8991f43c1242d2ab63.lean/declarations/instance--e467751a3602dd1b44d68688.md) | 105 | `declaration-track:e467751a3602dd1b44d686882994223b861b4c81d8296d38d20c8f2130904f1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

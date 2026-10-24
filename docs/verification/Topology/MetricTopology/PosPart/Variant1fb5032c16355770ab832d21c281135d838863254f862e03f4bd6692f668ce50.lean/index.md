# Verification target: GRWTSK.Topology.MetricTopology.PosPart.Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35d6d24193aa07daf5babb7ed0c70bd71c912b9c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35d6d24193aa07daf5babb7ed0c70bd71c912b9c`.

Source path: `GRWTSK/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.PosPart.Isometric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [span_nonneg_inter_closedBall](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/declarations/span-nonneg-inter-closedball--ecbd14c7e74343d903113b81.md) | 20 | `result-track:ecbd14c7e74343d903113b8146a706e58b42421d8a70a41b26b8e0f6f6415e9c` |
| 2 | `lemma` | [span_nonneg_inter_ball](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/declarations/span-nonneg-inter-ball--6b5836bb039b1d601e11813a.md) | 37 | `result-track:6b5836bb039b1d601e11813a99c39bbac9a4451c35559fabfb77e3282c534a50` |
| 3 | `lemma` | [span_nonneg_inter_unitClosedBall](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/declarations/span-nonneg-inter-unitclosedball--6aceaaf5c906b63e11f30b9c.md) | 44 | `result-track:6aceaaf5c906b63e11f30b9ca3ca1fb1d95bf22a81de5c6aca94abb81184f766` |
| 4 | `lemma` | [span_nonneg_inter_unitBall](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/declarations/span-nonneg-inter-unitball--af097eafbc717d0b57bc5670.md) | 49 | `result-track:af097eafbc717d0b57bc567021b9c7a2666cdea053472bba968fc0f71a35ce21` |
| 5 | `lemma` | [exists_sum_four_nonneg](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant1fb5032c16355770ab832d21c281135d838863254f862e03f4bd6692f668ce50.lean/declarations/exists-sum-four-nonneg--a12b22de531de1c467c50a4a.md) | 56 | `result-track:a12b22de531de1c467c50a4a03cb9da4592469deea8aa656f1fb055816c321bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

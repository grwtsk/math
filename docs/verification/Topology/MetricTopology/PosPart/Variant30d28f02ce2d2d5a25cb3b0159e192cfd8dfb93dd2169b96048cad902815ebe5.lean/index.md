# Verification target: GRWTSK.Topology.MetricTopology.PosPart.Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59e4e54f90c5530df4ce3c87148f5ed13decca60",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59e4e54f90c5530df4ce3c87148f5ed13decca60`.

Source path: `GRWTSK/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.PosPart.Isometric` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [span_nonneg_inter_closedBall](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/declarations/span-nonneg-inter-closedball--c20ac8c61f99f8703180d9de.md) | 28 | `result-track:c20ac8c61f99f8703180d9de2a38c26ba6914c8d18b793721e93383656e375f7` |
| 2 | `lemma` | [span_nonneg_inter_ball](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/declarations/span-nonneg-inter-ball--ab034692fc326cc91698c699.md) | 45 | `result-track:ab034692fc326cc91698c6998d6d6e38c16f4d21b01546b8f4f9a4cfe7a0d578` |
| 3 | `lemma` | [span_nonneg_inter_unitClosedBall](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/declarations/span-nonneg-inter-unitclosedball--966cf5619b22eb79c52e7118.md) | 52 | `result-track:966cf5619b22eb79c52e71184313545c0efe7ef60bb222505cc477951f9235ff` |
| 4 | `lemma` | [span_nonneg_inter_unitBall](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/declarations/span-nonneg-inter-unitball--61cd37c0d04152026be7ac98.md) | 57 | `result-track:61cd37c0d04152026be7ac98959c8ccf3e3b3810f281fe8d4d787fd4370fbf8f` |
| 5 | `lemma` | [exists_sum_four_nonneg](../../../../../mathematics/Topology/MetricTopology/PosPart/Variant30d28f02ce2d2d5a25cb3b0159e192cfd8dfb93dd2169b96048cad902815ebe5.lean/declarations/exists-sum-four-nonneg--9c30c211214b804dfef10c4d.md) | 64 | `result-track:9c30c211214b804dfef10c4d81dc6e2ba4fcddb8483aa8c8cb7ae54404c957fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

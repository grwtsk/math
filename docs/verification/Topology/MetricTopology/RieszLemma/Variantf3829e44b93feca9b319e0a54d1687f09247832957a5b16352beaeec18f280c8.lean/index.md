# Verification target: GRWTSK.Topology.MetricTopology.RieszLemma.Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fc30104864f2136bd22911ddbb0e41fa8153eaf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fc30104864f2136bd22911ddbb0e41fa8153eaf`.

Source path: `GRWTSK/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [riesz_lemma](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/declarations/riesz-lemma--4e69f3eef5d02dd35be88e35.md) | 39 | `result-track:4e69f3eef5d02dd35be88e35fe106e4c2595067d7349dba138e1ae83d42e8c6d` |
| 2 | `theorem` | [riesz_lemma_of_norm_lt](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/declarations/riesz-lemma-of-norm-lt--559bbc53f2086bb433a0bd2b.md) | 80 | `result-track:559bbc53f2086bb433a0bd2b41e069e861a730fce829ccabbf0517772d77de71` |
| 3 | `theorem` | [Metric.closedBall_infDist_compl_subset_closure](../../../../../mathematics/Topology/MetricTopology/RieszLemma/Variantf3829e44b93feca9b319e0a54d1687f09247832957a5b16352beaeec18f280c8.lean/declarations/metric-closedball-infdist-compl-subset-closure--27a4507e71c3ba25272046fc.md) | 104 | `result-track:27a4507e71c3ba25272046fcb5e510cf3a7a3c41d8f1ca0b587cee8b81431cb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

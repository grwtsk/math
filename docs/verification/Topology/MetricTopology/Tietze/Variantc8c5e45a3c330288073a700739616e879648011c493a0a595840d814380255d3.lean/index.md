# Verification target: GRWTSK.Topology.MetricTopology.Tietze.Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "987eabfa031ce040d6671a530c6ab26e2097ab45",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `987eabfa031ce040d6671a530c6ab26e2097ab45`.

Source path: `GRWTSK/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.TietzeExtension` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HomeomorphBall` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.RCLike` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TietzeExtension.of_tvs](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/tietzeextension-of-tvs--fe7fc25d8baa908297587df5.md) | 27 | `result-track:fe7fc25d8baa908297587df5dc488a162012d1f8de392957e710e964b0e7a996` |
| 2 | `instance` | [Complex.instTietzeExtension](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/complex-insttietzeextension--42199f93d1e62bbafa65c8fe.md) | 33 | `declaration-track:42199f93d1e62bbafa65c8fe9ababca953855a986cd953ac0221e2629a21ad04` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/instance--d558d416c0c96598539f2afd.md) | 36 | `declaration-track:d558d416c0c96598539f2afdffad633f46aac16935440c5da16c445e0f3cb317` |
| 4 | `instance` | [RCLike.instTietzeExtensionTVS](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/rclike-insttietzeextensiontvs--6d8967a9370d21a04e7fdef1.md) | 39 | `declaration-track:6d8967a9370d21a04e7fdef19cdb104022a2a43bdd75334d1b5120c6a2645923` |
| 5 | `instance` | [Set.instTietzeExtensionUnitBall](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/set-insttietzeextensionunitball--71b26e95530a4eef4c54ef14.md) | 45 | `declaration-track:71b26e95530a4eef4c54ef14ba428115e3c2b44a8290d9aaaa3f37859383105a` |
| 6 | `instance` | [Set.instTietzeExtensionUnitClosedBall](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/set-insttietzeextensionunitclosedball--711fa2d224eda3abf620b636.md) | 51 | `declaration-track:711fa2d224eda3abf620b63634276427376c57cdd32dcb8216675202d988bb43` |
| 7 | `theorem` | [Metric.instTietzeExtensionBall](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/metric-insttietzeextensionball--58b28a3ce6127bfa670cc1df.md) | 75 | `result-track:58b28a3ce6127bfa670cc1df5da29d0c9a4ede6ed72298931f181882a68f4551` |
| 8 | `theorem` | [Metric.instTietzeExtensionClosedBall](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/metric-insttietzeextensionclosedball--6821e626dbac5d68b8f084c6.md) | 82 | `result-track:6821e626dbac5d68b8f084c6237dc6b9c0c870f371f8146de2d872a059a78918` |
| 9 | `theorem` | [exists_norm_eq_restrict_eq](../../../../../mathematics/Topology/MetricTopology/Tietze/Variantc8c5e45a3c330288073a700739616e879648011c493a0a595840d814380255d3.lean/declarations/exists-norm-eq-restrict-eq--b8186f2f3a12b578674e4ea8.md) | 106 | `result-track:b8186f2f3a12b578674e4ea8a6a18370ca7dc30d0a38ee86d25f65940339f6d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

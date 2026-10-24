# Verification target: GRWTSK.Topology.MetricTopology.Vitali.Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "626db0ad74cc2df6aaf4d62f4458f158d9eb01d5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `626db0ad74cc2df6aaf4d62f4458f158d9eb01d5`.

Source path: `GRWTSK/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_disjoint_subfamily_covering_enlargment](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean/declarations/exists-disjoint-subfamily-covering-enlargment--77716e3fc45db5625f56324c.md) | 67 | `result-track:77716e3fc45db5625f56324c07b21fa7f9b87be25f58d288964496ed87915f3a` |
| 2 | `theorem` | [exists_disjoint_subfamily_covering_enlargment_closedBall](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean/declarations/exists-disjoint-subfamily-covering-enlargment-closedball--d895310ac8eeeb23fc552d54.md) | 170 | `result-track:d895310ac8eeeb23fc552d5497d4434dc1737514e754624be9995aad7184b970` |
| 3 | `theorem` | [exists_disjoint_covering_ae](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean/declarations/exists-disjoint-covering-ae--7806b6169c0c9070b1d63a02.md) | 211 | `result-track:7806b6169c0c9070b1d63a02dbbc8e0898697689be38a4c91b7c7762305cbb8e` |
| 4 | `def` | [vitaliFamily](../../../../../mathematics/Topology/MetricTopology/Vitali/Variant38929262ad8fc02c473f860539ade62a24e436f7beea89a19a6eab873aef87b3.lean/declarations/vitalifamily--2ae3106ce0f8279f96d3561b.md) | 410 | `declaration-track:2ae3106ce0f8279f96d3561b9549d66465515a5948752a67c9ccdc967d90e928` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

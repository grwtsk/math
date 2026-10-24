# Verification target: GRWTSK.Topology.MetricTopology.Cauchy.Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "630fd8f92329367f44d81636c4447e94b6954e51",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `630fd8f92329367f44d81636c4447e94b6954e51`.

Source path: `GRWTSK/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Metric.complete_of_convergent_controlled_sequences](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/metric-complete-of-convergent-controlled-sequences--1ef73e2e4d4225eab8b66677.md) | 37 | `result-track:1ef73e2e4d4225eab8b66677d9c4830b1b66492a38b616d953b5bc93221fb7eb` |
| 2 | `theorem` | [Metric.complete_of_cauchySeq_tendsto](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/metric-complete-of-cauchyseq-tendsto--156f9af5ffd1ca119870da42.md) | 45 | `result-track:156f9af5ffd1ca119870da42ca3409004e59459cffcd2d90181b9dcde6ef556a` |
| 3 | `theorem` | [Metric.cauchySeq_iff](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/metric-cauchyseq-iff--002a6a03e896f9019b49c36a.md) | 55 | `result-track:002a6a03e896f9019b49c36aad2838281ce143280e8aa6d66c70a8c92e28c75a` |
| 4 | `theorem` | [Metric.cauchySeq_iff'](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/metric-cauchyseq-iff--7c04f98eb2048f3bd001dfa4.md) | 60 | `result-track:7c04f98eb2048f3bd001dfa47e87d3e097bed9712c5cca7184f69e234dd650dd` |
| 5 | `theorem` | [Metric.uniformCauchySeqOn_iff](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/metric-uniformcauchyseqon-iff--379e6ae84fbce5c8a4d6b2ab.md) | 67 | `result-track:379e6ae84fbce5c8a4d6b2ab7cb750048f452ab2e488ba873b9477f6c1598c7e` |
| 6 | `theorem` | [cauchySeq_of_le_tendsto_0'](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/cauchyseq-of-le-tendsto-0--0a7412a3e7f5232fe038a648.md) | 90 | `result-track:0a7412a3e7f5232fe038a648d7ce9e2eb6d9077a3ade82510c90934959c49a13` |
| 7 | `theorem` | [cauchySeq_of_le_tendsto_0](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/cauchyseq-of-le-tendsto-0--b74973c1c872c00867899be9.md) | 99 | `result-track:b74973c1c872c00867899be9414a416ba8ec15afe5d21960bf6ad5fb75da4b40` |
| 8 | `theorem` | [cauchySeq_bdd](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/cauchyseq-bdd--ddbe68b6abb25e8f7443f71a.md) | 105 | `result-track:ddbe68b6abb25e8f7443f71a3c6d4431af5e5d4a4ac40c01779d22abb7913147` |
| 9 | `theorem` | [cauchySeq_iff_le_tendsto_0](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/cauchyseq-iff-le-tendsto-0--9f871bd7ed0194cd7d606813.md) | 119 | `result-track:9f871bd7ed0194cd7d6068133479c4bfcba9bcb7243c27b0866f2d16dfe9c24d` |
| 10 | `lemma` | [Metric.exists_subseq_bounded_of_cauchySeq](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/declarations/metric-exists-subseq-bounded-of-cauchyseq--7458ea398f9d67a75f791956.md) | 149 | `result-track:7458ea398f9d67a75f7919569fc6bd1f443ba23f44658ed95cb412b63b531a4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

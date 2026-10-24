# Verification target: GRWTSK.Topology.MetricTopology.Cauchy.Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c0c2abf9819bcd378360c38aec25bb657c58965",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c0c2abf9819bcd378360c38aec25bb657c58965`.

Source path: `GRWTSK/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Metric.complete_of_convergent_controlled_sequences](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/metric-complete-of-convergent-controlled-sequences--aa2adc2bf7066f94817a3a7e.md) | 45 | `result-track:aa2adc2bf7066f94817a3a7e54bb1bfbfb366fee9a7812e5f663b8ebfda9fe46` |
| 2 | `theorem` | [Metric.complete_of_cauchySeq_tendsto](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/metric-complete-of-cauchyseq-tendsto--b7e0041f9b25c19dae9f107f.md) | 53 | `result-track:b7e0041f9b25c19dae9f107f8577fd6730389b52b99c15bc3d05ae43e6f3388e` |
| 3 | `theorem` | [Metric.cauchySeq_iff](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/metric-cauchyseq-iff--474dc5e083941503ab232c68.md) | 63 | `result-track:474dc5e083941503ab232c6852588b01c6abe5185e1591e55522416ff895f56a` |
| 4 | `theorem` | [Metric.cauchySeq_iff'](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/metric-cauchyseq-iff--7f8b1cd2a673d7ec284f0e8f.md) | 68 | `result-track:7f8b1cd2a673d7ec284f0e8f86fe1d58b5f7e932bce01d74ddf11f22bbe6dcc6` |
| 5 | `theorem` | [Metric.uniformCauchySeqOn_iff](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/metric-uniformcauchyseqon-iff--df305557c16f055d024a3452.md) | 75 | `result-track:df305557c16f055d024a345223e73cc89428cd02b35005fa9c9020be5676abf7` |
| 6 | `theorem` | [cauchySeq_of_le_tendsto_0'](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/cauchyseq-of-le-tendsto-0--01083f5f88583e4813a1da15.md) | 98 | `result-track:01083f5f88583e4813a1da1547c172d72283ac361bcff3196c9c6e7024bf8ec1` |
| 7 | `theorem` | [cauchySeq_of_le_tendsto_0](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/cauchyseq-of-le-tendsto-0--98cde0069aeb6a387e01de4e.md) | 107 | `result-track:98cde0069aeb6a387e01de4eb8eb9788834f99577d5235201b238a6f24d9e4ba` |
| 8 | `theorem` | [cauchySeq_bdd](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/cauchyseq-bdd--fb0780b57545ae95e23458dc.md) | 113 | `result-track:fb0780b57545ae95e23458dcbb092c867478e8410c8ab65834308391f9616803` |
| 9 | `theorem` | [cauchySeq_iff_le_tendsto_0](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/cauchyseq-iff-le-tendsto-0--0691c16f366fa15c110a5826.md) | 127 | `result-track:0691c16f366fa15c110a5826022afe329434d96cacd3159d5fa453d532f91922` |
| 10 | `lemma` | [Metric.exists_subseq_bounded_of_cauchySeq](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant355ac2098e011f5742834375e024cd5e4bfb5781445775728383e4c6a80f8de0.lean/declarations/metric-exists-subseq-bounded-of-cauchyseq--13d8121803bd3ab6cbbbb753.md) | 157 | `result-track:13d8121803bd3ab6cbbbb7535266047f9c5aa166c2d7b493d18e25dbdf814de9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineMetric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "159c1e60d3f543b774b6bce6ba688ad85ef00949",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineMetric.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HolomorphicLineMetric.lean/index.md) · [Full source](../../../../GeneralTopology/HolomorphicLineMetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `159c1e60d3f543b774b6bce6ba688ad85ef00949`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineMetric.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineMetric.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineGaugeTopology`](../../../../GeneralTopology/HolomorphicLineGaugeTopology.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Tactic.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedPair](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/weightedpair.md) | 23 | `declaration-track:6150501fe5aedb5c2422ff6d572c827e8a8d7735060d1e6f2a5ac45994d1bb7b` |
| 2 | `theorem` | [weightedPair_scale](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/weightedpair-scale.md) | 26 | `result-track:0d3cd1ed4d94287ce98693fffe449a396c827398d8c90c5fcaaf3266090ee0da` |
| 3 | `theorem` | [weightedPair_self](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/weightedpair-self.md) | 31 | `result-track:ba981a18a063a8783b74f0cd277a031b4dc232bd80fcc65f26cf214c13055bd2` |
| 4 | `theorem` | [normSq_continuous](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/normsq-continuous.md) | 35 | `result-track:3c6533091075e17026d8c456f760e04f6d07dab587a68acc622ba6b5d28dbfd9` |
| 5 | `structure` | [MetricWeights](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/metricweights.md) | 41 | `declaration-track:bd36393dafa9a1f03620c97e6c894e7119262925530057119f6d0a6ce80daefc` |
| 6 | `theorem` | [ext_weight](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/ext-weight.md) | 53 | `result-track:d5cd92147d56677720720f41c11764c48f0205b203c2814e90d8bcab4a947747` |
| 7 | `def` | [atPoint](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/atpoint.md) | 60 | `declaration-track:1a0384249d3d5be8c6b1c204d18b835fddbd2fafd9ddc77a42ffe047993dcbd3` |
| 8 | `theorem` | [atPoint_pos](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/atpoint-pos.md) | 63 | `result-track:4128887ac9bbb33d0c302e0dea0e05c628c48d5ef1d7c5be8cc8bdce89abc7b1` |
| 9 | `theorem` | [ext_atPoint](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/ext-atpoint.md) | 67 | `result-track:0b0cb33bd66f531628200e27ce3d73f7013efc4109dbf28c88a7d52515ba7506` |
| 10 | `def` | [pairing](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/pairing.md) | 84 | `declaration-track:202d45baafc8626480bcc5c237c97d7c8a6f3841e4fb686bb2fdb48ac5f8e2d4` |
| 11 | `def` | [squaredNorm](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/squarednorm.md) | 89 | `declaration-track:c5f1cf8050ed81db54371099da9266a0364c00fa1917e055247c9bd39d16dc16` |
| 12 | `def` | [fiberNorm](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/fibernorm.md) | 94 | `declaration-track:04efb6ef51e065caff6694747530762390ce67e5e9bc8019411538b6bb96373e` |
| 13 | `theorem` | [pairing_self](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/pairing-self.md) | 98 | `result-track:4ec1f66784a243f4228e26ec80083a3f983428d09bb55b47ad1b451658b5c9c5` |
| 14 | `theorem` | [pairing_conj_symm](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/pairing-conj-symm.md) | 103 | `result-track:6ed6b72545517e0b5b7211f66a7a495ebeab195bfc3b9b9ff97740724d46fc3e` |
| 15 | `theorem` | [pairing_add_right](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/pairing-add-right.md) | 110 | `result-track:b80fae78a8eaea015046da91618257ad6ddb6d5d0640fc36979f3df41b812087` |
| 16 | `theorem` | [pairing_smul_right](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/pairing-smul-right.md) | 117 | `result-track:f4470ad0f8cc3b228679d3566297930bb97963ed03a2537d3bd18abe444110dc` |
| 17 | `theorem` | [squaredNorm_nonneg](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/squarednorm-nonneg.md) | 124 | `result-track:6b6536200b7662dd37ded7ef05638947c1cd241b6b9a5d987db6cc3f7e497313` |
| 18 | `theorem` | [squaredNorm_eq_zero](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/squarednorm-eq-zero.md) | 129 | `result-track:5dc25a14db4f374de15be711bea668551945e25e207757f83e2a2c39db226334` |
| 19 | `theorem` | [pairing_in_chart](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/pairing-in-chart.md) | 136 | `result-track:1c121ef01ea85caffc9a066ac178150bd782e4527a00221d28af7b527f1daaaa` |
| 20 | `theorem` | [squaredNorm_in_chart](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/squarednorm-in-chart.md) | 148 | `result-track:614711a482f99420a9e9e4cb8c4657c4fb87b2f662abf10441b36616dc36c411` |
| 21 | `def` | [chartWeight](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/chartweight.md) | 160 | `declaration-track:7b7c26da5fd6fbf4bc0084f93036e9f4bca6f3ce734eab94a4d91d1093d9f028` |
| 22 | `theorem` | [chartWeight_apply](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/chartweight-apply.md) | 163 | `result-track:c6e37231b4521eb37e50cb779a9addc724573f5de9051593a9797eb9e414be3c` |
| 23 | `theorem` | [chartWeight_continuousOn](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/chartweight-continuouson.md) | 167 | `result-track:5906f37d15cd07b17582949236b8034b8e11a44118aa4bbd8c7da92757dd11d9` |
| 24 | `theorem` | [squaredNorm_total_continuous](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/squarednorm-total-continuous.md) | 181 | `result-track:98739527628c90eebfd75ffe8fc2442beecd787b282312357bcaa7048235dc05` |
| 25 | `def` | [identity](../../../../GeneralTopology/HolomorphicLineMetric.lean/declarations/identity.md) | 207 | `declaration-track:3ab3bb84df99f0f1c9dcc97c09d507c3fd965fcf54451eb4e0ef4e8df6a91ffb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=436ee64ef7105d77fa7b74b0227ffdea45081c69501da6af9a852339124ec69d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicLineMetric.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/HolomorphicLineMetric.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

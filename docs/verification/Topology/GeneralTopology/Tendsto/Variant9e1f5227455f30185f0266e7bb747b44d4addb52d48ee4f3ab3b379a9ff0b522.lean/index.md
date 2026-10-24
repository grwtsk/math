# Verification target: GRWTSK.Topology.GeneralTopology.Tendsto.Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15417f9e74d98eaced8a9a6abbafcd46158a9c8b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15417f9e74d98eaced8a9a6abbafcd46158a9c8b`.

Source path: `GRWTSK/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Disjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_tendsto_const_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/not-tendsto-const-attop--b140e23f1972b3a64849a855.md) | 32 | `result-track:b140e23f1972b3a64849a8554350e21d7d5d29541120a746b3e0338e4c94f957` |
| 2 | `theorem` | [not_tendsto_const_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/not-tendsto-const-atbot--5d31260fca737881fc72b0f7.md) | 36 | `result-track:5d31260fca737881fc72b0f7080a143441967da8e735288851d6b540414ade6f` |
| 3 | `theorem` | [Tendsto.eventually_gt_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-eventually-gt-attop--ac1d88ca8763fb08759b3d72.md) | 40 | `result-track:ac1d88ca8763fb08759b3d72ac000c7871f1b948ccbf0ec0cb9f07a5bf9b1412` |
| 4 | `theorem` | [Tendsto.eventually_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-eventually-ge-attop--2ab41b8f20c1fbbf0195320b.md) | 44 | `result-track:2ab41b8f20c1fbbf0195320b3b06f8a76f77a3fd209bb348cc8b5b9ec80e4f6f` |
| 5 | `theorem` | [Tendsto.eventually_ne_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-eventually-ne-attop--9f1683876bba3e80d0fe1a3c.md) | 48 | `result-track:9f1683876bba3e80d0fe1a3c1155d52298f6e9369a38f88536cfc8a34bf37187` |
| 6 | `theorem` | [Tendsto.eventually_ne_atTop'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-eventually-ne-attop--1c8112e312fb9aa3ff6b6128.md) | 52 | `result-track:1c8112e312fb9aa3ff6b612802c58ecf3b7fa7cc1c6983f65851bf37093417c1` |
| 7 | `theorem` | [Tendsto.eventually_lt_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-eventually-lt-atbot--15ba37eb938f90299994afa7.md) | 56 | `result-track:15ba37eb938f90299994afa768f8e6e8d355a3d13abd4c940e370becaed703d4` |
| 8 | `theorem` | [Tendsto.eventually_le_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-eventually-le-atbot--b9fa9dd7bcb63f357baf099d.md) | 60 | `result-track:b9fa9dd7bcb63f357baf099d2ca0552cccb1077a142c311d34cb388d81a9afcc` |
| 9 | `theorem` | [Tendsto.eventually_ne_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-eventually-ne-atbot--937ad204b86ada96504e2ebc.md) | 64 | `result-track:937ad204b86ada96504e2ebc0a5a10db94e06d5502acb56f326afbe0d3d07705` |
| 10 | `theorem` | [OrderTop.atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/ordertop-attop-eq--398cb13a3131c3e34876469b.md) | 68 | `result-track:398cb13a3131c3e34876469b0db7b5b83df0d765de8ab67bb7d56afec800692e` |
| 11 | `theorem` | [OrderBot.atBot_eq](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/orderbot-atbot-eq--2991e16089348830447e90cb.md) | 71 | `result-track:2991e16089348830447e90cb0bf4125daea86aae6330a706ead42bbe777dc57f` |
| 12 | `theorem` | [tendsto_atTop_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-pure--ddf478c8daeca21a44f36295.md) | 74 | `result-track:ddf478c8daeca21a44f3629556357b7407eccd282142f5682f418bd3103f1cf8` |
| 13 | `theorem` | [tendsto_atBot_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-pure--f1a4e9b274d3dcc2b6be9a14.md) | 78 | `result-track:f1a4e9b274d3dcc2b6be9a14d2ae1a3790dd13ceee94059ada0e836d98845278` |
| 14 | `theorem` | [tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop--1cb994be774e850e4ad08f20.md) | 82 | `result-track:1cb994be774e850e4ad08f20b7d3fa3b2a633eea28187a5850d5a3387f926d42` |
| 15 | `theorem` | [tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot--4830a075a961606cbe717468.md) | 86 | `result-track:4830a075a961606cbe71746879bc9933f53afb046564b126be7e1b548e0cedf5` |
| 16 | `theorem` | [tendsto_atTop_mono'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-mono--222ea541cc14bf915a2c041e.md) | 90 | `result-track:222ea541cc14bf915a2c041ed4693bff60bfe895dd19e6eb0ccc84c7c447182a` |
| 17 | `theorem` | [tendsto_atBot_mono'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-mono--538d60e88576a3b70c9e702b.md) | 94 | `result-track:538d60e88576a3b70c9e702b73024d55229771d2dedcc90426f00ba279922680` |
| 18 | `theorem` | [tendsto_atTop_mono](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-mono--d75b4dc20f0520f4b6633af5.md) | 98 | `result-track:d75b4dc20f0520f4b6633af58f83ab2ec8daf0929fd6d48d4b7be75806704787` |
| 19 | `theorem` | [tendsto_atBot_mono](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-mono--d0ccf5a31a94baec4dcab4be.md) | 102 | `result-track:d0ccf5a31a94baec4dcab4be3193758ed5920277c013442d3139b1d5e5004b9a` |
| 20 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NotTendstoConstAtTop.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.StrictMono.tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/root-grwtsk-topology-generaltopology-nottendstoconstattop-variantb1a38b5--0912a2989e49b35486e89191.md) | 114 | `result-track:0912a2989e49b35486e89191c2bb20e97382d459f30677f9c95355e944eb029a` |
| 21 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NotTendstoConstAtTop.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.Monotone.upperBounds_range_comp_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/root-grwtsk-topology-generaltopology-nottendstoconstattop-variantb1a38b5--62b5a712bdbfffe84fc62e28.md) | 125 | `result-track:62b5a712bdbfffe84fc62e2871b38d37ec436894040c5c03618df2763e882c8e` |
| 22 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NotTendstoConstAtTop.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.Monotone.lowerBounds_range_comp_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/root-grwtsk-topology-generaltopology-nottendstoconstattop-variantb1a38b5--110204d4a76589672441f3ef.md) | 136 | `result-track:110204d4a76589672441f3eff8c2a00d327ac4f187f30d1e7df5590308f13936` |
| 23 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NotTendstoConstAtTop.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.Antitone.lowerBounds_range_comp_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/root-grwtsk-topology-generaltopology-nottendstoconstattop-variantb1a38b5--ff50179a7e0a50f4c07dd29c.md) | 144 | `result-track:ff50179a7e0a50f4c07dd29cd1b68174970c7b2851a38c68f18b5d0a7e9d4aca` |
| 24 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NotTendstoConstAtTop.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.Antitone.upperBounds_range_comp_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/root-grwtsk-topology-generaltopology-nottendstoconstattop-variantb1a38b5--29e743d82df22b30e18bb23e.md) | 152 | `result-track:29e743d82df22b30e18bb23e5cdccd3080fc625de7f534f94065d31ec9a09d9f` |
| 25 | `theorem` | [tendsto_atTop_atTop_of_monotone](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-attop-of-monotone--017a3bb62a2441703d8d2a01.md) | 157 | `result-track:017a3bb62a2441703d8d2a017a68a63d660b8ce8a6d873fe4b20c85b015d5b7a` |
| 26 | `theorem` | [tendsto_atTop_atBot_of_antitone](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-atbot-of-antitone--e673e41dc5c293c6645038e9.md) | 164 | `result-track:e673e41dc5c293c6645038e9bb413394ab106907063e0fc1627e9adf0cb7254b` |
| 27 | `theorem` | [tendsto_atBot_atBot_of_monotone](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-atbot-of-monotone--42712e6bea700e2a08a4eb29.md) | 168 | `result-track:42712e6bea700e2a08a4eb29adb652cbe48cc9f239f7a4aa447cedbf1746ca72` |
| 28 | `theorem` | [tendsto_atBot_atTop_of_antitone](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-attop-of-antitone--0aedec4e83cf741bb237ccd8.md) | 173 | `result-track:0aedec4e83cf741bb237ccd85e6b741394e91e45b1c303a5fa9cba0d87026d05` |
| 29 | `theorem` | [comap_embedding_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/comap-embedding-attop--ac1a7231d557dd21f07b9fcb.md) | 181 | `result-track:ac1a7231d557dd21f07b9fcbf7fc85ec4bfefb44b1d43806ac2262e8d71b8574` |
| 30 | `theorem` | [comap_embedding_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/comap-embedding-atbot--e86dc373d30509176d645815.md) | 188 | `result-track:e86dc373d30509176d645815dd9cb028913da3f85d919fbb3e016926be09cf5d` |
| 31 | `theorem` | [tendsto_atTop_embedding](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-embedding--049ab1cacd74bfdc8f53c56d.md) | 192 | `result-track:049ab1cacd74bfdc8f53c56dd8955bf2a41ccb8c2f1232253a88a53fc2a6702f` |
| 32 | `theorem` | [tendsto_atBot_embedding](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-embedding--231ab1b6aad1d806967dc4f7.md) | 198 | `result-track:231ab1b6aad1d806967dc4f7ee8ce952a60badb2cd612172473ed2836dce0c07` |
| 33 | `theorem` | [tendsto_atTop_atTop_of_monotone'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-attop-of-monotone--3f2608a9c1aead9b3d5bbad4.md) | 205 | `result-track:3f2608a9c1aead9b3d5bbad429f17b075a97b69244d4e2043a7f78a8a62c0981` |
| 34 | `theorem` | [tendsto_atBot_atBot_of_monotone'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-atbot-of-monotone--4aabeeba6ee620b024cd1f80.md) | 214 | `result-track:4aabeeba6ee620b024cd1f80795812f60c21e5442c1d6e713400f5adf5530d59` |
| 35 | `theorem` | [tendsto_atTop_of_monotone_of_filter](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-of-monotone-of-filter--dafac4023ebe7dfdd9014d01.md) | 220 | `result-track:dafac4023ebe7dfdd9014d0147b5eef13627d1fbcbe50d4303a23a17848a0c35` |
| 36 | `theorem` | [tendsto_atBot_of_monotone_of_filter](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-of-monotone-of-filter--cd2867755089cd69175fe355.md) | 226 | `result-track:cd2867755089cd69175fe355b3bfd2e8d0d1e44f00f233b63fcd2d433f1f8b56` |
| 37 | `theorem` | [tendsto_atTop_of_monotone_of_subseq](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-attop-of-monotone-of-subseq--11334eee2b0b85d845735aa4.md) | 230 | `result-track:11334eee2b0b85d845735aa4be35cbe338f459e904696adc8ef4c43f10af7c9e` |
| 38 | `theorem` | [tendsto_atBot_of_monotone_of_subseq](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant9e1f5227455f30185f0266e7bb747b44d4addb52d48ee4f3ab3b379a9ff0b522.lean/declarations/tendsto-atbot-of-monotone-of-subseq--4c7be590caa51dabd3d7c6ca.md) | 235 | `result-track:4c7be590caa51dabd3d7c6caa2f5e164273b8671e129461d3c233e6e8d794c29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

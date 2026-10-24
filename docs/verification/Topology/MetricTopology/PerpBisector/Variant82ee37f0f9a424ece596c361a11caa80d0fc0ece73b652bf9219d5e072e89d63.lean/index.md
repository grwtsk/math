# Verification target: GRWTSK.Topology.MetricTopology.PerpBisector.Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf5f73730f98210e8602e3b59ba946444940eea",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf5f73730f98210e8602e3b59ba946444940eea`.

Source path: `GRWTSK/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/perpbisector--ab7e00cd603c97dcdbb65530.md) | 41 | `declaration-track:ab7e00cd603c97dcdbb65530b7906a168d86a5d3f3f01e77a2108a7576704043` |
| 2 | `theorem` | [mem_perpBisector_iff_inner_eq_zero'](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/mem-perpbisector-iff-inner-eq-zero--f1f4149bf6aa148f87e6a971.md) | 46 | `result-track:f1f4149bf6aa148f87e6a97114d8ae36f45d32a885dee803523d077a3fe968f4` |
| 3 | `theorem` | [mem_perpBisector_iff_inner_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/mem-perpbisector-iff-inner-eq-zero--e8291feef3c535e0dc2faa7d.md) | 52 | `result-track:e8291feef3c535e0dc2faa7d5e616af112b56548b8591be92f5a481c03e41435` |
| 4 | `theorem` | [mem_perpBisector_iff_inner_pointReflection_vsub_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/mem-perpbisector-iff-inner-pointreflection-vsub-eq-zero--83c59320fc3caae1eb998d9b.md) | 56 | `result-track:83c59320fc3caae1eb998d9b3ee53c9041ac5a46df0dbdf451f3ed288a9a25cf` |
| 5 | `theorem` | [mem_perpBisector_pointReflection_iff_inner_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/mem-perpbisector-pointreflection-iff-inner-eq-zero--f7c40893ebb99d044c4cbd2d.md) | 62 | `result-track:f7c40893ebb99d044c4cbd2d907e77b3a6249a85377e15d499cddafb90accac0` |
| 6 | `theorem` | [midpoint_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/midpoint-mem-perpbisector--979a5c2a1b947b45b1226376.md) | 68 | `result-track:979a5c2a1b947b45b12263761562f4c30f7a47d8648ccc8ffdfd3f49d4740f96` |
| 7 | `theorem` | [perpBisector_nonempty](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/perpbisector-nonempty--1ac16ddf85a3063cad3b5966.md) | 72 | `result-track:1ac16ddf85a3063cad3b5966e602c1b399bd3d031a63561d1f45042d8cbb544c` |
| 8 | `theorem` | [direction_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/direction-perpbisector--84e1ab2cd3cfb116d9ba487f.md) | 76 | `result-track:84e1ab2cd3cfb116d9ba487f79ba0f8e6799024198ca54f9833cde0448bf4587` |
| 9 | `theorem` | [mem_perpBisector_iff_inner_eq_inner](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/mem-perpbisector-iff-inner-eq-inner--daa851bd582cd43f8691e76c.md) | 82 | `result-track:daa851bd582cd43f8691e76c7ab15188fb347a9e2478471845487018a54c8075` |
| 10 | `theorem` | [mem_perpBisector_iff_inner_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/mem-perpbisector-iff-inner-eq--a9a05e5f582d029f5429dc98.md) | 88 | `result-track:a9a05e5f582d029f5429dc98dd1be9e2e287b427cacd32301d7ea50f7fbcced6` |
| 11 | `theorem` | [mem_perpBisector_iff_dist_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/mem-perpbisector-iff-dist-eq--c2c623da930146a7fd022899.md) | 94 | `result-track:c2c623da930146a7fd0228998c651abe9209d5908c77608d297731a5427f6c1e` |
| 12 | `theorem` | [mem_perpBisector_iff_dist_eq'](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/mem-perpbisector-iff-dist-eq--bccd9c726e884c4971fc68a3.md) | 99 | `result-track:bccd9c726e884c4971fc68a30ce4b7910cece7f945e6a906389ca1087e348d72` |
| 13 | `theorem` | [perpBisector_comm](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/perpbisector-comm--22c4555e70171c9030f41aab.md) | 102 | `result-track:22c4555e70171c9030f41aabd478cf8caa25c39f298bbf456f761897756503aa` |
| 14 | `theorem` | [right_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/right-mem-perpbisector--8b687c055f321ed3d37ee5a7.md) | 105 | `result-track:8b687c055f321ed3d37ee5a705cdcbc7f7ea1fea063ac79d9e966939124501d9` |
| 15 | `theorem` | [left_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/left-mem-perpbisector--2f4548e2ce9bb5569f97be9b.md) | 108 | `result-track:2f4548e2ce9bb5569f97be9b8184affffb5e8b4cbce64d61b15f4551a1950b2f` |
| 16 | `theorem` | [perpBisector_self](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/perpbisector-self--7e5b3db0131cf88ab6b7bb53.md) | 111 | `result-track:7e5b3db0131cf88ab6b7bb5360494ad77da170185b60e010ca6fd5928aff068a` |
| 17 | `theorem` | [perpBisector_eq_top](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/perpbisector-eq-top--b5c7e25c443a0a91fb267abe.md) | 114 | `result-track:b5c7e25c443a0a91fb267abe5350af5267fcf3eb0166b78c96bded5e89bfa0a6` |
| 18 | `theorem` | [perpBisector_ne_bot](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/perpbisector-ne-bot--1e0c7d0e1f3e8e3c04e8c534.md) | 119 | `result-track:1e0c7d0e1f3e8e3c04e8c5345e44bc8fb109f62eb92452944e076d6863ac2600` |
| 19 | `theorem` | [dist_lt_of_sbtw_of_inner_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/dist-lt-of-sbtw-of-inner-eq-zero--d1870d82008110b1f3e15f74.md) | 130 | `result-track:d1870d82008110b1f3e15f7474fa5b29b80da81735ae2c087d4e91d58f7f354e` |
| 20 | `theorem` | [dist_le_of_wbtw_of_inner_eq_zero](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/dist-le-of-wbtw-of-inner-eq-zero--78dcd95ffcee2d456fc65c38.md) | 146 | `result-track:78dcd95ffcee2d456fc65c387bcf36fa1d03ff1d81945f383524eea006dba0f9` |
| 21 | `theorem` | [dist_lt_of_sbtw_of_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/dist-lt-of-sbtw-of-mem-perpbisector--6b2294bbba1cbf56b0a8e09d.md) | 159 | `result-track:6b2294bbba1cbf56b0a8e09d597be25614c0b327d250424a7dc3e611c7ec6425` |
| 22 | `theorem` | [dist_le_of_wbtw_of_mem_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/dist-le-of-wbtw-of-mem-perpbisector--14843eccef34d91e50d6154c.md) | 170 | `result-track:14843eccef34d91e50d6154c81a5a323f4daff60b5148b1535ea40f260aae440` |
| 23 | `theorem` | [inner_vsub_vsub_of_dist_eq_of_dist_eq](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/inner-vsub-vsub-of-dist-eq-of-dist-eq--09b9e86d06eaf10d671ba339.md) | 185 | `result-track:09b9e86d06eaf10d671ba3393ee77f4bb9e87fc139489569842a4615be065abe` |
| 24 | `theorem` | [Isometry.preimage_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/isometry-preimage-perpbisector--f77897fc8785bb69abb71592.md) | 195 | `result-track:f77897fc8785bb69abb71592eed72f5af8a1e0162a28008e577aa4ff497f910e` |
| 25 | `theorem` | [Isometry.mapsTo_perpBisector](../../../../../mathematics/Topology/MetricTopology/PerpBisector/Variant82ee37f0f9a424ece596c361a11caa80d0fc0ece73b652bf9219d5e072e89d63.lean/declarations/isometry-mapsto-perpbisector--60bcee5d3e1ca57c5b40f539.md) | 199 | `result-track:60bcee5d3e1ca57c5b40f539f71b592689b8592c999ba5f04beb0c35edd4bf2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

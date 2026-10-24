# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorff.Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b16fb6ac9e2401d610a790878999f1676ea9061",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b16fb6ac9e2401d610a790878999f1676ea9061`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean.json)

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
| 1 | `def` | [IsometryRel](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/isometryrel--b66a88d1087bffca3929b7ad.md) | 71 | `declaration-track:b66a88d1087bffca3929b7addfe4074e8f8431dfac25302669345961e28ab47d` |
| 2 | `theorem` | [equivalence_isometryRel](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/equivalence-isometryrel--d0681afa236ed56c0a4c6251.md) | 76 | `result-track:d0681afa236ed56c0a4c6251085ad1877c54ab03c1720df7297c719a1b7c9993` |
| 3 | `instance` | [IsometryRel.setoid](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/isometryrel-setoid--c23ce720105f059ecb514cfd.md) | 82 | `declaration-track:c23ce720105f059ecb514cfd62d76ff1832dc72a3611f2e713269afff18969c8` |
| 4 | `def` | [GHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/ghspace--5e1772bbd33cb699ac018598.md) | 86 | `declaration-track:5e1772bbd33cb699ac0185981fe71ce2da7809c952392a1eb51af31034531d59` |
| 5 | `def` | [toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/toghspace--d45db615050bd8d66b0debd2.md) | 90 | `declaration-track:d45db615050bd8d66b0debd27cdb6069d9ce12470ebb0267b8519eeb44a2c92e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/instance--2b3b170d7404a623afc8823f.md) | 93 | `declaration-track:2b3b170d7404a623afc8823f491fd7cbe3aa0c11d12e04bd871bf45493440499` |
| 7 | `def` | [GHSpace.Rep](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/ghspace-rep--b2a57ebf19c9648c84560910.md) | 97 | `declaration-track:b2a57ebf19c9648c84560910d0e4d90761582b03f02d5301d090f89d9299eb54` |
| 8 | `theorem` | [eq_toGHSpace_iff](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/eq-toghspace-iff--4ba2a7fc43180ff86e454472.md) | 100 | `result-track:4ba2a7fc43180ff86e45447230fa939b511906df9b4f2a2123c02abc4b0cd405` |
| 9 | `theorem` | [eq_toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/eq-toghspace--82913dff9891806b06f32ac4.md) | 118 | `result-track:82913dff9891806b06f32ac49054714ffb7747a1eca4c174a990dea4d23386aa` |
| 10 | `instance` | [repGHSpaceMetricSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/repghspacemetricspace--bdbb5b2186c6806e7c80805b.md) | 123 | `declaration-track:bdbb5b2186c6806e7c80805b7b456e21590dcb54a446fdbacdfaf4a4e6eb1b96` |
| 11 | `instance` | [rep_gHSpace_compactSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/rep-ghspace-compactspace--1bbea2ef45efb13495f31963.md) | 126 | `declaration-track:1bbea2ef45efb13495f31963e41e9c7d648bc903b1cba606724f06fdae48b268` |
| 12 | `instance` | [rep_gHSpace_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/rep-ghspace-nonempty--33ec38e2d741f832cc73181d.md) | 129 | `declaration-track:33ec38e2d741f832cc73181d007407c46146c37cc53322e1fe86eea4754ca152` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/ghspace-toghspace-rep--d4a850c5ca01f1c04baf37e9.md) | 134 | `result-track:d4a850c5ca01f1c04baf37e911b2f7cf9fa23374f57345c7717a3c4591cd3169` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/toghspace-eq-toghspace-iff-isometryequiv--e20ebfbd21a015585c019105.md) | 142 | `result-track:e20ebfbd21a015585c0191058e07558ed04eafff40dae15b23b01f649c3a1b9b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/instance--eca971773dd92ed6069d496b.md) | 170 | `declaration-track:eca971773dd92ed6069d496ba21311e394f98dc33fb74c9eb7e6a41876cfdf1a` |
| 16 | `def` | [ghDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/ghdist--aacc72b44b6731eb7095957e.md) | 176 | `declaration-track:aacc72b44b6731eb7095957ecd6d741165b146e1b9a465beefc97c96a2a87ed5` |
| 17 | `theorem` | [dist_ghDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/dist-ghdist--0ee63330c2619ae37a2a1e24.md) | 180 | `result-track:0ee63330c2619ae37a2a1e242c81d8e504066b20faa3990898ba308fbc4a7779` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/ghdist-le-hausdorffdist--cae0d5fc88d8ab061fe41819.md) | 185 | `result-track:cae0d5fc88d8ab061fe418190e548a5a785d56b26d2e5bdeeeba84b7b1d855bf` |
| 19 | `theorem` | [hausdorffDist_optimal](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/hausdorffdist-optimal--e97645c158b398c46ed4588b.md) | 238 | `result-track:e97645c158b398c46ed4588b7e2e3ce2df099723df808c9198c5ec2e5cdd0831` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/ghdist-eq-hausdorffdist--1f0a22c2b5f511dba22cfdc4.md) | 377 | `result-track:1f0a22c2b5f511dba22cfdc43db004995d40b09bab03037ae1597a4e7aa7e4c3` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/instance--f15894eeebee11438cc09b6c.md) | 393 | `declaration-track:f15894eeebee11438cc09b6c410e9ede4572c64041e6f72a036b276751ac3351` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/topologicalspace-nonemptycompacts-toghspace--305b1407b957828afc965761.md) | 495 | `declaration-track:305b1407b957828afc96576199839f385ace35a0a7f73538d192d5484c90ab54` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/ghdist-le-nonemptycompacts-dist--06ddf304484d948219250175.md) | 505 | `result-track:06ddf304484d94821925017574e2e05c95b5937e4ae535c61b63134b3164736c` |
| 24 | `theorem` | [toGHSpace_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/toghspace-lipschitz--8e873fe11cecf7ac86afd260.md) | 515 | `result-track:8e873fe11cecf7ac86afd260a063d8451097a7e10ff4acdf00c41e5e632a5049` |
| 25 | `theorem` | [toGHSpace_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/toghspace-continuous--3de0b6e4adb66dc8ac28efe1.md) | 519 | `result-track:3de0b6e4adb66dc8ac28efe19aeb5a5978c7e9c3a3c92e8c40f2959256cb52d9` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/ghdist-le-of-approx-subsets--7ba37184ffecab508363363c.md) | 538 | `result-track:7ba37184ffecab508363363c56e81400503e7a6da8cfb4316f2f55cb255a4649` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/instance--e003fc7bb4d8c5b3a65d7cff.md) | 616 | `declaration-track:e003fc7bb4d8c5b3a65d7cff9dd4e58837c8f77b154f9e0e3b64148127212711` |
| 28 | `theorem` | [totallyBounded](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/totallybounded--02d88c3b4241f5ce731a8f6e.md) | 735 | `result-track:02d88c3b4241f5ce731a8f6ecc1357c1ba67a573a365c3f53387bef8d347991b` |
| 29 | `structure` | [AuxGluingStruct](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/auxgluingstruct--a2ddc79dc2992ed5edb487e7.md) | 911 | `declaration-track:a2ddc79dc2992ed5edb487e73a696dedd5219548294ef65b9102bdded99f839b` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/instance--0094967ff3031feff42ef9de.md) | 919 | `declaration-track:0094967ff3031feff42ef9dea5a1a3e441f9202db3e524d2547417a4df593da9` |
| 31 | `def` | [auxGluing](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/auxgluing--d67357521676f1436132f46b.md) | 928 | `declaration-track:d67357521676f1436132f46be24e759db4ad8a4e1f3c514df53dcbf327f71693` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/declarations/instance--4a89b2cbb35bc219bb775661.md) | 938 | `declaration-track:4a89b2cbb35bc219bb775661c50d4dd6b29764122ccb9ad72fc7fa084a19f616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

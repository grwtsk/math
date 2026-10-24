# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8d86e49fa9eb22eebfabd940a53e29ddb329509",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8d86e49fa9eb22eebfabd940a53e29ddb329509`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/instance--7202a41ca138d743be04d31c.md) | 30 | `declaration-track:7202a41ca138d743be04d31c851c51ff3b7dc01edfdd8f3b28551a8a7caaf1b3` |
| 2 | `theorem` | [isUniformEmbedding_iff'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/isuniformembedding-iff--80c08a537d2a7773cab8246a.md) | 35 | `result-track:80c08a537d2a7773cab8246a59070598652cfcdfb1cc8938aae178d92e31d8db` |
| 3 | `abbrev` | [_root_.MetricSpace.ofT0PseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/root-metricspace-oft0pseudometricspace--3e0269f60c6c743c470e790d.md) | 42 | `declaration-track:3e0269f60c6c743c470e790d2bc142695259b539ba27bc724997489a65ddbcd5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/instance--de81c8888fda9b06fb2653c2.md) | 49 | `declaration-track:de81c8888fda9b06fb2653c2277b4961a3113a90e8c1970e6792312df41f3b01` |
| 5 | `theorem` | [isClosed_of_pairwise_le_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/isclosed-of-pairwise-le-dist--f07061f293e54bd40117350c.md) | 52 | `result-track:f07061f293e54bd40117350cb8fd08ea61b89021d07d3b2f2a060c0c5e7444d8` |
| 6 | `theorem` | [isClosedEmbedding_of_pairwise_le_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/isclosedembedding-of-pairwise-le-dist--d95d1cfdd0ffcbcd682e7a4e.md) | 56 | `result-track:d95d1cfdd0ffcbcd682e7a4ee1776d5a6dcbb9015a94fcd3017e94c328994562` |
| 7 | `theorem` | [isUniformEmbedding_bot_of_pairwise_le_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/isuniformembedding-bot-of-pairwise-le-dist--12c559f54e2cd41228598b96.md) | 63 | `result-track:12c559f54e2cd41228598b96249b597a30afdb69868b1aaa758fabe44bbb8712` |
| 8 | `abbrev` | [EMetricSpace.toMetricSpaceOfDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/emetricspace-tometricspaceofdist--192d32289d1f26871e5f7313.md) | 75 | `declaration-track:192d32289d1f26871e5f73137221a5fbea205d972e4a38d4968ffc36b53e5e3f` |
| 9 | `def` | [EMetricSpace.toMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/emetricspace-tometricspace--3db8a084489287003e778be2.md) | 84 | `declaration-track:3db8a084489287003e778be23a44835cd8982fedca5c862f704abf8831e77c41` |
| 10 | `abbrev` | [MetricSpace.induced](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/metricspace-induced--13987cf300e0c426dd060987.md) | 90 | `declaration-track:13987cf300e0c426dd060987075de76246c1c7d0cda3de8eb2d0f5f315bfd42a` |
| 11 | `abbrev` | [IsUniformEmbedding.comapMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/isuniformembedding-comapmetricspace--1ef03f470e7b5012474a0fe1.md) | 97 | `declaration-track:1ef03f470e7b5012474a0fe1adeb094122aca4bf20839487233b22d2a520a2fc` |
| 12 | `abbrev` | [Topology.IsEmbedding.comapMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/topology-isembedding-comapmetricspace--7f9c8426ddb279eab0551211.md) | 103 | `declaration-track:7f9c8426ddb279eab05512111d631806a01cac8d670853043508fdb5866394e9` |
| 13 | `instance` | [Subtype.metricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/subtype-metricspace--16b1c298e27cbf26574c0e45.md) | 110 | `declaration-track:16b1c298e27cbf26574c0e458c219785e25a84962f8aef4b89cf1ae3c397f209` |
| 14 | `instance` | [MulOpposite.instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/mulopposite-instmetricspace--82db6f47f77397b4bf8154ec.md) | 115 | `declaration-track:82db6f47f77397b4bf8154ec04403241a2b50a07d5770d698b86c69b8452482e` |
| 15 | `instance` | [Real.metricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/real-metricspace--4467c92f5885f845a2f2cef7.md) | 121 | `declaration-track:4467c92f5885f845a2f2cef716655ea8517268f087ce0eb5641bbb3d7eef5946` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/instance--cca4d32771478789fb8ec224.md) | 127 | `declaration-track:cca4d32771478789fb8ec224ccbea9bf813a857cc19cef3924ec1d6fdd62bd23` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/instance--78b78b67efd19ba8dff18f89.md) | 132 | `declaration-track:78b78b67efd19ba8dff18f89706dedfce44cbe2c2ba252601761d0afb69d2086` |
| 18 | `instance` | [Prod.metricSpaceMax](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/prod-metricspacemax--b608fdb14eef9b01739f56ba.md) | 137 | `declaration-track:b608fdb14eef9b01739f56ba16b4edb29018efce07881ef9891f13d1050454b5` |
| 19 | `instance` | [metricSpacePi](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/metricspacepi--cd58c4b1a32dd3f570da1a34.md) | 149 | `declaration-track:cd58c4b1a32dd3f570da1a345e07b172656e172048efdef373c0eece28b02159` |
| 20 | `theorem` | [secondCountable_of_countable_discretization](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/secondcountable-of-countable-discretization--6d061107f50f95d0f6fd7d65.md) | 162 | `result-track:6d061107f50f95d0f6fd7d653765eb7920ea7fc82eb1e4896a9acfa571681564` |
| 21 | `instance` | [SeparationQuotient.instDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/separationquotient-instdist--40e3c9aec789f68db4d27c5f.md) | 181 | `declaration-track:40e3c9aec789f68db4d27c5f751231254c37a0e7ff84102586ec237c5320b2b1` |
| 22 | `theorem` | [SeparationQuotient.dist_mk](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/separationquotient-dist-mk--52b499c767f71e20bab774f3.md) | 186 | `result-track:52b499c767f71e20bab774f3aaa89ded0931c9915b0a341f1d3fcfabd02aef48` |
| 23 | `instance` | [SeparationQuotient.instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/declarations/separationquotient-instmetricspace--ac989010dbd42edb89f4b225.md) | 190 | `declaration-track:ac989010dbd42edb89f4b2254425bc5629a5a9c334c40ebecca709d15740074c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

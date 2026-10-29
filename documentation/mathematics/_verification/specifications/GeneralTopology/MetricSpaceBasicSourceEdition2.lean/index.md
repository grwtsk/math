# Verification target: Metric Space Basic Source Edition2

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

[Module and every result](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/instance.md) | 30 | `declaration-track:7202a41ca138d743be04d31c851c51ff3b7dc01edfdd8f3b28551a8a7caaf1b3` |
| 2 | `theorem` | [isUniformEmbedding_iff'](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/isuniformembedding-iff.md) | 35 | `result-track:80c08a537d2a7773cab8246a59070598652cfcdfb1cc8938aae178d92e31d8db` |
| 3 | `abbrev` | [_root_.MetricSpace.ofT0PseudoMetricSpace](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/root-metricspace-oft0pseudometricspace.md) | 42 | `declaration-track:3e0269f60c6c743c470e790d2bc142695259b539ba27bc724997489a65ddbcd5` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-4.md) | 49 | `declaration-track:de81c8888fda9b06fb2653c2277b4961a3113a90e8c1970e6792312df41f3b01` |
| 5 | `theorem` | [isClosed_of_pairwise_le_dist](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/isclosed-of-pairwise-le-dist.md) | 52 | `result-track:f07061f293e54bd40117350cb8fd08ea61b89021d07d3b2f2a060c0c5e7444d8` |
| 6 | `theorem` | [isClosedEmbedding_of_pairwise_le_dist](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/isclosedembedding-of-pairwise-le-dist.md) | 56 | `result-track:d95d1cfdd0ffcbcd682e7a4ee1776d5a6dcbb9015a94fcd3017e94c328994562` |
| 7 | `theorem` | [isUniformEmbedding_bot_of_pairwise_le_dist](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/isuniformembedding-bot-of-pairwise-le-dist.md) | 63 | `result-track:12c559f54e2cd41228598b96249b597a30afdb69868b1aaa758fabe44bbb8712` |
| 8 | `abbrev` | [EMetricSpace.toMetricSpaceOfDist](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/emetricspace-tometricspaceofdist.md) | 75 | `declaration-track:192d32289d1f26871e5f73137221a5fbea205d972e4a38d4968ffc36b53e5e3f` |
| 9 | `def` | [EMetricSpace.toMetricSpace](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/emetricspace-tometricspace.md) | 84 | `declaration-track:3db8a084489287003e778be23a44835cd8982fedca5c862f704abf8831e77c41` |
| 10 | `abbrev` | [MetricSpace.induced](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/metricspace-induced.md) | 90 | `declaration-track:13987cf300e0c426dd060987075de76246c1c7d0cda3de8eb2d0f5f315bfd42a` |
| 11 | `abbrev` | [IsUniformEmbedding.comapMetricSpace](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/isuniformembedding-comapmetricspace.md) | 97 | `declaration-track:1ef03f470e7b5012474a0fe1adeb094122aca4bf20839487233b22d2a520a2fc` |
| 12 | `abbrev` | [Topology.IsEmbedding.comapMetricSpace](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/topology-isembedding-comapmetricspace.md) | 103 | `declaration-track:7f9c8426ddb279eab05512111d631806a01cac8d670853043508fdb5866394e9` |
| 13 | `instance` | [Subtype.metricSpace](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/subtype-metricspace.md) | 110 | `declaration-track:16b1c298e27cbf26574c0e458c219785e25a84962f8aef4b89cf1ae3c397f209` |
| 14 | `instance` | [MulOpposite.instMetricSpace](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/mulopposite-instmetricspace.md) | 115 | `declaration-track:82db6f47f77397b4bf8154ec04403241a2b50a07d5770d698b86c69b8452482e` |
| 15 | `instance` | [Real.metricSpace](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/real-metricspace.md) | 121 | `declaration-track:4467c92f5885f845a2f2cef716655ea8517268f087ce0eb5641bbb3d7eef5946` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-3.md) | 127 | `declaration-track:cca4d32771478789fb8ec224ccbea9bf813a857cc19cef3924ec1d6fdd62bd23` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/instance-source-edition-2.md) | 132 | `declaration-track:78b78b67efd19ba8dff18f89706dedfce44cbe2c2ba252601761d0afb69d2086` |
| 18 | `instance` | [Prod.metricSpaceMax](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/prod-metricspacemax.md) | 137 | `declaration-track:b608fdb14eef9b01739f56ba16b4edb29018efce07881ef9891f13d1050454b5` |
| 19 | `instance` | [metricSpacePi](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/metricspacepi.md) | 149 | `declaration-track:cd58c4b1a32dd3f570da1a345e07b172656e172048efdef373c0eece28b02159` |
| 20 | `theorem` | [secondCountable_of_countable_discretization](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/secondcountable-of-countable-discretization.md) | 162 | `result-track:6d061107f50f95d0f6fd7d653765eb7920ea7fc82eb1e4896a9acfa571681564` |
| 21 | `instance` | [SeparationQuotient.instDist](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/separationquotient-instdist.md) | 181 | `declaration-track:40e3c9aec789f68db4d27c5f751231254c37a0e7ff84102586ec237c5320b2b1` |
| 22 | `theorem` | [SeparationQuotient.dist_mk](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/separationquotient-dist-mk.md) | 186 | `result-track:52b499c767f71e20bab774f3aaa89ded0931c9915b0a341f1d3fcfabd02aef48` |
| 23 | `instance` | [SeparationQuotient.instMetricSpace](../../../../GeneralTopology/MetricSpaceBasicSourceEdition2.lean/declarations/separationquotient-instmetricspace.md) | 190 | `declaration-track:ac989010dbd42edb89f4b2254425bc5629a5a9c334c40ebecca709d15740074c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc351e5b0a09d1dbbc5257d11ac9cf0df25785dcc7b132031b2b5f9d84a0da67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

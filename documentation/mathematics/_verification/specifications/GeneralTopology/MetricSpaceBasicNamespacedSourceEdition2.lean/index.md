# Verification target: Metric Space Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aab65cca7012010760e3a7a0c158e1d2796532ce",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aab65cca7012010760e3a7a0c158e1d2796532ce`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 38 | `declaration-track:5dd00f0f973ca8aeb942f710d4af6db7597d8bf4ea0c9949db0a6765095f16ed` |
| 2 | `theorem` | [isUniformEmbedding_iff'](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/isuniformembedding-iff.md) | 43 | `result-track:bc17c9235251adecf6ab661dfab446b823359deed6b11dbcb23e66fedc2f41f2` |
| 3 | `abbrev` | [Metric Space Basic Namespaced Source Edition2](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/oft0pseudometricspace.md) | 50 | `declaration-track:2fda35d62c215f559cbd21249e2c435c11d4bd28d5e7a940bb117fa1a0606967` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:2ca3b283165a7184198e14c7657503f8bd6bd02c692884313892ea434266a4ca` |
| 5 | `theorem` | [isClosed_of_pairwise_le_dist](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/isclosed-of-pairwise-le-dist.md) | 60 | `result-track:de8a9f52cc49a0ac7e9b5fbaa77f7ecded935d4cf1a2a2edf72907788edc11b3` |
| 6 | `theorem` | [isClosedEmbedding_of_pairwise_le_dist](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/isclosedembedding-of-pairwise-le-dist.md) | 64 | `result-track:3e9e912abd1b6382da1f8027f84183bb332e65ec8fd028974994633b639dc51c` |
| 7 | `theorem` | [isUniformEmbedding_bot_of_pairwise_le_dist](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/isuniformembedding-bot-of-pairwise-le-dist.md) | 71 | `result-track:0cb1ac3c8d82c44c04706cd112d5d8685bc7347ceeb516cfcecf804a48822a08` |
| 8 | `abbrev` | [EMetricSpace.toMetricSpaceOfDist](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/emetricspace-tometricspaceofdist.md) | 83 | `declaration-track:e4fe079b5d81a15b4cbb9b29d1e1477ddbf3efb5b4d6c52f7a63501f57353e2b` |
| 9 | `def` | [EMetricSpace.toMetricSpace](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/emetricspace-tometricspace.md) | 92 | `declaration-track:a3d6df8dee341cbf17e3abc3e55c1dba1d655664e7d95ee556a465a455a01fb2` |
| 10 | `abbrev` | [MetricSpace.induced](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/metricspace-induced.md) | 98 | `declaration-track:4ad29045e90faf8f4fb99ec06554eca543fb65c989ee2d4dabd85d278607dfa6` |
| 11 | `abbrev` | [IsUniformEmbedding.comapMetricSpace](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/isuniformembedding-comapmetricspace.md) | 105 | `declaration-track:7b06e214c6d59cb8db5b9159275c114b565828d57a59a64dd66d6ec171c3e5e6` |
| 12 | `abbrev` | [Topology.IsEmbedding.comapMetricSpace](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/topology-isembedding-comapmetricspace.md) | 111 | `declaration-track:bb2708795bbfec1bc61ac4db09abb4d5b86767cddee1ff67f908580d1559d362` |
| 13 | `instance` | [Subtype.metricSpace](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/subtype-metricspace.md) | 118 | `declaration-track:ae33b5cc661a1f8e5cc8c5c669f3dc5168a62fa0db7b58f16645f7d832a1c046` |
| 14 | `instance` | [MulOpposite.instMetricSpace](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/mulopposite-instmetricspace.md) | 123 | `declaration-track:a3a8f1ed8bd153a50082a83e257d2583e99e5611e04e6ff055187cfe6c5d2c7a` |
| 15 | `instance` | [Real.metricSpace](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/real-metricspace.md) | 129 | `declaration-track:20f758953f1432c0c4d6f9bb9a7ce5cffcc1a6ba729fe839242084f0784770fe` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 135 | `declaration-track:834999c1c3c5010328c9390a3fca75b767b22a56d00277edb0a50de3f6006b86` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/instance.md) | 140 | `declaration-track:27ecc9cec45007f2d00c54fb110ae5c8c6f6105cb432b379be65a365ac018c0a` |
| 18 | `instance` | [Prod.metricSpaceMax](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/prod-metricspacemax.md) | 145 | `declaration-track:24d0e08d63c48990dabe8220d9ab9ba2a86b66066ea92fbe9ec8b125131eb8bf` |
| 19 | `instance` | [metricSpacePi](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/metricspacepi.md) | 157 | `declaration-track:899b6b58f858ec91befb7b968a95e44eff21a50a03b996a97a07c7592500cab3` |
| 20 | `theorem` | [secondCountable_of_countable_discretization](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/secondcountable-of-countable-discretization.md) | 170 | `result-track:718c12896bcec2252ee04b71d0a5a61e944bc65ab5a09ac16d2e09c8a93971b3` |
| 21 | `instance` | [SeparationQuotient.instDist](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/separationquotient-instdist.md) | 189 | `declaration-track:a7041e5d94a59d862a6b6722067dd75dd734ddb351c33564bdf7ff91faf6a174` |
| 22 | `theorem` | [SeparationQuotient.dist_mk](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/separationquotient-dist-mk.md) | 194 | `result-track:0e15e260a5abd3ecde1feb5b50eb01633e1eabd519c3eeb92e7954b3afbb525c` |
| 23 | `instance` | [SeparationQuotient.instMetricSpace](../../../../GeneralTopology/MetricSpaceBasicNamespacedSourceEdition2.lean/declarations/separationquotient-instmetricspace.md) | 198 | `declaration-track:8d679ac14d86dc81feee10af35cbe5f0fe9056bce299f77e5ac1614c2a40c20b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58bd7aab33e772ab029e0102775174859ad147138e74c7a4b28bed71ee569417 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variante6b4015d6e38cefeacb85ddecfc0f7fdb0f47b2bbc78a746f097cba6e211c880.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

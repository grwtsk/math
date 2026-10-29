# Verification target: Linear Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7f22b3bff9dd55073aa98a82fbcec1f6937437f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7f22b3bff9dd55073aa98a82fbcec1f6937437f`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Linear Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/islineartopology.md) | 109 | `declaration-track:f5c99d15aa07ab5620a961c3f1cdf0b6ba7a7d464687a2e4a0b115d14fed5807` |
| 2 | `lemma` | [hasBasis_submodule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-submodule.md) | 114 | `result-track:6640871cff4b5e19e41d001f9774f3b1e5a37d1da0ada2262f6046c71f559eaa` |
| 3 | `lemma` | [hasBasis_open_submodule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-open-submodule.md) | 119 | `result-track:1b0785d2e18d55671eb69bdf50c133398f6c33297b4ae8e75301b4a776411dd2` |
| 4 | `lemma` | [mk_of_hasBasis'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/mk-of-hasbasis-source-edition-2.md) | 129 | `result-track:3f62aa28b45805366955df62a7bd1f1499edd0e2a28ba61c2b65019e38803037` |
| 5 | `lemma` | [mk_of_hasBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/mk-of-hasbasis.md) | 151 | `result-track:31d406e70bd6042762aa7a863bc92a45041b1ed0ceb2b717ed54adb75248fc61` |
| 6 | `theorem` | [Linear Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/islineartopology-iff-hasbasis-submodule.md) | 158 | `result-track:1dd3f14b74c3816f863fce4dc5563e665f942af7e57d2fb61cd2f48f17e91017` |
| 7 | `theorem` | [Linear Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/islineartopology-iff-hasbasis-open-submodule.md) | 163 | `result-track:bd67dbb4c680f7ddd16c293ce253e2e2c3c4ae94c296e6e5d37beb9aac0c7323` |
| 8 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/instance.md) | 169 | `declaration-track:134c6f5f19b1297116af8e4e1246b4b5b10da915b3690dc13036566731147f1a` |
| 9 | `lemma` | [hasBasis_subbimodule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-subbimodule.md) | 186 | `result-track:0e475150228ac1e22bffd937ce135f80cc24edac1f1f1e777efee044c5b136bb` |
| 10 | `lemma` | [hasBasis_open_subbimodule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-open-subbimodule.md) | 242 | `result-track:d9ca9f9622629ad9eab1dc7b626243dc3fd2733b1151083975a4dcff5b6e1530` |
| 11 | `theorem` | [tendsto_smul_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/tendsto-smul-zero.md) | 256 | `result-track:8c04c17bd93497baf2556a75d46fb95e18eb3d8ba1241457bb972071322df835` |
| 12 | `theorem` | [Linear Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/islineartopology-iff.md) | 267 | `result-track:bc0c1b3470ce140390ede155a47418df96f822de13620555a855d38265bdcd5c` |
| 13 | `theorem` | [hasBasis_ideal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-ideal.md) | 281 | `result-track:f6109708259b4ca5bb7c3f3788347f2ec601c58ee1f4aad6252e53e970a544e4` |
| 14 | `theorem` | [hasBasis_open_ideal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-open-ideal.md) | 285 | `result-track:0fbcb814ede6b8f78d5ba99b9e7886483572c4f78a1e0f09700af1ca713d50c2` |
| 15 | `theorem` | [Linear Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/islineartopology-iff-hasbasis-ideal.md) | 289 | `result-track:0f7fc7518b99974e1e49bbacdfce333736660ca08026483f49da30aa6f55159d` |
| 16 | `theorem` | [Linear Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/islineartopology-iff-hasbasis-open-ideal.md) | 294 | `result-track:2d500e9c39f5fd066e6878196f4a417d38497133debf3b1267efbd200a288ffd` |
| 17 | `theorem` | [hasBasis_right_ideal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-right-ideal.md) | 299 | `result-track:0f0bb9aa886345f7de522f9062b09904691651a270315391b531e7588de48c97` |
| 18 | `lemma` | [hasBasis_twoSidedIdeal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-twosidedideal.md) | 309 | `result-track:c73ea7e8f5b287258195ba7a2dafa706ad8b4aad88f3a5b28f3fd758240ab237` |
| 19 | `lemma` | [hasBasis_open_twoSidedIdeal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/hasbasis-open-twosidedideal.md) | 318 | `result-track:f6cdc9d917804580fe42f79c33be023104338190a736e6c3985e820d87bb9d1e` |
| 20 | `theorem` | [Linear Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/islineartopology-iff-hasbasis-twosidedideal.md) | 326 | `result-track:ba1b0f823b1d53e2d0650b763be4df8e8db6a538eedc2961a1a57715d1b73e5f` |
| 21 | `theorem` | [Linear Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/islineartopology-iff-hasbasis-open-twosidedideal.md) | 334 | `result-track:a02b4581f0bb72a2c76ea5095111f12aab083e959ac5941136fba6a4b983cb0a` |
| 22 | `theorem` | [tendsto_mul_zero_of_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/tendsto-mul-zero-of-left.md) | 341 | `result-track:fca4e064ffb35151d5785d6013f2cd4f7dd356909cb8d18a94cd18303f3ed02f` |
| 23 | `theorem` | [tendsto_mul_zero_of_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/tendsto-mul-zero-of-right.md) | 346 | `result-track:c2dd62b6732e5ded9cb5ba2a89d8c9c03dda5885b9b6b5f77332fa2a5360c995` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 358 | `declaration-track:2c21c8daf145545df0267108b7114cc160829e666805ee67b3a3d773048fac92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a642d6db7874628b72401623debca84d67a08059eb89f419dead6f751142b86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LinearTopology/Variant34f6c4fdfde2bd6e1eb59d9b3555f76438620cfeed86439937bff034d1e74f9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

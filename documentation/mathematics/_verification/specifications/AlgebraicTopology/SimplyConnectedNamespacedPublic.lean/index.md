# Verification target: Simply Connected Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf529573655ca9f189d9119c8546cc5b2cc96119",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf529573655ca9f189d9119c8546cc5b2cc96119`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SimplyConnectedSpace](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/simplyconnectedspace.md) | 48 | `declaration-track:8832e8a4605be163cc611108dd0df93cd517ef3821a7a279d13c6a24c42f42fc` |
| 2 | `theorem` | [simply_connected_iff_unique_homotopic](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/simply-connected-iff-unique-homotopic.md) | 51 | `result-track:a9ace8a307f1a20998c95dc5af60f0b9f0ba68d068fbd21b3c522879081ea809` |
| 3 | `theorem` | [ContinuousMap.HomotopyEquiv.simplyConnectedSpace](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/continuousmap-homotopyequiv-simplyconnectedspace.md) | 59 | `result-track:20c601a4b33adacc45f34e0156eb2dd158bc92c1252a2bae94c72293355eef38` |
| 4 | `theorem` | [ContinuousMap.HomotopyEquiv.simplyConnectedSpace_iff](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/continuousmap-homotopyequiv-simplyconnectedspace-iff.md) | 63 | `result-track:9dfe7874141d4046ccc23d2d6cef6e75301e78940968843524fa3e4c23a9558e` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/instance.md) | 71 | `declaration-track:3b990dcfa2b2e7f290f77e5d525b88dbcc36d993ee7a61a1c295d9d870f604d1` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 75 | `declaration-track:e3c0e72cb95e71e3639502e05b360194e4839b33e7ac235169c40f66734c601f` |
| 7 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:555c18f3dd48c99e1b2614a32f062a8c416b91345421793d09a95995563b361a` |
| 8 | `theorem` | [paths_homotopic](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/paths-homotopic.md) | 84 | `result-track:92890d7348e30ca4c909fb60dd57a18173b6976c32db687244c62c381a9cfe04` |
| 9 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 87 | `declaration-track:9a7bd10d163dde74485a0dc1b8aaad2b9eb2708ae32f5d00b68dc5ef8cbe7dc0` |
| 10 | `theorem` | [simply_connected_iff_paths_homotopic](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/simply-connected-iff-paths-homotopic.md) | 96 | `result-track:349580ddc27f77d084486127cd633ce63332e95269e3b58d45ba62651f7b379b` |
| 11 | `theorem` | [simply_connected_iff_paths_homotopic'](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/simply-connected-iff-paths-homotopic-source-edition-2.md) | 104 | `result-track:c888dfcb67bcd4016f9190616a24d4e160c2272914ba479c8f5a8111c8de1341` |
| 12 | `theorem` | [simply_connected_iff_loops_nullhomotopic](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/simply-connected-iff-loops-nullhomotopic.md) | 114 | `result-track:261270e879617e4a9fe6b73fc73dd7b06d7cec38cfdff84050d94e213cdfba04` |
| 13 | `def` | [IsSimplyConnected](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/issimplyconnected.md) | 142 | `declaration-track:694ebbfab12ced9cfc09dbd22938d005c011f760fc0e8d2d26d90355ae915ca9` |
| 14 | `theorem` | [IsSimplyConnected.simplyConnectedSpace](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/issimplyconnected-simplyconnectedspace.md) | 144 | `result-track:8501e46fe3c511fea398e3b55bb262fa1d59bfa6b33a9e567c2626618f1a760f` |
| 15 | `theorem` | [IsSimplyConnected.isPathConnected](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/issimplyconnected-ispathconnected.md) | 147 | `result-track:1d9101abc745f816663e901d407baa6b88b313e7c6b4bf69c5ddb2dbf60beb33` |
| 16 | `theorem` | [IsSimplyConnected.nonempty](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/issimplyconnected-nonempty.md) | 152 | `result-track:004777b976c8b0889af97992b70e90358e2f68148f6607da9d1752b4e409cdbc` |
| 17 | `theorem` | [Topology.IsEmbedding.isSimplyConnected_image](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/topology-isembedding-issimplyconnected-image.md) | 155 | `result-track:fa66b74c7bfd7ce677a01b70536b9c0a6c61848fff4cf7eecd475cb1065f501f` |
| 18 | `theorem` | [Homeomorph.isSimplyConnected_image](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/homeomorph-issimplyconnected-image.md) | 161 | `result-track:c55f5f2c1cb7bdcce419d9375b628dd89d525cf2bafa057108003574caa1f475` |
| 19 | `theorem` | [Homeomorph.isSimplyConnected_preimage](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/homeomorph-issimplyconnected-preimage.md) | 166 | `result-track:f9c09d9990b24ef74153915353a088526c1a859beb9af908895692961c1d0d4d` |
| 20 | `theorem` | [isSimplyConnected_iff_exists_homotopy_refl_forall_mem](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/issimplyconnected-iff-exists-homotopy-refl-forall-mem.md) | 172 | `result-track:ef11d698d4282a48fb985672acab961d76c39b229e46f40713fa6f813acc3e4f` |
| 21 | `theorem` | [isSimplyConnected_smul_set_iff](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/issimplyconnected-smul-set-iff-source-edition-2.md) | 196 | `result-track:bf33c2c278eea6e0dc91e97cf3a462275e98c510a18d59f3840db5b863436a81` |
| 22 | `theorem` | [isSimplyConnected_smul_set₀_iff](../../../../AlgebraicTopology/SimplyConnectedNamespacedPublic.lean/declarations/issimplyconnected-smul-set-iff.md) | 202 | `result-track:172907ad9b0a67ece147be3ba3800d05308f9f1e83b9479925273db4efc2dea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d4ea1435446078a6d35db191f737047b9b7248bbdca34a5baf1c023d700cb31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SimplyConnected/Variant3363fd3e06fe853d9df6b6df28d0c50ffbe4701ce944e7241ff1b8443ef76707.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

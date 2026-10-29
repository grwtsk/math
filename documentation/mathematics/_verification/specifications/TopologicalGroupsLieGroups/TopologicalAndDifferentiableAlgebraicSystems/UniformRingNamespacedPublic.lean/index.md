# Verification target: Uniform Ring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9d3ad869e19ba268a11dd8bca70361eaa4d45a4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9d3ad869e19ba268a11dd8bca70361eaa4d45a4`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean.json)

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
| 1 | `instance` | [one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/one.md) | 60 | `declaration-track:030989e50002bfedfafb20623fc4f947893a7af96a610ac1642fe14cfc3f4989` |
| 2 | `instance` | [mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/mul.md) | 63 | `declaration-track:46b4a01dba96efd263af8cb9caea69331acc42421e80bc26467788a60af2d79e` |
| 3 | `theorem` | [coe_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/coe-one.md) | 67 | `result-track:db3e603c0434621d3e50c3fae279b3a3c3278d111d742652a4f79d4cb6d77605` |
| 4 | `lemma` | [coe_eq_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/coe-eq-one-iff.md) | 70 | `result-track:d54cc3f938106630e1b0e6e69261a309643ff0dad2cbe772e7c4a767d6deaaac` |
| 5 | `theorem` | [coe_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/coe-mul.md) | 78 | `result-track:56df0f2b6d977167f5086d967c09417baf8238dd4f0277c2c14df3f58a733a6a` |
| 6 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/instance.md) | 84 | `declaration-track:4658aed6c2e042ee28ebf145d7f43ca3cfe30735d19490e90d67d9a623a42eae` |
| 7 | `instance` | [ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/ring.md) | 91 | `declaration-track:ab02acd0b8d8433a50643471f333e396c74c24a800e9b550cdc754754de00b30` |
| 8 | `def` | [coeRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/coeringhom.md) | 122 | `declaration-track:aa2c23a489e786e6a72d138ab273acecee20f494e008986ef5e8d21bea4a0ecf` |
| 9 | `theorem` | [continuous_coeRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/continuous-coeringhom.md) | 129 | `result-track:4dc12363b83fc2ab3f789246c27b22e0b3c4c75bde67b48b32e61842d8fd281b` |
| 10 | `def` | [extensionHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/extensionhom.md) | 136 | `declaration-track:9b9441a2928ef65d3f654c2a89de6a590ba3cc8779a4eacc129e98398d22b0a0` |
| 11 | `theorem` | [extensionHom_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/extensionhom-coe.md) | 152 | `result-track:fd4cd75d43b9992954c28632c7fd04bade8c96059c5c6e85fccbe53c31771fbd` |
| 12 | `instance` | [topologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/topologicalring.md) | 157 | `declaration-track:39e96c0fd22c471fe1febf5ba92df2d244f183afde71e6d9b39e057ef83fef2b` |
| 13 | `def` | [mapRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/mapringhom.md) | 162 | `declaration-track:60506732cfba37fa4d835887eb1fd39037357a4e9493b41957726accb3d77905` |
| 14 | `theorem` | [mapRingHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/mapringhom-apply.md) | 165 | `result-track:b39b1fdc739ed9ac507da382e68016d3fe5a1e178b8332458e4afe97f854f216` |
| 15 | `theorem` | [coe_mapRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/coe-mapringhom.md) | 166 | `result-track:d2486ebab2364c267567eda3a828d90b2d3f012a6f307e4ada164eef0c36fcab` |
| 16 | `theorem` | [mapRingHom_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/mapringhom-coe.md) | 170 | `result-track:f0723ef61c8b7e2348da4e4844d7dcfaa2e0ff00228e26de90394aae28c31331` |
| 17 | `theorem` | [mapRingHom_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/mapringhom-comp.md) | 173 | `result-track:91ca3494a5f689892382651fd31dcc3b03c60a583cdc91febc9846e95f235613` |
| 18 | `theorem` | [mapRingHom_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/mapringhom-id.md) | 181 | `result-track:7fef89893c955986d3385aef147c4ec4d9872fbb86463dde402992fefac8370f` |
| 19 | `def` | [mapRingEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/mapringequiv.md) | 190 | `declaration-track:2b25f3b6766260cc9e517d9d5b8c3af41d23766d05beb5dce27e99984ebd0a10` |
| 20 | `theorem` | [map_smul_eq_mul_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/map-smul-eq-mul-coe.md) | 201 | `result-track:e12e9b1100d3b31927d3ab545f36b4780930a1c3ab0237d420532717ffd44886` |
| 21 | `instance` | [algebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/algebra.md) | 208 | `declaration-track:3659325351f04513cedf5782c69e53f851eab002bf8d4d3d2b06147348a8ebf0` |
| 22 | `theorem` | [algebraMap_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/algebramap-def.md) | 216 | `result-track:63edeb77693b0243b31e979303aaa22edc37092339fea8ba36fa9848deb6d3d0` |
| 23 | `instance` | [commRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/commring.md) | 226 | `declaration-track:5c9ef75dbb85ef820b394b444a88f0259f6f53c1ed1fde9fbe3dcfd9ed0e8e55` |
| 24 | `instance` | [algebra'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/algebra-source-edition-2.md) | 234 | `declaration-track:46a98d5998a3fa1971e3742aa05f16d3ccd26b5c7a516d9934ed138d85a7be14` |
| 25 | `theorem` | [inseparableSetoid_ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/inseparablesetoid-ring.md) | 245 | `result-track:efe9a20ab45de33e30fe1234a30c7a9b462767e6dd0b2539b98943fb98103514` |
| 26 | `def` | [sepQuotHomeomorphRingQuot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/sepquothomeomorphringquot.md) | 253 | `declaration-track:6a23abcbcc91e317065e93ffd1371aeef87f1cc8a626ec7dad24b259841c51de` |
| 27 | `def` | [sepQuotRingEquivRingQuot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/sepquotringequivringquot.md) | 264 | `declaration-track:3d1426a147d574f0a1be7f94a3f8309c7582835d8298f94fb6bd1ebc362bdbe4` |
| 28 | `def` | [IsDenseInducing.extendRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/declarations/isdenseinducing-extendringhom.md) | 280 | `declaration-track:83c7d9bed96fed8a95fb912e0f0fc8df242db88e9a1e259534dfa03a4cf8f958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d73f77341bfc8c0c75bd69de46daa465eea11b68b6e79d2b6432c6fbec05329 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

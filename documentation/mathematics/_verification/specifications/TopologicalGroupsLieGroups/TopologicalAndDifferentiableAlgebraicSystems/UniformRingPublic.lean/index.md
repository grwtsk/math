# Verification target: Uniform Ring Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85a4dce54fc3cf516f21e1c1611ce4e29f0bdec2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85a4dce54fc3cf516f21e1c1611ce4e29f0bdec2`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean.json)

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
| 1 | `instance` | [one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/one.md) | 52 | `declaration-track:4d456c4e7c5dcac363b4925c416e0f735cb53cd0de6ebdb51d133d56c61c47f9` |
| 2 | `instance` | [mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/mul.md) | 55 | `declaration-track:054070f589ccc664d549b4bb09cedc6f1799904dfb08e12355cdec2edf0380c4` |
| 3 | `theorem` | [coe_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/coe-one.md) | 59 | `result-track:5b41e7b2cb5512cb3c315e56fe4622c415f959c0d3f12740d42dfd0b75659bf4` |
| 4 | `lemma` | [coe_eq_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/coe-eq-one-iff.md) | 62 | `result-track:7a3d026aa1ef2dfd490f904cb5b4fc1dfb24e8b93d059d55d7331af72a3cd8ec` |
| 5 | `theorem` | [coe_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/coe-mul.md) | 70 | `result-track:27d449aa5287f44a6ec7e7329124f361c1a5fe606349aeb97f751e7cbed84b57` |
| 6 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/instance.md) | 76 | `declaration-track:d116efa4a4cf5bd88cb213a94d00faaacec3b6f13a5f47923ce79b762107b037` |
| 7 | `instance` | [ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/ring.md) | 83 | `declaration-track:a3ce6ab1f0ac940e479abf129aee4ed184e841a21c4eb1774d04ab033e197339` |
| 8 | `def` | [coeRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/coeringhom.md) | 114 | `declaration-track:25f9b7a99581bd4a78068dd5a34085c92999e80d0583a9147b44aa0427e60a2c` |
| 9 | `theorem` | [continuous_coeRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/continuous-coeringhom.md) | 121 | `result-track:5e4ed21efde7ea87ba72db0c9d16c80fb51dc5f6d061055859c745d99615a6e8` |
| 10 | `def` | [extensionHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/extensionhom.md) | 128 | `declaration-track:30b550316861682d31475fce03db2d48154c3efca38b3834e20888fe691fb457` |
| 11 | `theorem` | [extensionHom_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/extensionhom-coe.md) | 144 | `result-track:2f7ecce84336bf2e8e97d4a46b128e761a8a303718fc9e05ae4e4e24d6e2232b` |
| 12 | `instance` | [topologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/topologicalring.md) | 149 | `declaration-track:7768c211c0ad1be1ec8684b03549efd2efb071f2cef2cb4bac687d2aeb311d1a` |
| 13 | `def` | [mapRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/mapringhom.md) | 154 | `declaration-track:f18f1390b17850e276034854f98df80a6dee4e43e94b382faca9262e538241c6` |
| 14 | `theorem` | [mapRingHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/mapringhom-apply.md) | 157 | `result-track:4f654b2ec32c204c11a54c2fe6d6ecdd7e008690b01e51745b42f8bb05d6ee56` |
| 15 | `theorem` | [coe_mapRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/coe-mapringhom.md) | 158 | `result-track:26c9d8de237efe34c01a39c4120c87108ff8c289bd59cf358ad5dc0d4b2b92f8` |
| 16 | `theorem` | [mapRingHom_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/mapringhom-coe.md) | 162 | `result-track:ee2180ea1a2bf7b42b1deb673f7318c6a700ad3a7bdff1de841bc43042665617` |
| 17 | `theorem` | [mapRingHom_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/mapringhom-comp.md) | 165 | `result-track:88757db64a479fcca2c63990e7d890a75cac9e12e49f34184fe6649a3775fcb6` |
| 18 | `theorem` | [mapRingHom_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/mapringhom-id.md) | 173 | `result-track:a5635520c42bb3c59aefda2ada5cecb7c3b3c8a673ea1db6e0523bc14b99687c` |
| 19 | `def` | [mapRingEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/mapringequiv.md) | 182 | `declaration-track:b424093f8d68211113d4916f8b84b2adb4fa8656ddd6767df7831dbf41ec6718` |
| 20 | `theorem` | [map_smul_eq_mul_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/map-smul-eq-mul-coe.md) | 193 | `result-track:81a344dea7da67f67b90c1dd656bc4137fc7c91ca3da631861bd904970b4b3bf` |
| 21 | `instance` | [algebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/algebra.md) | 200 | `declaration-track:007cfbe408d2c0081e50d44f89dbde46371d1b057cc4acf1c8f4174e80555b70` |
| 22 | `theorem` | [algebraMap_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/algebramap-def.md) | 208 | `result-track:52ede5c17524af2acfc28ecdfae45f33e033353131a259be4c0644dc83d95c18` |
| 23 | `instance` | [commRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/commring.md) | 218 | `declaration-track:9b4f26a67aefe713d3a04414daed25c9a719b30bf3d7d97e873c54a170672f11` |
| 24 | `instance` | [algebra'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/algebra-source-edition-2.md) | 226 | `declaration-track:fec9c67d9f3e093a3099d294e615d4b353bb6fe25e3c02ff71d11799dfa7b13e` |
| 25 | `theorem` | [inseparableSetoid_ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/inseparablesetoid-ring.md) | 237 | `result-track:233e14938a7866ee2fe05dabb5fd3337d5a0255ec885e894f3f50307e1dc1282` |
| 26 | `def` | [sepQuotHomeomorphRingQuot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/sepquothomeomorphringquot.md) | 245 | `declaration-track:f0a6c9ebac49d2141e008972a0b9f2583403bbff7a485994922dc7083cea58fe` |
| 27 | `def` | [sepQuotRingEquivRingQuot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/sepquotringequivringquot.md) | 256 | `declaration-track:5e8d6140271e11d23407f2071c200a4636365d32611daf9158b32715f6f7e33d` |
| 28 | `def` | [IsDenseInducing.extendRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingPublic.lean/declarations/isdenseinducing-extendringhom.md) | 272 | `declaration-track:817bc497c14b3f499dccfba6fd3c495786e17618e1fa3bb74524806b01beb1a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac19a1821ff5c53ab414495c84fbc49a2e761512df0c72066a99690798e288f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformRing/Variant84e240771b402469973a892556d1a4ea45938220b877e3dd061490e10c36be9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Sheaf Locally Ringed Space Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "097aa0ba2b2672384041a6fa65040b9d5c5c1524",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `097aa0ba2b2672384041a6fa65040b9d5c5c1524`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean.json)

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
| 1 | `theorem` | [smoothSheafCommRing.isUnit_stalk_iff](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/smoothsheafcommring-isunit-stalk-iff.md) | 59 | `result-track:3985bba2de7fa1668687b70421f8adf9a81f9e7ceb957b20ec0aec6b49698dfa` |
| 2 | `theorem` | [smoothSheafCommRing.nonunits_stalk](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/smoothsheafcommring-nonunits-stalk.md) | 118 | `result-track:738c10aac47bfedde4e0ab00090f33b7d4578801bcdec91a09b71d3f82ffa452` |
| 3 | `instance` | [smoothSheafCommRing.instLocalRing_stalk](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/smoothsheafcommring-instlocalring-stalk.md) | 126 | `declaration-track:c9f3ef0f927a497b9f765a3cae255cd52e55e970771ffcf67098163dce6e54c5` |
| 4 | `def` | [ChartedSpace.locallyRingedSpace](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/chartedspace-locallyringedspace.md) | 137 | `declaration-track:d38c69f290e6964aecb55d9a1e2360c1f34ff5dad2fef2d8179e8a1347a2fb7d` |
| 5 | `def` | [ChartedSpace.locallyRingedSpaceMapAux](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/chartedspace-locallyringedspacemapaux.md) | 151 | `declaration-track:64a764da67e90882e1ccf7c841cb89fb132ada117597c15836c33d00b5cdd16d` |
| 6 | `lemma` | [ChartedSpace.stalkMap_locallyRingedSpaceMapAux](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/chartedspace-stalkmap-locallyringedspacemapaux.md) | 158 | `result-track:9922c6a372ce36f1551a36133d94e1ee760cef53ef478a3394f52fab2f41eb28` |
| 7 | `def` | [ChartedSpace.locallyRingedSpaceMap](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/chartedspace-locallyringedspacemap.md) | 172 | `declaration-track:222285676e6847dfa38bbe3364fb154f202c300b4c793d63131e8b923134a5c6` |
| 8 | `lemma` | [ChartedSpace.stalkMap_locallyRingedSpaceMap_evalHom](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/chartedspace-stalkmap-locallyringedspacemap-evalhom.md) | 182 | `result-track:1ba1b959965ffe5c0a85072491e7831f9fa0f667371544fbea7d3cf7333b2d79` |
| 9 | `lemma` | [ChartedSpace.locallyRingedSpace_id](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/chartedspace-locallyringedspace-id.md) | 190 | `result-track:ec9a80a833eda62681d1a416a3123f7bb127a0ac8f2e58a3cc2b68e533bc44e6` |
| 10 | `lemma` | [ChartedSpace.locallyRingedSpace_comp](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/chartedspace-locallyringedspace-comp.md) | 194 | `result-track:e2bf98fdfcce673b82cb18d31fc6cfa93faf4eb3a1af4073efce87ef117d6da5` |
| 11 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/instance.md) | 202 | `declaration-track:f3fa3b7e4ff01bc17c78a881f9c56323c399f84d2431376b13d133a32d7ba7ba` |
| 12 | `def` | [ChartedSpace.restrictLocallyRingedSpaceIso](../../../../DifferentialGeometry/SheafLocallyRingedSpacePublic.lean/declarations/chartedspace-restrictlocallyringedspaceiso.md) | 228 | `declaration-track:1d753eebba59ca745d61a34037eb6b2657c7180c64a7f63c7a2b891c982f53cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c5acb098421fa3a10b8cfad540050246f20b1da5cf4873820844c2c33f0c48b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2d8794136ba1e8c3886fb60f9218aaedec97a9308d3de01fd9cc293843c996e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Sheaf Locally Ringed Space Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ada5df6ed732fe48a4068fd8d0e7e01bd3b74db4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ada5df6ed732fe48a4068fd8d0e7e01bd3b74db4`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean.json)

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
| 1 | `theorem` | [smoothSheafCommRing.isUnit_stalk_iff](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/smoothsheafcommring-isunit-stalk-iff.md) | 67 | `result-track:f206f527592dbfa75cd5d082d751d7f144108feca60248424b3badcb1233e130` |
| 2 | `theorem` | [smoothSheafCommRing.nonunits_stalk](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/smoothsheafcommring-nonunits-stalk.md) | 126 | `result-track:6e352e31b264f538679c0c58ec8639af662609954d94745952cee233492a9dec` |
| 3 | `instance` | [smoothSheafCommRing.instLocalRing_stalk](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/smoothsheafcommring-instlocalring-stalk.md) | 134 | `declaration-track:56d4d7b54f6b1f3559fe900b77fb6030f9198a01c8da8d9389ff2d6819a63afb` |
| 4 | `def` | [ChartedSpace.locallyRingedSpace](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/chartedspace-locallyringedspace.md) | 145 | `declaration-track:2774e33ca458a8a37ec27851e03c52293f7166fcb54ce5921cf733f4489dbbc0` |
| 5 | `def` | [ChartedSpace.locallyRingedSpaceMapAux](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/chartedspace-locallyringedspacemapaux.md) | 159 | `declaration-track:c94da9af3fc2db0bba9394f34f4ebd2016c7276c7bd4083d64692c3f238cfefb` |
| 6 | `lemma` | [ChartedSpace.stalkMap_locallyRingedSpaceMapAux](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/chartedspace-stalkmap-locallyringedspacemapaux.md) | 166 | `result-track:82e2dc12db26ce1dfd17cad92b13a91cc3d33353eedf88f2ca34c8ca6f5bd259` |
| 7 | `def` | [ChartedSpace.locallyRingedSpaceMap](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/chartedspace-locallyringedspacemap.md) | 180 | `declaration-track:5d34ec6c94f883847ba43bc0532082f34a455ecdb34ee18aeeb89e19a79a0985` |
| 8 | `lemma` | [ChartedSpace.stalkMap_locallyRingedSpaceMap_evalHom](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/chartedspace-stalkmap-locallyringedspacemap-evalhom.md) | 190 | `result-track:dece430284bd658a1ac9f060d6f4927a8f56d092a2ab0167d43c833d45e89362` |
| 9 | `lemma` | [ChartedSpace.locallyRingedSpace_id](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/chartedspace-locallyringedspace-id.md) | 198 | `result-track:b733e24d57763246dc668f4669cf6596839cbcc3961c6fb723a46ba10cdd777c` |
| 10 | `lemma` | [ChartedSpace.locallyRingedSpace_comp](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/chartedspace-locallyringedspace-comp.md) | 202 | `result-track:d13b1ec06dc5cd5211cd2f4b3387132c825aff30547292591e0bf73f58ea6e67` |
| 11 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/instance.md) | 210 | `declaration-track:d0ad87c7432951eb1cd5edd84fe548dac802fb9f1218d29d8278fa548acf177b` |
| 12 | `def` | [ChartedSpace.restrictLocallyRingedSpaceIso](../../../../DifferentialGeometry/SheafLocallyRingedSpaceNamespacedPublic.lean/declarations/chartedspace-restrictlocallyringedspaceiso.md) | 236 | `declaration-track:237f5608b9a710089a21315aee7457b99d4920423b22e4ee9bcfafc3f76cb8e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d36d96a03c9f9e6d07b2c5cc5b370e1cccfee7c42848eae5a49ce0b2178a0618 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantabb3858e1fe13432e71b091061f3374a1e9784f845705ca442d03502f2852a3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

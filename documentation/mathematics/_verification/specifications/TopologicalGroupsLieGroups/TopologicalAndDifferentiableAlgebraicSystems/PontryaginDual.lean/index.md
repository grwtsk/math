# Verification target: Pontryagin Dual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d1bcd29b672d04af55b14a4b1d3ec0b6f6e5f3c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d1bcd29b672d04af55b14a4b1d3ec0b6f6e5f3c`.

Source path: `GRWTSK/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.CompactOpen` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PontryaginDual](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/pontryagindual.md) | 30 | `declaration-track:2f1478041be7501e206f0d9ceca842b033551f503dbeb303d0e9743f2afe748c` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instance-source-edition-8.md) | 36 | `declaration-track:e1f256df6441d7b3b555b585fd5ad6871fe14b054fc492940522f12a019039f1` |
| 3 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instance-source-edition-2.md) | 39 | `declaration-track:4ee8da56bdda656951f9448a18643aa57bdf428202e5a37498965525c7c5135d` |
| 4 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instance-source-edition-7.md) | 42 | `declaration-track:ddbb3ecac98e12c71dd30efc4e2e80c7456986c8aceb564412d0b2cf8f3f37ed` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instance-source-edition-3.md) | 45 | `declaration-track:4f3778b424dcbbaf8316794d6c37922b4f6efcd73f50d133b9490985fef9d6a8` |
| 6 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:9a8604aaa952771c199c8955db44329430a3fbbd44a121dc982720929dee42f0` |
| 7 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instance-source-edition-6.md) | 51 | `declaration-track:db8e91ac51662845866b5258e9596239915e50f4d06d50c6f9168105f54b40d5` |
| 8 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instance.md) | 84 | `declaration-track:2db45e65d6eba46d8e2af1c11b07bd738f6916a5402133d4e6006105ae745de4` |
| 9 | `instance` | [instContinuousMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instcontinuousmapclass.md) | 87 | `declaration-track:af14ea8e90ccb4a6485bc3df6107fad949d2ddd197dee18165a8bbf975c1936e` |
| 10 | `instance` | [instMonoidHomClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instmonoidhomclass.md) | 90 | `declaration-track:85436d8d56ee1df9ee3e7bd208ac1003de52f961faa627221d6d7b67cd533f30` |
| 11 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/instance-source-edition-5.md) | 94 | `declaration-track:c91d109fa646162ea2cf425a764a7b5ea42afae2761bfbc315e1f960e0d00fad` |
| 12 | `def` | [map](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/map.md) | 98 | `declaration-track:95673e8ef73b27a18384e936ad3bc7e323eb9a6f814ad839bed5f4f1fab360b6` |
| 13 | `theorem` | [map_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/map-apply.md) | 103 | `result-track:420f7b6d632eef258de6b9d939eb1660fc627934c70c4d1d9f3b682948f35859` |
| 14 | `theorem` | [map_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/map-one.md) | 108 | `result-track:5de61a38d7ace38a7c49b6a8899c3112602761efcfb4c92de00f6f6bda36fc61` |
| 15 | `theorem` | [map_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/map-comp.md) | 112 | `result-track:a22fafa39f1aad00ee83d3e7dfd61621940280ade05b0cc45ee0ae3417f591c9` |
| 16 | `theorem` | [map_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/map-mul.md) | 117 | `result-track:0ff764da08176462787a10c308db0c7ecbc4e2f41e1521751a1c401e2f508c0e` |
| 17 | `def` | [mapHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/PontryaginDual.lean/declarations/maphom.md) | 123 | `declaration-track:7ceef657b14efbf656c0391dd57aceac77f504c344003a7c0ea748c1d72cb9de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=987de4e89edd016da83cec7f1f1a6f0a38286b55f03470bcd455af085e036306 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PontryaginDual/Variant8db046461cc98351a7edb3ebf46bb0e1fa30fab52bcb1f16fb6c3be22023424d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

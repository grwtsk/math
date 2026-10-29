# Verification target: Crystalline Poincare Fortification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91a5dc7c4be4b60907212900038f436e309864eb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91a5dc7c4be4b60907212900038f436e309864eb`.

Source path: `GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.PivotAtlas` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.FixedPointCompatibility` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CrystallineHomotopyCarrier](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/crystallinehomotopycarrier.md) | 25 | `declaration-track:c76f141c6d78f2c0f2024fded5754aefbafcac079d02b79881f681bab96cb77d` |
| 2 | `theorem` | [crystalline_carrier_dimension_three_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/crystalline-carrier-dimension-three-if-supplied.md) | 36 | `result-track:bfc9fb2ef92d363649ba5c748b883ada0f9501ce7b9da9b4872598d90b00f801` |
| 3 | `theorem` | [crystalline_carrier_simply_connected_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/crystalline-carrier-simply-connected-if-supplied.md) | 41 | `result-track:7e223623c0193535d8464647ea4e351f7289b5a26cf4454c3be813eb561f6803` |
| 4 | `structure` | [CrystallinePoincareRigidityContract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/crystallinepoincarerigiditycontract.md) | 52 | `declaration-track:2278bfd20a26f28df61582de332e7b6e87051119cf556e641da77ec54db32f98` |
| 5 | `theorem` | [crystalline_poincare_rigidity_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/crystalline-poincare-rigidity-if-supplied.md) | 59 | `result-track:3ce6cf9eba21a7f963e06939ebbcf4827d2dd35e028034d377af9cc04c01dbcc` |
| 6 | `structure` | [PerelmanTransferContract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/perelmantransfercontract.md) | 71 | `declaration-track:e5acabd3e97a0160cfdc75d3019cff2b9d60f2e2d2d9bf2eb7d2911d8d4e455b` |
| 7 | `theorem` | [perelman_transfer_ricci_flow_like_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/perelman-transfer-ricci-flow-like-if-supplied.md) | 85 | `result-track:116353c7121923be0347ff57b977a42b88e11727170ec9d23af789da36811643` |
| 8 | `structure` | [CrystallinePoincareFortificationContract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/crystallinepoincarefortificationcontract.md) | 96 | `declaration-track:1e3b3ba872d3bd3a777b3d91a6a4a92fea2f9b5284e43858ad182332955a1f42` |
| 9 | `theorem` | [atlas_quasi_iso_topology_descent_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/atlas-quasi-iso-topology-descent-if-supplied.md) | 112 | `result-track:69e1336b7decc2e68f291c2ee45e53892fe6f5980beca32eaddf3cd854fd955c` |
| 10 | `theorem` | [poincare_fortification_prevents_topological_escape_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/poincare-fortification-prevents-topological-escape-if-supplied.md) | 117 | `result-track:60c23246ae3965d97c3845472c41b9599d6f3ff46bba71ddfe87ae089916ffcd` |
| 11 | `theorem` | [poincare_fortification_supports_fixed_point_compatibility_if_supplied](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CrystallinePoincareFortification.lean/declarations/poincare-fortification-supports-fixed-point-compatibility-if-supplied.md) | 122 | `result-track:9d1015a272e30dabb29ddeb34ab968d1cffd73a97d45838a5d694b1b2963623a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e1f7815f1f7ddc901a8c30c20a346fdda3cc78a83227cd47872d07bd9a46f6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

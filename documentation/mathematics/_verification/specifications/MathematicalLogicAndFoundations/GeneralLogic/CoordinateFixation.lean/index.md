# Verification target: Coordinate Fixation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba4ee03723f89a0d653433a39414d5d3e85a8199",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba4ee03723f89a0d653433a39414d5d3e85a8199`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledPlane.Foundations` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PullbackConeLike](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/pullbackconelike.md) | 10 | `declaration-track:396b82c7aa29089ec6e15551c23e1ae28372ee02fa4a8f542d70b9c7221d1f4f` |
| 2 | `def` | [mapPullbackConeLike](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/mappullbackconelike.md) | 23 | `declaration-track:400d37f88138e8831dd2fe182d4085e3a7c8c666f4cf4e78d3b341e9a1b3f551` |
| 3 | `structure` | [PullbackSpecification](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/pullbackspecification.md) | 40 | `declaration-track:25b1458a9b71b36450bbf7cad3cd135242cbcbdc205ce8d608c1ae3d627bd27a` |
| 4 | `def` | [PreservesDesignatedPullbackShapes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/preservesdesignatedpullbackshapes.md) | 45 | `declaration-track:fe6b4650738d97a708200f60847c270306238cdd635962c5af00050b7005318f` |
| 5 | `structure` | [CoordinateFixationLayer](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/coordinatefixationlayer.md) | 55 | `declaration-track:f69b83744f6a6a3c2079b93df1c8325d61640d595af21602afee0022a562a7bd` |
| 6 | `structure` | [CoordinateFixationSpecification](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/coordinatefixationspecification.md) | 62 | `declaration-track:739bc9d49f2a1004806f8be2aa25f8b0394d9765d92771d6e6de47edbbf27659` |
| 7 | `def` | [IsClosedCoordinateFixation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/isclosedcoordinatefixation.md) | 69 | `declaration-track:3f1398641c3b9b7ca6c72d66b94ee7c37bfbe3e9050d03a039ff7df9beaeca57` |
| 8 | `structure` | [CoordinatePreservationSpecification](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/coordinatepreservationspecification.md) | 82 | `declaration-track:a2de3ac65da22c2faf9fbee3f7fbb575867184c774850eef943759e4440292a7` |
| 9 | `def` | [DesignatedConeAndBaseChangeCompatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/designatedconeandbasechangecompatible.md) | 95 | `declaration-track:fce32493d6c4068f1f2887770e09a4445aa0128ffea8188a0fbd3ac1b2ba550f` |
| 10 | `def` | [DesignatedOperationCompatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CoordinateFixation.lean/declarations/designatedoperationcompatible.md) | 104 | `declaration-track:683aa1e6349067d2a3ecddfe63c16653ef3d8fe75634d9249de15ac825548fcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=386866bcc22addd47899d4884a49e3b9c41a6f8d285efeea3cdc35d206fdf5be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CoordinateFixation/Variant0838cbc8a425f95be23e0d2b7aee76749682d19489f23c2f5278426d3128190d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

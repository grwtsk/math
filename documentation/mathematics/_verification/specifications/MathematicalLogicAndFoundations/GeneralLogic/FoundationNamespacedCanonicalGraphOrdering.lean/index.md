# Verification target: Foundation Namespaced Canonical Graph Ordering

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b825b76e13bb8a2bae60dc0cf8e4ae46b3d6c58",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variantd11f1e05c641b829d484bfcc130e80b28e6892e136a62c6b63dac1c660e58b8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b825b76e13bb8a2bae60dc0cf8e4ae46b3d6c58`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variantd11f1e05c641b829d484bfcc130e80b28e6892e136a62c6b63dac1c660e58b8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variantd11f1e05c641b829d484bfcc130e80b28e6892e136a62c6b63dac1c660e58b8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.ModeImplementation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.CoreTheorems` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CanonicalGraphOrdering](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/canonicalgraphordering.md) | 25 | `declaration-track:cbdca8e31f6963a336876e3b5373c6be310c3f6534fbf5fa8b2fa9a95e34878e` |
| 2 | `def` | [CompleteNeighborInterfaceAvailable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/completeneighborinterfaceavailable.md) | 30 | `declaration-track:c02da483e51649a1acfc49fe81ed12b75496b1a35340c8e720042189976b92a4` |
| 3 | `def` | [ObjectiveModeCompatibilitySound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/objectivemodecompatibilitysound.md) | 36 | `declaration-track:401c2084d218bcf2a9beec432be3addafef98997b6a042d0a8d44cee67b991e1` |
| 4 | `def` | [FuelBoundedMachineTotal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/fuelboundedmachinetotal.md) | 40 | `declaration-track:bed96079d2724469a7358580061c2ec8e68c64f002d73737f5c4ac27f75ca97b` |
| 5 | `def` | [ResourceExhaustionVisible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/resourceexhaustionvisible.md) | 48 | `declaration-track:c402fab266fa1ac994f6799e18ed5488021ed52ef2cc065c0dd4b4df5c560730` |
| 6 | `def` | [CheckpointRoundtripSound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/checkpointroundtripsound.md) | 53 | `declaration-track:eb3e6f737eec23a27593c115a683d6d1bdf76bcf1cdae5ac9d434b5c09d7a214` |
| 7 | `def` | [AccessAuthoritySeparated](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/accessauthorityseparated.md) | 63 | `declaration-track:b236ab157f26d70829b2fd909d03e6ae8310553ea43af57e28d96f7847ede2b4` |
| 8 | `def` | [CertifiedGraphAccessFoundation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/certifiedgraphaccessfoundation.md) | 72 | `declaration-track:782caa9cd44840d4dd240af06d1693bc66aac2ebb12a23455e431406a4b8c078` |
| 9 | `theorem` | [graphAccessFoundation_certified](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/graphaccessfoundation-certified.md) | 84 | `result-track:c592859fbddc9025e68bac5dd77bc302f770d3f1ba1d710f9d59b20a20ad5ce4` |
| 10 | `theorem` | [graphAccessFoundation_canonical](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FoundationNamespacedCanonicalGraphOrdering.lean/declarations/graphaccessfoundation-canonical.md) | 109 | `result-track:a08b1d51b9e3592bce3ce00e164ef2a2979fb4a7032ea40b59e1dc804263bbea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acc15ceb1691e7000624753bad9975faadefd80eb2900767cc589e458727ca79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variantd11f1e05c641b829d484bfcc130e80b28e6892e136a62c6b63dac1c660e58b8c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Foundation/Variantd11f1e05c641b829d484bfcc130e80b28e6892e136a62c6b63dac1c660e58b8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

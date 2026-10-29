# Verification target: Name Map Attribute

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3604117ddc3e69ad6ec6d8bd7b4f26e8ca0756",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3604117ddc3e69ad6ec6d8bd7b4f26e8ca0756`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Attributes` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NameMapExtension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/declarations/namemapextension.md) | 11 | `declaration-track:506d0e124d20eefc42f83b50cda64fbf6fb8659d8c693fd34b6054246cfb3ad6` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/declarations/instance.md) | 13 | `declaration-track:bdf774f0fffac5f835e0eeef5f8bab70d276003043fb196b2093cb79148feb7e` |
| 3 | `def` | [NameMapExtension.find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/declarations/namemapextension-find.md) | 17 | `declaration-track:8913be011f955983cf7c9906cd8ac53e0b0d81e6d4feb96f4cce1f339bf7d482` |
| 4 | `def` | [NameMapExtension.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/declarations/namemapextension-add.md) | 21 | `declaration-track:248b8ea85f2e4f671386bb8393585d3009e4380de019e620f8f04c67bd213b9b` |
| 5 | `def` | [registerNameMapExtension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/declarations/registernamemapextension.md) | 29 | `declaration-track:38ab401a69704a9981c059a6ad01cd16ed931c0a95209e3e03471729c6a72e61` |
| 6 | `structure` | [NameMapAttributeImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/declarations/namemapattributeimpl.md) | 41 | `declaration-track:6b92d1a1c834a5e0fe270431f9848acd98a5e5d6fb20f27a205ee9e46d5f5422` |
| 7 | `def` | [registerNameMapAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameMapAttribute.lean/declarations/registernamemapattribute.md) | 55 | `declaration-track:6b1452a60a9d45bf109e94badc38b3fb83f96ab205a2620b56c14ccfcc68adb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93d389b4fc7c610cd32529705a510ae462df742f541a5720c157338fc1e284dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variant96528da8c2d72c1ed733e3b1b19cf5cf84fb89bac24383e0aa3c59ef12b80f5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

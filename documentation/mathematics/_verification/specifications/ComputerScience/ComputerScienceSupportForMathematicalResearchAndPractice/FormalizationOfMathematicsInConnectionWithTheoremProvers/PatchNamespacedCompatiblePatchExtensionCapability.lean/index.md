# Verification target: Patch Namespaced Compatible Patch Extension Capability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45eebd2cc5639a6524dfdee6ed6e2b3903bd0afc",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45eebd2cc5639a6524dfdee6ed6e2b3903bd0afc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Boundary` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Fabric.Reaction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalPatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/localpatch.md) | 30 | `declaration-track:0d90a95316f502f3247af0ae0c8a9ef958bf797842d674ebb57c1e9486820efd` |
| 2 | `def` | [BoundaryCompatible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/boundarycompatible.md) | 43 | `declaration-track:70d75df8bd3fa2953397f420261a9d59cb6e6720e815bbbfa34113d8044507fb` |
| 3 | `def` | [BoundaryDefect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/boundarydefect.md) | 53 | `declaration-track:beec514a11610b59c4256cd0a566c4a9d5dadc692cdfb3a0580a8da061346418` |
| 4 | `structure` | [BoundaryMismatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/boundarymismatch.md) | 65 | `declaration-track:f0708f63639082da9a48168a485041ee5b3fa6bb82b9e693c69cee9ad32a3c91` |
| 5 | `structure` | [Extension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/extension.md) | 92 | `declaration-track:3d2351e7f660a389967cb3e58893a41cd14a24778d4b0efe9d4cf48c5c6fe8f5` |
| 6 | `def` | [ExtendsTo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/extendsto.md) | 112 | `declaration-track:ffcedd9398fbe55e896c4a014bb967ea009be2435853c56ee6f2be11adcd60c7` |
| 7 | `structure` | [Subfabric](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/subfabric.md) | 122 | `declaration-track:68e4bbfb9cbb9754f2c2e182cd04329b3244348c989ae73a8fffc8e98771e8d6` |
| 8 | `structure` | [CompatiblePatchExtensionCapability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/compatiblepatchextensioncapability.md) | 138 | `declaration-track:a6347b9d571f2210cdd9264f175929c0f6d397ff6af03a986a05a8bb57002551` |
| 9 | `theorem` | [extends_implies_boundaryCompatible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/extends-implies-boundarycompatible.md) | 144 | `result-track:8b63230401b1e88a849de91fc789a7bbf91a502a262060065bee6e2a11297e73` |
| 10 | `theorem` | [boundaryCompatible_implies_extends](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/boundarycompatible-implies-extends.md) | 155 | `result-track:080f4632931bd5f08b0010d96c3126878eede54a3316643ffd157af8d7228b98` |
| 11 | `theorem` | [extends_iff_boundaryCompatible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/extends-iff-boundarycompatible.md) | 166 | `result-track:2dfc2becfaedac74844e1e7ddcee5723726b61d46b44f6addb81c5dbe11f668a` |
| 12 | `theorem` | [not_boundaryCompatible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/not-boundarycompatible.md) | 179 | `result-track:c90e9d1b824044234577efe11cb2e9b4dd9667a1f745e984b5649a70d07b0f09` |
| 13 | `theorem` | [not_extendsTo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PatchNamespacedCompatiblePatchExtensionCapability.lean/declarations/not-extendsto.md) | 198 | `result-track:96fdaef2373bb1cf748863f2a1a931b9cf34af63623017639d8f877f42c2b188` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a461fcb9cb13a2945efd6d86176d1f2676e9f6a60b06ebcbf6f8ed383954a04d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Patch/Variantd76e8fc1834ac0c84b04b20251acb051e54254235f227ef83046cba219257cb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

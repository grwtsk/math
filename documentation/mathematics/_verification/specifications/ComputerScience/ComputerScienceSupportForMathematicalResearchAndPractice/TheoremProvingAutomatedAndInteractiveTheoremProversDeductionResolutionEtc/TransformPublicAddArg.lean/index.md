# Verification target: Transform Public Add Arg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aa03371649f80e080246ca3b196456305e73e0f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aa03371649f80e080246ca3b196456305e73e0f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Split` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateAlts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/updatealts.md) | 22 | `declaration-track:995bfe35f4707722c03fc42be93151c1e375299c14b5b4005ec1699e8cdfd833` |
| 2 | `def` | [addArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/addarg-source-edition-2.md) | 70 | `declaration-track:aba01849cece092b304e7906c199eb9da0ea306640397b6b26ad01398ef77074` |
| 3 | `def` | [addArg?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/addarg.md) | 107 | `declaration-track:1b02c73d9ed73dd3b307af2bbc1a536f5cc5312c8785ef7fcb0b8775bf3adf4c` |
| 4 | `def` | [refineThrough](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/refinethrough-source-edition-2.md) | 130 | `declaration-track:6e1d535d42fae57542ec1efad15b58fd572ae450f5c5869d7b6fd140a928449b` |
| 5 | `def` | [refineThrough?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/refinethrough.md) | 169 | `declaration-track:000bcc106f88a19c69425d0e7acc58213784dd49130654df5acc2bb2b46fb300` |
| 6 | `def` | [withUserNamesImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/withusernamesimpl.md) | 177 | `declaration-track:b85bd9eec3df1d84a3a7b7932870aa22a4b4265c9426deba4d2830528c8b371c` |
| 7 | `def` | [withUserNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/withusernames.md) | 187 | `declaration-track:05378a6944e7dd20788ad152574d71cd172541cc77dea97ff4b69fbe28255f47` |
| 8 | `def` | [forallAltTelescope'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/forallalttelescope.md) | 195 | `declaration-track:a7774dde53a473bf911b9728fbac71cab97a4e6f65db88c1c888672fdca3b954` |
| 9 | `structure` | [TransformAltFVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/transformaltfvars.md) | 224 | `declaration-track:efd96f15c60fcb5e1a957f580a0c21c6476d3a1b332f618df366b443109f1c7e` |
| 10 | `def` | [TransformAltFVars.altParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/transformaltfvars-altparams.md) | 238 | `declaration-track:700e48f3b95bfc1fbe8eeb0e62b19a1e732b3634a6a4649209090c25723657b1` |
| 11 | `def` | [TransformAltFVars.all](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/transformaltfvars-all.md) | 242 | `declaration-track:09cd505b122e6619f46e093c601c258947d74eff0b6d112239b8259887430ce5` |
| 12 | `def` | [transform](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/transform.md) | 265 | `declaration-track:13ab4cd73050eebfce570a4d791aa328441d97071f6f523d4211370ca714eeb5` |
| 13 | `def` | [inferMatchType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TransformPublicAddArg.lean/declarations/infermatchtype.md) | 458 | `declaration-track:11178e2abac4b74f0bbb17f7409256e44cf2f13d70c5e9aff172a869f372433d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7b53cbf9028c11a3e66e8a543817fc72a51f892b2aba1c6ed0850633fde68a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

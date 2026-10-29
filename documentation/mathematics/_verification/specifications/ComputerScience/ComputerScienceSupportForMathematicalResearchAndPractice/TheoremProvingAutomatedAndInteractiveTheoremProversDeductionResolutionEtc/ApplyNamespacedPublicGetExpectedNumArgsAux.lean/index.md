# Verification target: Apply Namespaced Public Get Expected Num Args Aux

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "649426cbbe5bf47dcd5cd4f8ba256bc963ec3cb3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `649426cbbe5bf47dcd5cd4f8ba256bc963ec3cb3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getExpectedNumArgsAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/getexpectednumargsaux.md) | 29 | `declaration-track:a42d411a4c5453dccd93233a5f214d0e3dd3388c46bc8e338e3b2b38dff54a8e` |
| 2 | `def` | [getExpectedNumArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/getexpectednumargs.md) | 33 | `declaration-track:31e273672964011f2e4ffb0bd0185b69b4881e9802b7e890c31a2e979b74f9fa` |
| 3 | `def` | [throwApplyError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/throwapplyerror.md) | 37 | `declaration-track:05054b1a44ab84a4c9336b09ba25619db4c33a1e76f449e1dff8bafaed494c3f` |
| 4 | `def` | [synthAppInstances](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/synthappinstances.md) | 48 | `declaration-track:ed536569e230f9d965e7d65e6614961102de3a979b6e9b6f2a5b65f78c6ebed5` |
| 5 | `def` | [appendParentTag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/appendparenttag.md) | 116 | `declaration-track:18c564a703b116a9dc2a230e5c04c6017b4e65047b79b7b5fbfec3f97e6fafc5` |
| 6 | `def` | [postprocessAppMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/postprocessappmvars.md) | 135 | `declaration-track:233c66e553361b4fe252896d2990dd53af4ee67fa273342b06df4b6227f78207` |
| 7 | `def` | [dependsOnOthers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/dependsonothers.md) | 140 | `declaration-track:e1efb7b533b2cef63535dcc718e8fc31e70eba1d76b7fc8585ff541882739ba0` |
| 8 | `def` | [partitionDependentMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/partitiondependentmvars.md) | 150 | `declaration-track:278f7fc3940ee399f809c6795b5771e87c72a7f3a06ac7065c5752b5bb5d160c` |
| 9 | `def` | [reorderGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/reordergoals.md) | 158 | `declaration-track:4635961c534bca5333e8e6030461069f3ba1298c699b96bd9b5dc25f952e6a5a` |
| 10 | `def` | [isDefEqApply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/isdefeqapply.md) | 168 | `declaration-track:157e976eb22b3399d6628bb70ba19d82218766fd1daa0bd1366b359c94811a13` |
| 11 | `def` | [Apply Namespaced Public Get Expected Num Args Aux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getex-source-edition-3.md) | 177 | `declaration-track:bc8f2fe4c6a7e698ba82462ab7c2cb8d07030b5fb8604c732cc331684c1f2a30` |
| 12 | `def` | [Apply Namespaced Public Get Expected Num Args Aux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getex-source-edition-2.md) | 242 | `declaration-track:a5c9666570ad5b38b54327a15e315515b25344f48815992cf3080a4fa69c43e6` |
| 13 | `def` | [Apply Namespaced Public Get Expected Num Args Aux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-getex.md) | 246 | `declaration-track:06bb9af8c28c38471076c64afee66bd281079d75c6259cc7d7270401c52acfc2` |
| 14 | `def` | [splitAndCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/splitandcore.md) | 265 | `declaration-track:8303052355d5af64373bbd7b2e8c2f4603984c4a73938a9ac8d7f8a67d414b2a` |
| 15 | `abbrev` | [splitAnd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/splitand.md) | 291 | `declaration-track:e1d88a2025d587fdf96842b717641fd4ab792efd9cd4f7f339a47f327cdec33a` |
| 16 | `def` | [exfalso](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/exfalso.md) | 294 | `declaration-track:ad27585a2afba357de27d021904093822147ecde9b51e26e472226532c06ff84` |
| 17 | `def` | [nthConstructor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/nthconstructor.md) | 308 | `declaration-track:8f117bf612830969a343a0fecf6b888f546a87345aa02587b13ff1b4ef7ffad7` |
| 18 | `def` | [iffOfEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/iffofeq.md) | 330 | `declaration-track:bd58bddbbba4ed49a34e868c0a9936abb8644d6850b97671a9c06f8979da28f4` |
| 19 | `def` | [propext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/propext.md) | 340 | `declaration-track:12335489d97cb85951adbce158515d7b0d25dfc3b9f26f0851011a1bff9cd0c2` |
| 20 | `def` | [proofIrrelHeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/proofirrelheq.md) | 357 | `declaration-track:f87906a8c4f2d3e1cc61bdfa1fbf4b4f485bab4c8690e5c560b34d81f33b15d4` |
| 21 | `def` | [subsingletonElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ApplyNamespacedPublicGetExpectedNumArgsAux.lean/declarations/subsingletonelim.md) | 376 | `declaration-track:4932462e726b241b093a3b34350a6254790455dd917b3d5679ba47d86d345d11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df7435cf8adc1be8eb452ecafb167b1dd1251ad0640eb71baa2a88d49e7a2b40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant34eb11699d719739bd54749eaf4b6c7ea6a497eb36ea6aef9f99acc143b3e1b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

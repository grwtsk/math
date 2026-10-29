# Verification target: Entails Namespaced Public Unfold Triple

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e5a06bfd9979f27d4e518c4e222d201a4dd53d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e5a06bfd9979f27d4e518c4e222d201a4dd53d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.InferType` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InstantiateMVarsS` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unfoldTriple](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/declarations/unfoldtriple.md) | 41 | `declaration-track:1ec558fa06538ae4d37e8e8206fc6997cb5224170748a54d552129c065195001` |
| 2 | `def` | [introPre](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/declarations/intropre.md) | 48 | `declaration-track:73c10068b922bcf10c78cc655f7989e9d919026c09d6789db806b6930770f798` |
| 3 | `def` | [reduceEPostHead?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/declarations/reduceeposthead.md) | 61 | `declaration-track:da7aa5e0e74fbbf8c36dc65407a3313f9a5006659218f266f51d19bfd3c655ea` |
| 4 | `def` | [refoldHimpUpperAdjoint?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/declarations/refoldhimpupperadjoint.md) | 80 | `declaration-track:44f058d1ca870c9d82bf6676e08fa7c066e67985d2dc2224d7f48d3fb5057013` |
| 5 | `def` | [splitLatticeOp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/declarations/splitlatticeop.md) | 101 | `declaration-track:d63f353861a7e53ae7f76669aa57d95ccf04c549e1eb81de2df8d01ef5adebba` |
| 6 | `def` | [reduceTopAppliedPre?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/declarations/reducetopappliedpre.md) | 126 | `declaration-track:9d773cf305ada08317e62f73146927ac379fc81648df569c1d1bfa52eef83a6d` |
| 7 | `def` | [elimTopPre](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EntailsNamespacedPublicUnfoldTriple.lean/declarations/elimtoppre.md) | 171 | `declaration-track:53bb90a186c83bfd1d7477b2e4e1bc511e0dcefab7356069ef06b2465c3a377e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44a20b486ccb13be951e4c27d1118a09ea6e36937d33bd0f1e6ea69b95888415 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

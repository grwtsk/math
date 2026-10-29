# Verification target: Thunk Namespaced Add

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1700148a12e3470e05c99aeb4b415a596f673c3f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variantd77d64f2d18dd9f31c1482e2d0a4917480a0cb70881781e234a1daad19a99e25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1700148a12e3470e05c99aeb4b415a596f673c3f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variantd77d64f2d18dd9f31c1482e2d0a4917480a0cb70881781e234a1daad19a99e25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variantd77d64f2d18dd9f31c1482e2d0a4917480a0cb70881781e234a1daad19a99e25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [get_pure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/get-pure.md) | 22 | `result-track:145721b0e41ee5a25b52b4289f9fe0873440be0ecf3faa74d2a12b0b7a1314ef` |
| 2 | `theorem` | [get_mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/get-mk.md) | 23 | `result-track:7a3fa374720d3aa3c4d5db6d87817b8e604bf842cd4c3f59d7aae8b55a26ca0a` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/instance.md) | 28 | `declaration-track:3c9ce272b44bb2f4d363d2bf4452598d7ce39a7ecc4a6de6aeddcf458f8e584c` |
| 4 | `def` | [prod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/prod.md) | 35 | `declaration-track:601bc1cb19f23fbc546d8b0ded190ca6705e1d5c27cad077985ad5292e70849b` |
| 5 | `theorem` | [prod_get_fst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/prod-get-fst.md) | 37 | `result-track:1edf22d4783ae9d99c064b9f0cb9584653e2b281715299439c3bd528231a7d59` |
| 6 | `theorem` | [prod_get_snd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/prod-get-snd.md) | 38 | `result-track:a10bd487858941561d8785323a6319fc8219c5cbf7e5cf23742881b9396b2370` |
| 7 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/add.md) | 41 | `declaration-track:a267e029f59c4436cb55fbe6100d1823c53ead464476c2cbf860a32289a668bf` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:a522698613bb3114652203ec8f2bfca3e8609a9752ed924df248ab299f0ede77` |
| 9 | `theorem` | [add_get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ThunkNamespacedAdd.lean/declarations/add-get.md) | 45 | `result-track:90b5a288e89d6869eb680028657a0f014987e8a9bf285b1f18908db5f7f4050b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d4a75d6bd92a0ce6de68981d6cf3201091617456817aeaea7b3da8ed8488d1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variantd77d64f2d18dd9f31c1482e2d0a4917480a0cb70881781e234a1daad19a99e25.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variantd77d64f2d18dd9f31c1482e2d0a4917480a0cb70881781e234a1daad19a99e25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

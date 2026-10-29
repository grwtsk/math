# Verification target: Forall Namespaced Public Mk Forall Congr For

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1fa7373ebd17b50d60c799c7f30374b6f6ac2cb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1fa7373ebd17b50d60c799c7f30374b6f6ac2cb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.AlphaShareBuilder` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Result` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkForallCongrFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/mkforallcongrfor.md) | 34 | `declaration-track:20dbf0c96583bd37ce7e1a33f01ae7cf69d5dc0c7af7f63d0f30e574f9e77c42` |
| 2 | `structure` | [ArrowInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/arrowinfo.md) | 65 | `declaration-track:a4e887a6dcdf0f0c7c00e63b2eb39b89606f356ec91359feecb9108eb28f3ab6` |
| 3 | `structure` | [ToArrowResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/toarrowresult.md) | 71 | `declaration-track:0edf9e0f4f4f68da81f825de49ca3ac1f8c159118e3e512cee5563c8b9f90c65` |
| 4 | `def` | [toArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/toarrow.md) | 76 | `declaration-track:a6ef31b812970f20c50b8f89f809f89c688daf4c50ea0e378b3104791391483a` |
| 5 | `def` | [toForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/toforall.md) | 86 | `declaration-track:19bf2945ea055377c5e84b0a90a62b5a148f7d1b198b624a52c0a28be6482ede` |
| 6 | `def` | [simpArrows](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/simparrows.md) | 104 | `declaration-track:633fcdb862025c7d469fa36e529163d37462529196c25ddf2a4cc7a2b9eb8aaf` |
| 7 | `def` | [simpArrowTelescope](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/simparrowtelescope.md) | 179 | `declaration-track:ab620be6abf7a83f886718186322453e91fcd2bd51bbbba73cc7af8982a6fc91` |
| 8 | `def` | [simpArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/simparrow.md) | 192 | `declaration-track:ee36050b305256bfc6ffd9074a2f9ecd03abd5f3c529c2187f873617fab7ff0a` |
| 9 | `def` | [simpForall'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/simpforall.md) | 216 | `declaration-track:3601b80e2903457e673cf1fc9a0067d9652c6dda19fa2110e04789c23a50a391` |
| 10 | `def` | [simpForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ForallNamespacedPublicMkForallCongrFor.lean/declarations/simpforall-source-edition-2.md) | 243 | `declaration-track:8fa221622acfe862af3546cf006f529a0b6c43fef03552b44f508d011a58029d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10c7746a379c0acaa0deff5ad139b91ecfcdf53bf2cfb25cb9c98c28b8e8a38f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forall/Variant12faf7bd84066f3cc97172c2ce2c11e2f70631cf32637a7d2689fa654950358b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

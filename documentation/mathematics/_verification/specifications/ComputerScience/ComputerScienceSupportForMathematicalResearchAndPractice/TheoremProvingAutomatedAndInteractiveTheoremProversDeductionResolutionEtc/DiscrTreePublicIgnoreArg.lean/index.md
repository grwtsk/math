# Verification target: Discr Tree Public Ignore Arg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1f6368876af57c5489a489bebf7af79bfd1ba7d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1f6368876af57c5489a489bebf7af79bfd1ba7d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Offset` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Eta` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ignoreArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/ignorearg.md) | 51 | `declaration-track:1394ec0b6521eb2fd90d2b4f96051eff8f5571fb2fbb6b782bd7482c51475bc2` |
| 2 | `def` | [pushAllArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/pushallargs.md) | 59 | `declaration-track:d37fbf0d956da23aa83d2fab382a2ec3a8522f34e935b301b2618de4271db671` |
| 3 | `def` | [pushArgsUsingInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/pushargsusinginfo.md) | 68 | `declaration-track:2847eee31bd0f88acffd8c80a24a3fd09502458457c272bdc2290ec219650fd8` |
| 4 | `def` | [pushArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/pushargs.md) | 83 | `declaration-track:8b7eea15b33048d45daaaa6b5d7bc4ce277f95511ffe88fdd0a3462a7305db58` |
| 5 | `def` | [mkPathAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/mkpathaux.md) | 109 | `declaration-track:2e9bc450945385c54be6cf3214d028a8ad1ffd6f432f185b2017c27fa3d63f2f` |
| 6 | `def` | [initCapacity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/initcapacity.md) | 118 | `declaration-track:185681421fda2a9a1f4cf7aad543e1bbfad6695a440890a44e64526fc65a745a` |
| 7 | `def` | [Pattern.mkDiscrTreeKeys](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/pattern-mkdiscrtreekeys.md) | 121 | `declaration-track:8c7d1924f538fa7e06beec7194ca40aa0cff76159617d67205c43cfd3e5b7e69` |
| 8 | `def` | [insertPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/insertpattern.md) | 127 | `declaration-track:5af403179fcf9c4445b0dc6f3933edba5e0f6d30cac65160b41d2f05f0de2758` |
| 9 | `abbrev` | [findKey?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/findkey.md) | 131 | `declaration-track:5642a3336236477d96851d589e83560359c0f90ac158dee6c1813d102a7e18db` |
| 10 | `def` | [getKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/getkey.md) | 134 | `declaration-track:bdcd3a4d2974bd60cb500923443fe68c5ec068a5c1da82ecb738622924657408` |
| 11 | `def` | [pushArgsTodo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/pushargstodo.md) | 143 | `declaration-track:2250b8e7c8b758e3a10bec4cb92e3f150b53257d7f096c44bd88133256ad578f` |
| 12 | `def` | [getMatchLoop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/getmatchloop.md) | 149 | `declaration-track:bc6ba8506b1549cc3a36997c37cd2d7b4a79a830dfe9bc1750f7f3067df557d9` |
| 13 | `def` | [getMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/getmatch.md) | 184 | `declaration-track:02a09c51aa9871dd682fa60ae7f951db7c522a17f7b3657e4208a712c0596538` |
| 14 | `def` | [getMatchWithExtra](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscrTreePublicIgnoreArg.lean/declarations/getmatchwithextra.md) | 200 | `declaration-track:993de0740c9b9c99e20f9a82ae2f093128f7fff5c8990f0aec8b98df58bd7d6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a05931aabb522c9cbde15d4b4669e6d2a0f9f1a936517fa57fc99cbbe51c6055 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTree/Varianta89333dc8e0bb353c253caccae22ee4c8c9b48fbf728ef22661e1f2345cc9590.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

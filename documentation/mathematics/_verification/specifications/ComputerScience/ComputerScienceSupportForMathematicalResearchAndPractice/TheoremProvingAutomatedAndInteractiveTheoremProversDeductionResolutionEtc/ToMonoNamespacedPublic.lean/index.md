# Verification target: To Mono Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2bfd977f9bd3dd39aef2bd7c2bc9770c96a65c5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2bfd977f9bd3dd39aef2bd7c2bc9770c96a65c5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToMonoM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/tomonom-state.md) | 27 | `declaration-track:5f740271f04289317284ce45124df1ff0a6715a48ff36475f63daf16ecd2752b` |
| 2 | `abbrev` | [ToMonoM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/tomonom.md) | 30 | `declaration-track:41cad590adddff537e1b04906abf4b3492fc67de2271a902931ee87cd2eabb65` |
| 3 | `def` | [Param.toMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/param-tomono.md) | 32 | `declaration-track:d56c95b79a252380f9698d4ae9146ddf1baef738e747b47c3a3561760dbd7c88` |
| 4 | `def` | [argToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/argtomono.md) | 38 | `declaration-track:e2650128395112c6479435f412f6c4d0c0a8ab195e8d6ed6fdb0c3990700c91c` |
| 5 | `def` | [argsToMonoWithFnType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/argstomonowithfntype.md) | 47 | `declaration-track:e3c6df4ba74bdaeecfc9872e58f2919e3dbe3a4ca82b0a4c2f72d3417186ca08` |
| 6 | `def` | [argsToMonoRedArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/argstomonoredarg.md) | 64 | `declaration-track:457460bc903bdd8c279e4ce08183594aed649d2177fd7036a6dc235e415325d3` |
| 7 | `def` | [ctorAppToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/ctorapptomono.md) | 82 | `declaration-track:e6127ee895378943510f2baf0c2ac2a11adfaa833ff4fab78aa15c6f111c0e57` |
| 8 | `def` | [LetValue.toMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/letvalue-tomono.md) | 89 | `declaration-track:07a9cfedd9f4d1f3b2eae37e1969a09995c4a9e5d7f1b8d2cebdf6b7073941aa` |
| 9 | `def` | [LetDecl.toMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/letdecl-tomono.md) | 154 | `declaration-track:21e411cffcbc271772ddeba31adc776d161a4c4832378706a994fcbaebe78268` |
| 10 | `def` | [mkFieldParamsForComputedFields](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/mkfieldparamsforcomputedfields.md) | 159 | `declaration-track:aee350fdec302fec79bcd23e4997bb147912c29ac037d608080918f81ccdecfb` |
| 11 | `def` | [FunDecl.toMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/fundecl-tomono.md) | 179 | `declaration-track:24e9ee66deed81b8b74e05cab5bdb3463b3b2e86c50d0596e9ff5244f15a8617` |
| 12 | `def` | [decToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/dectomono.md) | 186 | `declaration-track:0ac861a0f5efe31369603b3b84a60b6811a5a740e6cda369b5ae3367b9f4f180` |
| 13 | `def` | [casesNatToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesnattomono.md) | 198 | `declaration-track:de7d7276af938f97443e64d55c62b1ce4ccac0fa977db4564fc31fdef7cf77c9` |
| 14 | `def` | [casesIntToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesinttomono.md) | 219 | `declaration-track:1533cc84ae8cb39957ff2e6582f6614f615cd0c7330caa7aa7ba2b5df6f9e560` |
| 15 | `def` | [casesUIntToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesuinttomono.md) | 244 | `declaration-track:045c015e16284d1d6baa6390e4cbfccc0b57bc699e097b4e3c3e1777d2e2d448` |
| 16 | `def` | [casesArrayToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesarraytomono.md) | 256 | `declaration-track:b9f95095ea04aa3dfdef566bff58922a47d5a2ef69290e0a09d9b1fa18a8c14a` |
| 17 | `def` | [casesByteArrayToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesbytearraytomono.md) | 267 | `declaration-track:150b5d1dfcf609ae9a0ff04af1b6c64fcbfc6db323ba944f84daaffbac7fcfe9` |
| 18 | `def` | [casesFloatArrayToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesfloatarraytomono.md) | 279 | `declaration-track:b7806a66553bbb0a29197fca87a50f2e3f52e41559ae4b6044729dd0d0e657c7` |
| 19 | `def` | [casesStringToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesstringtomono.md) | 291 | `declaration-track:ef9f9116dd89a1d9079009f1ba8564a4fdd889703fabc16de5ae88b2b86d0eed` |
| 20 | `def` | [casesFloatToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesfloattomono.md) | 302 | `declaration-track:2e2a900ffff79495581a3f28479d189ea2d3c7f59bfbf6ca835f68ac7b916fea` |
| 21 | `def` | [casesFloat32ToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesfloat32tomono.md) | 313 | `declaration-track:7f5a53173a01317f1f72d063ae00af5b6d43dc837eedf1bde3413df4283db513` |
| 22 | `def` | [casesThunkToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casesthunktomono.md) | 324 | `declaration-track:b4d5b2012625704f0e6f0f3b409a06b60d948f05af79eae493ebe5239297762b` |
| 23 | `def` | [casesTaskToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/casestasktomono.md) | 344 | `declaration-track:017832f4aa8e0999cca17f114a6ae891f7bec72e5631ff37a237c0660782bb43` |
| 24 | `def` | [trivialStructToMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/trivialstructtomono.md) | 355 | `declaration-track:9e8b4677f7039240954f6ef62a8d12bb628a831e41161dcd50c0669fa24a4c5d` |
| 25 | `def` | [Code.toMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/code-tomono.md) | 368 | `declaration-track:635f450ebc049629c98fd6113526e1ce76fdfd08a56a4948a198a3f74137d043` |
| 26 | `def` | [Decl.toMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/decl-tomono.md) | 444 | `declaration-track:356e1295d3d4d771f8e4cde02a7f06f6fd689cbd8a5e2862a227f8dc38f4d6a8` |
| 27 | `def` | [toMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/tomono.md) | 455 | `declaration-track:dab5a16f3c7364845f32a34985cf11670e726b2338ab335f108e676cca25e582` |
| 28 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToMonoNamespacedPublic.lean/declarations/builtin-initialize.md) | 462 | `declaration-track:ab5ed9a958cd1d49be311bce1698ad2a3ab43758e12c77a1b989e6d649179abe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=572918d0069f93a2c6f9ac2ce7a306fe283d83dfb277e1bea25fa7e010b54cee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

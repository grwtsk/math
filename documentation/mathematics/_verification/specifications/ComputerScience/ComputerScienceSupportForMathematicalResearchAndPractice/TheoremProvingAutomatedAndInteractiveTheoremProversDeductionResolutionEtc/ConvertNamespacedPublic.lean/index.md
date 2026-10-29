# Verification target: Convert Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b35c65e59e9488a9feec82326159671aba98b03b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b35c65e59e9488a9feec82326159671aba98b03b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Convert.CheapConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/convert-cheapconfig.md) | 87 | `declaration-track:edc37a9673572b449dd7d9fdb13fee83288fdd7faad5d61621eb63242d77b42a` |
| 2 | `structure` | [Convert.ExpensiveConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/convert-expensiveconfig.md) | 111 | `declaration-track:53fcae07f9441da3e157958db0ae2402e976e944f0b9a3914568678c3cb27112` |
| 3 | `def` | [Convert.elabConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/convert-elabconfig.md) | 126 | `declaration-track:01e424d8bab8416f8a7cf80a07648e89bfc5e46f7fc02835cfecd2046bc1dcc8` |
| 4 | `def` | [Lean.MVarId.convert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/lean-mvarid-convert.md) | 143 | `declaration-track:61472a2c163bcb27d71ffe321039c4ab712ca76f81beca187d483d3aafa4fa0f` |
| 5 | `def` | [Lean.MVarId.convertLocalDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/lean-mvarid-convertlocaldecl.md) | 164 | `declaration-track:ca0867ee5176c0ba14f5599c1f1ba7101c816bc58ff4783c843eeadfb7833648` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/syntax-source-edition-4.md) | 229 | `declaration-track:83df356fb7c85b2d8a1ba2b2c73fb3323a641d0397281aaceb14a7cb6dc074b8` |
| 7 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/syntax-source-edition-3.md) | 233 | `declaration-track:455a34f388e8f90856a360585dd542dc0dab03952abe31b689a59c555b946a2e` |
| 8 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/macro-rules-source-edition-2.md) | 236 | `declaration-track:64955af8ca4f7e3c971f1e85b36f1f9802eba906de827fcc142daaf5ac30608a` |
| 9 | `def` | [elabTermForConvert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/elabtermforconvert.md) | 244 | `declaration-track:391eb19d724920e6d935b43bcbc4f5629a47f64b373539d634ed74c474024fc0` |
| 10 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/elab-rules-source-edition-2.md) | 256 | `declaration-track:f19cc4b956c9b99638bdfed6b2883ceae613cbd418d59bf50630a0b33d5d22dd` |
| 11 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/syntax.md) | 294 | `declaration-track:2cc753a1e3afa7d50b01dc2318ad9c4799fd24e58a9de38f907ad02440ef70d7` |
| 12 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/syntax-source-edition-5.md) | 298 | `declaration-track:8f90a2e2cfa61ea3d12d77373202579b5a73ba56c5918c70a7e393b9f57d9e27` |
| 13 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/macro-rules-source-edition-3.md) | 301 | `declaration-track:eac495e4ca2b4378595ad481381f960d17c1e77330bc083a3fb3944a686cf434` |
| 14 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/elab-rules.md) | 305 | `declaration-track:d6cfd9da61f11e80cceb6b3e01a07cfb910200218f0a6b6668da91f9b8955eb6` |
| 15 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/syntax-source-edition-6.md) | 350 | `declaration-track:f96e0965da60c086cee1cffc540ceb5d8695be1eebcdaa7c90fd3a04be04c307` |
| 16 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/syntax-source-edition-2.md) | 352 | `declaration-track:3ae8a65852802ea3e6b83f9640aa5ba7940594a5951f9fc08d6ef5bfbf77f678` |
| 17 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ConvertNamespacedPublic.lean/declarations/macro-rules.md) | 354 | `declaration-track:0faf475edbb8c486f33d3fa61c9645e45fe8ca79792a75591196217b9eae1fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c4c6692dbfe05d43302ff2eeefe49c62dc1ad618082b1ff760e96bc1df8f61f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variantd947d62be2e777cfe7361f745d5765d04abd209f28b1b16d09368babde15c064.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

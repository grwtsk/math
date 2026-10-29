# Verification target: Tactic Def Eq Transformations Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b99ff21025b008cf778c9bac2f0ccf038d94cea",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b99ff21025b008cf778c9bac2f0ccf038d94cea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [runDefEqTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/rundefeqtactic.md) | 35 | `declaration-track:16d0097554f181d78481bd7cb436ceae18b0dd4853ff53ab7c681c3fe03fab71` |
| 2 | `def` | [runDefEqConvTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/rundefeqconvtactic.md) | 50 | `declaration-track:fffbc3a6e5f28a8ac2f5324ad178bcf076ea52f57cdd38dc0ee681d8a1e9ae7f` |
| 3 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-9.md) | 63 | `declaration-track:80487ccd1d9277103c1762a52baa1d1de7a1228979c30bddbbb31deb4dbcce71` |
| 4 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-11.md) | 77 | `declaration-track:92f9ba0ed04794f3d68c7d6c948ba46a47f8c4e997231091b8d6b3ee6fe06061` |
| 5 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-8.md) | 81 | `declaration-track:76620f58cc7ed0e13eae0aa8ca9f9c1556309ffc5023e3c8cc1f6eca42b5064d` |
| 6 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-4.md) | 92 | `declaration-track:481d2929d10309769251f15300e2e03bb5f8d3173eb2d5e84b9daedc5bbbfa53` |
| 7 | `def` | [unfoldFVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/unfoldfvars.md) | 99 | `declaration-track:91fa588d07f1bedcd6e3d59deefb77d9bfb13fe6d78e1713240849b829065f6a` |
| 8 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/syntax-source-edition-2.md) | 122 | `declaration-track:a56cf5b5316e83423cb8eda40ef0b4c726809f7f9b0c0e7c67013182fe222f96` |
| 9 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-rules.md) | 125 | `declaration-track:0ad39c85261600b079499aa5b80066703fadd3640879f160739ce5a25661c86e` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/syntax.md) | 132 | `declaration-track:732b07c640ffa069899df61a35d6e94e1457bb8890b0bea27eb286d09d92bddb` |
| 11 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-rules-source-edition-2.md) | 134 | `declaration-track:c53ae5788c6a342a463c5022e6ea907a73578277a843553143bdb1e604e28215` |
| 12 | `def` | [unfoldProjs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/unfoldprojs.md) | 143 | `declaration-track:99ef6b3ef579f817a2cf9c320eb49f985974243c89c1a9c8d7503449b0c66a0a` |
| 13 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-5.md) | 154 | `declaration-track:53fef3f49c7f44839eb3eaa82bdc40656c979b2e8e90a93e08ff3b69a5fc1755` |
| 14 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab.md) | 158 | `declaration-track:1e826a32bbeb454a009f75f723574bb1f7cf9d70060a94cf22ffb0a50cdacde3` |
| 15 | `def` | [etaReduceAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/etareduceall.md) | 164 | `declaration-track:30294ea63ba8a6c85dc046fd9ffb8cbfbf20243f92abf50e96e200e75465c36c` |
| 16 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-3.md) | 173 | `declaration-track:43fee631cd3954d55850993274359b9aa8646dc42bce9d390974fbc53356bfdd` |
| 17 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-7.md) | 177 | `declaration-track:7566568ee4bb24683a5488164e5f418498b5d6872927702c7e131579807b0744` |
| 18 | `def` | [etaExpandAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/etaexpandall.md) | 185 | `declaration-track:664389c360911a44c450eb5f3330a811510b8d5586dd38c5402a77baf0d487ed` |
| 19 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-10.md) | 215 | `declaration-track:908d4aa8755b2751f24250925326708685f4a453c9329323d7a84c4270142a42` |
| 20 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-2.md) | 219 | `declaration-track:3ad1a1020d43b746c93e4472be51be52f2d397574f91cf4c400ad1106c19b5e5` |
| 21 | `def` | [getProjectedExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/getprojectedexpr.md) | 227 | `declaration-track:9604f14ee673cd3347e211898c572cab293367f23e80e239573a682aa240ff75` |
| 22 | `def` | [etaStruct?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/etastruct.md) | 245 | `declaration-track:c11b6b9814d32ac8a0ed167609e26934fa9424dcb006b3cd3026b5b977b0d0ca` |
| 23 | `def` | [etaStructAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/etastructall.md) | 278 | `declaration-track:4763e09d31c972450ebf1b4c583941b3c89e5bf610fe89bae9ee122098b734b5` |
| 24 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-12.md) | 295 | `declaration-track:a9f13e61c0b41f55f2f109398924113ae2fdca29a850fbe7df9b8d3d35660187` |
| 25 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDefEqTransformationsNamespaced.lean/declarations/elab-source-edition-6.md) | 299 | `declaration-track:7544e396ed7f8c3524687e133bdae9538b6a380b272bcdfe57a5d15b5513064c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8eae0ab65b0652a76252f88b1ee9c462583e1dfabf685fd36f4e4bd6eeae3fb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant9170d95863a31ce5f12b7f8a7aac2fb07882ee4dac928b5bb2742ceee5277282.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

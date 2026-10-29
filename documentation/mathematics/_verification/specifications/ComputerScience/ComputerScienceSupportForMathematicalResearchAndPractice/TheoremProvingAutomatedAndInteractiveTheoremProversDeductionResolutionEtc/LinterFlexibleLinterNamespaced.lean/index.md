# Verification target: Linter Flexible Linter Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1178328c5f20b71eb5fb9ad5a4fc48fa30fe3f4a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1178328c5f20b71eb5fb9ad5a4fc48fa30fe3f4a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.flexible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/linter-flexible.md) | 105 | `declaration-track:702f3ad436416dc2ac42d967c7a0ef1bac3259ac4b75e8b9d84acffca4d3cc78` |
| 2 | `def` | [flexible?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/flexible-source-edition-2.md) | 117 | `declaration-track:9e5456028f44738e1aab4ef711f07259e1ee053ec02cbdaca22af673f72413ad` |
| 3 | `def` | [goalsTargetedBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/goalstargetedby.md) | 138 | `declaration-track:6a41e0b794721f910a71c180e8b2d92d3132812aa4bb7f14119f0f996b1ff30b` |
| 4 | `def` | [goalsCreatedBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/goalscreatedby.md) | 143 | `declaration-track:9994869796b579aab5072d75403d595a8da860e1726ee1284d5dabf1cf07434b` |
| 5 | `def` | [extractCtxAndGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/extractctxandgoals.md) | 164 | `declaration-track:f4759df50d5cf67e8acd98341ddad154e6090162f8cc1db18b8f2703c51be994` |
| 6 | `inductive` | [Stained](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/stained.md) | 181 | `declaration-track:cf0f1dfdfc5d74f3149bd631b9657c0b969d9441dc21b5e13982efa76b50c016` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/instance.md) | 192 | `declaration-track:ec63f2f8de3fc928239a94c4448767698d4c4429b85bb3b87d8962139ae75a15` |
| 8 | `def` | [toStained](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/tostained.md) | 204 | `declaration-track:68bc2dd77faa6fa0cb29c86fc6206ae3482dff9e90880ee14b808737d21f7762` |
| 9 | `def` | [getStained](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/getstained.md) | 220 | `declaration-track:117a9f4fa4c0041cd60770f4e9439f4a06eff7bf9177c52b6a794bdb8ca174de` |
| 10 | `def` | [getStained!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/getstained-source-edition-2.md) | 238 | `declaration-track:f7a04db5de4b263e6d34087f1529487d3b6056b1fa98011e8ff16d52ea31a77a` |
| 11 | `def` | [Stained.toFMVarId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/stained-tofmvarid.md) | 250 | `declaration-track:22f7faed2147aa92285061eb8cad6b26bef6bd61d5459a85111f8540dec58271` |
| 12 | `def` | [stoppers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/stoppers.md) | 262 | `declaration-track:c5608df11ced84bc891d23e42175750bf3951ad7db91bae1d04c576ce0fc9e22` |
| 13 | `def` | [flexible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/flexible.md) | 291 | `declaration-track:016555599b62cfe4b3f8415fc7d5554d8864a00ec88f84d42d53de8995dae932` |
| 14 | `def` | [usesGoal?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/usesgoal.md) | 316 | `declaration-track:a4d248b28256a49139e6da4688ff2b2a205cf2fe269e8e79cee08ae14c9ad446` |
| 15 | `def` | [getFVarIdCandidates](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/getfvaridcandidates.md) | 334 | `declaration-track:de3d4074bab25247f27419e8760b93898858baad45bd92b1c63a6455ca5f0bb6` |
| 16 | `def` | [persistFVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/persistfvars.md) | 352 | `declaration-track:dcaf0dffe6fc0f0cd43244c174beef4963eab4de2d98c47861a8cfd96eb9daa1` |
| 17 | `def` | [reallyPersist](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/reallypersist.md) | 357 | `declaration-track:092717a67ec66205a3727db636e5e12d975d097b277dc6fb6cb33dba80b78676` |
| 18 | `def` | [flexibleLinter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/flexiblelinter.md) | 380 | `declaration-track:48f359b220416a1838f6026231b81ef605ff16cc6fe4f61a1023f08f7cb996bf` |
| 19 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinterNamespaced.lean/declarations/initialize.md) | 430 | `declaration-track:40c456301c0a8be1dee5fe590cf1c3f7f9a56b876ac2fc4cdb28e29c93442230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5fe07ecaf4e840630cab6712962ea155d11c319b2c8f08e677c70e483403950 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

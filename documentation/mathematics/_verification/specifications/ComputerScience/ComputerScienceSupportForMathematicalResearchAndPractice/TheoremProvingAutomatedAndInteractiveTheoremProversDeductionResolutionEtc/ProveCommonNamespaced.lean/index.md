# Verification target: Prove Common Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdd2b980fee1eb11803a5dd134185de9f3ea42a3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdd2b980fee1eb11803a5dd134185de9f3ea42a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Types` — import line 15; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Extract` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tryCloseWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/tryclosewith.md) | 35 | `declaration-track:3b7f31de835295b9ac36f10e54606a8f555d5983a33d025e1c8c2a5f4246fc31` |
| 2 | `def` | [standardCloseTactics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/standardclosetactics.md) | 47 | `declaration-track:305ee26aeea830d71a9e741dbd523a746d1b939a4502174a434f88c03ac83858` |
| 3 | `def` | [tryCloseGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/tryclosegoal.md) | 59 | `declaration-track:8d4d57ee754ab8fae4897771b86a28654344b3d8319dd6e2ebbab20a8d51a5e0` |
| 4 | `def` | [parseLe?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/parsele.md) | 64 | `declaration-track:4cb858d5037cd32705070702c8dc17234a19f74ae0daccf74dd6d674e2340d6b` |
| 5 | `def` | [parseLt?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/parselt.md) | 72 | `declaration-track:fd284abbf49b078bf94b1b257618679fd4b4e1d31a4fef57b4e4fd738e1537b2` |
| 6 | `def` | [parsePow?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/parsepow.md) | 80 | `declaration-track:8f78136b0b08c356d3073ed79563f8e9f30db5453ef188e3bf7ede68ce8083fe` |
| 7 | `def` | [parseLogArg?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/parselogarg.md) | 92 | `declaration-track:29a71193858208351c188f0faa1c3f4b7f17ae2c11d14ec372999dfa96503da0` |
| 8 | `def` | [parseIccSet?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/parseiccset.md) | 100 | `declaration-track:faab3f2fa39ae39c1a636df0d1c72ecd1d70b1be22c4436e5b6e23edf7b84852` |
| 9 | `def` | [parseIccProp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/parseiccprop.md) | 108 | `declaration-track:61dec0cc2c27ee39dbdd9da22897f077c72619e3ea8541b0989eb384a46eba56` |
| 10 | `def` | [solveByTactic?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/solvebytactic.md) | 128 | `declaration-track:69fae93e7bb0c1763059ce14ae1f5defea572ce991748124f98b7cde6726ec78` |
| 11 | `def` | [mkZeroLt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/mkzerolt.md) | 145 | `declaration-track:136279ba24f95399ecab0b8661d0b9398dc1b93cce34bac9b7d2e0a9bf4b6a6d` |
| 12 | `def` | [mkOneLt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/mkonelt.md) | 151 | `declaration-track:1d4b68c9137ca78eb883f3528584eaaebbca013e5b81829136fd05d964695098` |
| 13 | `def` | [collectLowerBounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/collectlowerbounds.md) | 157 | `declaration-track:fe8f1ec4192eb2277ddead1f4fa873d2736d007c187078a7a7c722454e871dc0` |
| 14 | `def` | [provePositiveFromBounds?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/provepositivefrombounds.md) | 216 | `declaration-track:04b01f5577f34ec60e0fc004c5f4d6d516b58e3ec99c029ac94820d32f9d4f0a` |
| 15 | `def` | [provePositiveFromIccAssumption?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/provepositivefromiccassumption.md) | 227 | `declaration-track:80a7d0015661e9653016a3db8411f423db5e2193156e2f04fa53dea79b87546d` |
| 16 | `def` | [proveLogPositiveFromBounds?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/provelogpositivefrombounds.md) | 235 | `declaration-track:769fe11bb1879fb1feea36397acb78e3d2c88921c6a5ff19116b335c26c632d0` |
| 17 | `def` | [proveLogPositiveFromIccAssumption?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/provelogpositivefromiccassumption.md) | 247 | `declaration-track:a7cf2e9225b0a380cb4bc36073affb5623ade0ac9a1db36570428eda65e58eac` |
| 18 | `def` | [tryCloseRpowSideGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/trycloserpowsidegoal.md) | 252 | `declaration-track:65d17d5ff889e0f160cbef22a116f7b0c4e1a5a236033735e3dc044344d98d16` |
| 19 | `def` | [closeAllSideGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/closeallsidegoals.md) | 314 | `declaration-track:20bf02d8ebe127410aeb9ba35d7796252fab6735f9f13453e89ba2ef879f030a` |
| 20 | `def` | [extractRatBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/extractratbound.md) | 324 | `declaration-track:5fbd93b5a63871abc9a7c200fba97648638584a6391967fb6b27b537b0d3cedb` |
| 21 | `def` | [getAst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/getast.md) | 360 | `declaration-track:8191331bd8352e466126dd6d0199bc48c5d00acb207a35cbd7768293bb0d4fe9` |
| 22 | `def` | [getSupportProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/getsupportproof.md) | 375 | `declaration-track:7cf15458f40e7699b3192f8cc62a78901d34bc5116e19a6dd0a2f89fbeac20fa` |
| 23 | `def` | [mkBoxExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/mkboxexpr.md) | 386 | `declaration-track:ae57f4d1b57eddc6e3088f7213b5efbdc629e526323622219cafbd48ad8b75fa` |
| 24 | `def` | [certCheckSucceeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/certchecksucceeds.md) | 392 | `declaration-track:8944d9bd7569f308553800e8430c7f1c68bb422df6202f85b4a9e26fb3fd4b50` |
| 25 | `def` | [getSubdivBounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/getsubdivbounds.md) | 407 | `declaration-track:7c64bd27fe6a06603eda88e1f045324c6990300f3d279d098e7654d6b2cdc84f` |
| 26 | `def` | [getLiteral?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProveCommonNamespaced.lean/declarations/getliteral.md) | 426 | `declaration-track:b59f0b0272f019257e235d8c3c301f7f5641276b0d0b91f62da6826519e229a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=803a6e83bae1734ec023701a7aae2486fa6baffd7201d0392a43b211d26cc106 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

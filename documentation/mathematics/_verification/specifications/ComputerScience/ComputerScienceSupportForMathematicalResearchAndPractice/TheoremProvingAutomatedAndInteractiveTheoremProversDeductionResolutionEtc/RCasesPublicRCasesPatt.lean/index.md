# Verification target: RCases Public RCases Patt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1fda580b9107b66e104e2eb0f3316eb249d48c1",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1fda580b9107b66e104e2eb0f3316eb249d48c1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Induction` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Replace` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Binders` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Generalize` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.unusedRCasesPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/linter-unusedrcasespattern.md) | 23 | `declaration-track:d95a9604ad95ced67e778241ef7ef20417d04f6382538f9ee28c27ec0f606122` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/instance-source-edition-3.md) | 28 | `declaration-track:6a4c78dc19043dad0c63073d543308adc2950592edaf73b568a16c2587bd4dbe` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/instance.md) | 30 | `declaration-track:4e2fbe1da19191badf5c1d6568d5ead06b6557554ae83c2538fd8ac5beb2c27c` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/instance-source-edition-6.md) | 32 | `declaration-track:fae16f3681353c32764c8f1a2674fb988ed883d489c22e1a053e41f7dfda22e5` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/instance-source-edition-4.md) | 34 | `declaration-track:a580aa45e445f1ad47109ae209dc932e9a45e027005deb97817fbdc8641efeb9` |
| 6 | `inductive` | [RCasesPatt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/rcasespatt.md) | 64 | `declaration-track:7a3cbd337d755eeb13b00d3f1157e223c31c484990633df0f43fea021640d26d` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/instance-source-edition-5.md) | 83 | `declaration-track:ececcf8901190fd29391c22fd12f0675f1825152d741d10f41903d921d262e59` |
| 8 | `def` | [name?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/name.md) | 86 | `declaration-track:a9187cf2e3e654fb4487e7b848eba36f859db66f911bce866b311141cf8282e4` |
| 9 | `def` | [ref](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/ref.md) | 96 | `declaration-track:54a22973422d41cbce46c95476581d1d94f979a7d8097669b7ece480cdbe28de` |
| 10 | `def` | [asTuple](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/astuple.md) | 108 | `declaration-track:268c045da18c887af6a3e994c2222d7121542f102ddd419927251265c188a849` |
| 11 | `def` | [asAlts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/asalts.md) | 118 | `declaration-track:7e7ba8e8c15647e9d0cd989e063f4e524027d1ecd56deb499809ba71e7b70a15` |
| 12 | `def` | [typed?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/typed.md) | 124 | `declaration-track:ac581a0119bd08ea76722ddc296d294373856f537c5ef90fa7226d2e4c381d6b` |
| 13 | `def` | [tuple'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/tuple.md) | 129 | `declaration-track:12942e8d7d3f70d705b8c5054a38548629a146bb15f311b87ae8fdf2f449d3fc` |
| 14 | `def` | [alts'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/alts-source-edition-2.md) | 137 | `declaration-track:c8fc5c624d098b90f937f696dd68ae027912e9ade339bbfaeb8b17de09399f83` |
| 15 | `def` | [tuple₁Core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/tuple-core.md) | 150 | `declaration-track:931dbba0eafef3bc380449ff1fa07886f9753bef2fb15e537770354936abf1ab` |
| 16 | `def` | [tuple₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/tuple-source-edition-2.md) | 161 | `declaration-track:cf71692332c32b2778c459ad50517719d0ed0a26c1ceefd0e0d03cd554c76a78` |
| 17 | `def` | [alts₁Core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/alts-core.md) | 173 | `declaration-track:9292b7d4b5538ca99ee90c8f572c5c127f2c6f310c80a51433e4ef3cef86990e` |
| 18 | `def` | [alts₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/alts.md) | 185 | `declaration-track:8dff94cd88c920a851f84035437b8cc4c1fd252dd204b7a50edfeadc276b90f8` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/instance-source-edition-2.md) | 191 | `declaration-track:566f25e155cb4f58a006f5a482d2b26a9ac45ee11a2bcd37b44eef1a9ed38607` |
| 20 | `def` | [processConstructor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/processconstructor.md) | 214 | `declaration-track:dbc4d91553d17193be79307fb77d02db99153b35e8f402614dd7108d0e005633` |
| 21 | `def` | [processConstructors](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/processconstructors.md) | 237 | `declaration-track:947fa721da0b2be5bc86f61d034648adcf735b3a58cea95f15d2ceba02ce8787` |
| 22 | `def` | [rcasesCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/rcasescore.md) | 270 | `declaration-track:33305507efa371622d807b4bd0e29519be0c2e598254049b8af537e85a1e9348` |
| 23 | `def` | [rcasesContinue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/rcasescontinue.md) | 353 | `declaration-track:9d15d0ed74b5b9ff6845cfed1ebdf746751c6ef63208f615b84c11c47ff30203` |
| 24 | `def` | [tryClearMany'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/tryclearmany.md) | 365 | `declaration-track:7a7605aa8723db419c41ef08c1ad32d5cdfc2a36d068fe14cea949fa3a9650a1` |
| 25 | `def` | [finish](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/finish.md) | 377 | `declaration-track:59133762f1b959c538587160833442f563377cf8391beefd869da5b9726f4faa` |
| 26 | `def` | [RCasesPatt.parse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/rcasespatt-parse.md) | 390 | `declaration-track:2242d5dce409b6dde26a5066a6cb033465e7ac550f15814e87264da2cf5c3de2` |
| 27 | `def` | [generalizeExceptFVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/generalizeexceptfvar.md) | 405 | `declaration-track:18f1fc60f5804183f7daff32a78232f86217e950989beae4aa0d3060e350045a` |
| 28 | `def` | [rcases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/rcases.md) | 423 | `declaration-track:31446de660971601de1feb9150d479db95c9ace0a1a7dd1a7d28cbda395a9b29` |
| 29 | `def` | [obtainNone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/obtainnone.md) | 447 | `declaration-track:96ddabba5040890f1f5f4a0e38638722963a7872d5f7df311984f74a39894d68` |
| 30 | `def` | [expandRIntroPat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/expandrintropat.md) | 459 | `declaration-track:97858323d90e8c17a482461e0a11616f8f8bc86fe9c13f718359b112dfb035a1` |
| 31 | `def` | [expandRIntroPats](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/expandrintropats.md) | 470 | `declaration-track:6cd625feda0f02ed533cca83287373bff6e0417be284d3ef3665f388276325a3` |
| 32 | `def` | [rintroCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/rintrocore.md) | 483 | `declaration-track:a1a869821793868a74077bd91bce839ec3643769c6746a40071e2800791fdf09` |
| 33 | `def` | [rintroContinue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/rintrocontinue.md) | 500 | `declaration-track:6956c318fb1fe000aa54b0645a19265e152ddc373f68c105cd277c880054924f` |
| 34 | `def` | [rintro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/rintro.md) | 517 | `declaration-track:18cbdebbf3f03567a659b5ea4c301b72ee41b74a744cfc3c3ec9de70513da596` |
| 35 | `def` | [evalRCases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/evalrcases.md) | 521 | `declaration-track:2eb71f301dad06044dadeca2e73fdf45e8c6709dd41925afb3608363610d1899` |
| 36 | `def` | [evalObtain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/evalobtain.md) | 534 | `declaration-track:71738182e7bfe60b53b1ae5f70ea3822e1094f94276e911bd94e4bfedeb878db` |
| 37 | `def` | [evalRIntro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RCasesPublicRCasesPatt.lean/declarations/evalrintro.md) | 554 | `declaration-track:98efc970f88afa4c4b27915d84dbdf856226ec6e65284e721cf8c1dcc62f6450` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f98ec445752014d88d4594300e73ee4026faeede4f1eefbe1beb56d95366b70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant8bcaa6cb582761e2673dcb4b756bc78d67d588bca6ba036f9bfbad35699a22b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Simp Public Meta

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Check` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.ConfigEval` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Meta.Simp.ConfigWithOptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/meta-simp-configwithoptions.md) | 23 | `declaration-track:1f57d6c0b0c22d4e6cb2ae3ae58691812c66a1658e45c3130bd3fec502741faa` |
| 2 | `structure` | [Meta.DSimp.ConfigWithOptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/meta-dsimp-configwithoptions.md) | 31 | `declaration-track:adf7cb969f2a4978c697c5784bb08959c0fdb5d6c88117fd81c1c74a47b9f16e` |
| 3 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/macro.md) | 67 | `declaration-track:c6e3659f950d4c87f37f980e0bc31ce2f27daabe4020f40015797293c5bceb9c` |
| 4 | `def` | [$fn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/fn.md) | 72 | `declaration-track:64360c6c395d0019a46c87d7d760877f0fa0b673fb75db638bf463bb99201213` |
| 5 | `inductive` | [SimpKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/simpkind.md) | 126 | `declaration-track:1972adb408e61af554cc82f3debbae981abe0f4bce07588829a88961890dc543` |
| 6 | `def` | [tacticToDischarge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/tactictodischarge.md) | 139 | `declaration-track:e16a9ea27f8d9185ed3c82438a0b4604b00fce4eb1a2035f8978171e89621f6f` |
| 7 | `inductive` | [Simp.DischargeWrapper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/simp-dischargewrapper.md) | 166 | `declaration-track:0b51957c6b97f7afe984c45d4005df6493d623a2cc01a6cafb29b599e9de6e69` |
| 8 | `def` | [Simp.DischargeWrapper.with](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/simp-dischargewrapper-with.md) | 170 | `declaration-track:13b98e9736edbf92a1b9e9d64c093b5e281787f2f13802cc1c12d89ab1c3c476` |
| 9 | `def` | [mkDischargeWrapper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/mkdischargewrapper.md) | 181 | `declaration-track:0eee1e0b7e4166e2c278829130105259fbd94338f5abc60bfd94fcc8b2064bc9` |
| 10 | `def` | [elabSimpConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabsimpconfig.md) | 191 | `declaration-track:3a5d93efd358e2fb3fc446fbcd3a6a0d539141be2fe42b6ef609f3be26a4f47c` |
| 11 | `inductive` | [ResolveSimpIdResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/resolvesimpidresult.md) | 197 | `declaration-track:d5bf9acb76a00208e02060e33d81027e723f16a176c69c640626210e30987e74` |
| 12 | `def` | [resolveSimpIdTheorem?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/resolvesimpidtheorem.md) | 210 | `declaration-track:f370357d7d83e0db685421dd8aa66984d7bbf3f3e6899b9d4bdd09dce089af00` |
| 13 | `inductive` | [ElabSimpArgResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabsimpargresult.md) | 249 | `declaration-track:2b5c954da894e4f9d36f35ec2d6c30b2023760e5df9cc3eaafa03285606451f5` |
| 14 | `def` | [ElabSimpArgResult.simpTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabsimpargresult-simptheorems.md) | 259 | `declaration-track:b31916d4da7967331becd50d9fcc45a12674d048d6a2549f854e3acdd2adb2d7` |
| 15 | `def` | [elabDeclToUnfoldOrTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabdecltounfoldortheorem.md) | 268 | `declaration-track:fe1272245a19a23107d8eba02a74b20789675252fc7df5e617c4333f41b5affd` |
| 16 | `def` | [elabSimpTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabsimptheorem.md) | 302 | `declaration-track:5f225d93b530f352510dceb97006ad69c49d62b881bbe0cf9ebaba63fd41bc34` |
| 17 | `def` | [elabSimpArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabsimparg.md) | 322 | `declaration-track:790aa0a67dfbb26ae2b800880161181802ce67857ed807b84971bbf0aa758d29` |
| 18 | `structure` | [ElabSimpArgsResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabsimpargsresult.md) | 385 | `declaration-track:3db9b7273e89e8382587e2e41a34ba4728bf4a5a50a3ae3d4385525107b8283b` |
| 19 | `def` | [applyStarArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/applystararg.md) | 392 | `declaration-track:73a574888840ef6b21ffdce4e6aa95d61d6a57b8e26b18849f4a4eac599156d1` |
| 20 | `def` | [elabSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabsimpargs.md) | 411 | `declaration-track:990e3845575bb351f8fafaeb8d9ac8670805c6cd0db1e4a5ec74f4e89a8b8057` |
| 21 | `def` | [simpParamsPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/simpparamspos.md) | 494 | `declaration-track:c5bee7368ae882bd9132ea3e0c0cca8b974e70de6f7e8a5dba87510b4d269aab` |
| 22 | `def` | [simpOnlyPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/simponlypos.md) | 497 | `declaration-track:2601599e4d6a112b73aaf34b7e09ea7940e6853f4f38d356fedda32f32131732` |
| 23 | `def` | [isSimpOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/issimponly.md) | 499 | `declaration-track:d34c687f7787bc146bfa42cc3d49e79b9273dd5ad9d5bb889ad98299e5553921` |
| 24 | `def` | [getSimpParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/getsimpparams.md) | 502 | `declaration-track:4fd9d75581daaa71d62782fb6df95d1e5bc5920b956c83083ae57eee81328726` |
| 25 | `def` | [setSimpParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/setsimpparams.md) | 505 | `declaration-track:b7bb4f75b67759f279ea6b6206d046aaeb50d542ca65beb8428447759b37a537` |
| 26 | `def` | [simpOnlyBuiltins](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/simponlybuiltins.md) | 512 | `declaration-track:10c9092b321e9f40c717e7bcb5fa8bdf2810bb7b111a09cda6a5e320473569e1` |
| 27 | `structure` | [MkSimpContextResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/mksimpcontextresult.md) | 514 | `declaration-track:760163a386945f14c42edeb5b1b4c646888a31ee20beb2054820967c6a26e0df` |
| 28 | `def` | [elabSimpLocals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/elabsimplocals.md) | 522 | `declaration-track:78c8161c8b51549df29658492bf46cff8b0943598e7b9d0c9d4de4589c2760b9` |
| 29 | `def` | [mkSimpContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/mksimpcontext.md) | 554 | `declaration-track:4a593a9211d410aaf5338fd45468f368b4475719d64d415c557391d2ff3d51a6` |
| 30 | `def` | [withLoopChecking](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/withloopchecking.md) | 587 | `declaration-track:989b0e5cfc6e5412591f4403415c868582f1686ca5093e96e44606c53677d10c` |
| 31 | `def` | [mkSimpOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/mksimponly.md) | 618 | `declaration-track:fed9915bede5d4cb93b10baa8bf9eac5312d0b0446b1c0ff1e01a647d53b72c8` |
| 32 | `def` | [traceSimpCall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/tracesimpcall.md) | 671 | `declaration-track:6a2eeb6230e96ae7793726f316c864f861f75709bc3a3183bd5177475f6b7f19` |
| 33 | `structure` | [UnusedSimpArgsInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/unusedsimpargsinfo.md) | 690 | `declaration-track:5dd82fd8460b234e1455217c4c2ee75afb3a807ab99f004b4e2742fdee1a8dad` |
| 34 | `def` | [pushUnusedSimpArgsInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/pushunusedsimpargsinfo.md) | 694 | `declaration-track:6afcb36425e1e1ede45f3b02eba06ee3691c5720c2d907a0a1a15719003ab7ea` |
| 35 | `def` | [warnUnusedSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/warnunusedsimpargs.md) | 705 | `declaration-track:98ca94385c887e22df7d52424abe5f67cab1b661a510c69e9166c69894185f56` |
| 36 | `def` | [simpLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/simplocation.md) | 761 | `declaration-track:848b7230ab5fba5a370cfb773a60bc14869c9c2bcfa7a952ca463365b011029c` |
| 37 | `def` | [withSimpDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/withsimpdiagnostics.md) | 780 | `declaration-track:8eda34a91a73552752c211cb1578644680672b0a4fb226c11c9231cd7e753de3` |
| 38 | `def` | [evalSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/evalsimp.md) | 788 | `declaration-track:533df24139add79fbf248ad1e05c6dccd9a7a431db3b4d59ac3a1dff956e9e7b` |
| 39 | `def` | [evalSimpAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/evalsimpall.md) | 802 | `declaration-track:d13aa6452ccd14a0725a3f4bfc53787948f2121e4a480cb6167d914319d3b678` |
| 40 | `def` | [dsimpLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/dsimplocation.md) | 820 | `declaration-track:e036974ecc9a640ed263b2b908cbdbf7921e63bbbb43a542a0717e9f71b9f65b` |
| 41 | `def` | [evalDSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/evaldsimp.md) | 841 | `declaration-track:3d603a338bd436df41704ef8f7909fcd3e67a3af358b249156c7f7f814cb479b` |
| 42 | `def` | [getSimpArgs?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/getsimpargs.md) | 855 | `declaration-track:a81311814cacb3ed52ee59254d3466e7194c7504d85a59253e8766f93bd41944` |
| 43 | `def` | [getDSimpArgs?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/declarations/getdsimpargs.md) | 860 | `declaration-track:5fd7f498fa18996844fdaa80d34d506e1a0d1de2d6af7b6bd39fa172c2a648a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cf75c220d3a87ff49e0d67ccd2f24e73e069de328c8e9d41feccea7f126b050 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

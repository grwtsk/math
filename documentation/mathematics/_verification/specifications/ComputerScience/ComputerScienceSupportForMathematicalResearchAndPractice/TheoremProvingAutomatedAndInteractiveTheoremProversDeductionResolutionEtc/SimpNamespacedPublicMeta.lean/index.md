# Verification target: Simp Namespaced Public Meta

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379beba19a25407004e5570bc892cf0e8327798b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379beba19a25407004e5570bc892cf0e8327798b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Check` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Elab.ConfigEval` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Meta.Simp.ConfigWithOptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/meta-simp-configwithoptions.md) | 31 | `declaration-track:86c96017894ae80a673237d391d6a074ae61102d975887e601a7eb7aada727b2` |
| 2 | `structure` | [Meta.DSimp.ConfigWithOptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/meta-dsimp-configwithoptions.md) | 39 | `declaration-track:3fa2904309e98094b8a486ea6c8b2c61d533e6be22c79de69bc6d01b5624ed2b` |
| 3 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/macro.md) | 75 | `declaration-track:14bddf1ad3ed3ffa8cb1ecfb38f8e461d475e9f5110b943c87e3e1d45a8b9cbb` |
| 4 | `def` | [$fn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/fn.md) | 80 | `declaration-track:5cef7724411a52cdd445550480aaf10c514372bff7519b621890925db5da0f27` |
| 5 | `inductive` | [SimpKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/simpkind.md) | 134 | `declaration-track:89e2b36c290adebe8975d351df75eb79e390ae5169035ee457eae6bb78b5ca49` |
| 6 | `def` | [tacticToDischarge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/tactictodischarge.md) | 147 | `declaration-track:133d9cc5c0cef3ecf647a7cb129ac6d1e06de4f513c1fc6de48cf9d4b1ac391a` |
| 7 | `inductive` | [Simp.DischargeWrapper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/simp-dischargewrapper.md) | 174 | `declaration-track:15ef22e6839b41e611c95e1100cd8460e9d3c96670c8bedba38f2e98e11e648d` |
| 8 | `def` | [Simp.DischargeWrapper.with](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/simp-dischargewrapper-with.md) | 178 | `declaration-track:c01ef20e74efa62948955c9c49c2c0c350448c5f36d8d2e3a70d7bceef507391` |
| 9 | `def` | [mkDischargeWrapper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/mkdischargewrapper.md) | 189 | `declaration-track:50c5b2ed23df23c582dab36dd344759bc02a8eac7c0a8f1bc3ee8839bbc437b9` |
| 10 | `def` | [elabSimpConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabsimpconfig.md) | 199 | `declaration-track:d4793994c8511e411ba829a50750cd3f816de5b3892638293e63a844ace550fa` |
| 11 | `inductive` | [ResolveSimpIdResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/resolvesimpidresult.md) | 205 | `declaration-track:bf395fb8e85fef0647fe5f15e5ded861323634ff6b39243ebf5e0bf3a70f251d` |
| 12 | `def` | [resolveSimpIdTheorem?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/resolvesimpidtheorem.md) | 218 | `declaration-track:736cd66e303ba488074ce232f7874ee0eafbf9cd66172fdc6ed3cd8b33cb7c66` |
| 13 | `inductive` | [ElabSimpArgResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabsimpargresult.md) | 257 | `declaration-track:beef91ea18949987ec0325e00be35bf3c69d7fd7fb25beb93bda7c3672f3acca` |
| 14 | `def` | [ElabSimpArgResult.simpTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabsimpargresult-simptheorems.md) | 267 | `declaration-track:9830998407a44ca468a98d6cdac1e833d1ddb60f2575569b34a10edd2eca9cc6` |
| 15 | `def` | [elabDeclToUnfoldOrTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabdecltounfoldortheorem.md) | 276 | `declaration-track:51889bd1735916cd7868d096a89827b3f2de1e3fa924d56e47cc81765be80b1b` |
| 16 | `def` | [elabSimpTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabsimptheorem.md) | 310 | `declaration-track:4dcc80bc547bd15fddb04ed0f54bf4409f731155aa73a868fd20b4aead258b50` |
| 17 | `def` | [elabSimpArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabsimparg.md) | 330 | `declaration-track:d12ca166864b0ae212567c5423180912bf9058210179ce2288d3766b79f39373` |
| 18 | `structure` | [ElabSimpArgsResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabsimpargsresult.md) | 393 | `declaration-track:989508be241583981618c7187abf3a33b3a9281b5ce8229694ee131f56be15b3` |
| 19 | `def` | [applyStarArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/applystararg.md) | 400 | `declaration-track:ae807bbd2d6d5256744f64ef28e52d9bb608743f9a086afcc4e5313bead903e4` |
| 20 | `def` | [elabSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabsimpargs.md) | 419 | `declaration-track:3bca9bdf7bb2fafc5ad57dfb519d590793ae0f1dd766f26c1b142c192464d0ac` |
| 21 | `def` | [simpParamsPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/simpparamspos.md) | 502 | `declaration-track:03926596e522efaec97d5ccf2f6042a1e7566eca26926755863ea25448e81c7a` |
| 22 | `def` | [simpOnlyPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/simponlypos.md) | 505 | `declaration-track:c92a9e7f84f8a215ecfc71a2c213c6107ee9283ef2b884b6f061060891c0fb78` |
| 23 | `def` | [isSimpOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/issimponly.md) | 507 | `declaration-track:ffae81cb5fd9b67fab9b495df39461e6693a8add9abb93c5e4f763e96d31b87f` |
| 24 | `def` | [getSimpParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/getsimpparams.md) | 510 | `declaration-track:5daea5678b372af9488be5ec608595db41ab4edb6f1a4bbdb4813babd7aafc9e` |
| 25 | `def` | [setSimpParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/setsimpparams.md) | 513 | `declaration-track:ae6ba849744bea0d5c029a0a366b9ff1afbe834273570ee40915c59384259485` |
| 26 | `def` | [simpOnlyBuiltins](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/simponlybuiltins.md) | 520 | `declaration-track:d67884734101d7fb8d097daf490f314a85d257f8ca402d99aa1b4dde24e78c49` |
| 27 | `structure` | [MkSimpContextResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/mksimpcontextresult.md) | 522 | `declaration-track:25170c96b22711839d84511f98d5b07ea050f63a868514d3e39b5818eae925de` |
| 28 | `def` | [elabSimpLocals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/elabsimplocals.md) | 530 | `declaration-track:b531262fa8f6e71fa6f385d3e3aed67e0873c78af5104b55e7fdbe7155222d63` |
| 29 | `def` | [mkSimpContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/mksimpcontext.md) | 562 | `declaration-track:55cd8beb451bd748fd1e32d0e599607ddcc147d6d9eec8b0f7fbee41f83a3edf` |
| 30 | `def` | [withLoopChecking](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/withloopchecking.md) | 595 | `declaration-track:1ad32dd063570adddf9650570b4b67a382dea65034e90467b37680780f79de21` |
| 31 | `def` | [mkSimpOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/mksimponly.md) | 626 | `declaration-track:eecb3ebeada0bf201c91d01fd2c262045e903440d44fd97533bb2cc01b784757` |
| 32 | `def` | [traceSimpCall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/tracesimpcall.md) | 679 | `declaration-track:50e830f1fce559281b5509d9e53a7008f0b3bfb72f280d122c7162be07394b95` |
| 33 | `structure` | [UnusedSimpArgsInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/unusedsimpargsinfo.md) | 698 | `declaration-track:854fdeb3e80e921a9aa99f043fd030b644225c7ff537e4b9d4e375985bba8b16` |
| 34 | `def` | [pushUnusedSimpArgsInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/pushunusedsimpargsinfo.md) | 702 | `declaration-track:5e6304dbda8948415bba11a6b585013f1955671845cf4875ace86f77b186899a` |
| 35 | `def` | [warnUnusedSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/warnunusedsimpargs.md) | 713 | `declaration-track:761395f723d0eb4d280aadbedee6fccaf0e990fbb6ace37ac97c4ac64d588df3` |
| 36 | `def` | [simpLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/simplocation.md) | 769 | `declaration-track:f819894355eafa9f12c4689f7c6bc454b668adfe01e1e2c5936bba962c214269` |
| 37 | `def` | [withSimpDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/withsimpdiagnostics.md) | 788 | `declaration-track:afad56edd9e168ea5ea24b94f7f9792ee23b78f72990fbafa8859772fa918c0a` |
| 38 | `def` | [evalSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/evalsimp.md) | 796 | `declaration-track:0b7660a63ba2b11342eccdfd06f01390d6e43bed1a400513ee1af81ab2aa3cc0` |
| 39 | `def` | [evalSimpAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/evalsimpall.md) | 810 | `declaration-track:de5cd1f3e8f4334dc777d1709e14c17682295d6da06477b7973a39728e3f24f8` |
| 40 | `def` | [dsimpLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/dsimplocation.md) | 828 | `declaration-track:a7bb6885e79e91d8f38e7c6e865f93cb79322cfb365c74fc7fa81c7838eef06f` |
| 41 | `def` | [evalDSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/evaldsimp.md) | 849 | `declaration-track:8959594c7d5588c2e63da7af655b20eeb64e5cd23828898b842448b021a146f1` |
| 42 | `def` | [getSimpArgs?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/getsimpargs.md) | 863 | `declaration-track:126b1bb3440f8b3bcc2cdcc566ae15c4cb637fb39bd1d7fabe55e424da55270c` |
| 43 | `def` | [getDSimpArgs?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicMeta.lean/declarations/getdsimpargs.md) | 868 | `declaration-track:ed12355693fe7a03b5c4e52712e166e998441e7f017d343e900272867133ee4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6961226f35be3a7ac340b25562f68f6af50946b5d55e55d57f91b1817e31157d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

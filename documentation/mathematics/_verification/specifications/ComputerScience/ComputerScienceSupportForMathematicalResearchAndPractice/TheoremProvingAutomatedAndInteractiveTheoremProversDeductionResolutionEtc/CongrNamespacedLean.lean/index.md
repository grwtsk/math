# Verification target: Congr Namespaced Lean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dab970ac46b8d79d823379ea7951e93247fbb02",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dab970ac46b8d79d823379ea7951e93247fbb02`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Logic` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/initialize.md) | 34 | `declaration-track:386eae46fb51fbf93d23e018bfb1aee2f4a6da3434662faad19fd0bbf2678185` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/initialize-source-edition-2.md) | 35 | `declaration-track:6b3f4c3bd366fce958a52202c73b886055e52bd44460fcd84bccc7f0d8c431d3` |
| 3 | `structure` | [Congr!.Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congr-config.md) | 38 | `declaration-track:7fad1e50b8fa13a79dfa7f9d259d437d7dd75a793701e7bfed5728acf3abd6dd` |
| 4 | `def` | [Congr!.Config.unfoldSameFun](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congr-config-unfoldsamefun.md) | 121 | `declaration-track:380fe55c3ec2ab429cd664fd1181e0f09f08a0b2dabb5204bb41396512872224` |
| 5 | `def` | [Congr!.Config.numArgsOk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congr-config-numargsok.md) | 128 | `declaration-track:c1b522746ecd02b7834e86364968ae6a0d275cc38e7ad811dd98306de4c8d079` |
| 6 | `def` | [Congr!.Config.maxArgsFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congr-config-maxargsfor.md) | 132 | `declaration-track:66a4c16fc03d4683122ae1074ba28d46966ff91a62b91272ab54482ac3dc16fd` |
| 7 | `def` | [Lean.MVarId.iffOfEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-iffofeq.md) | 141 | `declaration-track:172603e46ec74ac76f918f9dcb714e1f03fa094452dc217f0f416bf007a9263a` |
| 8 | `def` | [Lean.MVarId.propext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-propext.md) | 151 | `declaration-track:b299d2fc7f75edf25edaaf0317dd6c97ddca6033da56281bf72f2089b2649f56` |
| 9 | `def` | [Lean.MVarId.proofIrrelHeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-proofirrelheq.md) | 168 | `declaration-track:03d9217fa272f7c59a42ab1ac1aa656b2cbb52ec2a0906482d8f0bb2060f122b` |
| 10 | `def` | [Lean.MVarId.subsingletonElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-subsingletonelim.md) | 187 | `declaration-track:46c730de807f2db206159bddfeb1ec3329270975899fbdbf75b88598db41d7f9` |
| 11 | `def` | [applyCongrThm?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/applycongrthm.md) | 205 | `declaration-track:004d289f0a0c6c2daf987acae17e1cb996972c8bf7ce09af94a186eb2c450cc0` |
| 12 | `def` | [Congr!.mkHCongrThm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congr-mkhcongrthm.md) | 244 | `declaration-track:59093656da074516867694ab0a5baa9f11b0dfb87f83ec3c77837d9e723424ff` |
| 13 | `def` | [Congr!.plausiblyEqualTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congr-plausiblyequaltypes.md) | 391 | `declaration-track:6b8833b20589905d49d7edde43873f9a151cf9fd3467022870561d0549be15bd` |
| 14 | `def` | [Lean.MVarId.smartHCongr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-smarthcongr.md) | 428 | `declaration-track:3186562e0de59993042dd4f10870197f08e27472161b0bbdaa61508f5896843f` |
| 15 | `def` | [Lean.MVarId.congrSimp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-congrsimp.md) | 537 | `declaration-track:98b623163635526feb27716a4cf07d3f3137ec1dd8b682b35ce5543a37167d66` |
| 16 | `def` | [Lean.MVarId.userCongr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-usercongr.md) | 577 | `declaration-track:a20b76ecf196f4bab25dde49e12bbfd79874df1b4f8187ed03ab5efda2a32c2a` |
| 17 | `theorem` | [Lean.MVarId.rel_of_eq_and_refl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-rel-of-eq-and-refl.md) | 608 | `result-track:de5addcfb8ebdb57e8f9eedb44c23f8e94b8c6448a09bf2ad12abdb3e259005f` |
| 18 | `def` | [Lean.MVarId.liftReflToEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-liftrefltoeq.md) | 615 | `declaration-track:e7c3a9006a9032fcb794cc6a0e7e49ab44ad81748283fb304e0d41ae245e69d7` |
| 19 | `def` | [Lean.MVarId.congrPi?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-congrpi.md) | 640 | `declaration-track:9b074c629d57760eb6acc9c9e5f15ef695ef9d55079548180273ea0661364644` |
| 20 | `def` | [Lean.MVarId.obviousFunext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-obviousfunext.md) | 650 | `declaration-track:be629e639a4daaec54a4758367402b9644e8daf7e8a2522378b609f721c2ee90` |
| 21 | `def` | [Lean.MVarId.obviousHfunext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-obvioushfunext.md) | 663 | `declaration-track:9e4ab55347452b2f584fb280d184561882e59ee5645ef67047a327d36b9d15c9` |
| 22 | `theorem` | [implies_congr'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/implies-congr.md) | 671 | `result-track:7b22224ddebeafe2f47bb4180d116ed2713f226776259e507682014be847e2a6` |
| 23 | `def` | [Lean.MVarId.congrImplies?'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-congrimplies.md) | 679 | `declaration-track:87e76f965cca06f1aa4c29c41367d6a8acef86c14df2e72fd74fe9a6397b1397` |
| 24 | `def` | [Lean.MVarId.subsingletonHelim?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-subsingletonhelim.md) | 691 | `declaration-track:ea8aaaaad9796b0f8f359e0233f6f60e697790a58290d169f20298c6a67275b9` |
| 25 | `def` | [Lean.MVarId.congrPasses!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-congrpasses.md) | 710 | `declaration-track:f1e134aade61df8433481be1e526e82b4aeac0c8edbc9adea2a4dd50ab9fd20d` |
| 26 | `structure` | [CongrState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congrstate.md) | 721 | `declaration-track:79f04c61d3a3b03dac7f9ea08d78ae899706e25391947449b9134ec8070c59f7` |
| 27 | `abbrev` | [CongrMetaM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congrmetam.md) | 727 | `declaration-track:67a1c2a855f1f0f79f18381ae3a013f1c4d3c2e7d54d42f4157180ac3f4fb262` |
| 28 | `def` | [CongrMetaM.nextPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/congrmetam-nextpattern.md) | 730 | `declaration-track:5063f331e2628de8351d7fef26a15cbcb0283405b07ee3c6b522c3769cb63e30` |
| 29 | `theorem` | [heq_imp_of_eq_imp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/heq-imp-of-eq-imp.md) | 737 | `result-track:49f5bcd6218eb13a7e40bc4d9ceb9577f694b8185fa3a3c280dcfb7783cc6bd4` |
| 30 | `theorem` | [eq_imp_of_iff_imp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/eq-imp-of-iff-imp.md) | 742 | `result-track:886b434899be59e606d3176b492cbe2a9d32100f525796eeab647b42c9fbbef9` |
| 31 | `def` | [Lean.MVarId.introsClean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-introsclean.md) | 759 | `declaration-track:98f63f9a2f8531ca03736229ab43f68900f68621b96f42e6c7695f880c139524` |
| 32 | `def` | [Lean.MVarId.preCongr!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-precongr.md) | 809 | `declaration-track:9169928e1c2e6bcb40898d246229f40cebdeba797e310305e6647046793d494b` |
| 33 | `def` | [Lean.MVarId.congrCore!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-congrcore.md) | 826 | `declaration-track:07fcee834672a3399650d5ae9711a87141ed090861d63530a333db48bb7eb4c5` |
| 34 | `def` | [Lean.MVarId.postCongr!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-postcongr.md) | 849 | `declaration-track:706fa629832c7efb0967db8331d070582649a95e4ecd1b9e4218dfc3f1810b55` |
| 35 | `def` | [Lean.MVarId.congrN!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/lean-mvarid-congrn.md) | 868 | `declaration-track:2b933eae0e5fdc640b0a20f47c1fb7d62aee9add9e3514e0c998d67e4203d106` |
| 36 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/syntax.md) | 971 | `declaration-track:a5c0b143e8eb3b95aa9b12378a75da659ea4398b9f1218177939444ac1efe2fd` |
| 37 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrNamespacedLean.lean/declarations/elab-rules.md) | 974 | `declaration-track:7da68c7391a0adfd80b3e33929b63bcc249a0a5e10305da08c399708e9db35f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cab22e1c29cfddde5d738ca0ef3b86ae3b4effb7a1ebd3e34011c27afb594ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantc590e4ac269203922fe409beb2a778ba5996043c49a93a3db5e32d3bc639da35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

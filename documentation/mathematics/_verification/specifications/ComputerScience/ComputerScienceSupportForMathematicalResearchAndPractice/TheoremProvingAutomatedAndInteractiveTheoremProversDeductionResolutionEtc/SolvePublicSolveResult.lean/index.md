# Verification target: Solve Public Solve Result

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5628e82bb9a7a689b3776d46674102654293213e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5628e82bb9a7a689b3776d46674102654293213e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.InferType` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InstantiateMVarsS` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SolveResult.StopReason](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/solveresult-stopreason.md) | 32 | `declaration-track:2664d91ce955a6446e12511d2446640f644449ea0685e7cf1a9692693aa9e6d9` |
| 2 | `inductive` | [SolveResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/solveresult.md) | 46 | `declaration-track:c1b8f0f7db68ba6901102c8e7f09474c0db05af885dee2f141e8eb0d51f19639` |
| 3 | `def` | [isDuplicable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/isduplicable.md) | 52 | `declaration-track:336e365829bae004b376b75481d86a251715ed88f40bc20980a65f06247fd91b` |
| 4 | `def` | [forallIntro?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/forallintro.md) | 59 | `declaration-track:8de9d371afcbb0175894903451cb56d2f330710130b8284d468c93a84838a43a` |
| 5 | `def` | [throwIfUnsupportedJP](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/throwifunsupportedjp.md) | 70 | `declaration-track:cb153645b0871d21d79fc894aac62df81a3c94c57d5e9c81f36c4d3a7d713a05` |
| 6 | `def` | [targetLetIntro?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/targetletintro.md) | 80 | `declaration-track:10a20421b7faefe09559e45c352b09b90d41f1ed309b9360d935b4130f499f2e` |
| 7 | `def` | [tripleUnfold?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/tripleunfold.md) | 91 | `declaration-track:fbf860541e3cf93bc0512bb3d292f3ce225990fe9fa738417b93898b84618aaf` |
| 8 | `def` | [bareWPToLe?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/barewptole.md) | 97 | `declaration-track:7ce05f10dbab5e3cc2f2884e6fef0fa84fbf94af5f8a6ef554009e03eb4431d5` |
| 9 | `def` | [rfl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/rfl.md) | 109 | `declaration-track:ab1a0f6a077cc2fd0ea22e5202b0e4bdaab7e007ba2ba124d88e17140a68cf7f` |
| 10 | `def` | [liftedPreFor?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/liftedprefor.md) | 116 | `declaration-track:3528c53b0214d460e6da24226b0138a3bbf750950047910a1ec90985be2b5088` |
| 11 | `def` | [liftedHyp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/liftedhyp.md) | 126 | `declaration-track:8be89108cf635e0111db28cfa70a84e578cfb87e46387a2e3a19fc522431031b` |
| 12 | `def` | [liftedHypBare?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/liftedhypbare.md) | 137 | `declaration-track:57b5ea322d139f8ea4073673b2e45f52036595c38297bf118084e6d41813be39` |
| 13 | `def` | [stripMeetTopPre?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/stripmeettoppre.md) | 146 | `declaration-track:f7729a31114f3bd702019b29b6a49b27726e879ee3bb47ccf51aaba7bfc8e1cd` |
| 14 | `def` | [ofPropPreIntro?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/ofproppreintro.md) | 156 | `declaration-track:357e2be2146fac33e52ed5123f0468c064e70b66e8066e590eb58ffe19cd147f` |
| 15 | `def` | [barePreIntro?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/barepreintro.md) | 164 | `declaration-track:5e7c963adc3990e7e42cb0bb714cf3d302bdb28f4170f1717262debee699cd7c` |
| 16 | `def` | [normalizePreToTop?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/normalizepretotop.md) | 174 | `declaration-track:f1d4496b695fc46865a82fe11ff9085da3841f785c96830ec1e26f8ebbc8e698` |
| 17 | `def` | [normalizePre?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/normalizepre.md) | 189 | `declaration-track:1a36e67f441bcce5e4df8d4f36cc999cc47074340d5dd6eb669665c7b830c17a` |
| 18 | `def` | [replaceProgDefEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/replaceprogdefeq.md) | 203 | `declaration-track:dcc82e49ab6acfcfeb590e82329f8d89b38779f71c020082ce3a8e15c4dc714b` |
| 19 | `def` | [wpConsumeMData?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/wpconsumemdata.md) | 214 | `declaration-track:50cd2cc53c53f7909611025da948d007480b50eff154a4251eea7fcf9ac11c83` |
| 20 | `def` | [wpLet?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/wplet.md) | 219 | `declaration-track:20cbb94d78171e891e36d37d9b263ab3bf41778fe5df28416aeec2c9b9fe07bf` |
| 21 | `def` | [wpMatch?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/wpmatch.md) | 244 | `declaration-track:2c0ed1a2edbff22aededc65b2e670b977d21e2cdf84cecd7b1ef662bf744b294` |
| 22 | `def` | [wpFVarZeta?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/wpfvarzeta.md) | 262 | `declaration-track:b6988140ac79db8730ce931944f21192c272e99a671f31670cce7d60eabfa36b` |
| 23 | `def` | [wpHeadReduce?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/wpheadreduce.md) | 272 | `declaration-track:9535559c03d42c6ea76762e0b1bc587c2b1ecf97ae4d7b011d99b9f5f54e99b4` |
| 24 | `def` | [stopOrErrorOnMissingSpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/stoporerroronmissingspec.md) | 283 | `declaration-track:91ece123bb68e578ae767bfc0849bd0ba5a4a1dd87f2dc9b1129308cbc3eaa6b` |
| 25 | `def` | [findSpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/findspec.md) | 296 | `declaration-track:a25841d86f0567855af4f6e3f76e5009ac7b977d4b2f254528aeb831064778ab` |
| 26 | `def` | [applySpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/applyspec.md) | 308 | `declaration-track:fc4143c93a135cbb294698698ed7d781785b031b8f53c8501368c37a47d4b14c` |
| 27 | `def` | [matchesUntilPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/matchesuntilpattern.md) | 333 | `declaration-track:0638a85853689c04fc662fdd310360f3bc3a668da5a30787cb86ed42d5a65ab0` |
| 28 | `def` | [withLetDeclsDND](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/withletdeclsdnd.md) | 343 | `declaration-track:b472f208ab6d2a68ebd80f0eb0e55fea7bd6c11fbd93bcf03da5b3f7e4161204` |
| 29 | `def` | [elabFrame](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/elabframe.md) | 359 | `declaration-track:b9b4145ff3dafeddc3f4f2bcab34fc4db6ac43e5ae1fe0c48a105c1831a8b7be` |
| 30 | `def` | [matchFrame?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/matchframe.md) | 375 | `declaration-track:25907f49c64020aaa80039c3b9482cfdddd54436f703b7d800b13fe0f01660c2` |
| 31 | `def` | [isFramedPost](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/isframedpost.md) | 396 | `declaration-track:70c690c3172935d993fde7e314359733f8d38b937e447b52055a64dda1418fcb` |
| 32 | `def` | [isStructuralCombinator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/isstructuralcombinator.md) | 402 | `declaration-track:f7088afbaaf346ddbfc3d409b3b6317125dbf38aafc0e88507ad5dfb4662a517` |
| 33 | `def` | [applyFrameRule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/applyframerule.md) | 412 | `declaration-track:6715bbac0e313de6886d7cddea168fa480117807f39ed8badf2271529b64243b` |
| 34 | `def` | [specPreOf?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/specpreof.md) | 426 | `declaration-track:e68c5fbb66ff69123a9c50ab263cc7c8764a5ad5d412f450630417a8b612eaa3` |
| 35 | `def` | [applyFrameOrSpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/applyframeorspec.md) | 446 | `declaration-track:c844e7c21efd52adcc92f96168a8dd10e210633c10c8194076e693f31674e106` |
| 36 | `def` | [solve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolvePublicSolveResult.lean/declarations/solve.md) | 502 | `declaration-track:f93dd09672743293ab7e09839a5da77445abe240d4379d56bcacf2531643c605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=381b24cc77c1b017ba4afac2bd7b644d550cd790ba4e286bd03feffda767fc94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantab96dfdc0c81f31db9479d8f5716534c7643c79dd8b4a86f6a2ca2fdffa5ea6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

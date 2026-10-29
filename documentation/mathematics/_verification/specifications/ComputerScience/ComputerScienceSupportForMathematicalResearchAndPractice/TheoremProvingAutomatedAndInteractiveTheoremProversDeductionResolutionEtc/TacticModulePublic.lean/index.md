# Verification target: Tactic Module Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a0bfd2ee6a0415b489d32e3c39c7794614bcd26",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a0bfd2ee6a0415b489d32e3c39c7794614bcd26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean.json)

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
| 1 | `def` | [NF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/nf.md) | 55 | `declaration-track:e986ff5d401abc1d17af4bc480b0dd6382e6124214087fcdf17e19753dd22fbf` |
| 2 | `def` | [cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/cons.md) | 62 | `declaration-track:86b53e4042588f50ad66442e4fa6430af89301ac03e4f6cb23edecc37ecbf5e1` |
| 3 | `theorem` | [inductionOn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/inductionon.md) | 69 | `result-track:89f12d5cd83a45780c202200301ff8d5c13fba489fcaeaf9465898067bd33a4e` |
| 4 | `def` | [eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eval.md) | 76 | `declaration-track:2cd3a5bdd86483861f5628afeac1fb6dc54de8b32f7071b8066588c4be9f7571` |
| 5 | `theorem` | [eval_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eval-cons.md) | 78 | `result-track:5ccf0ea2ec7d3a0d92b8c925eeaeffe996b4dede7f51214c70266ebe7a7f3b5e` |
| 6 | `theorem` | [eval_nil](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eval-nil.md) | 82 | `result-track:ab0773b50826358d130a6f6bae5848834c8c1b260cf52fe5be5525a8ec8cc22a` |
| 7 | `theorem` | [eval_cons_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eval-cons-eq.md) | 85 | `result-track:fceea9fc9c686888477a9bcc13c7f7495bb00068e1224288719fe2762acabfd4` |
| 8 | `theorem` | [atom_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/atom-eq-eval.md) | 91 | `result-track:7e2a83d447050d293e2791c67f9fa95fbff490fe2c0ec0449816146fc29d7ae6` |
| 9 | `theorem` | [zero_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/zero-eq-eval.md) | 94 | `result-track:b9cfff0ca424fc1670ef7a5c5e66e8b7305b9ae3faaadceed94d7e844fc7117d` |
| 10 | `theorem` | [add_eq_eval₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/add-eq-eval.md) | 96 | `result-track:537dbb14c090c7dde13775de8e49036963f1954bc49dd3927fdbc67b17cfd764` |
| 11 | `theorem` | [add_eq_eval₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/add-eq-eval-source-edition-2.md) | 101 | `result-track:ae737d868787d25e1cb7b647f655fc85d1a91c8e3ac5d35afe663b5e8410eac0` |
| 12 | `theorem` | [add_eq_eval₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/add-eq-eval-source-edition-3.md) | 110 | `result-track:f009231cf5079aec18c129b79973b51635fbdf32b1f4adf6440fbc324f293f21` |
| 13 | `theorem` | [add_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/add-eq-eval-source-edition-4.md) | 119 | `result-track:ffc2756546316066f6a65a81814d156708ca262e1aee4c9a8c315b755f1f034f` |
| 14 | `theorem` | [sub_eq_eval₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/sub-eq-eval-source-edition-3.md) | 126 | `result-track:e9f4afaf197d2adf2612bd9b3af844e894fbdb1e8bf7350ec85267c085304f8d` |
| 15 | `theorem` | [sub_eq_eval₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/sub-eq-eval.md) | 131 | `result-track:00ce3423c48a542fafaa67a3c56ed16e73106600311d4e6f04500507acfa8491` |
| 16 | `theorem` | [sub_eq_eval₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/sub-eq-eval-source-edition-4.md) | 140 | `result-track:f6902c6ec29b9810f2b31305009b66d0767a6eafa9c417f815f7d37fd674a18c` |
| 17 | `theorem` | [sub_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/sub-eq-eval-source-edition-2.md) | 147 | `result-track:a620da66a0962f6b22a6e53d69ab4c3b543d5a656cb8bc59ddc2ef32d1c5fa56` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/instance-source-edition-2.md) | 156 | `declaration-track:a8e2cd8a04e185e8059024b41d5bd118c7b79ddfa8dffe9ac6c29bb4e06c816b` |
| 19 | `theorem` | [neg_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/neg-cons.md) | 159 | `result-track:cb5c326713d99a51fee0cfe25b78a134ad5f278d3ba2cc061bb8a0bab7e3c3ce` |
| 20 | `theorem` | [eval_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eval-neg.md) | 161 | `result-track:aaa1b26dc87c253e7441e3e285083ed0cf4029381bcd4ef3645b89952d69346d` |
| 21 | `theorem` | [zero_sub_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/zero-sub-eq-eval.md) | 166 | `result-track:f094fed1098d49e2b01eb39732fbdf69fcf866541744490244758a5143b59dd0` |
| 22 | `theorem` | [neg_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/neg-eq-eval.md) | 170 | `result-track:0e36153765c975edad76dd98f472c018de0c2b1cceb3cd244ef432da499379c8` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/instance.md) | 175 | `declaration-track:921207d481de01f805c4d15e714bc3ec5049648388856826437c0eea5b85001f` |
| 24 | `theorem` | [smul_apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/smul-apply.md) | 178 | `result-track:c15f3b72f9d1da08fa2663bbffed698f73886dae8aae4c872d8d30cca94132b7` |
| 25 | `theorem` | [smul_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/smul-cons.md) | 181 | `result-track:ee664e09950e957d7f34ed23b189ccd6dd251e67f5cd0ad8564029f51bb9be0b` |
| 26 | `theorem` | [eval_smul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eval-smul.md) | 184 | `result-track:73b85b3654b32afe7ac2f2a9bd624e53d164260e27d4f2537727d1636210da8d` |
| 27 | `theorem` | [smul_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/smul-eq-eval.md) | 191 | `result-track:fdd00eb3143eb0ca94977e55781cce3a494b4ad6879e146b82ef5fe22d5f0ebf` |
| 28 | `theorem` | [eq_cons_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eq-cons-cons.md) | 198 | `result-track:86e3db0cad60c52e417f4aecd3c26502e68f13ace5aee4a6e440881d5cbb98dc` |
| 29 | `theorem` | [eq_cons_const](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eq-cons-const.md) | 203 | `result-track:800c1e9271aff2293e7ae3a33b1663c891fe4de476ef49515a753b9c092d325a` |
| 30 | `theorem` | [eq_const_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eq-const-cons.md) | 208 | `result-track:97ecf928e2f067fb7b68f5e311fd43ca08649cd6dc25379337e7928d8d0544bd` |
| 31 | `theorem` | [eq_of_eval_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eq-of-eval-eq-eval.md) | 213 | `result-track:1a9d96afe4e26e28a2820f7e5ebe979ba82990374a125bd7002a7f43f0e3d5ba` |
| 32 | `def` | [algebraMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/algebramap.md) | 225 | `declaration-track:f040ce26963d085710578d71f6ab5e6b65b17e2e8565c51ad1db3d65cba5dbd8` |
| 33 | `theorem` | [algebraMap_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/algebramap-cons.md) | 228 | `result-track:9e1123e2dbe1d3e078460009fd5e8672375b9377b0c6827b913787bc48b7a182` |
| 34 | `theorem` | [eval_algebraMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eval-algebramap.md) | 231 | `result-track:e1470ac1e495e26350b9c9e43bd4c6829b35efe177f14839b1400bde32d81546` |
| 35 | `abbrev` | [qNF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/qnf.md) | 259 | `declaration-track:5d082f3753861cc2343a9d98b8598931f917d6bd8ed6827a8b880006141e2b18` |
| 36 | `def` | [toNF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/tonf.md) | 268 | `declaration-track:44369270418e43a9785f015ebc22ee66da05177f4fdebf652e8fb1fd39f6fdf6` |
| 37 | `def` | [onScalar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/onscalar.md) | 276 | `declaration-track:6a3390344d9814fc8e6daf429cc989c1c92b9f031df45ffe30fb1c7cf31aa51a` |
| 38 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/add.md) | 292 | `declaration-track:2c202ccc2fdb346b1b91d75afff7e82f6f9e5c5d6fba8afad272bd46a3b8bca9` |
| 39 | `def` | [mkAddProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/mkaddproof.md) | 307 | `declaration-track:7399e1b22920dd3afe3df32a70febd37fb196b8831e4cf1c4787d98c840a3da7` |
| 40 | `def` | [sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/sub.md) | 337 | `declaration-track:9252281bc1f446ad3b90f10a24050820cd9a8718bf68bbb8d54bce4d21ef30d2` |
| 41 | `def` | [mkSubProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/mksubproof.md) | 352 | `declaration-track:fad8320f515c4cd350a2d662464415b18098c661c63dd8ccec922afaf1dfee0e` |
| 42 | `def` | [matchRings](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/matchrings.md) | 382 | `declaration-track:35ae42aa528f5c309bf2c42464a933b026e6d55a85d4e07a0fa159bf4829220f` |
| 43 | `def` | [parse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/parse.md) | 437 | `declaration-track:344ec1616febd5b700de6607239e292d2b8eef128349f2daddc47f55a2e1a169` |
| 44 | `def` | [reduceCoefficientwise](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/reducecoefficientwise.md) | 508 | `declaration-track:98a7b9e5b851658d84b2f9668658aff12361efe30814a905bde73d71a2933c84` |
| 45 | `def` | [matchScalarsAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/matchscalarsaux.md) | 550 | `declaration-track:c160817e588c169b6a8440cbbd04502d8db0366a89a201ef0cfc38d5b804d0b5` |
| 46 | `def` | [algebraMapThms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/algebramapthms.md) | 592 | `declaration-track:17b5c44d551110ca1c50f078d47a5ee1cb21bf634c035aec6504db54f917269c` |
| 47 | `def` | [postprocessCtx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/postprocessctx.md) | 595 | `declaration-track:90682e8a30d5d37460f6b69cb5df4c19ff70f304352f47d4590e2d1a49625154` |
| 48 | `def` | [postprocess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/postprocess.md) | 612 | `declaration-track:9f1fc6d1eed10e8040c0523ad40113468a6c815ab178a63208e2bc9f88590eec` |
| 49 | `def` | [matchScalars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/matchscalars.md) | 621 | `declaration-track:4fff9eb0eafcef53c96be1e819d6ad0118477def3375d65c54f4dc777836ac06` |
| 50 | `def` | [normalizeScalar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/normalizescalar.md) | 628 | `declaration-track:5fba20dbc1c1bd09b7c4df62ae2616dcb3a0b8bd5e81cac7dade6a4a8168f9ce` |
| 51 | `def` | [qNF.rebuild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/qnf-rebuild.md) | 638 | `declaration-track:28e2122e1de1c3523b356e7f5a51b2d6afc01d2ce4986440272a86a45485b666` |
| 52 | `def` | [qNF.liftToBase?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/qnf-lifttobase.md) | 656 | `declaration-track:e84f398463b06a1add76822c99c0599a8844adf54e32e2528a980ba6c7e76d7f` |
| 53 | `def` | [eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/eval-source-edition-2.md) | 676 | `declaration-track:da050b63f56501cfef2e43ceffce3cdebc709cad78d7df7a0a26cc46f81d8f36` |
| 54 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/elab.md) | 734 | `declaration-track:7d766eccb58a3574b5704b5739b518f1c87738b2bcffec4149e196949411275e` |
| 55 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModulePublic.lean/declarations/elab-source-edition-2.md) | 763 | `declaration-track:f4e96f05dc551fba467d6d4570d1043a180ca5e4148982ce45826a7db2c2388a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a1fb9b68209f9f76ad0bd63e067d7e80cbd98f92ae04201a177999a52be820f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant8fbe67fef87cfb9158f710cdf75920413718b7e9de8b6ba32a78f8208fd53522.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

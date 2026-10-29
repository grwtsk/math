# Verification target: Tactic Solve By Elim Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5b3589c48a07965b5a4d3be497d2d1a935f4d55",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5b3589c48a07965b5a4d3be497d2d1a935f4d55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Backtracking` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.LocalContext` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LabelAttr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/initialize.md) | 28 | `declaration-track:eb230f20860b24e2f6378b283f02965603ec35e643662e7b2b5dd942916c1471` |
| 2 | `def` | [applyTactics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/applytactics.md) | 42 | `declaration-track:42e6616051b5c208a319a134c0194c643b593474390bdfa7f5c540815875fd9f` |
| 3 | `def` | [applyFirst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/applyfirst.md) | 62 | `declaration-track:fb14d42cf53d58ff05ec8d7395f953f1a4be4dd05cc20d58f4a0b6b9556b4a7a` |
| 4 | `structure` | [Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/config.md) | 73 | `declaration-track:08ec3cb669e9ecd99c8199e02c2e2ecffe82c45b125d271d494355c58a13bcce` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/instance.md) | 83 | `declaration-track:99b7ea728508f213e6fff779fa11b964f44bfe9701e1a861ce4d5a656320e6af` |
| 6 | `structure` | [ApplyRulesConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/applyrulesconfig.md) | 86 | `declaration-track:ce420cf2c4cc9df6bf4ccf5e41fe59f8ba20e45338600015cb73bac3775ceb1b` |
| 7 | `def` | [accept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/accept.md) | 106 | `declaration-track:9336497276f9e15c747e684082eb413aaebbaa12f8036ea54b019ccd627c8e5b` |
| 8 | `def` | [mainGoalProc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/maingoalproc.md) | 118 | `declaration-track:d43570eba105b8af97b6b99d1e04e92bd56f02ba1ef1bb8d064a983617645592` |
| 9 | `def` | [intros](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/intros.md) | 130 | `declaration-track:40749909cc95c56de2cef28668775eb4b23c940442cdb71833336ab9506fbe42` |
| 10 | `def` | [synthInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/synthinstance.md) | 137 | `declaration-track:2c0e78cc606394908c5a079727fce2722ae61ca61c93d9208c8a39442e2e84b8` |
| 11 | `def` | [withDischarge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/withdischarge.md) | 142 | `declaration-track:439f974fb9a6277883365f62675786d8ff9d265ead1cf592622842ec9e8ddacc` |
| 12 | `def` | [introsAfter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/introsafter.md) | 149 | `declaration-track:d40edec6586f54bc0347dca0b69c7b834e5832ad73c02196b1422c6ac7b39f3a` |
| 13 | `def` | [synthInstanceAfter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/synthinstanceafter.md) | 154 | `declaration-track:c05274a2fc1fbcc1102d14736f88e4149efc7128047dddd7c8e12a31db07a75f` |
| 14 | `def` | [testPartialSolutions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/testpartialsolutions.md) | 161 | `declaration-track:485de0f2a0a98cbdaca1f9f36e34299a442064a99d5df0536432ca4bcba236be` |
| 15 | `def` | [testSolutions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/testsolutions.md) | 171 | `declaration-track:8179439f0f3efd6aa25a65fc4ac93c4dfb2d3c8a560708aad24596ee396597ab` |
| 16 | `def` | [requireUsingAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/requireusingall.md) | 182 | `declaration-track:4545bbbc058768a19bfde1e838f552016c00dbf1b5056c4608ffac90a58cfd7d` |
| 17 | `def` | [elabContextLemmas](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/elabcontextlemmas.md) | 192 | `declaration-track:9cb2f0f22b60f797667829260c16b07bf7ca0083bf77666b49a6e5a901ed1439` |
| 18 | `def` | [applyLemmas](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/applylemmas.md) | 197 | `declaration-track:1667500465738d291292197bb00d74b33ee22674b81c7777cffd60b3f6381483` |
| 19 | `def` | [applyFirstLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/applyfirstlemma.md) | 206 | `declaration-track:a0f5c0f63aaaa7ae5cc5fbd08f65296b30b6c0c618556e7d744d20f5f7578707` |
| 20 | `def` | [solveByElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/solvebyelim.md) | 230 | `declaration-track:6bfdb206234794c8947a6d681d19c2a98d71996568ed18b4c2d033311265ad8f` |
| 21 | `def` | [Tactic Solve By Elim Namespaced](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-confi.md) | 259 | `declaration-track:548c0c44f22e7fdb5a05af8fcc9b62f43fcde5dc9fe2509d210a97076e46dae6` |
| 22 | `def` | [mkAssumptionSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/mkassumptionset.md) | 315 | `declaration-track:d597b00b572c33913f80df4a27567c441bfa00944049821d396e856fec2ddbaa` |
| 23 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/syntax-source-edition-7.md) | 342 | `declaration-track:f3dc840bdce26fa897ac08e8ec222d864fc1e4b593a49f8f6b884c06292de62b` |
| 24 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/syntax-source-edition-8.md) | 344 | `declaration-track:fa87fa090ce04cfa052e57cf8b1139c33757111768381ba6b5ffe0e89c12c0a8` |
| 25 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/syntax-source-edition-5.md) | 346 | `declaration-track:a5b719ba003f4b615a2f970767fe9b61c31343d9011ce6f5f210c35831fcfe2c` |
| 26 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/syntax-source-edition-3.md) | 348 | `declaration-track:652819c3d6d97825c271b3b511cb12ec3443be38d48206d8f5387ea8238e44a6` |
| 27 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/syntax.md) | 350 | `declaration-track:1dd9fd4cdf638eb51b0bfe0c026f858ea3baf880bb3ce31990786864d1fdae52` |
| 28 | `def` | [parseArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/parseargs.md) | 360 | `declaration-track:192f2c34da3085e4fa5673ecabd5b3e4326574427034452ca4af28e3cc44e361` |
| 29 | `def` | [parseUsing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/parseusing.md) | 378 | `declaration-track:46d607b12f0c851e581135be6dffbcc0664154b4ec8ba5fb4c96b047ae19b449` |
| 30 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/syntax-source-edition-6.md) | 422 | `declaration-track:b202706d0f33bfcfa8714a7dc5f1bb68a444a19507fc2acadcae64d789a05023` |
| 31 | `def` | [solveByElim.processSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/solvebyelim-processsyntax.md) | 427 | `declaration-track:67cfc6ea00e0bfa0dbd8bf921cc61d8e17a789442587ded14f0cba2cf722d88a` |
| 32 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/elab-rules-source-edition-3.md) | 434 | `declaration-track:93f132d0e22484cf0d954b252754c896f125dfc73da85321fd79843f1838dcc1` |
| 33 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/syntax-source-edition-2.md) | 467 | `declaration-track:2eb5ece68600ad532dc43c43193818650b943088d6cb3e76e308bf23472578c8` |
| 34 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/elab-rules.md) | 470 | `declaration-track:6970412ca6c7c9a533b7bd8b5ec01937ce62ac4cfc03e8695b058731b2c749ce` |
| 35 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/syntax-source-edition-4.md) | 503 | `declaration-track:999c26a3f38b73a14b6ade48f48dd7f763355b5ffedcb2b8034d171adaadf24e` |
| 36 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticSolveByElimNamespaced.lean/declarations/elab-rules-source-edition-2.md) | 506 | `declaration-track:84f4262601e16ca737ad54b4b84c9924c50eb3fa36c8eab08b871d4c31ddf80f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2417ab19b3bd8144a6766712d5470055150995fdcb4f2c77c5a06524d92ec6ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

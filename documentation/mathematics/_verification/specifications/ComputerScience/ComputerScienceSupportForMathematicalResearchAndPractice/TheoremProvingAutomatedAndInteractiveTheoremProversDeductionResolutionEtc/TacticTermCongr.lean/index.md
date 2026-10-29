# Verification target: Tactic Term Congr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48c2c2ac2291f3db25e5541b52945c4d78ce245d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48c2c2ac2291f3db25e5541b52945c4d78ce245d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.CongrTheorems` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CongrExclamation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/initialize.md) | 55 | `declaration-track:5e868eac7530c88607650b1ca0f468b5c9e35a71453c3d8aa6d2ea3a65f80f38` |
| 2 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/syntax-source-edition-2.md) | 79 | `declaration-track:e11cb4805d70dbab8d23c10f94440a3e5897eb410299e05c3bb56125067a2a04` |
| 3 | `def` | [congrHoleForLhsKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrholeforlhskey.md) | 91 | `declaration-track:9989c134d84a78188737fe6dfff4e4f67319840e3453e85e56697eadb2a7d950` |
| 4 | `def` | [congrHoleIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrholeindex.md) | 96 | `declaration-track:488e7ef651bc521d9c5218dd50de6b2d0e0daa102be45aca4cdc1ceac393e7c3` |
| 5 | `def` | [cHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/chole-source-edition-2.md) | 109 | `declaration-track:ae520ff690a82d84f2da0b40aa923251ecf7c6eb01ce824c92a9ebb79beda0a6` |
| 6 | `def` | [unexpandCHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/unexpandchole.md) | 113 | `declaration-track:d830e78d49edc2685c9b24e8caedef3a308c0258a21f3944260ce1a2d570f67a` |
| 7 | `def` | [mkCHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/mkchole.md) | 121 | `declaration-track:eca5997769c5ed080a1e10ba99b34c76896a6a9ec7c4f4e19847af27b73231bb` |
| 8 | `def` | [cHole?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/chole.md) | 131 | `declaration-track:7f2fa3c445014a2ab5f07038058d2cb621c78f9b34a13d94040112148a35a080` |
| 9 | `def` | [hasCHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/haschole.md) | 143 | `declaration-track:ab01ef705e7dad7db532ec1f33a182ff62176ba8889a8aad7837fb9215491084` |
| 10 | `def` | [removeCHoles](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/removecholes.md) | 147 | `declaration-track:060e67b2aa25560a000e4ad33e0fb4cc0af3d83b9e7d857e7612cf965e7f6b11` |
| 11 | `def` | [elabCHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/elabchole.md) | 152 | `declaration-track:c2d8222900193f872c1e8caffc9b11f8603046afa0dacb22aa0dd7afa3fc5ad8` |
| 12 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/syntax.md) | 172 | `declaration-track:6919e6e645badfd2571f79dc37025f5e88684e66d841429e26aec402485e4122` |
| 13 | `def` | [elabCHoleExpand](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/elabcholeexpand.md) | 175 | `declaration-track:fb4480e2bcd0bec4018160c450702841ca2f671b1a135ddc9c626c94fd18da42` |
| 14 | `def` | [processAntiquot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/processantiquot.md) | 182 | `declaration-track:c882f4e47d4c0d11ffda374459f00697f60bdd7b7c1f3ee5b8b6d0c3850fc6e9` |
| 15 | `def` | [elaboratePattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/elaboratepattern.md) | 197 | `declaration-track:545cc117404ebc09034d33540430d32d6431bf86eab508cac5abf3aed10a1d07` |
| 16 | `def` | [mkEqForExpectedType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/mkeqforexpectedtype.md) | 207 | `declaration-track:021ff5c856f0f9f9a7a3bea97ac3d5bb17b6ef9d31515915abbff576e4840656` |
| 17 | `def` | [mkHEqForExpectedType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/mkheqforexpectedtype.md) | 218 | `declaration-track:f49927ec1b547fa3db9c60d6ed130b425dd04819536a9c5985145fde693bf926` |
| 18 | `def` | [mkIffForExpectedType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/mkiffforexpectedtype.md) | 230 | `declaration-track:bf65db61a458704cf02d371a562e01fdf4ed7a93994b2709a6e2d2085dec8a6b` |
| 19 | `def` | [ensureIff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/ensureiff.md) | 240 | `declaration-track:da52b2722dbc121cad0c6174caff0fd963b3567026ab9ccbf9df81d824a97715` |
| 20 | `inductive` | [CongrType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrtype.md) | 245 | `declaration-track:5d3ddb0820828c68fb5c784a60deb391fb0c31e8d4da40a27df3488769f61ecb` |
| 21 | `structure` | [CongrResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult.md) | 263 | `declaration-track:6b0dcf26822d73f0de428689c696c6c0ed6c7b0d8e6ca46a336295eaf0cabebf` |
| 22 | `def` | [CongrResult.isRfl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-isrfl.md) | 278 | `declaration-track:019aaa215923fa91abf789a3f8cf73cfee9781e7b66dd61523d29421abed8cf4` |
| 23 | `def` | [CongrResult.eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-eq.md) | 283 | `declaration-track:fedbbb07c0fd9d2ceaacd3aca7295820ce73a091bc8c7a97ebf55815a7c942c0` |
| 24 | `def` | [CongrResult.heq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-heq.md) | 293 | `declaration-track:5750f469db857fbbc9cf9f82522304405a84721d6ab381888cbac74438570f8c` |
| 25 | `def` | [CongrResult.iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-iff.md) | 299 | `declaration-track:f4143c6360065925c3079eaa1f4f0d31400d8cf2dade7de9a550a0a20db08076` |
| 26 | `def` | [CongrResult.trans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-trans.md) | 307 | `declaration-track:70c6e1ae3ae58fa1fdf1f13d12f062816ad9efd15196e09d1155ab626bfcfa8e` |
| 27 | `def` | [CongrResult.mk'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-mk.md) | 325 | `declaration-track:2ac43d951fe145094770528ae612dd39f3d2b0cc4cdc5914e6392527421db4c5` |
| 28 | `def` | [CongrResult.defeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-defeq.md) | 381 | `declaration-track:c90c1d7070f379d4a4fb17d2bb202441d3a1874412dad2c3cc531cc16659939a` |
| 29 | `def` | [CongrResult.mkDefault](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-mkdefault-source-edition-2.md) | 401 | `declaration-track:5f4136cfa6b609414c9c075381f51afb9f8208db21740317c71aabfea55ee8f9` |
| 30 | `def` | [CongrResult.mkDefault'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/congrresult-mkdefault.md) | 411 | `declaration-track:10eb207f453095e4f5f1a64bbc365efbc720021492210227c591f604e6858461` |
| 31 | `def` | [throwCongrEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/throwcongrex.md) | 419 | `declaration-track:ca23def5bbebcbefeb3471cc1e6c6d7adad60a771890c619cd24cc4149e2225b` |
| 32 | `def` | [mkCongrOfCHole?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/mkcongrofchole.md) | 426 | `declaration-track:764b28456648ca37ce546b00a6603ee711eea21375ec82a76d98be2937e73194` |
| 33 | `def` | [mkCongrOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/mkcongrof.md) | 456 | `declaration-track:70bcdfec165eb842db8527b8f596cee6a17d323ce224ed48e30422db7de513f4` |
| 34 | `def` | [elabTermCongr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongr.lean/declarations/elabtermcongr.md) | 607 | `declaration-track:feedf89a79e317bf5e56c535971a692f16422f8741feaa8e4fa9cdeaa0cb15e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fa253b81e7fb3cf2304abf41408b43ff496890a0024347374c06fc0ad948ea6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

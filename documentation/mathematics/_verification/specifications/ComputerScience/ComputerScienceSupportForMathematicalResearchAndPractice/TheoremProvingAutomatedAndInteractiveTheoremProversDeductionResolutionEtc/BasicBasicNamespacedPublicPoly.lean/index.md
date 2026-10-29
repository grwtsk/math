# Verification target: Basic Basic Namespaced Public Poly

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "860020d15b203eeb3a2fd7047cd4734278118fa9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `860020d15b203eeb3a2fd7047cd4734278118fa9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.LitValues` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Poly.toExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/poly-toexpr.md) | 27 | `declaration-track:e7867d856d60aac1cb5dc3e7d313d77d408ab2ad60f19428c675ee8776bbfb1d` |
| 2 | `def` | [Expr.applyPerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/expr-applyperm.md) | 40 | `declaration-track:b1f45b41bdf8222c8f6d06cbd4d68f0ff14338d4a7c8113020bfdce02b919532` |
| 3 | `def` | [ofPoly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/ofpoly.md) | 59 | `declaration-track:2feed264b9afcefd5be1766db6068bb9801454ebad09aba8c60cd70349ca7d5a` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:f3889ed4cb9998dfc6662b33db2c87f50fa651eb21717d2a23c31292e370c784` |
| 5 | `def` | [ofLinearExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/oflinearexpr.md) | 69 | `declaration-track:625a710bd1e28ea77008fb587d79e308a35c52bcf1a5d109dbc196882f8e01eb` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/instance.md) | 80 | `declaration-track:94f115db36624f5ab6ade5b4b69b4317cd0001b353011061d8edcd77eabedf72` |
| 7 | `def` | [Basic Basic Namespaced Public Poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-state-source-edition-2.md) | 84 | `declaration-track:efb38687ea75597dd3ddd8a3db42068d72f4f1242846748a465a094f1f09d65a` |
| 8 | `def` | [Basic Basic Namespaced Public Poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-state.md) | 94 | `declaration-track:4af064ba8ec245cfda71bebd3beb4be14042fe74387de67706f588aa3ba6993e` |
| 9 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/state.md) | 109 | `declaration-track:33a067ac47f4042342efc89859b4e1e02395e713a7620d252cd15fb996843470` |
| 10 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/m.md) | 113 | `declaration-track:ed4d443fa8d1f5127e8b756e3b5d20bf13b219ad5c9f6ccba6aa4f3c7f30abfb` |
| 11 | `def` | [addAsVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/addasvar.md) | 117 | `declaration-track:54e578843c04bb81aef0ed23ee961bcda7d659750d0fc0100ffd61ffbeacaba0` |
| 12 | `def` | [toLinearExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/tolinearexpr.md) | 126 | `declaration-track:420f18765f2efc82201223104bdb4b965e02d585ff5d3e6209288d502b00df9e` |
| 13 | `def` | [eqCnstr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/eqcnstr.md) | 171 | `declaration-track:d82baede91bf2214076a0847aa8438ac8ff6925d5f3a8e98e744936da69543b1` |
| 14 | `def` | [leCnstr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/lecnstr.md) | 185 | `declaration-track:39f86d913211e5873b3b7d91724d09dec1462ef456f1cccc5f7439a405738f82` |
| 15 | `def` | [dvdCnstr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/dvdcnstr-source-edition-2.md) | 205 | `declaration-track:288cb4545e523860d2a07b9dcb04181a22bf9e842f9df646ae6e50b1fa390989` |
| 16 | `def` | [run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/run.md) | 211 | `declaration-track:28eeeba5ff723790383c8c7cae5723d3d1b4945cad47019819c1199eda91341b` |
| 17 | `def` | [toLinearExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/tolinearexpr-source-edition-2.md) | 217 | `declaration-track:5126534cba0109d27de18cb8e9dc6bf7716d485aef5e57c1d27f580025095c4d` |
| 18 | `def` | [adapter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/adapter.md) | 227 | `declaration-track:46e7b2d4f92aa3e8738482423c71d80bb3bf0af412eafd7540cd50022e4f974e` |
| 19 | `def` | [eqCnstr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/eqcnstr-source-edition-2.md) | 240 | `declaration-track:e1bfecbf31dca690fe1c837749882607089fd7d6991d140c4f82f3fd5c88b295` |
| 20 | `def` | [leCnstr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/lecnstr-source-edition-2.md) | 243 | `declaration-track:56e3ed96f4e61f82c2bacf673e454fa1c934bd516dcdaeac8e46d971ef105659` |
| 21 | `def` | [dvdCnstr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/dvdcnstr.md) | 246 | `declaration-track:16a8d1336db7e8cbeff9861994636f593db8e17b93e1d5cc55c52363190b6f37` |
| 22 | `def` | [toContextExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPoly.lean/declarations/tocontextexpr.md) | 256 | `declaration-track:ea8beab9d7dd83be89dd60b0e00f00618e12bd0ba9c0ad7809155f1f9349760d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d41a4664cd9a994dd4d8118855878713a84e8572725f047c122e21b9113a5e74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant5b2fd244a5219e817fb47ea8a9ae1bb65d16cde66e16484cb11a8ed7aa9fcfdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

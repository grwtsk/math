# Verification target: Builtin Eval Command Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce9c9990801336a127527b7176d36f1d0662563c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce9c9990801336a127527b7176d36f1d0662563c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.Options` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Reduce` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/builtin-initialize.md) | 47 | `declaration-track:463e1f4513b965d3a25f894040fa770fc327894285bfd743efa798cde834ad5c` |
| 2 | `def` | [elabTermForEval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/elabtermforeval.md) | 56 | `declaration-track:9c065789fd65b35e2a2d4b4f42938713226fd05ba7d009ae3d4be7cec7fb22c2` |
| 3 | `def` | [addAndCompileExprForEval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/addandcompileexprforeval.md) | 94 | `declaration-track:7dd77ff5382939ed4058405dffc1cdfc27210f616ab57f332e8f8c87703fa89a` |
| 4 | `def` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/anonymous.md) | 102 | `declaration-track:d2b5d5ae518678ad4db58a93156a4782704d7854c51f87d1419ea49609ba2b70` |
| 5 | `def` | [mkDeltaInstProj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/mkdeltainstproj.md) | 127 | `declaration-track:ee59c901877db4c10cfd3f7bd801bba8323643159e3f984d98d8567d48a9bedd` |
| 6 | `def` | [mkToString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/mktostring.md) | 142 | `declaration-track:3b78f27377306f0e6f00339a9db0da027f5061067dd287c88bf0c0119d3250a4` |
| 7 | `def` | [mkRepr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/mkrepr.md) | 146 | `declaration-track:80219cf45407ae79cc5da0e081df42c7c543950664be3e22ca7c75b17b29da3a` |
| 8 | `def` | [mkToExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/mktoexpr.md) | 150 | `declaration-track:7b82f6cfe834b762233b37a1e4873cc8e6f30b65815b4ca024d878f1f60b574f` |
| 9 | `def` | [mkFormat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/mkformat.md) | 158 | `declaration-track:eb360aefa3e20694ccab7dc7aeb9d4debc6d9b52ae4ee830ce2385009a781bef` |
| 10 | `def` | [mkMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/mkmessagedata.md) | 176 | `declaration-track:ebf5456ce08ee2743b175a4e8df60e4066ede300244ca5d65d7698aace726067` |
| 11 | `structure` | [EvalAction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/evalaction.md) | 181 | `declaration-track:f098f78305698241060e81543418262121143d075630f4ceceed818b27c3d3cd` |
| 12 | `def` | [elabEvalCoreUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/elabevalcoreunsafe.md) | 187 | `declaration-track:3abce76c8b6ca3d798f1fe87d07b7f38fdfbf353a3b578f4a1d68b96426fdb1b` |
| 13 | `opaque` | [elabEvalCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/elabevalcore.md) | 270 | `declaration-track:6e2227fc5e4eb0283094a5b21ce7ac72c75c7933331c3d7cf7998634aba7fcec` |
| 14 | `def` | [elabEval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/elabeval.md) | 273 | `declaration-track:99f385a346b09bd1cdd288333f0e8d2cbebce7476b9efd0704113f2da1e3e6a2` |
| 15 | `def` | [elabEvalBang](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/elabevalbang.md) | 278 | `declaration-track:a12d95a4b00d97468f9f03040fc0e1e473549bba6c1ab18335d6c8d4589339c4` |
| 16 | `def` | [elabRunCmd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/elabruncmd.md) | 283 | `declaration-track:0995c271119e8a22b2b21966b55c60cd9668d3608b6de010dacf7bcbb85f8e40` |
| 17 | `def` | [elabRunElab](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/elabrunelab.md) | 291 | `declaration-track:9251d04b35f9ff557d42db48045c02f5c9f9bfba1c06fcdf692975b0023f8534` |
| 18 | `def` | [elabRunMeta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BuiltinEvalCommandNamespacedPublic.lean/declarations/elabrunmeta.md) | 299 | `declaration-track:92396835c8a9260783141df942741ba4d69de33e642bb4b9a4b3785c6f421514` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d62979ebc69ab2d9d882813371534865adf2687b6e6c4d5ddc881f2d9fdf69cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variantfad50882464dbe424cad07599e657b96b1485359cdf27ed4834e4fb5fc6603c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

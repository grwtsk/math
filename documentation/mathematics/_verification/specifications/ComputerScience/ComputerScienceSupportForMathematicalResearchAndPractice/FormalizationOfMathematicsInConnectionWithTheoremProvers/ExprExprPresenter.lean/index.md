# Verification target: Expr Expr Presenter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eb892745f31ad77b2576526e9b7fecd67350f2b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eb892745f31ad77b2576526e9b7fecd67350f2b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Data.Html` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExprPresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/exprpresenter.md) | 9 | `declaration-track:96a5ed91fb380056b3105be12decfe9584a35c314653c2ce2360e2c3262fce58` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/initialize.md) | 17 | `declaration-track:90db0035d211e13a3b162991b71ad732d11c9e0aafa55ea784c2d763c3e33517` |
| 3 | `def` | [evalExprPresenterUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/evalexprpresenterunsafe.md) | 26 | `declaration-track:0799e86971d15711544df35dfedc2881f2e00879adea23a6f32eb3d128e394e9` |
| 4 | `opaque` | [evalExprPresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/evalexprpresenter.md) | 31 | `declaration-track:5da7b249690accdc9609191a22a66e7f80937103cb0f0fa2b0ac58bab0308042` |
| 5 | `structure` | [GetExprPresentationsParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/getexprpresentationsparams.md) | 34 | `declaration-track:eac5d3266e3f9ff5829de8cedf51f017398cd9518c782cac784d54d4ed4ee315` |
| 6 | `structure` | [ExprPresentationData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/exprpresentationdata.md) | 39 | `declaration-track:a81bc380428c3769c4aa3368ec7b5ec8140455d42365746d5b6abea39b4aee2c` |
| 7 | `structure` | [ExprPresentations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/exprpresentations.md) | 45 | `declaration-track:41474825011b79a5ffcc1968e5d78d13d1e00b2ae195ebd072827c2b500aab9d` |
| 8 | `def` | [getExprPresentations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/getexprpresentations.md) | 50 | `declaration-track:ecd76e739efd2ed1f47f94b61f500da8afe1850aac00767a7ed83c2168320b16` |
| 9 | `structure` | [GetExprPresentationParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/getexprpresentationparams.md) | 78 | `declaration-track:05a4d238ea889e6620cbeec8af63a450c3176a8ff3aab011e3bece17a1e09aa0` |
| 10 | `def` | [getExprPresentation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/getexprpresentation.md) | 86 | `declaration-track:adfe11f1cedf61a3ace72fa88f5b05b78158a41d6def27130741fe66e6b55502` |
| 11 | `structure` | [ExprPresentationProps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/exprpresentationprops.md) | 100 | `declaration-track:2ce5db138cbf58633b462971f111a8b1a6e09f41756c75d4117a1ac2a8dba36b` |
| 12 | `def` | [ExprPresentation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprExprPresenter.lean/declarations/exprpresentation.md) | 109 | `declaration-track:c99bd4217c576fd7328b9537e6d5c8c11679924523141a2951af0a6bcca25bad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d252c0b33abd34d7f799095dd10e4cb41c7410267de1910920e3d672da975e64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

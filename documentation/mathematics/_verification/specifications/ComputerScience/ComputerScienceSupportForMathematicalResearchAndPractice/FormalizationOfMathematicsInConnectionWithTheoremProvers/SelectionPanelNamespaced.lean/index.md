# Verification target: Selection Panel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51cc8857815702a34762546da7a1c660e3a7e2e7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant714e7ae3aebe0a776297ba5ac5ec1a6d400b967816656a3ce406ce9c394955e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SelectionPanelNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SelectionPanelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51cc8857815702a34762546da7a1c660e3a7e2e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant714e7ae3aebe0a776297ba5ac5ec1a6d400b967816656a3ce406ce9c394955e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant714e7ae3aebe0a776297ba5ac5ec1a6d400b967816656a3ce406ce9c394955e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.ExprLens` — import line 6; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.Panel` — import line 7; external provider; requires a separately pinned dependency.
- `ProofWidgets.Presentation.Expr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.SubExpr.GoalsLocation.saveExprWithCtx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SelectionPanelNamespaced.lean/declarations/lean-subexpr-goalslocation-saveexprwithctx.md) | 15 | `declaration-track:89f9530c080612594e4779c53c2c9af819447cc6a1f389010409fbeba6ee4103` |
| 2 | `structure` | [GoalsLocationsToExprsParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SelectionPanelNamespaced.lean/declarations/goalslocationstoexprsparams.md) | 35 | `declaration-track:e7c8c077dd9b82f5fecb58f89c5441de91c802b1c7753a4a5c48d5c130c15741` |
| 3 | `structure` | [GoalsLocationsToExprsResponse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SelectionPanelNamespaced.lean/declarations/goalslocationstoexprsresponse.md) | 40 | `declaration-track:a9a59c3c47ee9745b3c5fe44edf2fca1d227a59dfef645368aee0e1026eaa37e` |
| 4 | `def` | [goalsLocationsToExprs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SelectionPanelNamespaced.lean/declarations/goalslocationstoexprs.md) | 47 | `declaration-track:073a81490a5f0499f720092516ffe89c4f6357e7ffd5e7a2c2e30bb92b40efc9` |
| 5 | `def` | [SelectionPanel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SelectionPanelNamespaced.lean/declarations/selectionpanel.md) | 60 | `declaration-track:d7e8f10980edf252c1bcb523d88642fe6bee260154669e533d9339bc3541608f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50724e48b314f0f5654a38857e32d684ad2f2a05a15cf3c6a2eb64971c7c8537 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant714e7ae3aebe0a776297ba5ac5ec1a6d400b967816656a3ce406ce9c394955e1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant714e7ae3aebe0a776297ba5ac5ec1a6d400b967816656a3ce406ce9c394955e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Grounded Response Namespaced Clause Bound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b95cdccf1ba80eea51e703ed7a62842a0a87619e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b95cdccf1ba80eea51e703ed7a62842a0a87619e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Language.GroundedClause` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Grounding` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GroundedResponse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/groundedresponse.md) | 26 | `declaration-track:fc94e54b134cafbf0b8d4863d625dfc8da23c2cefa8a161b6cb6bdefa907ac79` |
| 2 | `inductive` | [ResponseGroundingError](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/responsegroundingerror.md) | 34 | `declaration-track:bd5288f2b41e43dbcf8b4ebdeb73be72f9805613c736315ea17513510db1a436` |
| 3 | `structure` | [CheckedClauseList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedclauselist.md) | 41 | `declaration-track:cf7c35c143ba47638798807be564c4c344cdd3ed33bfea71c81bc65a54987369` |
| 4 | `def` | [validateClauseList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/validateclauselist.md) | 47 | `declaration-track:7b5cec1ce6fdae6b982670980526ed712dd6e0a4f1a8ed8cd60abbfff787a88e` |
| 5 | `structure` | [CheckedGroundedResponse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedgroundedresponse.md) | 71 | `declaration-track:46ffb880025ccfa3eca77631a6c71745cd8b09f8fdfa618d6cffb3b9af75247e` |
| 6 | `def` | [validateGroundedResponse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/validategroundedresponse.md) | 79 | `declaration-track:5e40f93ef12d36be5c50dd8faba9827e90e2fbad24304b8e910f667fed3b372b` |
| 7 | `def` | [ClauseBound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/clausebound.md) | 98 | `declaration-track:10fcc27271471dcb8074e0d90771467253c151eab05d0a2e9e6088457f05ace0` |
| 8 | `inductive` | [RhetoricalLocatorError](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/rhetoricallocatorerror.md) | 107 | `declaration-track:1a813735f792e9d9b74f8ec4a2b67f269f6263774190040719d60222f7f383b0` |
| 9 | `structure` | [CheckedExternalRhetoricalLocator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedexternalrhetoricallocator.md) | 121 | `declaration-track:59a932ebbcc9cc8ac5c43b110c82f81bdb3173843a4ae796cbea110efa513a22` |
| 10 | `def` | [validateExternalRhetoricalLocator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/validateexternalrhetoricallocator.md) | 139 | `declaration-track:f49906380ba3a367815ed91926fa3b3c666947dab57c43b532cfd21f5a81f534` |
| 11 | `theorem` | [CheckedExternalRhetoricalLocator.score_navigation_only](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedexternalrhetoricallocator-score-navigation-only.md) | 182 | `result-track:708eb25b65c3b7932e154f4c3641e5f0b3380f4d1d083c50e73dc7b687d3a0e4` |
| 12 | `theorem` | [CheckedExternalRhetoricalLocator.score_shape_valid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedexternalrhetoricallocator-score-shape-valid.md) | 194 | `result-track:310d081cd755e7837b6553bdf665c79c3cec5c6273e5ae79e51e1d22e2251f12` |
| 13 | `theorem` | [CheckedExternalRhetoricalLocator.score_report_certified](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedexternalrhetoricallocator-score-report-certified.md) | 206 | `result-track:8a91615bc397baec72efb12a292aa8451b03877b60e8f8496792cb869964fd73` |
| 14 | `theorem` | [CheckedExternalRhetoricalLocator.point_diagonal_pos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedexternalrhetoricallocator-point-diagonal-pos.md) | 221 | `result-track:7ce3f976d03a8ddc59363159803f22421db9f0d2f5776819c21b2a6c9b16c445` |
| 15 | `inductive` | [CheckedRhetoricalLocatorList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedrhetoricallocatorlist.md) | 233 | `declaration-track:2ffca3c015eaa4b948c4a83f00eb63914fea5a2446cedecb60e187bcb531ea5c` |
| 16 | `def` | [validateRhetoricalLocatorList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/validaterhetoricallocatorlist.md) | 246 | `declaration-track:d33d220070a63adec59cfb65ce3410d6fe9fbc384d82286393627d6035291780` |
| 17 | `inductive` | [RhetoricalResponseGroundingError](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/rhetoricalresponsegroundingerror.md) | 265 | `declaration-track:44cc594c20ddcc5832a1035271ddab779ec558ff077eecaf0d443ab4d383e8bf` |
| 18 | `structure` | [CheckedRhetoricalGroundedResponse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedrhetoricalgroundedresponse.md) | 274 | `declaration-track:08628e6d08a0604a1f794bdf84b7923ab01ee75216f4cb12b2234a477f05dc1a` |
| 19 | `def` | [validateRhetoricallyGroundedResponse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/validaterhetoricallygroundedresponse.md) | 286 | `declaration-track:6395ac9abb54dbebd65d0cf50fe70d6aeebaa474f4a776d4980d9572cc6b1742` |
| 20 | `theorem` | [CheckedGroundedResponse.clause_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedgroundedresponse-clause-accepted.md) | 316 | `result-track:d1b98dc9fa8df1d35e019da0e2cb57896e469261f3c02745100366c6489e7bc4` |
| 21 | `theorem` | [CheckedAssertion.not_embedding_only](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedassertion-not-embedding-only.md) | 326 | `result-track:eb8c020bb0ced613319914ae5bfdb1d3e0a33835e98cfb786e681d5f476eaede` |
| 22 | `theorem` | [CheckedAssertion.model_authored_not_established](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GroundedResponseNamespacedClauseBound.lean/declarations/checkedassertion-model-authored-not-established.md) | 334 | `result-track:1ab6805a4c605fbb063970d9c7f910dd5373f33fa61f684087a89fa0693ad1f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b854294cff5b26ea6813747cacc589e2e143a14aeb48590270c46ac0058dac0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant65f7afb5db0acb57a265c17eb37e8a4f1d04c2a820ce99c3152b99e68ac0f051.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

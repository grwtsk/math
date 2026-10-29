# Verification target: Provenance Projection Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b42a0a76fb262e5bab02587abef47f1cd5ac7bf",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variantaffa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b42a0a76fb262e5bab02587abef47f1cd5ac7bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variantaffa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProvenanceProjection/Variantaffa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PositiveGeometry` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProvenanceProjector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/provenanceprojector.md) | 26 | `declaration-track:532f2f5a11cac68bb6217a7c667a790675f99f880d1c36aeaf498e43184fc6ec` |
| 2 | `def` | [residualMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/residualmap.md) | 37 | `declaration-track:c3b940ae6ff99127636ad82088645cb7ea93a776a73cce66d8490de36ad18d2a` |
| 3 | `theorem` | [residualMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/residualmap-apply.md) | 41 | `result-track:f2024ed771ad82d23e96bfeee2ec7537da199901193f81a0362ac38fdb6e3e3b` |
| 4 | `theorem` | [project_add_residual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/project-add-residual.md) | 46 | `result-track:c665d6b4da6a2587220eaa34a46b4c9d07f04adbe83f1c807eeebc9b6ad4f365` |
| 5 | `theorem` | [project_residual_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/project-residual-zero.md) | 51 | `result-track:f0349151ae03f686ea2bc58d136c7c7ffec26ea4c20a6cc21f64a80de174eaed` |
| 6 | `theorem` | [residual_project_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/residual-project-zero.md) | 56 | `result-track:41cae2eaf21c16a310a34b2706fb5ecd6a7ccef547bdc13a6ceb89684edfd651` |
| 7 | `theorem` | [project_orthogonal_residual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/project-orthogonal-residual.md) | 61 | `result-track:f92ac983fed9f4454b09162b8128240e8a601b0d71e54399510473e55604575c` |
| 8 | `theorem` | [residual_orthogonal_project](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/residual-orthogonal-project.md) | 67 | `result-track:75fc8d109886fc4e2ed4becea07495f03ccd87e07a6e4741ba3703fdd99c110a` |
| 9 | `theorem` | [form_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/form-decomposition.md) | 74 | `result-track:f22b0083aa500fb3cb3aac5c033750215152417e30834c3a78159439738ac007` |
| 10 | `theorem` | [residual_eq_sub_projected](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/residual-eq-sub-projected.md) | 86 | `result-track:de0bb5a835278f1870270d5047370e5720831aba391a121007c809f3312fc760` |
| 11 | `def` | [projectedForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/projectedform.md) | 92 | `declaration-track:ddd851082050c87af87ed111ee2d42217fa2b077f8a68d97a8ae76ce26fef34b` |
| 12 | `def` | [residualForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/residualform.md) | 97 | `declaration-track:4420b5f3661b7571b601a4e08fd2f03c3b5244af5e1868773716ad993aa8d024` |
| 13 | `theorem` | [residualForm_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/residualform-nonnegative.md) | 101 | `result-track:18fa169e9ca65f3e7d0132a0ddbaf3f74f52903a66bf102664f10f5c34f2429f` |
| 14 | `theorem` | [projectedForm_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/projectedform-nonnegative.md) | 106 | `result-track:e1152a24ebd7e93b6cdefad878e90d442c2e1339cf816928afeec1ad7a72f268` |
| 15 | `theorem` | [quadratic_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/quadratic-decomposition.md) | 112 | `result-track:f336d1324481e9e259c4ec1bd68f4bd47907ba25e3967b43604c9928cda798dd` |
| 16 | `def` | [asResidualization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/asresidualization.md) | 118 | `declaration-track:01292071d3fddb8d0ee3b7efd55c5f383a7c8555b02832a499f869d58feab2d9` |
| 17 | `theorem` | [asResidualization_residualForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceProjectionEdition2.lean/declarations/asresidualization-residualform.md) | 122 | `result-track:69f7f049b2054c0c5e61ca80bb5c7214b7df9d3afa7a12c7b5e823d898bbd0b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed74415c1d917933d333679d48ead4203a6a7584157e2455cb739d7f008d3c61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ProvenanceProjection/Variantaffa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ProvenanceProjection/Variantaffa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Tensor Product Prod Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2d2bfe062885b95f070d1a77a55fc78b443f1ee",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variante7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductProdPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductProdPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2d2bfe062885b95f070d1a77a55fc78b443f1ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variante7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variante7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd.lean.json)

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
| 1 | `def` | [prodRight](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductProdPublic.lean/declarations/prodright.md) | 40 | `declaration-track:5ccc1d8c2ef77882dfa3bd67d1e3c8d06b4fd365ebc02c4dc33d94ab1c79ea1e` |
| 2 | `theorem` | [prodRight_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductProdPublic.lean/declarations/prodright-tmul.md) | 51 | `result-track:32487143f3f92495d3ba6118ed3eb2d01ba4d8554812e185aaa8f2ed5d8eb538` |
| 3 | `theorem` | [prodRight_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductProdPublic.lean/declarations/prodright-symm-tmul.md) | 55 | `result-track:36838ef978be1720c1fedb4ea4a8478065990ffc702bddc46e568fef475347f0` |
| 4 | `def` | [prodLeft](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductProdPublic.lean/declarations/prodleft.md) | 62 | `declaration-track:9abd6254833ca1db3734504005360b9c581c3efad68599d9bf832e4beb6124b3` |
| 5 | `theorem` | [prodLeft_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductProdPublic.lean/declarations/prodleft-tmul.md) | 68 | `result-track:c489afb150fc34ef603512484fb020a180cb2db046a9948f23268b18d880a0d3` |
| 6 | `theorem` | [prodLeft_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductProdPublic.lean/declarations/prodleft-symm-tmul.md) | 72 | `result-track:c449924f00d99d54215536347582ab10c453444b2a91c1f0d8bc0986cd8d8b71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6278adcf07ec99128c0976eff2c45bce5f13724001e7c5ee5f0a4c5bdc4ab679 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variante7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Prod/Variante7d36e995885b93592e85f460da519b7babbeb66deae7f2cf7b73f27d5b89fbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Multilinear Tensor Product Dom Coprod Dep

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40507fccf0b99c72b6029be641b85b1974e9f950",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40507fccf0b99c72b6029be641b85b1974e9f950`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [domCoprodDep](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/declarations/domcoproddep.md) | 37 | `declaration-track:6331012120eebf760039b998e2b29b1c6d37005c4ff2736793077a4f7ec3bde4` |
| 2 | `def` | [domCoprodDep'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/declarations/domcoproddep-source-edition-2.md) | 52 | `declaration-track:aede5ca3689af048909ac8921d4483742836b40909d051371080b32841f7675d` |
| 3 | `theorem` | [domCoprodDep'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/declarations/domcoproddep-apply.md) | 59 | `result-track:6049ff47047408bd3fbb91ef8d3696523dd2b24c5a28ffb957b87f9c59d98363` |
| 4 | `def` | [domCoprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/declarations/domcoprod-source-edition-2.md) | 82 | `declaration-track:8b805f7a65bd08166c264c7d4ad5bbb9a4d2df32551c6ec12282889e2bbbd023` |
| 5 | `def` | [domCoprod'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/declarations/domcoprod.md) | 89 | `declaration-track:4159ff5d7909bc0bc0fcdc57c76a77127453040f172e9cd2d5f9cc17887a4cb6` |
| 6 | `theorem` | [domCoprod'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/declarations/domcoprod-apply.md) | 95 | `result-track:b452f2cc6def211314fafd68bf906d00abbf855f8a5b57fb617370090ad4e413` |
| 7 | `theorem` | [domCoprod_domDomCongr_sumCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearTensorProductDomCoprodDep.lean/declarations/domcoprod-domdomcongr-sumcongr.md) | 101 | `result-track:745f3b98722ca113f5176c774702cc6796211f52b6619bb0a737f1ccb9b0daad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ebcbc30a0f0731159f06f9a81ac82fd8197fbcc5554592c6961fab0bbf50974 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variantdfebb92ce6efb788a2b3374210ecba59ceeb2b95a4140a2c53a59803c024d392.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

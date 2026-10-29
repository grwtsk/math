# Verification target: GRWTSK.LinearAlgebra.RetractionComplement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10de52251b1390c30ecf1b568d8876b5bd635338",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/RetractionComplement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RetractionComplement.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RetractionComplement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10de52251b1390c30ecf1b568d8876b5bd635338`.

Source path: `GRWTSK/LinearAlgebra/RetractionComplement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/RetractionComplement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Projection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [retractionComplement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RetractionComplement.lean/declarations/retractioncomplement.md) | 11 | `declaration-track:d82ef2c691868ba0e5508b5c8bdca1abc243767b2c562cc6b4bfde41b2290102` |
| 2 | `theorem` | [retractionComplement_in_kernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RetractionComplement.lean/declarations/retractioncomplement-in-kernel.md) | 15 | `result-track:6488242cd1fc09f552f6295522a650eb21ee076f708f1098335f44e1d39f1778` |
| 3 | `theorem` | [retractionComplement_on_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RetractionComplement.lean/declarations/retractioncomplement-on-image.md) | 20 | `result-track:2d0373c2655ab7257151aa5197141a4da8a5674b556d6d2f90ccfe49fa6fdad6` |
| 4 | `theorem` | [retractionComplement_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RetractionComplement.lean/declarations/retractioncomplement-idempotent.md) | 25 | `result-track:088fc089b393d0d73908a7eafbb0b4060416ad10a2e9614043a5d501a443557f` |
| 5 | `theorem` | [retractionComplement_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RetractionComplement.lean/declarations/retractioncomplement-decomposition.md) | 33 | `result-track:242642249ce9956e44ffeb6a2c54e0d1762a3b9cde689ff7364b058f9081739f` |
| 6 | `theorem` | [retractionComplement_commutes](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RetractionComplement.lean/declarations/retractioncomplement-commutes.md) | 38 | `result-track:a29a8431c82aef9fcd96493ce3c53fd0c35d2ec0bc4a35c69fb796dff879e459` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66dbdd50d428f5dfcac1dc4d7dac89b7cbbc039e311502d30b852e0952076081 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/LinearAlgebra/RetractionComplement.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/RetractionComplement.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

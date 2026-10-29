# Verification target: GRWTSK.Algebra.LinearAlgebra.BilinearAndQuadraticForms.BinaryFormIdentities

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be2142bec0a6719178660e958b1a18c3e1360009",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be2142bec0a6719178660e958b1a18c3e1360009`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [determinant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/determinant.md) | 13 | `declaration-track:4305d6ffc447b14c379d12d99482add40bae25999fda41a21f0bf3504194f3e0` |
| 2 | `def` | [quadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/quadratic.md) | 15 | `declaration-track:c5602a05aa6c524a84b26af96fdd86f625620dbd2f7ab22ab67b2fc7d11ebcbd` |
| 3 | `theorem` | [complete_square](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/complete-square.md) | 17 | `result-track:8ed1e2115525614845507b5b462c40f72f86c0ceef6c1f9a413f0074b9b7e33e` |
| 4 | `theorem` | [quadratic_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/quadratic-nonneg.md) | 22 | `result-track:eacf1bad75de7086c04b2e1c6acd6495493862c35908577b9b58704c23f8af3f` |
| 5 | `theorem` | [shifted_quadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/shifted-quadratic.md) | 28 | `result-track:8156fccf10ac0f9da6e3a899986e990e2cd97dfde3133ff942043ffd97707203` |
| 6 | `theorem` | [solved_energy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/solved-energy.md) | 34 | `result-track:8f4902057bb7ceaa794ba8708cd76714ced74ea8859a3d5b0ee82efcd343cd8c` |
| 7 | `theorem` | [endpoint_inverse_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/endpoint-inverse-left.md) | 43 | `result-track:9e0b482856c68f602e39eca1f4d427ae42a85f8e990e7fbf65f5779273be6063` |
| 8 | `theorem` | [endpoint_inverse_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/endpoint-inverse-right.md) | 52 | `result-track:1f9bc1db8626c35ffd03238ae12149de1e3505713b3cf49e486c655d41101948` |
| 9 | `theorem` | [residual_reconstruction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/residual-reconstruction.md) | 62 | `result-track:f660f1a32d64def98f3eb3460055543b893bc4f36b3ba4cdb452251f240103ff` |
| 10 | `theorem` | [lower_minor_slack](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryFormIdentities.lean/declarations/lower-minor-slack.md) | 69 | `result-track:d394cf54cd68c42799c41fe9ce5a0a8d50635c75bc4de46430e2c8709ecd8018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7764f30e899ceec91dd1c11f78c629f03b344cb07ed27f2af19b9e8f1d57793c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BilinearAndQuadraticForms/BinaryFormIdentities.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

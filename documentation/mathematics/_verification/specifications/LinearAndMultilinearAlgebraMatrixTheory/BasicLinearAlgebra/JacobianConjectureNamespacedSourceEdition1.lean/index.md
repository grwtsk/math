# Verification target: Jacobian Conjecture Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea5e7876292a5634b9075e577c865b9e24fcbbfb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea5e7876292a5634b9075e577c865b9e24fcbbfb`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.JacobianConjecture.AlpogeFable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alpogeFableTransform](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefabletransform.md) | 25 | `declaration-track:515e6002dcba6935b290ef8494a2b1e52f40a0f58d7973ee3a05c21297a67b25` |
| 2 | `def` | [alpogeFableTransformPoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefabletransformpoly.md) | 29 | `declaration-track:690c2ab3ecde443a9a280ad043e12e65b7dc78da3e76b85b29ddea29ea475636` |
| 3 | `theorem` | [alpogeFable_transform_eq_polynomialMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-transform-eq-polynomialmap.md) | 32 | `result-track:1e7e73429d1b56bca7322eead668c95fbb02ae44da2014ef1e4e4d0ba44c8b2b` |
| 4 | `theorem` | [alpogeFable_transform_fixed_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-transform-fixed-iff.md) | 38 | `result-track:0a6bd2a62968dc671d15df0b0f8afd6c5c104a63462029ee75fe12db08d25e21` |
| 5 | `theorem` | [alpogeFable_transform_fixed_points](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-transform-fixed-points.md) | 42 | `result-track:ad3be9533526f71cdc3242a257a49d00fd593d277600b8f84625e07f7147c303` |
| 6 | `theorem` | [alpogeFable_p_zero_fixed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-p-zero-fixed.md) | 46 | `result-track:353bf927fc6acff1cd1c7e28213afcc75d9c98f774024c2ebc9bc7b2baabe060` |
| 7 | `theorem` | [alpogeFable_p_plus_fixed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-p-plus-fixed.md) | 49 | `result-track:bd0c48563d131c8224a2f40f44ca75e402d593e7539439fb8b5bececc435f61f` |
| 8 | `theorem` | [alpogeFable_p_minus_fixed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-p-minus-fixed.md) | 52 | `result-track:eeb61c66ad871f8daeae476d312c9d9a2aa42171c16c551c5e5552b071083f85` |
| 9 | `theorem` | [alpogeFable_three_distinct_fixed_points](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-three-distinct-fixed-points.md) | 55 | `result-track:44b897045a4d7c705b35c839507804ea62d379f3b5499f7f701b32da4ff1fe5c` |
| 10 | `def` | [fixedPointJacobian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/fixedpointjacobian.md) | 64 | `declaration-track:2051c1517a5f4207bce941204952ecccf574ed0060a08b2dfc6fe8f67d946b06` |
| 11 | `theorem` | [alpogeFable_one_sub_fixed_point_jacobian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-one-sub-fixed-point-jacobian.md) | 67 | `result-track:b3f6ccfbe3e7ad02056a4b1ea7f15c574a9319f179a9f07b09d660a6688fd04f` |
| 12 | `theorem` | [alpogeFable_fixed_point_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-fixed-point-det.md) | 73 | `result-track:5723da313b0cfa5c520b6b77b8b2f57b63f1096cb5e9e4087becee22e32739aa` |
| 13 | `theorem` | [alpogeFable_fixed_points_nondegenerate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-fixed-points-nondegenerate.md) | 78 | `result-track:acde33e4daed4154419c846feb9cb4e883903a65e567b182bba0b1d8c07591ad` |
| 14 | `theorem` | [alpogeFable_everywhere_jacobian_invertible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-everywhere-jacobian-invertible.md) | 83 | `result-track:c91b8540ca3659640041fff728818466f1fd1865fdc34cfa39e2d8259c8a0447` |
| 15 | `theorem` | [alpogeFable_counterexample_certificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-counterexample-certificate.md) | 89 | `result-track:09b4a255f8e6e34a3f79168f9068d0d7c7ff48be5a19cee4fd2021a6e77857f0` |
| 16 | `theorem` | [exists_polynomial_constant_jacobian_not_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/exists-polynomial-constant-jacobian-not-injective.md) | 98 | `result-track:595f713ec5a2e020ad132b6272b2c98826d312b838b95176119f14b873d0ca0b` |
| 17 | `theorem` | [exists_polynomial_three_nondegenerate_fixed_points](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/exists-polynomial-three-nondegenerate-fixed-points.md) | 108 | `result-track:8c8533f1ea98fb94ad5a561aaa341671358dea11a93c5ebc51fc86035451c42b` |
| 18 | `theorem` | [alpogeFable_not_unique_fixed_point](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobianConjectureNamespacedSourceEdition1.lean/declarations/alpogefable-not-unique-fixed-point.md) | 118 | `result-track:de61d05570861d4ff516a24a832a11a2db9e196f7b5ed2a918e71066ca6e2fd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6808b73cc73e4c9194bd3ccdf67d38129b33a1e816e31c5dd7c6135fb489cda4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/JacobianConjecture/Variant3b368457a3f6cf895c3be87f6adaaad8a5aecf3b0f6da873252c5d364d9e5725.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

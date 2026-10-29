# Verification target: Namespaced Alternative2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfee2adb4bfdb6d1cfeafcbe5c81934c5f02a510",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfee2adb4bfdb6d1cfeafcbe5c81934c5f02a510`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMovingFrontLocalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PolynomialResidualTailUpperBound](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/polynomialresidualtailupperbound.md) | 35 | `declaration-track:0a10b420c8907f9b372bf87a7a1d0201cb9fba96f18c5273c72ea629ce8a9304` |
| 2 | `def` | [PolynomialMovingTailUpperBound](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/polynomialmovingtailupperbound.md) | 41 | `declaration-track:d2807868b48f337143e429ce649d482a04675007db089ce6c8813aade67eff69` |
| 3 | `theorem` | [moving_prefix_eventually_abs_le_one](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/moving-prefix-eventually-abs-le-one.md) | 46 | `result-track:ec648bba0fdb6e977cf40120a3d114188eb2cebaedbfe3b1f070cad072cbf2af` |
| 4 | `theorem` | [polynomial_residual_of_constant](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/polynomial-residual-of-constant.md) | 57 | `result-track:67dec4acbde9c7c39056438c832e1cb80aaeff0ec78335d7f9f2f46d9f6d4812` |
| 5 | `theorem` | [polynomial_residual_of_moving_tail](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/polynomial-residual-of-moving-tail.md) | 66 | `result-track:069f3888b185a9700c7b1b12366a55878c177f39c45f096ba15a213720242720` |
| 6 | `theorem` | [polynomial_moving_tail_of_residual](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/polynomial-moving-tail-of-residual.md) | 82 | `result-track:1bc712e7d9fa63ddc00e67af1a2c5e1474ae8e7ee972703a270fd5ffb97bc790` |
| 7 | `theorem` | [polynomial_residual_tail_iff_moving_tail](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/polynomial-residual-tail-iff-moving-tail.md) | 98 | `result-track:1dc78bfcbd5e7cffd46b057b40a104e52aee57f0939f13b92c3c02634ecae812` |
| 8 | `theorem` | [sourceQuadraticValue_eq_archimedean_sub_residual](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/sourcequadraticvalue-eq-archimedean-sub-residual.md) | 104 | `result-track:fe5b12ad1dbd1730f7ea16ea8f817d7f326627b1800ca60fea67154bf7457c9f` |
| 9 | `theorem` | [polynomial_quadratic_lower_of_residual_tail](../../../../CommutativeAlgebra/NamespacedAlternative2.lean/declarations/polynomial-quadratic-lower-of-residual-tail.md) | 113 | `result-track:e7e64f97d7064f6809a9709b655d44fc1054fd4d7e68b3a8e953f45b4fd1bb24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbc7e6b0301344ad5a805a945f29a57c5879737d5d18590a78b2c6ee32172847 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

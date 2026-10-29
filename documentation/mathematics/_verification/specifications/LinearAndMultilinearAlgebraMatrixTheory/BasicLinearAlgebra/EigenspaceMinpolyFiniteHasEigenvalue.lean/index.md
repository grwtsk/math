# Verification target: Eigenspace Minpoly Finite Has Eigenvalue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dd85fd7219fa6fb2009ffa4a255dfdaaaaa9da6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dd85fd7219fa6fb2009ffa4a255dfdaaaaa9da6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenspace_aeval_polynomial_degree_1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/eigenspace-aeval-polynomial-degree-1.md) | 30 | `result-track:5ae4535243d49170f88647902452032fad63b67c5fa95d15def0aaaf6f66974f` |
| 2 | `theorem` | [ker_aeval_ring_hom'_unit_polynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/ker-aeval-ring-hom-unit-polynomial.md) | 43 | `result-track:bb9f0eb29d2f6e19e9ffaf9d965f79221b165eef7402730d9557e566f561894c` |
| 3 | `theorem` | [aeval_apply_of_hasEigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/aeval-apply-of-haseigenvector.md) | 50 | `result-track:ddab6efc8b43aed8bebafee84ca127c87c13756169fe0449e9c1ec6571b3f3b7` |
| 4 | `theorem` | [isRoot_of_hasEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/isroot-of-haseigenvalue.md) | 60 | `result-track:1c88558ce7abb18cf60b7d0d09247e9dea41ef8343f6d38fb01891833ad7e06c` |
| 5 | `theorem` | [hasEigenvalue_of_isRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/haseigenvalue-of-isroot.md) | 69 | `result-track:b63d41f27bc1948df4ceb8f51295b71e417581ef3334606d1c01a5e82e1aab31` |
| 6 | `theorem` | [hasEigenvalue_iff_isRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/haseigenvalue-iff-isroot.md) | 87 | `result-track:a82af7e9ad41b4377e0e49eff024bd50a68a7ccbf3c5ec685db995961bcd6dbc` |
| 7 | `lemma` | [finite_hasEigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/finite-haseigenvalue.md) | 92 | `result-track:a50e82e63217bf132721df7bb122dab801bd37e2cbc2f88c8ad77f628e309e1a` |
| 8 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/instance.md) | 100 | `declaration-track:d7d8e4c77135dc56b34adb5266806361659f31c5ee5faddca4993e3b6d66ed02` |
| 9 | `theorem` | [Module.End.finite_spectrum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/module-end-finite-spectrum.md) | 110 | `result-track:e8262b021cc382b5fb5b756df31a0b33da008d0c23e40b9dd117b56cb4ebc5fd` |
| 10 | `theorem` | [Matrix.finite_spectrum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/matrix-finite-spectrum.md) | 120 | `result-track:7d56a4e5dc60d53b7369755f388f35abe7b87cffa2fb82d09eff2fcff6028e67` |
| 11 | `instance` | [Matrix.instFiniteSpectrum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceMinpolyFiniteHasEigenvalue.lean/declarations/matrix-instfinitespectrum.md) | 124 | `declaration-track:ddec48ee1aeaf07a35ad2d085026231ada29ea6cf8571741749f4a52d2bcc253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c76d5c44374f197d1644bfed101008254182e081aa21a7ec6c6f038328d7762 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Minpoly/Variant71d894146a390c2c9dad561fe45a3bcbab0f895e6402e7e515ac8feec253cf4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

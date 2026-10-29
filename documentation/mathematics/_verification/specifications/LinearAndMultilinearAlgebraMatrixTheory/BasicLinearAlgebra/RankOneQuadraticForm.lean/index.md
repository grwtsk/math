# Verification target: GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9c8fcc057d97f18cfa7411a0ef9ed6841023f46",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Determinant/RankOneQuadraticForm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9c8fcc057d97f18cfa7411a0ef9ed6841023f46`.

Source path: `GRWTSK/LinearAlgebra/Determinant/RankOneQuadraticForm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Determinant/RankOneQuadraticForm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PolynomialEnergyCriterion.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.LinearAlgebra.Matrix.SchurComplement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [determinant_encoding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/declarations/determinant-encoding.md) | 29 | `result-track:c97735c290c6503db36872d72afc2c98ddd33191e34d44a0c4199abad2c91f29` |
| 2 | `abbrev` | [PickupIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/declarations/pickupindex.md) | 51 | `declaration-track:748dff17d2961cdbc75f79a141562a011230cf10090b4475559d8a8bbe00d280` |
| 3 | `def` | [responseMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/declarations/responsematrix.md) | 54 | `declaration-track:0afa3da411e42a2be3e6bb3a7fe4c54237f8536f4ef74fc0047faf0930c8477b` |
| 4 | `def` | [coefficientRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/declarations/coefficientrow.md) | 58 | `declaration-track:314bee3ea5c6c3b0f1f05568208f8853fed16fcd38212a71849fc64bc1e15851` |
| 5 | `def` | [pickupDeterminant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/declarations/pickupdeterminant.md) | 61 | `declaration-track:bebfd5561a7e56bb7f5f09839d559d09bba562fa803ac023f10f920066501644` |
| 6 | `theorem` | [pickupDeterminant_eq_energy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/declarations/pickupdeterminant-eq-energy.md) | 65 | `result-track:328dafbb2d547fc46bb9ad823b902d49e2b14fad9c0945db786742b4f79f00a2` |
| 7 | `theorem` | [pickupDeterminant_bound_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/declarations/pickupdeterminant-bound-iff.md) | 82 | `result-track:202583f7debd0e81c371872b69954a80670629344fffbe421c7294ca0a0fee56` |
| 8 | `theorem` | [pickupDeterminant_poly_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneQuadraticForm.lean/declarations/pickupdeterminant-poly-iff.md) | 88 | `result-track:b3e2e50f1a5e96bdc48404709d5151b18ed10ba8f6d3ded48041c548715884f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb83db3aeabc9f8bef9727f70a970b92d8060a6b5b48d9d65fed6515e5de3f87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/LinearAlgebra/Determinant/RankOneQuadraticForm.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrence4ddf3c1526e7b64c3ef823c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

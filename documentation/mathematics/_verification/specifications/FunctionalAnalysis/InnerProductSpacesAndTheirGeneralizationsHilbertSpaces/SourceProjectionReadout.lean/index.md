# Verification target: Source Projection Readout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f64a0573f418a1b0840e15de238fee39e4d5b22",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f64a0573f418a1b0840e15de238fee39e4d5b22`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.CompensatedReadout` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection.Submodule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stateIncrement](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/stateincrement.md) | 49 | `declaration-track:7a77d848a76774f012df1062f42597ceae651f7eeb7b0e833b0b669e30c767ea` |
| 2 | `theorem` | [quadratic_difference_eq_combined](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/quadratic-difference-eq-combined.md) | 52 | `result-track:d93ed9f90c0cb79ffc8c50e561425848319fb0c328e4f0dc7a70cf763c6e384d` |
| 3 | `theorem` | [quadratic_difference_eq_diagonal_cross](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/quadratic-difference-eq-diagonal-cross.md) | 62 | `result-track:ca3b0fa1cf0ada0186a254a8a78c0a38eeda51484d3964a85d498ba1a8f6a985` |
| 4 | `theorem` | [quadratic_finite_telescope](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/quadratic-finite-telescope.md) | 72 | `result-track:f5603aa6e93396b0ebb5cad8098e7b270dc6f1d6737ea8b6ae85fd0355de55fe` |
| 5 | `theorem` | [quadratic_finite_combined_telescope](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/quadratic-finite-combined-telescope.md) | 84 | `result-track:dde282c9b584388b87551544264635e688ce278ef4004e9a612ad9673cc0acb7` |
| 6 | `theorem` | [finite_inner_sum_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/finite-inner-sum-abs-le.md) | 94 | `result-track:02d71c1fced3e7dd28c3f74113a7acd7eb261a409a4cea0eee6fa7a41d5d7e5d` |
| 7 | `theorem` | [finite_inner_sum_abs_le_of_square_bounds](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/finite-inner-sum-abs-le-of-square-bounds.md) | 106 | `result-track:2fe7c9b643b4f291d1fc093b170e3dba70cad835a560abdf188dd54ffe4ec609` |
| 8 | `def` | [projectedState](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projectedstate.md) | 120 | `declaration-track:2542680031643e3f0ff95eb33c183e6f5d8e75aa9a63fc5f3a63b9d9dd07f21b` |
| 9 | `def` | [projectionDifference](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projectiondifference.md) | 123 | `declaration-track:f52b9996cd7548df9d45358f5dba360c3334946ae031afeee66cf7da821aa4c3` |
| 10 | `def` | [combinedProjectionRow](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/combinedprojectionrow.md) | 127 | `declaration-track:b2eafb869e3fafed3de6e176784aede9b1b013509732c9c2b74423ad49d7576b` |
| 11 | `theorem` | [smaller_projection_larger](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/smaller-projection-larger.md) | 131 | `result-track:e8631da659ee5a1ad09180580735171405635441179b87695800d4cde93c4b64` |
| 12 | `theorem` | [larger_projection_smaller](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/larger-projection-smaller.md) | 138 | `result-track:dbd06276c340fbb65164ccbe64d9c1fafd6fd2a5aa35b672f27f6ff73befe8bf` |
| 13 | `theorem` | [projection_difference_fixes_increment](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projection-difference-fixes-increment.md) | 144 | `result-track:dbcce40dec769585ac0f5c6fe0a72911bc8079a060f9baaaf6b22daaecd19d59` |
| 14 | `theorem` | [projection_difference_inner_symmetric](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projection-difference-inner-symmetric.md) | 158 | `result-track:ca72d4b95cf8eda3f321249e2cf6bb85ff8aaecc0a05c6d582b8bb11797ee145` |
| 15 | `theorem` | [projected_increment_norm_sq](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projected-increment-norm-sq.md) | 164 | `result-track:4ee26422ea50c2a4819f6c58d3adef7856c108128df7a7edfaefb6119bc48c93` |
| 16 | `theorem` | [projected_increment_energy_eq](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projected-increment-energy-eq.md) | 180 | `result-track:54f56a5e39ffc15085466c8db9b08144cb0ecdd938113cbd6f5233b37aeaaf1a` |
| 17 | `theorem` | [projected_increment_energy_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projected-increment-energy-le.md) | 187 | `result-track:97922a0eb4478c24c875f0790b419407301cfd31f066439f4ff89c5cfd66d3c2` |
| 18 | `theorem` | [combined_projection_row_inner](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/combined-projection-row-inner.md) | 196 | `result-track:1a63d2e4d24077f419ffa7db00b3db904860e9335038c8408f5ffbbf94058768` |
| 19 | `theorem` | [projected_readout_combined_telescope](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projected-readout-combined-telescope.md) | 206 | `result-track:6dbd13d8fa27b76fb982698fc9ed35486280dd231984babf0047523cf36c7f3c` |
| 20 | `theorem` | [projected_readout_abs_le_of_row_square](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/projected-readout-abs-le-of-row-square.md) | 215 | `result-track:5bf205b912094ed214d1be39d17e1224209a68c086e0deca94b9e887c75c8d59` |
| 21 | `theorem` | [full_readout_abs_le_of_projection_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/full-readout-abs-le-of-projection-rows.md) | 227 | `result-track:9d5952aa3ae7ae52c23ea7ccbc66e74e515b7edc39aca060a2db6b2ad3615278` |
| 22 | `theorem` | [mertensResidual_eq_projection_telescope](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/mertensresidual-eq-projection-telescope.md) | 249 | `result-track:1e9e146639df09393d3c416803510b6b2e8b54a19b3f012e938cdc26911b6aa1` |
| 23 | `theorem` | [mertensResidual_abs_le_of_projection_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/mertensresidual-abs-le-of-projection-rows.md) | 267 | `result-track:eb8a92589b5e5b612729f882c77ab287fa103c1fcc36d8ef8ff72ee05b41fd06` |
| 24 | `theorem` | [mertensResidual_centered_abs_le_of_projection_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/mertensresidual-centered-abs-le-of-projection-rows.md) | 278 | `result-track:80cea99aca3b68c755b1ee341a30b87bdb6ac33bf6b159772cd863c9c108fea3` |
| 25 | `theorem` | [mertensResidual_le_two_add_sqrt_of_centered_projection_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/mertensresidual-le-two-add-sqrt-of-centered-projection-rows.md) | 293 | `result-track:8a10cd54b4c0c8a4dabc3a971f220eca6d24e394f1bc542048ef8f22d6e80a06` |
| 26 | `def` | [scalarContinuumAnchor](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/scalarcontinuumanchor.md) | 307 | `declaration-track:e63b684c7fe27fb365699ae8d9785b4635547e5e15ee99bef122ef70fd54f879` |
| 27 | `theorem` | [scalarContinuumAnchor_selfAdjoint](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/scalarcontinuumanchor-selfadjoint.md) | 311 | `result-track:a1092ae06eb037efe64fca5f273b2f258bc5c3a4b3f89a9df403bdb8ddeda32b` |
| 28 | `theorem` | [scalarContinuumAnchor_source_readout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/scalarcontinuumanchor-source-readout.md) | 319 | `result-track:129ac61db32c0c6cfbbcd3af552d3daaac413f373b6ac48f5034247e89ad18f6` |
| 29 | `def` | [scalarCompensatedPrimeOperator](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/scalarcompensatedprimeoperator.md) | 328 | `declaration-track:df85b1ec6889ff37b888f1ec3d19e39bd5b9c0b673bfc832d0abd53d6039bdd6` |
| 30 | `theorem` | [scalarCompensatedPrimeOperator_selfAdjoint](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/scalarcompensatedprimeoperator-selfadjoint.md) | 332 | `result-track:ec7912e85de8c632cacb5ff08dcf2f3ff2bbadc1efc7cf7177977b290ae03675` |
| 31 | `theorem` | [scalarCompensatedPrimeOperator_source_readout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/scalarcompensatedprimeoperator-source-readout.md) | 338 | `result-track:984b7ae63c7c8805f6a00e2deb55f3b49673279d3403ece1ae4d9cbc69395ea6` |
| 32 | `theorem` | [mertensResidual_le_two_add_sqrt_of_scalar_compensated_rows](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceProjectionReadout.lean/declarations/mertensresidual-le-two-add-sqrt-of-scalar-compensated-rows.md) | 348 | `result-track:951e9be06970112b03f956d4f8f45b8c036f8737bf43409942ead39f99601328` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd7483b738d83de4a7f1f8e3a387c0a999683b40a2d44dc6d234c8bfb994baa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0eSourceProjection/Variant2b4c4fb0ac7a90879b5a815dd7be088a964350e6f217015e8612dcced2dd04c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

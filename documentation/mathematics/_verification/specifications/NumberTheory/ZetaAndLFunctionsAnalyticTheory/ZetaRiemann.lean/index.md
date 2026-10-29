# Verification target: GRWTSK.NumberTheory.Zeta.Riemann

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef7d0a0dbd02f2b3eb56266f668cf22aadcdb5d2",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaRiemann.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZetaRiemann.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef7d0a0dbd02f2b3eb56266f668cf22aadcdb5d2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Hypothesis.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroDefinitionsHistoricalSourceEdition2.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroExclusions.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalLineDefect`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalLineDefect.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannZeroSymmetry.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DefectCriterion`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DefectCriterion.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewKernelRefinement.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ScrewQuarticPathControl`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.LinearMomentComponents`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LinearMomentComponents.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.Spectral.Sheaf.SymmetryResolvedQuadraticDescent`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetryResolvedQuadraticDescent.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction`](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ScrewSpectralReconstruction.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.SchurFeshbachJet`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Spectral.Sheaf.SynchronizedSchurJet`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SynchronizedSchurJet.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CertifiedZeroHeight`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CertifiedZeroHeight.lean/index.md) — import line 14; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.QuantumReadiness`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuantumReadiness.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.SchurJetScrewReconstruction`](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SchurJetScrewReconstruction.lean/index.md) — import line 16; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAtlas`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripAtlas.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport`](../../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOverlapAudit`](../../../../../AssociativeRingsAndAlgebras/CriticalStripOverlapAudit.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripVerticalPath`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripVerticalPath.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripStructuredTransport`](../../../../../GeneralTopology/CriticalStripStructuredTransport.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaCommutatorRoot`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaCommutatorRoot.lean/index.md) — import line 22; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRootFixture`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/index.md) — import line 23; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilCriterion.lean/index.md) — import line 24; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilPositiveLimit.lean/index.md) — import line 25; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticFeature`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ArithmeticFeature.lean/index.md) — import line 26; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilPositiveLimitCore.lean/index.md) — import line 27; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalLinePositivityCriterion`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalLinePositivityCriterion.lean/index.md) — import line 28; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.MirrorPairingCriterion`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MirrorPairingCriterion.lean/index.md) — import line 29; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c238933a54dc5187a9b42c09e387d701b264db976db8085d0fa45399c5d8c09a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

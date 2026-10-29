# candidate_boundaryInverse_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e428bf3b-2d7b-89df-c374-96c1be505bf8",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_laplace_integrable",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "candidate-boundaryinverse-laplace-integrable",
  "source": {
    "blob": "d7476eaaf4da6841163e4b09249ca9c4384323ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 318,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79d1888ee00114a18fc21c80667025b44e1dccccd80a93906088ba89c45a66a4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e428bf3b-2d7b-89df-c374-96c1be505bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_laplace_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun x : ℝ => Complex.exp (-z * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) (Ioi (0 : ℝ)) := by
  apply ((candidate_boundaryInverse_integrable X hX ε h hε hh hh1).norm.integrableOn).mono'
    (((by fun_prop : Continuous (fun x : ℝ => Complex.exp (-z * (x : ℂ)))).mul
      (candidate_boundaryInverse_continuous X hX ε h hε hh hh1)).aestronglyMeasurable)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  change ‖Complex.exp (-z * (x : ℂ)) * boundaryInverse (candidate X ε h) x‖ ≤
    ‖boundaryInverse (candidate X ε h) x‖
  rw [norm_mul]
  have hn : ‖Complex.exp (-z * (x : ℂ))‖ ≤ 1 := by
    rw [Complex.norm_exp, Real.exp_le_one_iff]
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im, Complex.ofReal_re,
      Complex.ofReal_im, mul_zero, sub_zero]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hz) hx.le
  simpa only [one_mul] using mul_le_mul_of_nonneg_right hn (norm_nonneg _)

end
end CandidateInverseAdmissionScratch

/-! Exact Fourier and Laplace identification of the admitted actual controller. -/
set_option autoImplicit false
namespace CandidateLaplaceScratch
open MeasureTheory FourierTransform Filter Complex Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality
open CandidateRealizationScratch CandidateTiltScratch CandidateInverseAdmissionScratch
noncomputable section

/-- Fourier inversion recovers the exact actual candidate on the imaginary axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/CandidateLaplaceStatementsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7476eaaf4da6841163e4b09249ca9c4384323ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00213ae2480bd59050128714b691e838b81cf45a5c07540c5dea34267382564d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

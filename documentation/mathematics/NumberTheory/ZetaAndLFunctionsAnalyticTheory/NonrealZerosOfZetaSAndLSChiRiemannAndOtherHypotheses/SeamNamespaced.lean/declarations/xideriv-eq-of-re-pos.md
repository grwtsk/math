# xiDeriv_eq_of_re_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72cc55db-bc48-d2d2-0f8a-810898754910",
  "kind": "theorem",
  "lexical_name": "xiDeriv_eq_of_re_pos",
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
  "slug": "xideriv-eq-of-re-pos",
  "source": {
    "blob": "58375321162bbfb67cb0b2b9ce5a1574c8ee46c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 300,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d492b303cdee910666bccca8511c4e2410a2de5b7c69eee63c8797704d7a738",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72cc55db-bc48-d2d2-0f8a-810898754910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xiDeriv_eq_of_re_pos {s : ℂ} (hs : 0 < s.re) (hs1 : s ≠ 1) :
    xiDeriv s = ((2 * s - 1) / 2 * Gammaℝ s + s * (s - 1) / 2 * deriv Gammaℝ s) * riemannZeta s
      + s * (s - 1) / 2 * Gammaℝ s * deriv riemannZeta s := by
  have hopen : IsOpen ({z : ℂ | 0 < z.re} ∩ {(1 : ℂ)}ᶜ) :=
    (isOpen_lt continuous_const Complex.continuous_re).inter isOpen_compl_singleton
  have hev : xi =ᶠ[𝓝 s] fun z => z * (z - 1) / 2 * (Gammaℝ z * riemannZeta z) := by
    filter_upwards [hopen.mem_nhds ⟨hs, hs1⟩] with z hz
    exact xi_eq_Gammaℝ_mul_zeta hz.1 hz.2
  unfold xiDeriv
  rw [hev.deriv_eq]
  have h1 : HasDerivAt (fun z : ℂ => z * (z - 1) / 2) ((2 * s - 1) / 2) s := by
    have := ((hasDerivAt_id s).mul ((hasDerivAt_id s).sub_const 1)).div_const 2
    exact this.congr_deriv (by simp only [id_eq]; ring)
  have h2 : HasDerivAt Gammaℝ (deriv Gammaℝ s) s := (Zeta23.WeilEF.differentiableAt_Gammaℝ hs).hasDerivAt
  have h3 : HasDerivAt riemannZeta (deriv riemannZeta s) s :=
    (differentiableAt_riemannZeta hs1).hasDerivAt
  have h : HasDerivAt (fun z : ℂ => z * (z - 1) / 2 * (Gammaℝ z * riemannZeta z))
      ((2 * s - 1) / 2 * (Gammaℝ s * riemannZeta s)
        + s * (s - 1) / 2 * (deriv Gammaℝ s * riemannZeta s + Gammaℝ s * deriv riemannZeta s)) s :=
    h1.mul (h2.mul h3)
  rw [h.deriv]
  ring

/-- ξ′ = Γℝ · Y on Re s > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58375321162bbfb67cb0b2b9ce5a1574c8ee46c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29b71378fdeaed1d52270798f7cc63e4f7d58059aeba96c1d3e7380946fddcf7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

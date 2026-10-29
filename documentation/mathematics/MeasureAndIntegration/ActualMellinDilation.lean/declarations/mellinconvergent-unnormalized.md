# mellinConvergent_unnormalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0add9a5e-eeae-ad0b-5397-18b740afe4e5",
  "kind": "theorem",
  "lexical_name": "mellinConvergent_unnormalized",
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
  "slug": "mellinconvergent-unnormalized",
  "source": {
    "blob": "ae48970d951f09ff222b9a17462216adbd93fee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 14,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efb518564893a0459f3a6498d9ec55a525ff850d2013543243ce5b3ce21845c4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ActualMellinDilation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0add9a5e-eeae-ad0b-5397-18b740afe4e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellinConvergent_unnormalized {f : ℝ → ℂ} {s : ℂ} {a : ℝ}
    (ha : 0 < a) (hf : MellinConvergent f s) :
    MellinConvergent (unnormalizedFunc a f) s := by
  have hc : IntegrableOn (fun t : ℝ => (a : ℂ)^(1-s) •
      ((a*t:ℝ):ℂ)^(s-1) • f (a*t)) (Ioi 0) := by
    have h := (integrableOn_Ioi_comp_mul_left_iff
      (fun u : ℝ => (u : ℂ)^(s-1) • f u) 0 ha).mpr (by simpa [MellinConvergent] using hf)
    have h' := h.const_mul ((a:ℂ)^(1-s))
    change Integrable (fun t : ℝ => (a : ℂ)^(1-s) •
      ((a*t:ℝ):ℂ)^(s-1) • f (a*t)) (volume.restrict (Ioi 0))
    simpa only [smul_eq_mul] using h'
  apply (integrableOn_congr_fun (fun t ht => ?_) measurableSet_Ioi).mpr hc
  dsimp only [unnormalizedFunc]
  rw [Complex.ofReal_mul,Complex.mul_cpow_ofReal_nonneg ha.le (le_of_lt ht),
    ←mul_smul,(by ring : 1-s = -(s-1)),Complex.cpow_neg,inv_mul_cancel_left₀]
  rw [Ne,Complex.cpow_eq_zero_iff,Complex.ofReal_eq_zero,not_and_or]
  exact Or.inl ha.ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ActualMellinDilation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae48970d951f09ff222b9a17462216adbd93fee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61db4d340e8de64753d9a3940af0e1132d8850599c36abfb0d59d54298d15a51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilation/Variant7e3b4c048d31f946cae0e80b23bdab8b8101789980e719516dd3975e76bf831a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

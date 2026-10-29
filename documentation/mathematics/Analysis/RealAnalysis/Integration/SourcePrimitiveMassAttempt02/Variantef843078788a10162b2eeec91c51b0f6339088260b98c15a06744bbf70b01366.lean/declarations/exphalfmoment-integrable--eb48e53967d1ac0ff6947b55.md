# expHalfMoment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6e63827-1ead-2952-d96e-eeaadb6d09fd",
  "kind": "theorem",
  "lexical_name": "expHalfMoment_integrable",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exphalfmoment-integrable--eb48e53967d1ac0ff6947b55",
  "source": {
    "blob": "6c3e1fb38cb7481cb26a6e4462b0dd0ee101bf1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 16,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb48e53967d1ac0ff6947b55f5212bac9f145800262e7da742b5e30b19f074ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6e63827-1ead-2952-d96e-eeaadb6d09fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expHalfMoment_integrable (n : ℕ) :
    IntegrableOn (fun y : ℝ => y^n*Real.exp (-y/2)) (Ioi (0:ℝ)) := by
  have h := Real.GammaIntegral_convergent (s:=(n:ℝ)+1) (by positivity)
  simp only [add_sub_cancel_right,Real.rpow_natCast] at h
  have hc := (integrableOn_Ioi_comp_mul_left_iff
    (fun y : ℝ => Real.exp (-y)*y^n) 0 (a:=(1/2:ℝ)) (by norm_num)).mpr
      (by simpa using h)
  have hh : IntegrableOn (fun y : ℝ => (2:ℝ)^n*(Real.exp (-((1/2:ℝ)*y))*((1/2:ℝ)*y)^n))
      (Ioi (0:ℝ)) := hc.const_mul ((2:ℝ)^n)
  have he : (fun y : ℝ => (2:ℝ)^n*(Real.exp (-((1/2:ℝ)*y))*((1/2:ℝ)*y)^n))=
      (fun y : ℝ => y^n*Real.exp (-y/2)) := by
    funext y
    rw [mul_pow]
    have hn : (2:ℝ)^n*(1/2:ℝ)^n=1 := by rw [←mul_pow]; norm_num
    have hx : -((1/2:ℝ)*y)=-y/2 := by ring
    rw [hx]
    calc
      _ = Real.exp (-y/2)*y^n*((2:ℝ)^n*(1/2:ℝ)^n) := by ring
      _ = _ := by rw [hn]; ring
  exact he ▸ hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3e1fb38cb7481cb26a6e4462b0dd0ee101bf1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a2f1ee8a3c34c224e8b23fe6a72dbabcac7df1689e354fd347a26dcbdd4c761 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt02/Variantef843078788a10162b2eeec91c51b0f6339088260b98c15a06744bbf70b01366.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

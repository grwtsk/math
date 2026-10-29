# primitiveWeilLaplace_vertical_pow_bound_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8974191e-eca9-9d7c-4d5b-e41ff9729515",
  "kind": "theorem",
  "lexical_name": "primitiveWeilLaplace_vertical_pow_bound_uniform",
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
  "slug": "primitiveweillaplace-vertical-pow-bound-uniform",
  "source": {
    "blob": "d3962dde4483a2918717b0ecc4424aa8dde52a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 387,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2527f025adb3ae48e6306569af4039532ecbd3d70754549515e3d0d25ca5209e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/VerticalStripDecayNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8974191e-eca9-9d7c-4d5b-e41ff9729515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primitiveWeilLaplace_vertical_pow_bound_uniform
    (g : PrimitiveWeilTestFunction) {sigma₀ sigma₁ : ℝ}
    (hsigma : sigma₀ ≤ sigma₁) (n : ℕ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ sigma ∈ Set.Icc sigma₀ sigma₁, ∀ t : ℝ,
        |t| ^ n *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ ≤ C := by
  obtain ⟨A, hA, hbound⟩ :=
    laplaceSlice_iteratedDeriv_l1_uniform g hsigma n
  refine ⟨A, hA, ?_⟩
  intro sigma hsigmaMem t
  have hid :=
    primitiveWeilLaplace_vertical_moment_identity g sigma t n
  calc
    |t| ^ n *
          ‖primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ =
        ‖(Complex.I * (t : ℂ)) ^ n *
          primitiveWeilLaplace g
            ((sigma : ℂ) + Complex.I * (t : ℂ))‖ := by
      simp only [norm_mul, norm_pow, norm_I, one_mul, norm_real,
        Real.norm_eq_abs]
    _ = ‖(-1 : ℂ) ^ n *
          ∫ x : ℝ,
            iteratedDeriv n
                (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
              verticalOscillation t x‖ := congrArg norm hid
    _ = ‖∫ x : ℝ,
          iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
            verticalOscillation t x‖ := by
      rw [norm_mul, norm_pow]
      norm_num
    _ ≤ ∫ x : ℝ,
          ‖iteratedDeriv n
              (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x *
            verticalOscillation t x‖ :=
      norm_integral_le_integral_norm _
    _ = ∫ x : ℝ,
          ‖iteratedDeriv n
            (g.laplaceSliceSchwartz sigma : ℝ → ℂ) x‖ := by
      apply integral_congr_ae
      filter_upwards with x
      rw [norm_mul]
      have hosc : ‖verticalOscillation t x‖ = 1 := by
        rw [verticalOscillation, Complex.norm_exp]
        simp
      rw [hosc, mul_one]
    _ ≤ A := hbound sigma hsigmaMem

/-- Rapid vertical decay with one constant uniform over a compact interval of
real parts. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/VerticalStripDecayNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3962dde4483a2918717b0ecc4424aa8dde52a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a21b653a5ba049037a398b961d19142c1915c3a0e161d6f8e54647509f2b8ff1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/VerticalStripDecay/Variant52944f06f1add15e64d4d1424efc92f4682a4e1ebc1f63ad32e9f3fef5546c71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

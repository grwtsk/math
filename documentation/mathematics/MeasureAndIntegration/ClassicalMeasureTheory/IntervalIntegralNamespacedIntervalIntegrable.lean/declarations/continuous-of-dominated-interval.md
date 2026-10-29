# continuous_of_dominated_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eefcada2-3ad6-1bf8-944e-1d6d274ae148",
  "kind": "theorem",
  "lexical_name": "continuous_of_dominated_interval",
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
  "slug": "continuous-of-dominated-interval",
  "source": {
    "blob": "1ae36b1e8d39aa18e52042b54d92c73a6275ad51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1132,
    "line": 1113,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f461943285a30fe16fd51f2f1334182c14d562719a72351aefc1ac6cc4af5a2d",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralNamespacedIntervalIntegrable.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefcada2-3ad6-1bf8-944e-1d6d274ae148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1113–1132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_of_dominated_interval {F : X → ℝ → E} {bound : ℝ → ℝ} {a b : ℝ}
    (hF_meas : ∀ x, AEStronglyMeasurable (F x) <| μ.restrict <| Ι a b)
    (h_bound : ∀ x, ∀ᵐ t ∂μ, t ∈ Ι a b → ‖F x t‖ ≤ bound t)
    (bound_integrable : IntervalIntegrable bound μ a b)
    (h_cont : ∀ᵐ t ∂μ, t ∈ Ι a b → Continuous fun x => F x t) :
    Continuous fun x => ∫ t in a..b, F x t ∂μ :=
  continuous_iff_continuousAt.mpr fun _ =>
    continuousAt_of_dominated_interval (eventually_of_forall hF_meas) (eventually_of_forall h_bound)
        bound_integrable <|
      h_cont.mono fun _ himp hx => (himp hx).continuousAt
#align interval_integral.continuous_of_dominated_interval intervalIntegral.continuous_of_dominated_interval

end OrderClosedTopology

section ContinuousPrimitive

open TopologicalSpace

variable {a b b₀ b₁ b₂ : ℝ} {μ : Measure ℝ} {f g : ℝ → E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralNamespacedIntervalIntegrable.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean#L1113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ae36b1e8d39aa18e52042b54d92c73a6275ad51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bbec620b93816c69fc0b1d6ef0a89c4b45c652c73ce62bf603506ca19ea9f12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant16ba8c4df89b64578a785e20b9bd4b7eac995412b3fac3de3d9015b88122934b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

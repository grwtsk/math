# derivMetricTensor_apply_eq_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ceaef9f-2f1a-48ba-b9f2-eab67a18f31b",
  "kind": "theorem",
  "lexical_name": "derivMetricTensor_apply_eq_extend",
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
  "slug": "derivmetrictensor-apply-eq-extend",
  "source": {
    "blob": "12cfd9a70cebfb2b92ff634e6512c3d3121b78c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ccbd0f6406b8f46cbef0867823c239571cca9dc0ab2d16fd9d91048aa5f3008",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/DifferentialGeometry/MetricPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ceaef9f-2f1a-48ba-b9f2-eab67a18f31b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem derivMetricTensor_apply_eq_extend [FiniteDimensional ℝ F]
    (X₀ : TangentSpace I x) (σ₀ τ₀ : V x) :
    cov.derivMetricTensor x σ₀ τ₀ X₀ =
      d% ⟪(FiberBundle.extend F σ₀), (FiberBundle.extend F τ₀)⟫ x X₀
        - inner ℝ (cov (FiberBundle.extend F σ₀) x X₀) τ₀
        - inner ℝ σ₀ (cov (FiberBundle.extend F τ₀) x X₀) := by
  simp [derivMetricTensor, TensorialAt.mkHom₂_apply_eq_extend]

variable {I} [ContMDiffVectorBundle 1 F V I] in
/-- Predicate saying that a connection `∇` on a Riemannian bundle `(V, g)` is compatible with the
ambient metric, i.e. for all differentiable vector fields `X` on `M` and sections `σ` and `τ` of
`V`, we have `X ⟨σ, τ⟩ = ⟨∇_X σ, τ⟩ + ⟨σ, ∇_X τ⟩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/DifferentialGeometry/MetricPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12cfd9a70cebfb2b92ff634e6512c3d3121b78c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc7aaea7fa23c42d08fb743f9649c9f94be5a1d10d4d9ae1fe4c48e15581691f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Metric/Variant02d006243d9c78ad378c263a8121420ff19d6e1875d6def25d4ab657c34f419e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

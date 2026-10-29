# exists_regular_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efd9c703-1e4d-e8cf-c223-3eee011533ec",
  "kind": "theorem",
  "lexical_name": "exists_regular_extension",
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
  "slug": "exists-regular-extension",
  "source": {
    "blob": "18b494775954f5ce491cdb66df689187be752499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ac3250b8c93359639425f83cb3505ad059bd428805ae4c2736e043a251a14fd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionsOfAComplexVariable/IsolatedFiniteOrderContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efd9c703-1e4d-e8cf-c223-3eee011533ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_regular_extension (f : ℂ → ℂ) (root : ℂ) (m : ℕ) (region : Set ℂ)
    (positiveOrder : 0 < m) (analytic : AnalyticOnNhd ℂ f region)
    (rootMember : root ∈ region) (rootZero : f root = 0)
    (actualOrder : analyticOrderAt f root = (m : ℕ∞))
    (nonzeroAway : ∀ z ∈ region, z ≠ root → f z ≠ 0) :
    ∃ H : ℂ → ℂ, AnalyticOnNhd ℂ H region ∧
      ∀ z ∈ region, z ≠ root → H z = deriv f z / f z - (m : ℂ) / (z - root) := by
  obtain ⟨g, analyticG, nonzeroG, identity⟩ := exists_nonvanishing_factor
    f root m region positiveOrder analytic rootMember rootZero actualOrder nonzeroAway
  refine ⟨fun z => deriv g z / g z, ?_, ?_⟩
  · intro z hz
    exact (analyticG z hz).deriv.div (analyticG z hz) (nonzeroG z hz)
  · intro z hz different
    rw [log_derivative_split f g root z m positiveOrder identity
      (analyticG z hz) (nonzeroG z hz) different]
    ring

/-- The exact circle integral is 2*pi*i*m. No derivative-nonvanishing premise is imposed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionsOfAComplexVariable/IsolatedFiniteOrderContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b494775954f5ce491cdb66df689187be752499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=555bfce4a20be5f0187950dcb1ddb2f57902efac8ffdbb1bc9e411863685685b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean","GRWTSK/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

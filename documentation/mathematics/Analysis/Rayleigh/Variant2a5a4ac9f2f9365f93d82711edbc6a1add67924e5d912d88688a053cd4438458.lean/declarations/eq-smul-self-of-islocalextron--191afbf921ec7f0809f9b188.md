# eq_smul_self_of_isLocalExtrOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fa2ac10-dbe1-4b02-f9fc-cf383f0d4e21",
  "kind": "theorem",
  "lexical_name": "eq_smul_self_of_isLocalExtrOn",
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
  "slug": "eq-smul-self-of-islocalextron--191afbf921ec7f0809f9b188",
  "source": {
    "blob": "66e8428e2794a380cd531c738c0a289a4c971bf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 266,
    "path": "GRWTSK/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:191afbf921ec7f0809f9b18807cf6d0f0a2a41a1328645d9408f15a746caa1da",
  "verification": {
    "reference": "docs/verification/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fa2ac10-dbe1-4b02-f9fc-cf383f0d4e21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_smul_self_of_isLocalExtrOn (hT : IsSelfAdjoint T) {x₀ : E}
    (hextr : IsLocalExtrOn T.reApplyInnerSelf (sphere (0 : E) ‖x₀‖) x₀) :
    T x₀ = (T.rayleighQuotient x₀ : 𝕜) • x₀ := by
  let := InnerProductSpace.rclikeToReal 𝕜 E
  let hSA := hT.isSymmetric.restrictScalars.toSelfAdjoint.prop
  exact hSA.eq_smul_self_of_isLocalExtrOn_real hextr

/-- For a self-adjoint operator `T`, a local extremum of the Rayleigh quotient of `T` on a sphere
centred at the origin is an eigenvector of `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e8428e2794a380cd531c738c0a289a4c971bf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9358f08fd4ac069fcb6091909f85cce9f4ea822b4a9f6b9bac3987e1d8b51c0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Rayleigh/Variant2a5a4ac9f2f9365f93d82711edbc6a1add67924e5d912d88688a053cd4438458.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

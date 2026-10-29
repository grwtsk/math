# compactPolePrimitive_eq_polePrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baa7ac98-7d17-aa3e-287d-0ffc58e185c3",
  "kind": "theorem",
  "lexical_name": "compactPolePrimitive_eq_polePrimitive",
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
  "slug": "compactpoleprimitive-eq-poleprimitive",
  "source": {
    "blob": "ae5ba436f69434a86cbf61fa68972140910f8d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EnergyV1Prebytes/Variant40dfd1e4073b5d4cb5a241b7c0c330aca15f4203ea89a66e1d1818d0e18170d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:322c3c6648efdaf28b2ef36e3bb41eb51444b0c96a8d8735b7c41f8ad45833b0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/EnergyV1PrebytesNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baa7ac98-7d17-aa3e-287d-0ffc58e185c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactPolePrimitive_eq_polePrimitive {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∈ Icc (-A) A) :
    compactPolePrimitive A x =
      polePrimitive A (-1 / 2) x / Real.sqrt (sourceNormalization A) := by
  rw [compactPolePrimitive, normalizedPrimitiveBump_eq_interior hA hx,
    normalizedPrimitiveBump_deriv_eq_interior hA hx]
  dsimp [polePrimitive]
  rw [show (-1 / 2 : ℝ) * x = -x / 2 by ring]
  ring

/-- The primitive's derivative is the actual negative-pole weighted source everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/EnergyV1PrebytesNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EnergyV1Prebytes/Variant40dfd1e4073b5d4cb5a241b7c0c330aca15f4203ea89a66e1d1818d0e18170d5.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5ba436f69434a86cbf61fa68972140910f8d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d42c078d4c200030d337944d95fea9f8277cecc62f03591bbfba58671b8f87af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EnergyV1Prebytes/Variant40dfd1e4073b5d4cb5a241b7c0c330aca15f4203ea89a66e1d1818d0e18170d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

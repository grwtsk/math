# FiniteFourierSupportCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f298684ddb4d1f883affdfd46b1411007e07a5cb4b8832baf4a9c9188ba5676",
  "kind": "structure",
  "lexical_name": "FiniteFourierSupportCertificate",
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
  "slug": "finitefouriersupportcertificate",
  "source": {
    "blob": "d5c485b8369274c85e67038702f0542fcaff6be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0b6b8e93793a97d615dfb13e6a3b118c878c33f875e63e722f57ff7f8f6a39b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/FiniteTraceFourierSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f298684ddb4d1f883affdfd46b1411007e07a5cb4b8832baf4a9c9188ba5676`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteFourierSupportCertificate
    (t : TraceShapedInput γ m) where
  radius : ℝ
  radius_nonneg : 0 ≤ radius
  lengthFloor : ℝ
  lengthFloor_pos : 0 < lengthFloor
  floor_le : ∀ a ∈ t.primitiveCandidates, lengthFloor ≤ t.length a
  vanish_above : ∀ x : ℝ, radius < x → t.fourierTest x = 0

/-- The chosen cutoff must cover the support radius using the supplied
positive length floor. At equality the next iterate is strictly beyond
the radius; no strictness of B < K*delta is required. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/FiniteTraceFourierSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c485b8369274c85e67038702f0542fcaff6be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d90b2a0cc13e03a9ba232c36583c6b44bb11c1404989aca6e115a352e77e683d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/FiniteTraceFourierSupport.lean","GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTraceFourierSupport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

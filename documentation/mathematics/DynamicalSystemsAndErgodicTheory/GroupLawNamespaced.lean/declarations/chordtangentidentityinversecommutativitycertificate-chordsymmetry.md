# ChordTangentIdentityInverseCommutativityCertificate.chordSymmetry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ecd458b-78b3-2bb3-f917-1d92b5d41a6b",
  "kind": "theorem",
  "lexical_name": "ChordTangentIdentityInverseCommutativityCertificate.chordSymmetry",
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
  "slug": "chordtangentidentityinversecommutativitycertificate-chordsymmetry",
  "source": {
    "blob": "54b92f8d00b3e14abcb71f17b945439a113d6c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 781,
    "line": 765,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bf1a82527bda66f11e9c8037d9be41757b634aba4ef39af44864c7b59ea13e9",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/DynamicalSystemsAndErgodicTheory/GroupLawNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ecd458b-78b3-2bb3-f917-1d92b5d41a6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–781.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ChordTangentIdentityInverseCommutativityCertificate.chordSymmetry
    {C : LawfulShortWeierstrass.{u}}
    {G : GroupLawCertificate C.E}
    {P : ProjectiveWeierstrassClosureCertificate C}
    {I : ProjectiveLineCubicIntersectionCertificate C P}
    (A : ChordTangentIdentityInverseCommutativityCertificate C G P I)
    (Q R : Point C.E) :
    A.identityInverseCommutativityData.chordLine Q R =
      A.identityInverseCommutativityData.chordLine R Q :=
  A.identityInverseCommutativityData.chordSymmetry Q R

/--
Degree-zero divisor-class provenance for a smooth projective Weierstrass cubic.

This is still an interface certificate. It does not construct divisors,
principal divisors, the Picard group, line bundles, or Picard functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/DynamicalSystemsAndErgodicTheory/GroupLawNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54b92f8d00b3e14abcb71f17b945439a113d6c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d3d6c82e81836a84fb1d5631dc80447070b4c90921d62f5415875ea1e898107 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

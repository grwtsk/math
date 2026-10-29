# regularizedGaussHGFunSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c48580e97b9397f39312b2e6eb066c23bb9b5a5965b4872500ccc69db0a5bc58",
  "kind": "def",
  "lexical_name": "regularizedGaussHGFunSeries",
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
  "slug": "regularizedgausshgfunseries--81ed6001964045e3553d5409",
  "source": {
    "blob": "5835678327c06fb3961637b3741b6088b6fc6726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81ed6001964045e3553d5409e919b431c4fd483f4ca45bb2b1b8101a46ba79e8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c48580e97b9397f39312b2e6eb066c23bb9b5a5965b4872500ccc69db0a5bc58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def regularizedGaussHGFunSeries (a b c : ℂ) : FormalMultilinearSeries ℂ ℂ ℂ :=
  regularizedHGFunSeries {a, b} {c}

/-- The regularized Gaussian hypergeometric function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5835678327c06fb3961637b3741b6088b6fc6726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff774d5167676bed9e712cde1fb77d32b9a6baf6677a9c0ea57ea6d95d2b55ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/RegularizedHypergeometric/Variant128f946176d1ac01c5f10032511e6d59ac46046d3e070a6161ed74f23ec24414.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

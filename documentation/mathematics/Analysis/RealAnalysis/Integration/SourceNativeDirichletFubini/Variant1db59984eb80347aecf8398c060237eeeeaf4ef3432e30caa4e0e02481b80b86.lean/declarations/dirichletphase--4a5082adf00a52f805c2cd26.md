# dirichletPhase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dd605f3196291327471d16e719a364075b576034137cbde43bf4d5099f05741",
  "kind": "def",
  "lexical_name": "dirichletPhase",
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
  "slug": "dirichletphase--4a5082adf00a52f805c2cd26",
  "source": {
    "blob": "67e7951da4ede4ecc10eaff51e2f53dd5c4e5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a5082adf00a52f805c2cd2672580d679585041e304e2e0f91f113567b6c898f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dd605f3196291327471d16e719a364075b576034137cbde43bf4d5099f05741`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dirichletPhase (n : ℕ) (t : ℝ) : ℂ :=
  Complex.exp (-Complex.I * (t : ℂ) * (Real.log n : ℂ))

/-- The physical source term at fixed initial abscissa two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e7951da4ede4ecc10eaff51e2f53dd5c4e5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=341d5f72bb981f5577d7d6775a186f3c2187c3f872853c7ae3fd2ed372335c43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

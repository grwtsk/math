# ConvexSpace.ofAddTorsor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e843638f3f3af1e35acfcc9f9b0930a478a80a0ad91aeb65a163ce946b5d9b8",
  "kind": "def",
  "lexical_name": "ConvexSpace.ofAddTorsor",
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
  "slug": "convexspace-ofaddtorsor",
  "source": {
    "blob": "b90d6df395ddf0cc7867f46e41c0a369f580e49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fcfaf4f423a6266674b765ed1b5bc6317024200fa6e0010467deeef46b0efaf",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Geometry/AffineSpacePublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e843638f3f3af1e35acfcc9f9b0930a478a80a0ad91aeb65a163ce946b5d9b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConvexSpace.ofAddTorsor : ConvexSpace R P where
  sConvexComb := AddTorsor.convexCombination
  sConvexComb_single := AddTorsor.convexCombination_single
  assoc := AddTorsor.convexCombination_assoc

@[implicit_reducible, deprecated (since := "2026-07-02")]
alias _root_.AddTorsor.toConvexSpace := ConvexSpace.ofAddTorsor

variable (R V P) [ConvexSpace R P] in
/-- Typeclass for a convex space structure on an affine space to be given by affine
combinations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Geometry/AffineSpacePublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90d6df395ddf0cc7867f46e41c0a369f580e49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41a3c2292e435ae4c6461f0cc68d54c92cd17fe6aec8cfb288623c06252bd720 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/AffineSpace/Variant640e01627f455c885422b812b08209ac7983fa6e2e0b19618b84c2ba1f716c56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

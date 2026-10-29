# headCutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d87238d1c2f5483884990072bd076ab7d184a41ad5fb2c76f3a026dd8c97979f",
  "kind": "def",
  "lexical_name": "headCutoff",
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
  "slug": "headcutoff--87cfcba914c1e07b816af0f3",
  "source": {
    "blob": "69ad2156609a01a2f15c57f3f5786cd070e30f9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87cfcba914c1e07b816af0f38eec60f2dfecd0d97378d2a4fceabf853f07b14f",
  "verification": {
    "reference": "docs/verification/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d87238d1c2f5483884990072bd076ab7d184a41ad5fb2c76f3a026dd8c97979f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def headCutoff (A : ℝ) : ℕ := ⌊Real.exp (A / 10)⌋₊

/-- The top cutoff in this module, with the following exact parameterization.

def topCutoff (A : ℝ) : ℕ := ⌊Real.exp (2 * A) / (5 * Real.exp 5)⌋₊
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69ad2156609a01a2f15c57f3f5786cd070e30f9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bada50d304d90d871a3304ed4ebbe72afdaa3e60cc1fb10b7734718a59a30484 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Closeds.emetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33c4aca7e2f93adf5407c8a3ac94aa4f57a6f9faf577e47bb59abac909c75365",
  "kind": "instance",
  "lexical_name": "Closeds.emetricSpace",
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
  "slug": "closeds-emetricspace--6d037aeab03a8da3e90501b8",
  "source": {
    "blob": "805416ce25b28ddd9e00b42dc5f28beb17eb86c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d037aeab03a8da3e90501b806076c02c877f1e8bc780d9472ffc7c49019f5a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33c4aca7e2f93adf5407c8a3ac94aa4f57a6f9faf577e47bb59abac909c75365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Closeds.emetricSpace : EMetricSpace (Closeds α) where
  edist s t := hausdorffEdist (s : Set α) t
  edist_self _ := hausdorffEdist_self
  edist_comm _ _ := hausdorffEdist_comm
  edist_triangle _ _ _ := hausdorffEdist_triangle
  eq_of_edist_eq_zero {s t} h :=
    Closeds.ext <| (hausdorffEdist_zero_iff_eq_of_closed s.isClosed t.isClosed).1 h

/-- The edistance to a closed set depends continuously on the point and the set -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `805416ce25b28ddd9e00b42dc5f28beb17eb86c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f82cc5950195ce8a20bbf24cd952e681970e9db770e92e10e8893a135da953c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

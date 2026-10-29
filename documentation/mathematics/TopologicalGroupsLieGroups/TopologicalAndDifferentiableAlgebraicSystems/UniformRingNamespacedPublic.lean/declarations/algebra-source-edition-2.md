# algebra'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed1093c8246c1c0a688cbc2c9ba1818b5ba2329e5572e85241f157438e9a1c38",
  "kind": "instance",
  "lexical_name": "algebra'",
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
  "slug": "algebra-source-edition-2",
  "source": {
    "blob": "f9d3ad869e19ba268a11dd8bca70361eaa4d45a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46a98d5998a3fa1971e3742aa05f16d3ccd26b5c7a516d9934ed138d85a7be14",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed1093c8246c1c0a688cbc2c9ba1818b5ba2329e5572e85241f157438e9a1c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance algebra' : Algebra R (Completion R) := by infer_instance

end CommRing

end UniformSpace.Completion

namespace UniformSpace

variable {α : Type*}

-- TODO: move (some of) these results to the file about topological rings
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformRingNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9d3ad869e19ba268a11dd8bca70361eaa4d45a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c99d5993e39204940549968c3bb106f69c3cda7704af283eb881308659044be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformRing/Variant3c636ffb2d97032f6c345a9c5cc19fb530e9ace32a2b4fc825d8c5d29315de68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

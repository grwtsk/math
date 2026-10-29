# isOpen_ofUpperSet_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:221642f8-a514-8d99-3f41-bce4ba67ff0d",
  "kind": "lemma",
  "lexical_name": "isOpen_ofUpperSet_preimage",
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
  "slug": "isopen-ofupperset-preimage--87a4753dc3f6b36de7b82ef7",
  "source": {
    "blob": "7d142e1e0435a6d4c281e8f535918cfcaf5e8993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87a4753dc3f6b36de7b82ef7c52a1622b7b49ab3557e696117cd7633be419392",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:221642f8-a514-8d99-3f41-bce4ba67ff0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma isOpen_ofUpperSet_preimage {s : Set α} :
    IsOpen (ofUpperSet ⁻¹' s) ↔ IsUpperSet s := isUpperSet_toUpperSet_preimage.symm

end WithUpperSet

namespace WithLowerSet
variable [Preorder α] [Preorder β] [Preorder γ]

/-- A monotone map between preorders spaces induces a continuous map between themselves considered
with the lower set topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d142e1e0435a6d4c281e8f535918cfcaf5e8993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b56601d60d49322e5ff32e54e25a76cc866a61e37ad51e3103f00b7af8a56ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variante543f10f99f08e931f13ea256dada5c151f18182e9dffcdb98facc0dc7431186.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

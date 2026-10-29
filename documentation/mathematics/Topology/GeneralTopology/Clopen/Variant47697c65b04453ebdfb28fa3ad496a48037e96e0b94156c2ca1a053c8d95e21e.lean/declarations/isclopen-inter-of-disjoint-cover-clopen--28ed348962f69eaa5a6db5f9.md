# isClopen_inter_of_disjoint_cover_clopen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6201774c-233e-48fc-a52b-36129dadd81c",
  "kind": "theorem",
  "lexical_name": "isClopen_inter_of_disjoint_cover_clopen",
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
  "slug": "isclopen-inter-of-disjoint-cover-clopen--28ed348962f69eaa5a6db5f9",
  "source": {
    "blob": "e4d011e65893994323802714104924c40c05f4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28ed348962f69eaa5a6db5f97e76ce2f179f8165beba7439c711cce634557076",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6201774c-233e-48fc-a52b-36129dadd81c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClopen_inter_of_disjoint_cover_clopen {s a b : Set X} (h : IsClopen s) (cover : s ⊆ a ∪ b)
    (ha : IsOpen a) (hb : IsOpen b) (hab : Disjoint a b) : IsClopen (s ∩ a) := by
  refine ⟨?_, IsOpen.inter h.2 ha⟩
  have : IsClosed (s ∩ bᶜ) := IsClosed.inter h.1 (isClosed_compl_iff.2 hb)
  convert! this using 1
  refine (inter_subset_inter_right s hab.subset_compl_right).antisymm ?_
  rintro x ⟨hx₁, hx₂⟩
  exact ⟨hx₁, by simpa [notMem_of_mem_compl hx₂] using cover hx₁⟩

/-- Variant of `isClopen_inter_of_disjoint_cover_clopen` with weaker disjointness condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d011e65893994323802714104924c40c05f4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f8fc0b02af151b4cbfe5d47e5996839b3717585dd3b2bcb6bd6f7ca0c27ab52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Clopen/Variant47697c65b04453ebdfb28fa3ad496a48037e96e0b94156c2ca1a053c8d95e21e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

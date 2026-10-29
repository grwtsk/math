# Heap.realSize_deleteMin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9955b4a-ab8f-1063-9f9c-0bb9c2d99727",
  "kind": "theorem",
  "lexical_name": "Heap.realSize_deleteMin",
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
  "slug": "heap-realsize-deletemin",
  "source": {
    "blob": "8e447047ed43f813890b8b82b08eae7c0bc592ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:333b06f74d0abe2d7d73c91832c1ecd670fe2991996752a7cf7625cb0ce059ae",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicHeapNode.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9955b4a-ab8f-1063-9f9c-0bb9c2d99727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Heap.realSize_deleteMin {s : Heap α} (eq : s.deleteMin le = some (a, s')) :
    s.realSize = s'.realSize + 1 := by
  cases s with cases eq | cons r a c s => ?_
  have : (s.findMin le (cons r a c) ⟨id, a, c, s⟩).HasSize (c.realSize + s.realSize + 1) :=
    Heap.realSize_findMin (c.realSize + 1) (by simp) (Nat.add_right_comm ..) ⟨0, by simp⟩
  revert this
  match s.findMin le (cons r a c) ⟨id, a, c, s⟩ with
  | { before, val, node, next } =>
    intro ⟨m, ih₁, ih₂⟩; dsimp only at ih₁ ih₂
    rw [realSize, Nat.add_right_comm, ih₂]
    simp only [realSize_merge, HeapNode.realSize_toHeap, ih₁, Nat.add_assoc, Nat.add_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicHeapNode.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e447047ed43f813890b8b82b08eae7c0bc592ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81a9f8279013a455ad77ef24eb746c33a569d4e5bb443b0b1575a1d1a62111e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

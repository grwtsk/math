# leftRel_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "437ea382d528ecad4c4bb7cda4165566638af029",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71b2dddeab103d6229e4628ca5b6450f06360d42f1481c355cb1f4cf0c94e443.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58c8a85a-af32-936a-e473-cb84521cb26b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a35da40e-4b4d-5255-7c25-63f01b790ea9",
  "kind": "lemma",
  "lexical_name": "leftRel_pi",
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
  "slug": "leftrel-pi--ae8aad14fe6df6a5a4e5fac6",
  "source": {
    "blob": "437ea382d528ecad4c4bb7cda4165566638af029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 243,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant71b2dddeab103d6229e4628ca5b6450f06360d42f1481c355cb1f4cf0c94e443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae8aad14fe6df6a5a4e5fac6dc0887d081223462b2b0b79f5e49b1bd200120ff",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant71b2dddeab103d6229e4628ca5b6450f06360d42f1481c355cb1f4cf0c94e443.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a35da40e-4b4d-5255-7c25-63f01b790ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftRel_pi {ι : Type*} {β : ι → Type*} [∀ i, Group (β i)] (s' : ∀ i, Subgroup (β i)) :
    leftRel (Subgroup.pi Set.univ s') = @piSetoid _ _ fun i ↦ leftRel (s' i) := by
  refine Setoid.ext fun x y ↦ ?_
  simp [Setoid.piSetoid_apply, leftRel_apply, Subgroup.mem_pi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/GroupTheory/Basic/Variant71b2dddeab103d6229e4628ca5b6450f06360d42f1481c355cb1f4cf0c94e443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant71b2dddeab103d6229e4628ca5b6450f06360d42f1481c355cb1f4cf0c94e443.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `437ea382d528ecad4c4bb7cda4165566638af029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bede4e71474f3a43378f4b2f3e350a451365ba39a9d3a03c8a72cdc290ffcbcc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant71b2dddeab103d6229e4628ca5b6450f06360d42f1481c355cb1f4cf0c94e443.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/71/71b2dddeab103d6229e4628ca5b6450f06360d42f1481c355cb1f4cf0c94e443.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

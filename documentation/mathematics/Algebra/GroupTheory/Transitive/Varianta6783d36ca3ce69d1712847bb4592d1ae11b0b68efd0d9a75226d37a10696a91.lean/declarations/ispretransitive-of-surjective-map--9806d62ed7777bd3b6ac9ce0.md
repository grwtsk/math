# IsPretransitive.of_surjective_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bc54c6c-6f6a-8845-77b3-4edeffc10443",
  "kind": "theorem",
  "lexical_name": "IsPretransitive.of_surjective_map",
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
  "slug": "ispretransitive-of-surjective-map--9806d62ed7777bd3b6ac9ce0",
  "source": {
    "blob": "769cfe7b2aebb4f6159f4653097af35c8bd45f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9806d62ed7777bd3b6ac9ce07558726b23342d27c7a918fc6335bc45ee5345df",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bc54c6c-6f6a-8845-77b3-4edeffc10443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPretransitive.of_surjective_map {φ : M → N} {f : α →ₑ[φ] β}
    (hf : Function.Surjective f) (h : IsPretransitive M α) :
    IsPretransitive N β := by
  apply MulAction.IsPretransitive.mk
  intro x y
  obtain ⟨x', rfl⟩ := hf x
  obtain ⟨y', rfl⟩ := hf y
  obtain ⟨g, rfl⟩ := h.exists_smul_eq x' y'
  exact ⟨φ g, by simp only [map_smulₛₗ]⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `769cfe7b2aebb4f6159f4653097af35c8bd45f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a281d8db0e454d65641a9adb82f52f2deab37b55e6ea7e0281e369cc059abfa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Transitive/Varianta6783d36ca3ce69d1712847bb4592d1ae11b0b68efd0d9a75226d37a10696a91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

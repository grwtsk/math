# atIdxD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54703bdb4a890a74180193ef6964f1547193905ec0df2d247c0d510d285ddebd",
  "kind": "def",
  "lexical_name": "atIdxD",
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
  "slug": "atidxd--8583a616add7e5cf09ca4d27",
  "source": {
    "blob": "3fc7a5a59b37ce1f19042cb5145a4c05923aecc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantced8b95f2881e5e78a71b0ca1380f8ab36acd7dde338fc9f8810583975cb7926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8583a616add7e5cf09ca4d27511106df9eecc5c3f98252c1803ff3cf0a62220d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantced8b95f2881e5e78a71b0ca1380f8ab36acd7dde338fc9f8810583975cb7926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54703bdb4a890a74180193ef6964f1547193905ec0df2d247c0d510d285ddebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def atIdxD [TransCmp cmp] (t : ExtTreeSet α cmp) (n : Nat) (fallback : α) : α :=
  ExtTreeMap.keyAtIdxD t.inner n fallback

/--
Tries to retrieve the smallest element that is greater than or equal to the
given element, returning `none` if no such element exists.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantced8b95f2881e5e78a71b0ca1380f8ab36acd7dde338fc9f8810583975cb7926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantced8b95f2881e5e78a71b0ca1380f8ab36acd7dde338fc9f8810583975cb7926.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc7a5a59b37ce1f19042cb5145a4c05923aecc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fe1ab1a7fb2e9f8ad2b5f87c2c5da2e3ee33f024b53d3f330bb6d9a3d36c3a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantced8b95f2881e5e78a71b0ca1380f8ab36acd7dde338fc9f8810583975cb7926.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

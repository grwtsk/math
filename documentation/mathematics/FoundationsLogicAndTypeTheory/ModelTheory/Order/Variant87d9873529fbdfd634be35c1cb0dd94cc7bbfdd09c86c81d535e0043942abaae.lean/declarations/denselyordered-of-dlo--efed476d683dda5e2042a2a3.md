# denselyOrdered_of_dlo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a58e46eb2b02234912088531e12af84a54f21efb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b604ec2-2f17-0a88-58de-44562633958a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fe62792-5f68-5551-6617-607972e10db1",
  "kind": "theorem",
  "lexical_name": "denselyOrdered_of_dlo",
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
  "slug": "denselyordered-of-dlo--efed476d683dda5e2042a2a3",
  "source": {
    "blob": "a58e46eb2b02234912088531e12af84a54f21efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efed476d683dda5e2042a2a33646afc255262581a048d529cfec8350b779d349",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fe62792-5f68-5551-6617-607972e10db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denselyOrdered_of_dlo [M ⊨ L.dlo] : DenselyOrdered M :=
  realize_denselyOrdered_iff.1 (L.dlo.realize_sentence_of_mem (by
    simp only [dlo, Set.union_insert, Set.union_singleton, Set.mem_insert_iff, true_or, or_true]))

end Preorder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a58e46eb2b02234912088531e12af84a54f21efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02825ae02c5c40bb19477fc2a374ccaffefbb12923ef9300d04811a8c49bcb90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/87/87d9873529fbdfd634be35c1cb0dd94cc7bbfdd09c86c81d535e0043942abaae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

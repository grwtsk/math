# HasSum.matrix_blockDiagonal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8de9b83f32018187564f5a850e7bc2bfd10cb7dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0aaf2c58-c971-3f40-849b-dcdb9933d633",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eac633a0-ccf5-f1e1-154e-60b8268a19eb",
  "kind": "theorem",
  "lexical_name": "HasSum.matrix_blockDiagonal'",
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
  "slug": "hassum-matrix-blockdiagonal--a51df58296bf67d4a92b92fe",
  "source": {
    "blob": "8de9b83f32018187564f5a850e7bc2bfd10cb7dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 377,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a51df58296bf67d4a92b92feb6b46bbe4fc087023c74bb0066214a970d76961d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eac633a0-ccf5-f1e1-154e-60b8268a19eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasSum.matrix_blockDiagonal' [DecidableEq l] {f : X → ∀ i, Matrix (m' i) (n' i) R}
    {a : ∀ i, Matrix (m' i) (n' i) R} (hf : HasSum f a) :
    HasSum (fun x => blockDiagonal' (f x)) (blockDiagonal' a) :=
  hf.map (blockDiagonal'AddMonoidHom m' n' R) continuous_id.matrix_blockDiagonal'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de9b83f32018187564f5a850e7bc2bfd10cb7dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7b441afdf9f8d60fb4b25a5f5fbb22fbd38e5a8af840514035e33b4aa85bb7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean","GRWTSK/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# denseRange_stoneCechUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "490dc97ef1d481089e0c432496b0b30d41fc9c03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:36b3aee7-21d4-7eb9-0954-66d8a64273c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f1d64a7-2013-8f6d-af36-335791156d06",
  "kind": "theorem",
  "lexical_name": "denseRange_stoneCechUnit",
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
  "slug": "denserange-stonecechunit",
  "source": {
    "blob": "490dc97ef1d481089e0c432496b0b30d41fc9c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 338,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ac1990cd5db93deb43ef4631d0ffa32b2224b2e7c0c183b6c2d53484ad9a9f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/StoneCechIsDenseInducingPure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f1d64a7-2013-8f6d-af36-335791156d06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denseRange_stoneCechUnit : DenseRange (stoneCechUnit : α → StoneCech α) := by
  unfold stoneCechUnit T2Quotient.mk
  have : Function.Surjective (T2Quotient.mk : PreStoneCech α → StoneCech α) := by
    exact Quot.mk_surjective
  exact this.denseRange.comp denseRange_preStoneCechUnit continuous_coinduced_rng

section Extension

variable {β : Type v} [TopologicalSpace β] [T2Space β]
variable {g : α → β} (hg : Continuous g)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/StoneCechIsDenseInducingPure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `490dc97ef1d481089e0c432496b0b30d41fc9c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=698f2f12d5e4d448d5d83e4b826423b38a778528538bc06282acfa398c19371d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean","GRWTSK/Topology/GeneralTopology/StoneCech/Variantebd3fc342a20c2a1d124c5c3b9ea6c9ab8a12f737d937741022d7fad48b2b846.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

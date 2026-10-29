# disjoint_of_mem_compression_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2f7e256-267d-180e-1b9e-9f97399d1776",
  "kind": "theorem",
  "lexical_name": "disjoint_of_mem_compression_of_notMem",
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
  "slug": "disjoint-of-mem-compression-of-notmem",
  "source": {
    "blob": "fee705f8ab0733c9c7ad58cbdbfcb1f55b3f392c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/UV/Variant77d0303125503470003c01803d2bded6b10054cfd3b366f9666a019a757b1ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60bc8c2514ede79c0504968e3107498460d328fb7d34f7ec41f9d0c58d6ce112",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/UVNamespacedCompressInjOn.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2f7e256-267d-180e-1b9e-9f97399d1776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_of_mem_compression_of_notMem (h : a ∈ 𝓒 u v s) (ha : a ∉ s) : Disjoint v a := by
  rw [mem_compression] at h
  obtain h | ⟨-, b, hb, hba⟩ := h
  · cases ha h.1
  unfold compress at hba
  split_ifs at hba
  · rw [← hba]
    exact disjoint_sdiff_self_right
  · cases ne_of_mem_of_not_mem hb ha hba

@[deprecated (since := "2025-05-23")]
alias disjoint_of_mem_compression_of_not_mem := disjoint_of_mem_compression_of_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/UVNamespacedCompressInjOn.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UV/Variant77d0303125503470003c01803d2bded6b10054cfd3b366f9666a019a757b1ba6.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fee705f8ab0733c9c7ad58cbdbfcb1f55b3f392c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a9b060c17f89ee1cdd140a06237f6f25b0dd9717aa4cf2e99ca21e8235ccebb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UV/Variant77d0303125503470003c01803d2bded6b10054cfd3b366f9666a019a757b1ba6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

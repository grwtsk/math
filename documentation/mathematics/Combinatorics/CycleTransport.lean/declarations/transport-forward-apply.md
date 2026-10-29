# transport_forward_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c729cc82a0c98452be7d925093abd06c68df8b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cacb187-9940-e850-2329-2bf5c4639a56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbfa2a63-1142-c48c-84da-276e5451fed3",
  "kind": "theorem",
  "lexical_name": "transport_forward_apply",
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
  "slug": "transport-forward-apply",
  "source": {
    "blob": "2c729cc82a0c98452be7d925093abd06c68df8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3d31596966b6877ecb2e833d1bbd65fe14d17c012413c8be208ed5e1cdc386",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/CycleTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbfa2a63-1142-c48c-84da-276e5451fed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transport_forward_apply
    {Y : Type*} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (cycle : DirectedCycleQuantum X) (k : Nat) (x : X) :
    (cycle.transport e).forwardTransport k (e x) =
      e (cycle.forwardTransport k x) := by
  induction k with
  | zero => simp
  | succ k ih =>
      rw [forwardTransport_succ_apply, forwardTransport_succ_apply, ih]
      simp [edgePermAt, DirectedCycleQuantum.transport,
        InvolutiveCycle.transport, CertifiedInvolution.transport]

/--
A certified cyclic re-indexing preserves the successor relation.  Storing the
commuting square avoids treating an arbitrary permutation of edge labels as a
rotation of the directed cycle.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/CycleTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c729cc82a0c98452be7d925093abd06c68df8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f542fbbb6e9dcf88e3af959789d8672a2580d5c139df4e8e3fac4f1f6b3c39f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

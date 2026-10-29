# closure_induction_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d973796a1a4d8f5618b0cd6e2622d7902b7f0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd9a39ab-3023-95a5-b540-b28c75a8f45e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08130d3e-76e4-aebe-ea2e-7c5d49be9680",
  "kind": "theorem",
  "lexical_name": "closure_induction_right",
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
  "slug": "closure-induction-right",
  "source": {
    "blob": "99d973796a1a4d8f5618b0cd6e2622d7902b7f0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2da29ae9ee2b1c0ef85b13163fd31db682bf5f75a10e3815a23a5f61c3fead7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08130d3e-76e4-aebe-ea2e-7c5d49be9680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_induction_right {p : (x : G) → x ∈ closure s → Prop} (one : p 1 (one_mem _))
    (mul_right : ∀ (x) hx, ∀ y (hy : y ∈ s), p x hx → p (x * y) (mul_mem hx (subset_closure hy)))
    (mul_inv_cancel : ∀ (x) hx, ∀ y (hy : y ∈ s), p x hx →
      p (x * y⁻¹) (mul_mem hx (inv_mem (subset_closure hy))))
    {x : G} (h : x ∈ closure s) : p x h :=
  closure_induction_left (s := MulOpposite.unop ⁻¹' s)
    (p := fun m hm => p m.unop <| by rwa [← op_closure] at hm)
    one
    (fun _x hx _y _ => mul_right _ _ _ hx)
    (fun _x hx _y _ => mul_inv_cancel _ _ _ hx)
    (by rwa [← op_closure])

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/GroupSubgroupPointwise.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d973796a1a4d8f5618b0cd6e2622d7902b7f0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14749fe51c0bb23bb12b10e6c1d8f120e4b9e664bd1c50ff7a4b0849077d2bb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Variant01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/01/01ffa1874259dd9052c3b32029d5a7dddcdc4fa1695e271d888a91a7f9f2651d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

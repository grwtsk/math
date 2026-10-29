# solution_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93033ed914fb2f5a9e12fa18c26cdba17197110b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ee80253-6c59-1656-397d-4a74b087c186",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f497da6-3830-a2d0-0b6f-97ce7c6b943d",
  "kind": "theorem",
  "lexical_name": "solution_pow",
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
  "slug": "solution-pow",
  "source": {
    "blob": "93033ed914fb2f5a9e12fa18c26cdba17197110b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be9d02eb4b3273b97c91971a9559cc465247356d691f0788a8ed685820274fb6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/FrobeniusFractionFieldFrobeniusRotationCoeff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f497da6-3830-a2d0-0b6f-97ce7c6b943d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solution_pow (a₁ a₂ : 𝕎 k) : ∃ x : k, x ^ (p - 1) = a₂.coeff 0 / a₁.coeff 0 :=
  IsAlgClosed.exists_pow_nat_eq _ <|
    -- Porting note: was
    -- by linarith [hp.out.one_lt, le_of_lt hp.out.one_lt]
    tsub_pos_of_lt hp.out.one_lt
#align witt_vector.recursion_base.solution_pow WittVector.RecursionBase.solution_pow

/-- The base case (0th coefficient) of our solution vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/FrobeniusFractionFieldFrobeniusRotationCoeff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93033ed914fb2f5a9e12fa18c26cdba17197110b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59e97a2b231bf20df40b044ab2cf7481d8579edf39dd1b3a90a8f53d3a859f5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/97/97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

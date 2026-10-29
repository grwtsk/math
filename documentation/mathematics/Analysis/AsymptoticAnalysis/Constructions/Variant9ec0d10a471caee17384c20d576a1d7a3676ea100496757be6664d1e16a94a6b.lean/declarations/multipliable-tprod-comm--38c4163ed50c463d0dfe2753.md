# Multipliable.tprod_comm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8624eedf8a63c1e2c2a02575f65c916f49c5e583",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7386a94-c062-5d39-0256-61bd1c6b6f28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d8b5ad2-d627-f928-ec92-4ff0f547bf25",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_comm'",
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
  "slug": "multipliable-tprod-comm--38c4163ed50c463d0dfe2753",
  "source": {
    "blob": "8624eedf8a63c1e2c2a02575f65c916f49c5e583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38c4163ed50c463d0dfe2753489d91c4bda4f2a96014975a6ee772a0fe288f98",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d8b5ad2-d627-f928-ec92-4ff0f547bf25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.tprod_comm' {f : β → γ → α} (h : Multipliable (Function.uncurry f))
    (h₁ : ∀ b, Multipliable (f b)) (h₂ : ∀ c, Multipliable fun b ↦ f b c) :
    ∏' (c) (b), f b c = ∏' (b) (c), f b c := by
  rw [← h.tprod_prod_uncurry h₁, ← h.prod_symm.tprod_prod_uncurry h₂,
    ← (Equiv.prodComm γ β).tprod_eq (uncurry f)]
  rfl

end T3Space

end ContinuousMul

section CompleteSpace

variable [CommGroup α] [UniformSpace α] [IsUniformGroup α]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8624eedf8a63c1e2c2a02575f65c916f49c5e583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12956a56193ddc5b08bf60f9b01bba87cbe07439bf74a1f9b9c775a0b94a7b78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Variant9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ec0d10a471caee17384c20d576a1d7a3676ea100496757be6664d1e16a94a6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

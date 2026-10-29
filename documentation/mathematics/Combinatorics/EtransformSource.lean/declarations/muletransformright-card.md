# mulEtransformRight.card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "982333021fad4fd93f11e3400384f519f7dfeac5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fe0e447-620d-1a00-770f-fba3212154fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d70c4a0-e77c-979d-59ce-b848727c42ae",
  "kind": "theorem",
  "lexical_name": "mulEtransformRight.card",
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
  "slug": "muletransformright-card",
  "source": {
    "blob": "982333021fad4fd93f11e3400384f519f7dfeac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cdd83b06e530f01aee87bb9395668843b90b00d82897f1617604fd48d918ce8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/EtransformSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d70c4a0-e77c-979d-59ce-b848727c42ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulEtransformRight.card :
    (mulEtransformLeft e x).2.card + (mulEtransformRight e x).2.card = 2 * x.2.card :=
  (card_union_add_card_inter _ _).trans <| by rw [card_smul_finset, two_mul]
#align finset.mul_e_transform_right.card Finset.mulEtransformRight.card
#align finset.add_e_transform_right.card Finset.addEtransformRight.card

/-- This statement is meant to be combined with `le_or_lt_of_add_le_add` and similar lemmas. -/
@[to_additive AddEtransform.card "This statement is meant to be combined with
`le_or_lt_of_add_le_add` and similar lemmas."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EtransformSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `982333021fad4fd93f11e3400384f519f7dfeac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bc56bc7039b09d174fb9448b5e3f2100dc08fd4e385a8f3b21f0080b0b7972e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ETransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/15/1597460701004d099631b22dc03ce416040fd16562f0352bd7eadac87d38d6d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

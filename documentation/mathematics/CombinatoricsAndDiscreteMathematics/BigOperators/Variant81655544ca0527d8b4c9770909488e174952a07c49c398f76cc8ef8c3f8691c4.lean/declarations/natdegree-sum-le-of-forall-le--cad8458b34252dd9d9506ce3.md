# natDegree_sum_le_of_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ccf22ee-e01b-c033-5e02-c3a75fc6fb7a",
  "kind": "lemma",
  "lexical_name": "natDegree_sum_le_of_forall_le",
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
  "slug": "natdegree-sum-le-of-forall-le--cad8458b34252dd9d9506ce3",
  "source": {
    "blob": "c2293cbcd11758f4924d3f3f932dd371b18eb961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cad8458b34252dd9d9506ce351696917874d1cb1ed5a4a217fe82198c7ac4ec8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ccf22ee-e01b-c033-5e02-c3a75fc6fb7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma natDegree_sum_le_of_forall_le {n : ℕ} (f : ι → S[X]) (h : ∀ i ∈ s, natDegree (f i) ≤ n) :
    natDegree (∑ i ∈ s, f i) ≤ n :=
  le_trans (natDegree_sum_le s f) <| (Finset.fold_max_le n).mpr <| by simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2293cbcd11758f4924d3f3f932dd371b18eb961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d705c6963c2f5f99d2899bf69a1b186b162e33e52b114352b0e0623f2a7dfaea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

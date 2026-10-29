# incMatrix_apply_mul_incMatrix_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88b30d87-7022-02b4-ecd8-ad25b2d5615b",
  "kind": "theorem",
  "lexical_name": "incMatrix_apply_mul_incMatrix_apply",
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
  "slug": "incmatrix-apply-mul-incmatrix-apply--27fbe4b8bebb8a4a2221a685",
  "source": {
    "blob": "b8ca9aeca8bee3daadeafd0bc9861323a51fb792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 86,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27fbe4b8bebb8a4a2221a685d3ada3ceddb8dd5e6db53175d439d0b30cbc956d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88b30d87-7022-02b4-ecd8-ad25b2d5615b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incMatrix_apply_mul_incMatrix_apply : G.incMatrix R a e * G.incMatrix R b e =
    (G.incidenceSet a ∩ G.incidenceSet b).indicator 1 e := by
  classical simp only [incMatrix, Set.indicator_apply, ← ite_and_mul_zero, Pi.one_apply, mul_one,
    Set.mem_inter_iff]
#align simple_graph.inc_matrix_apply_mul_inc_matrix_apply SimpleGraph.incMatrix_apply_mul_incMatrix_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ca9aeca8bee3daadeafd0bc9861323a51fb792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f09de573e27059cf451b18877ae20a8ffad8646aaa2cc57de13362fbbed8b4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variant6d34c645fe9311d9f9a84a4f8a66bf4553da93f030b63b51f12b13a805e8f486.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

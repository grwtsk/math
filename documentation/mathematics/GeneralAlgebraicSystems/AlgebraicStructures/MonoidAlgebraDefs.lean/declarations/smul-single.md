# smul_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9091fc0832b16c7bfe0cba5c76f1d624bbcc48ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b782342-f13f-7efd-c91d-515c806766a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28e7acc3-7a1d-00c1-b53a-fb60b762479e",
  "kind": "theorem",
  "lexical_name": "smul_single",
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
  "slug": "smul-single",
  "source": {
    "blob": "9091fc0832b16c7bfe0cba5c76f1d624bbcc48ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 367,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Varianta1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03ac7992879379cfeef4cdbae885e1e7246b224dc98567f510259f3ea2fc9757",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefs.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28e7acc3-7a1d-00c1-b53a-fb60b762479e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_single [Semiring k] [SMulZeroClass R k] (a : G) (c : R) (b : k) :
    c • single a b = single a (c • b) :=
  Finsupp.smul_single _ _ _

/-!
#### Copies of `ext` lemmas and bundled `single`s from `Finsupp`

As `MonoidAlgebra` is a type synonym, `ext` will not unfold it to find `ext` lemmas.
We need bundled version of `Finsupp.single` with the right types to state these lemmas.
It is good practice to have those, regardless of the `ext` issue.
-/

section ExtLemmas

/-- A copy of `Finsupp.ext` for `MonoidAlgebra`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefs.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Varianta1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9091fc0832b16c7bfe0cba5c76f1d624bbcc48ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d9bc4ebf4c9ca107dfdbdce866ddb2d37f679e9c068334d65f14ea4c2f3793c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Varianta1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1d5a362b0cf72efa18741f77b2dcadd6c974023a83c6adc082ddc0f087cb828.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# reverse_prod_map_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f0f9d84-b0e9-8c9c-c79c-951b784115ec",
  "kind": "theorem",
  "lexical_name": "reverse_prod_map_ι",
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
  "slug": "reverse-prod-map--c16069f53e7d9990c75da7ea",
  "source": {
    "blob": "662d9cf6712dc90dfe7ef2e6a6ba4c8e9755defc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c16069f53e7d9990c75da7ea5e62c55e09b1ab7646291135a3c2fb21cfd2b712",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f0f9d84-b0e9-8c9c-c79c-951b784115ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reverse_prod_map_ι :
  -- porting note: can't infer `Q`
    ∀ l : List M, reverse (l.map <| ι Q).prod = (l.map <| ι Q).reverse.prod
  | [] => by simp
  | x::xs => by simp [reverse_prod_map_ι xs]
#align clifford_algebra.reverse_prod_map_ι CliffordAlgebra.reverse_prod_map_ι

/-- Taking the involute of the product a list of $n$ vectors lifted via `ι` is equivalent to
premultiplying by ${-1}^n$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662d9cf6712dc90dfe7ef2e6a6ba4c8e9755defc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3eee68c0edf6bcc8eb56c6d3ec9a4e8189f05b2099ec3224fb62931df87028b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Conjugation/Variante54473708ea3ee91d7a46024fd98c186bab85a55db819759232c1605969c0dc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

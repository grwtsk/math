# IsPoly₂.diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6a2bc7291da3b5536deb93cde1d5bad91aa28f0815b05075d6241d1188307ff",
  "kind": "instance",
  "lexical_name": "IsPoly₂.diag",
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
  "slug": "ispoly-diag",
  "source": {
    "blob": "06c3a48d961f5fe5edab2d399be3bfecd4087a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 258,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09fd8211b2ee98eb972df15672e5d6d9658bd62425b9dec5d1efc83849f36db7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/WittVectorIsPolyIsPolyNamespacedSourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6a2bc7291da3b5536deb93cde1d5bad91aa28f0815b05075d6241d1188307ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsPoly₂.diag {f} [hf : IsPoly₂ p f] : IsPoly p fun _ _Rcr x => f x x := by
  obtain ⟨φ, hf⟩ := hf
  refine ⟨⟨fun n => bind₁ (uncurry ![X, X]) (φ n), ?_⟩⟩
  intros; funext n
  simp +unfoldPartialApp only [hf, peval, uncurry, aeval_bind₁]
  apply eval₂Hom_congr rfl _ rfl
  ext ⟨i, k⟩
  fin_cases i <;> simp

-- Porting note: Lean 4's typeclass inference is sufficiently more powerful that we no longer
-- need the `@[is_poly]` attribute. Use of the attribute should just be replaced by changing the
-- theorem to an `instance`.

/-- The additive negation is a polynomial function on Witt vectors. -/
-- Porting note: replaced `@[is_poly]` with `instance`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/WittVectorIsPolyIsPolyNamespacedSourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c3a48d961f5fe5edab2d399be3bfecd4087a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=feaff59ad029d915532e9ce617f27196a0d76bc00a9ac73cbf250446361b220d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variant6a756c4e590fbdbb67725f383d65c77713d2f3dff86cbb7d9401f61b58aa1dd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a729b6a7e59779d9e4eee8e4bbafc764ac3fe09f850fc53c7ef52032e133b19",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift",
  "source": {
    "blob": "b4c0ee01d3d91aea12920afcfe1da7d915f87537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 852,
    "line": 839,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce9919b5789ed170bae7f783fcd41087e6061652b44a154b92bcb5e4e7cda0ea",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstNatCast.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a729b6a7e59779d9e4eee8e4bbafc764ac3fe09f850fc53c7ef52032e133b19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 839–852.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift : { f : M →ₗ[R'] A // ∀ x y, f x * f y = 0 } ≃ (tsze R' M →ₐ[R'] A) where
  toFun f := liftAux f f.prop
  invFun F :=
    ⟨F.toLinearMap.comp (inrHom R' M), fun _x _y =>
      (F.map_mul _ _).symm.trans <| (F.congr_arg <| inr_mul_inr _ _ _).trans F.map_zero⟩
  left_inv f := Subtype.ext <| liftAux_comp_inrHom _ f.prop
  right_inv _F := algHom_ext' <| liftAux_comp_inrHom _ _
#align triv_sq_zero_ext.lift TrivSqZeroExt.lift

attribute [nolint simpNF] lift_symm_apply_coe

end Algebra

end TrivSqZeroExt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstNatCast.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean#L839).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c0ee01d3d91aea12920afcfe1da7d915f87537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=196ab3e1960c9a80807070c2c26e72240b9e8c17a31e5ee630fa58a40bb732b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant929cadcb45071832e99ca1e638cbb5d9befca9ecabf555a06c89b7a63abb6cc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

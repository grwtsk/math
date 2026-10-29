# equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47b0a03adc9ed7d575cc95cd0e4093cfe891d11ff9943d93d362fe416d3f52ba",
  "kind": "def",
  "lexical_name": "equiv",
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
  "slug": "equiv-source-edition-2",
  "source": {
    "blob": "98f26668d47bebe55f724e5c3ccb4337778ad23d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 638,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39d92ee48c0b76f85d96b2351cb788b898ea405a105ee1f9af5d5ef3b1ef1141",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47b0a03adc9ed7d575cc95cd0e4093cfe891d11ff9943d93d362fe416d3f52ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equiv (f : F[X]) (hf : f ≠ 0) :
    (AdjoinRoot f →ₐ[F] L) ≃ { x // x ∈ f.aroots L } :=
  (powerBasis hf).liftEquiv'.trans
    ((Equiv.refl _).subtypeEquiv fun x => by
      rw [powerBasis_gen, minpoly_root hf, aroots_mul, aroots_C, add_zero, Equiv.refl_apply]
      exact (monic_mul_leadingCoeff_inv hf).ne_zero)

end Field

end Equiv

-- Porting note: consider splitting the file here.  In the current mathlib3, the only result
-- that depends any of these lemmas was
-- `normalizedFactorsMapEquivNormalizedFactorsMinPolyMk` in `NumberTheory.KummerDedekind`
-- that uses
-- `PowerBasis.quotientEquivQuotientMinpolyMap == PowerBasis.quotientEquivQuotientMinpolyMap`
section

open Ideal DoubleQuot Polynomial

variable [CommRing R] (I : Ideal R) (f : R[X])

/-- The natural isomorphism `R[α]/(I[α]) ≅ R[α]/((I[x] ⊔ (f)) / (f))` for `α` a root of
`f : R[X]` and `I : Ideal R`.

See `adjoin_root.quot_map_of_equiv` for the isomorphism with `(R/I)[X] / (f mod I)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/AdjoinRootNamespacedIrreducible.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f26668d47bebe55f724e5c3ccb4337778ad23d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8982d6ed2fbf6ca38077b8e436a9c85ce26ae7bbc1cd9ab1c9003e46dd24e2ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variant0585df8fa621c5c98b84663f0e8cf8be341eec661fe8408496fdcc18fdee6c01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

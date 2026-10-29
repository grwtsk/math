# Pi.monoidHomMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae6f7d1965e7f52d0212955385253cea86a3296c6c0aae8470f837f14fcf49fd",
  "kind": "def",
  "lexical_name": "Pi.monoidHomMulEquiv",
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
  "slug": "pi-monoidhommulequiv",
  "source": {
    "blob": "4338be8e4e895eccedb3694f65df1f8222809b43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6b9fca0e6f928cf6cc6279ebe0c1b38d03c5157c1bd9cc209ba418d90a86a854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da37dcd4b08ceba5ed1760cdfc6db925bc26f0cdc4c4159d5fc5c26cf16a3a0e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae6f7d1965e7f52d0212955385253cea86a3296c6c0aae8470f837f14fcf49fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pi.monoidHomMulEquiv {ι : Type*} [Fintype ι] [DecidableEq ι] (M : ι → Type*)
    [(i : ι) → CommMonoid (M i)] (M' : Type*) [CommMonoid M'] :
    (((i : ι) → M i) →* M') ≃* ((i : ι) → (M i →* M')) where
  toFun φ i := φ.comp <| MonoidHom.mulSingle M i
  invFun φ := ∏ (i : ι), (φ i).comp (Pi.evalMonoidHom M i)
  left_inv φ := by
    ext
    simp only [MonoidHom.finsetProd_apply, MonoidHom.coe_comp, Function.comp_apply,
      evalMonoidHom_apply, MonoidHom.mulSingle_apply, ← map_prod]
    refine congrArg _ <| funext fun _ ↦ ?_
    rw [Fintype.prod_apply]
    exact Fintype.prod_pi_mulSingle ..
  right_inv φ := by
    ext i m
    simp only [MonoidHom.coe_comp, Function.comp_apply, MonoidHom.mulSingle_apply,
      MonoidHom.finsetProd_apply, evalMonoidHom_apply]
    let φ' i : M i → M' := ⇑(φ i)
    conv =>
      enter [1, 2, j]
      rw [show φ j = φ' j from rfl, Pi.apply_mulSingle φ' (fun i ↦ map_one (φ i))]
    rw [show φ' i = φ i from rfl]
    exact Fintype.prod_pi_mulSingle' ..
  map_mul' φ ψ := by
    ext
    simp only [MonoidHom.coe_comp, Function.comp_apply, MonoidHom.mulSingle_apply,
      MonoidHom.mul_apply, mul_apply]

end MulEquiv

variable [Finite ι] [DecidableEq ι] {M : ι → Type*}

-- manually additivized to fix variable names
-- See https://github.com/leanprover-community/mathlib4/issues/11462
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6b9fca0e6f928cf6cc6279ebe0c1b38d03c5157c1bd9cc209ba418d90a86a854.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4338be8e4e895eccedb3694f65df1f8222809b43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d7d3776a788db93d7c4d562ccd7fce5e06df2740fbef28d40bd9ad36af05f2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6b9fca0e6f928cf6cc6279ebe0c1b38d03c5157c1bd9cc209ba418d90a86a854.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

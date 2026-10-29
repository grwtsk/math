# toTensorAlgebra_gMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec1e6304-995d-8ef9-73cb-d00e3c5e252d",
  "kind": "theorem",
  "lexical_name": "toTensorAlgebra_gMul",
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
  "slug": "totensoralgebra-gmul",
  "source": {
    "blob": "ce70c332f1e83c9a06f0ed510d2f5ad4ccc7fb25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a339e2e8dd725be20e95e533a8741c31176cc5a1d46d219a63f199d8d8cff809",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToTensorPowerNamespacedAligned.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec1e6304-995d-8ef9-73cb-d00e3c5e252d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toTensorAlgebra_gMul {i j} (a : (⨂[R]^i) M) (b : (⨂[R]^j) M) :
    TensorPower.toTensorAlgebra (@GradedMonoid.GMul.mul _ (fun n => (⨂[R]^n) M) _ _ _ _ a b) =
      TensorPower.toTensorAlgebra a * TensorPower.toTensorAlgebra b := by
  -- change `a` and `b` to `tprod R a` and `tprod R b`
  rw [TensorPower.gMul_eq_coe_linearMap, ← LinearMap.compr₂_apply, ← @LinearMap.mul_apply' R, ←
    LinearMap.compl₂_apply, ← LinearMap.comp_apply]
  refine' LinearMap.congr_fun (LinearMap.congr_fun _ a) b
  clear! a b
  ext (a b)
  -- Porting note: pulled the next two lines out of the long `simp only` below.
  simp only [LinearMap.compMultilinearMap_apply]
  rw [LinearMap.compr₂_apply, ← gMul_eq_coe_linearMap]
  simp only [LinearMap.compr₂_apply, LinearMap.mul_apply', LinearMap.compl₂_apply,
    LinearMap.comp_apply, LinearMap.compMultilinearMap_apply, PiTensorProduct.lift.tprod,
    TensorPower.tprod_mul_tprod, TensorPower.toTensorAlgebra_tprod, TensorAlgebra.tprod_apply, ←
    gMul_eq_coe_linearMap]
  refine' Eq.trans _ List.prod_append
  -- Porting note: was `congr`
  apply congr_arg
  -- Porting note: `erw` for `Function.comp`
  erw [← List.map_ofFn _ (TensorAlgebra.ι R), ← List.map_ofFn _ (TensorAlgebra.ι R), ←
    List.map_ofFn _ (TensorAlgebra.ι R), ← List.map_append, List.ofFn_fin_append]
#align tensor_power.to_tensor_algebra_ghas_mul TensorPower.toTensorAlgebra_gMul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToTensorPowerNamespacedAligned.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce70c332f1e83c9a06f0ed510d2f5ad4ccc7fb25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f2c57bef08d6035547f98d75b9df4817367f75f4bb20aa8f349e1595bbe9f76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

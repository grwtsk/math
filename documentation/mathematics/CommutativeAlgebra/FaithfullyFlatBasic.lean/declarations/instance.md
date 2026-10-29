# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab0f60bf355409d72e3ed506f0ef8ccefdc61f537019b25acfc8568b26ef852f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance",
  "source": {
    "blob": "4f49616cb348e9d111ff6d5c3856eb2f26fbd99e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 560,
    "path": "GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0da9f593d2774c877d337605a42a8d1eec174e4a9b4ca19d1350c36b2d75b8a8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/FaithfullyFlatBasic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab0f60bf355409d72e3ed506f0ef8ccefdc61f537019b25acfc8568b26ef852f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (S : Type*) [CommRing S] [Algebra R S] [Module.FaithfullyFlat R M] :
    Module.FaithfullyFlat S (S ⊗[R] M) := by
  rw [Module.FaithfullyFlat.iff_flat_and_rTensor_reflects_triviality]
  refine ⟨inferInstance, fun N _ _ hN ↦ ?_⟩
  let _ : Module R N := Module.compHom N (algebraMap R S)
  have : IsScalarTower R S N := IsScalarTower.of_algebraMap_smul fun r ↦ congrFun rfl
  have := (AlgebraTensorModule.cancelBaseChange R S S N M).symm.subsingleton
  exact FaithfullyFlat.rTensor_reflects_triviality R M N

end FaithfullyFlat

/-- Flat descends along faithfully flat ring maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/FaithfullyFlatBasic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f49616cb348e9d111ff6d5c3856eb2f26fbd99e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d19ef05ec2a816e240e0b62142b076cec1d91a468424f70aa868ddd47d32d88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

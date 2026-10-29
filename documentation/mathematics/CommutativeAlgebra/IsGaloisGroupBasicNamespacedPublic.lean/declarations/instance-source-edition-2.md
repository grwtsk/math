# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c2379232701d5bcb3d3fc3d1d83ff380760679184335803cba59bc852f91af6",
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
  "slug": "instance-source-edition-2",
  "source": {
    "blob": "ee4860c65d0d61ca8e3eb05104e2fc573c3af3b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 163,
    "path": "GRWTSK/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b52736905e8e5241173186be007f0148c8b72a5e65991a56db526b0286aee9b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/IsGaloisGroupBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c2379232701d5bcb3d3fc3d1d83ff380760679184335803cba59bc852f91af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (R S : Type*) [CommRing R] [CommRing S] [Algebra R S]
    [MulSemiringAction G S] [hGKL : IsGaloisGroup G R S] :
    IsGaloisGroup H (FixedPoints.subalgebra R S H) S where
  faithful := have := hGKL.faithful; inferInstance
  commutes := inferInstance
  isInvariant := ⟨fun x h ↦ ⟨⟨x, h⟩, rfl⟩⟩

section Quotient

section Semiring

variable (A B C : Type*) [CommSemiring A] [Semiring C] [Algebra A C] [MulSemiringAction G C]
variable (N : Subgroup G) [CommSemiring B] [Algebra B C]

/-- If `N` is a normal subgroup of `G` and `IsGaloisGroup N B C`, then `G` acts on `B`.
For `g : G` and `x : B`, `g • x` is the unique element of `B` whose image in `C` is
`g • algebraMap B C x`, see `algebraMap_smulOfNormal`. -/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/IsGaloisGroupBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4860c65d0d61ca8e3eb05104e2fc573c3af3b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61bc7f35fa6a9fe84b39296374e9c0b6b998724a56e7e31cdd5cf189f35c8cf5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

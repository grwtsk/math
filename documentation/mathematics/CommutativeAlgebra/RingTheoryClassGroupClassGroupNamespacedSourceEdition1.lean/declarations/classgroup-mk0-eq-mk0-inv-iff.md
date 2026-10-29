# ClassGroup.mk0_eq_mk0_inv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b11987bb-8985-f16f-60f1-5acb4ebf4a6c",
  "kind": "theorem",
  "lexical_name": "ClassGroup.mk0_eq_mk0_inv_iff",
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
  "slug": "classgroup-mk0-eq-mk0-inv-iff",
  "source": {
    "blob": "5c8845b904c5fa31d7b7c381e31820785303acad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 347,
    "path": "GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6664d53361e016c587d2b7dcc9c20b4bd80eb50af4a60d7d1836fc7013c19bfd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/RingTheoryClassGroupClassGroupNamespacedSourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b11987bb-8985-f16f-60f1-5acb4ebf4a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ClassGroup.mk0_eq_mk0_inv_iff [IsDedekindDomain R] {I J : (Ideal R)⁰} :
    ClassGroup.mk0 I = (ClassGroup.mk0 J)⁻¹ ↔
      ∃ x ≠ (0 : R), I * J = Ideal.span {x} := by
  rw [eq_inv_iff_mul_eq_one, ← map_mul, ClassGroup.mk0_eq_one_iff,
    Submodule.isPrincipal_iff, Submonoid.coe_mul]
  refine ⟨fun ⟨a, ha⟩ ↦ ⟨a, ?_, ha⟩, fun ⟨a, _, ha⟩ ↦ ⟨a, ha⟩⟩
  by_contra!
  rw [this, Submodule.span_zero_singleton] at ha
  exact nonZeroDivisors.coe_ne_zero _ <| J.prop _ ha

/-- The class group of principal ideal domain is finite (in fact a singleton).

See `ClassGroup.fintypeOfAdmissibleOfFinite` for a finiteness proof that works for rings of integers
of global fields.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/RingTheoryClassGroupClassGroupNamespacedSourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c8845b904c5fa31d7b7c381e31820785303acad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8c3dd299259f6e48e1f5d63de660cfa249ef3c984dd9302653566e0db0d15a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/ClassGroup/Variant445e06aa3632bdbe620b5d30eed8d86a0e307471f353f857feecdf90ce869783.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

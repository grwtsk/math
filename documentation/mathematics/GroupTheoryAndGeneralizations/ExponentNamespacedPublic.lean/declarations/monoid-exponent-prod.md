# Monoid.exponent_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20cc46fe-2b54-5f3f-b696-560c41588f7b",
  "kind": "theorem",
  "lexical_name": "Monoid.exponent_prod",
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
  "slug": "monoid-exponent-prod",
  "source": {
    "blob": "150eeadb58b5a30e718cfbe9af487892f8c50d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 613,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14ac8577b455bdc20691521cd593d98d01ea4bc45c937beefb5acb88b58a878c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20cc46fe-2b54-5f3f-b696-560c41588f7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monoid.exponent_prod {M₁ M₂ : Type*} [Monoid M₁] [Monoid M₂] :
    exponent (M₁ × M₂) = lcm (exponent M₁) (exponent M₂) := by
  refine dvd_antisymm ?_ (lcm_dvd ?_ ?_)
  · refine exponent_dvd_of_forall_pow_eq_one fun g ↦ ?_
    ext1
    · rw [Prod.pow_fst, Prod.fst_one, ← orderOf_dvd_iff_pow_eq_one]
      exact dvd_trans (Monoid.order_dvd_exponent (g.1)) <| dvd_lcm_left _ _
    · rw [Prod.pow_snd, Prod.snd_one, ← orderOf_dvd_iff_pow_eq_one]
      exact dvd_trans (Monoid.order_dvd_exponent (g.2)) <| dvd_lcm_right _ _
  · exact MonoidHom.exponent_dvd (f := MonoidHom.fst M₁ M₂) Prod.fst_surjective
  · exact MonoidHom.exponent_dvd (f := MonoidHom.snd M₁ M₂) Prod.snd_surjective

end PiProd

/-! ### Properties of monoids with exponent two -/

section ExponentTwo

section Monoid

variable [Monoid G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/ExponentNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150eeadb58b5a30e718cfbe9af487892f8c50d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e33f0bca29d44312ad7c0e8146f38c4d104603e762406d5af52e1c057597622 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Exponent/Variant7535449fe771b72005c17c20b7e4f19fd77f86936e1ef320f11ad0b2bf137700.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

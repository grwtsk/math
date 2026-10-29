# centerEquivRootsOfUnity_invFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4716260964505204c8a6523e7d9ab3dbb105b7405bfb2f827c89ee73357aab0",
  "kind": "def",
  "lexical_name": "centerEquivRootsOfUnity_invFun",
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
  "slug": "centerequivrootsofunity-invfun",
  "source": {
    "blob": "ccf30ad4eb34d16ce665df7db510553430114fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 406,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47e1cf7278969723d08c27332af2ac276aacb78aa4c9460abf22d1ac1f38b332",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpecialLinearGroupNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4716260964505204c8a6523e7d9ab3dbb105b7405bfb2f827c89ee73357aab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def centerEquivRootsOfUnity_invFun
    (r : rootsOfUnity (max (Module.finrank R V) 1) R) :
    Subgroup.center (SpecialLinearGroup R V) :=
  ⟨⟨LinearMap.equivOfIsUnitDet (M := V) (R := R) (f := ((r : Rˣ) : R) • LinearMap.id) (by
    simp [LinearMap.det_smul, IsUnit.pow]), by
    simp only [← Units.val_inj, LinearEquiv.coe_det, LinearMap.coe_equivOfIsUnitDet,
      LinearMap.det_smul, LinearMap.det_id, mul_one, Units.val_one]
    have := (mem_rootsOfUnity' _ _).mp r.prop
    rcases max_cases (Module.finrank R V) 1 with ⟨h, h'⟩ |  ⟨h, h'⟩
    · simp_rw [h] at this
      exact this
    · simp_rw [h, pow_one] at this
      simp [this]⟩, by
    simp only [mem_center_iff, LinearMap.coe_equivOfIsUnitDet]
    use r.val
    simp only [and_true]
    let ⟨r, hr⟩ := r
    by_cases hV : Module.finrank R V = 0
    · simp [hV]
    · rw [← ne_eq, ← Nat.one_le_iff_ne_zero] at hV
      rw [mem_rootsOfUnity', max_eq_left hV] at hr
      simpa [← Subtype.val_inj, ← Units.val_inj]⟩

set_option backward.isDefEq.respectTransparency false in
open scoped Classical in
/-- The isomorphism between the roots of unity and the center of the special linear group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpecialLinearGroupNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf30ad4eb34d16ce665df7db510553430114fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=582ac1c1b0c593cfbf29482af5473680bbf0d4281aa14a10e3d36acf236dfea6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantc285225222a1687d981e49f86d7ef7b1af5886fac159b32af21cc2a7063328c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

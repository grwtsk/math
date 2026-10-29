# Monoid.finite_set_isOfFiniteOrder_of_descent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95286acf-609a-3025-69e0-fadf5150ea91",
  "kind": "theorem",
  "lexical_name": "Monoid.finite_set_isOfFiniteOrder_of_descent",
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
  "slug": "monoid-finite-set-isoffiniteorder-of-descent",
  "source": {
    "blob": "6c594fd0fdb0b9a64994006e5e0fd80a7ae6661f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 178,
    "path": "GRWTSK/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec1f6d7ae72289a2c4f9059b9c2a6e563952e72bfd4ada39778911cddc4e5a99",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/DescentNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95286acf-609a-3025-69e0-fadf5150ea91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monoid.finite_set_isOfFiniteOrder_of_descent {M : Type*} [Monoid M] {n : ℕ} {h : M → ℝ}
    {b c₀ : ℝ} (hb : 1 < b) (H : ∀ x, b * h x - c₀ ≤ h (x ^ n)) [Northcott h] :
    Finite { x : M | IsOfFinOrder x } := by
  refine (Northcott.finite_le (h := h) (c₀ / (b - 1))).subset fun t ht ↦ ?_
  have : Finite ↥(Submonoid.powers t) := ht.finite_powers
  let C : ℝ := ⨆ g : Submonoid.powers t, h g
  have hC : ∀ g ∈ Submonoid.powers t, h g ≤ C :=
    fun g hg ↦ Finite.le_ciSup (fun g : Submonoid.powers t ↦ h g) ⟨g, hg⟩
  refine (hC t (Submonoid.mem_powers t)).trans ?_
  obtain ⟨t₀, ht₀⟩ : ∃ g : Submonoid.powers t, h g = C := exists_eq_ciSup_of_finite
  rw [le_div_iff₀' (by grind)]
  grind [Submonoid.pow_mem]

/--
If `G` is a commutative group and `n : ℕ`, `h : G → ℝ` satisfy
* for all `x : G`, `h (x ^ n) ≥ b * h x - c₀`,
* for all `B : ℝ`, there are only finitely many `x : G` such that `h x ≤ B`,

where `1 < b` and `c₀` are real numbers, then the torsion subgroup of `G` is finite.
-/
@[to_additive /-- If `G` is a commutative additive group and `n : ℕ`, `h : G → ℝ` satisfy
* for all `x : G`, `h (n • x) ≥ b * h x - c₀`,
* for all `B : ℝ`, there are only finitely many `x : G` such that `h x ≤ B`,

where `1 < b` and `c₀` are real numbers, then the torsion subgroup of `G` is finite. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/DescentNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c594fd0fdb0b9a64994006e5e0fd80a7ae6661f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2d5143668a9de5fddfd85782b01354ef6587717373b95923065e9c33b1f3bac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Descent/Variant672818da2b79e725743e2729358eea86fcc1572512ac485e5b4d91b6ec8fae94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

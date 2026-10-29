# ramificationIdx'_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bf0b59e-3dc4-bc13-57f9-90738ae59e96",
  "kind": "lemma",
  "lexical_name": "ramificationIdx'_eq_one_iff",
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
  "slug": "ramificationidx-eq-one-iff",
  "source": {
    "blob": "a8ed954a3c9d52ebe4f8218ece3b9da3441d2af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 318,
    "path": "GRWTSK/Algebra/Ramification/Variant3f15dbb7aaf9bfafaf1ee31b8e78349f613749609092d1ff26cd3190b2dbd5a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37f73ee51f23cf01dafc563cb4ed2c4b894738affb58cd9ed001aa75b9a37f0c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/NumberTheoryRamificationInertiaRamificationNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bf0b59e-3dc4-bc13-57f9-90738ae59e96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ramificationIdx'_eq_one_iff
    {p : Ideal R} {P : Ideal S} [P.IsPrime]
    (hp : P ≠ ⊥) (hpP : p.map (algebraMap R S) ≤ P) :
    ramificationIdx' p P = 1 ↔
      p.map (algebraMap R (Localization.AtPrime P)) = maximalIdeal (Localization.AtPrime P) := by
  refine ⟨?_, ramificationIdx'_eq_one_of_map_localization hpP hp (primeCompl_le_nonZeroDivisors _)⟩
  let Sₚ := Localization.AtPrime P
  rw [← not_ne_iff (b := 1), ramificationIdx'_ne_one_iff hpP, pow_two]
  intro H₁
  obtain ⟨a, ha⟩ : P ∣ p.map (algebraMap R S) := Ideal.dvd_iff_le.mpr hpP
  have ha' : ¬ a ≤ P := fun h ↦ H₁ (ha.trans_le (Ideal.mul_mono_right h))
  rw [IsScalarTower.algebraMap_eq _ S, ← Ideal.map_map, ha, Ideal.map_mul,
    Localization.AtPrime.map_eq_maximalIdeal]
  convert! Ideal.mul_top _
  on_goal 2 => infer_instance
  rw [← not_ne_iff, IsLocalization.map_algebraMap_ne_top_iff_disjoint P.primeCompl]
  simpa [primeCompl, Set.disjoint_compl_left_iff_subset]

@[deprecated (since := "2026-07-01")] alias ramificationIdx_eq_one_iff :=
  ramificationIdx'_eq_one_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/NumberTheoryRamificationInertiaRamificationNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variant3f15dbb7aaf9bfafaf1ee31b8e78349f613749609092d1ff26cd3190b2dbd5a3.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8ed954a3c9d52ebe4f8218ece3b9da3441d2af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c84ad411b3080634fad13a0e044f9fdb6128b1b418fa6149b6e1b8e9e4349a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ramification/Variant3f15dbb7aaf9bfafaf1ee31b8e78349f613749609092d1ff26cd3190b2dbd5a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

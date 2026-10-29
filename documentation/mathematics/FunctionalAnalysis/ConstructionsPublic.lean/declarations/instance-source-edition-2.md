# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e787af2b8793049aa6c62c8605c31faf6616e9550b638b8eb1df16fdf6fe16f",
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
    "blob": "1d3db811b127fda58f0f3949c31bf93fa4ae6b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a0000aaf9625dfaf3aae03e4373b0ad1f72a24a96cbec0c40d325261a9daeb0",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/ConstructionsPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e787af2b8793049aa6c62c8605c31faf6616e9550b638b8eb1df16fdf6fe16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : CStarModule A C⋆ᵐᵒᵈ(A, Π i, E i) where
  inner x y := ∑ i, ⟪x i, y i⟫_A
  inner_add_right {x y z} := by simp [sum_add_distrib]
  inner_self_nonneg := sum_nonneg <| fun _ _ ↦ CStarModule.inner_self_nonneg
  inner_self {x} := by
    refine ⟨fun h ↦ ?_, fun h ↦ by simp [h]⟩
    ext i
    refine inner_self.mp <| le_antisymm (le_of_le_of_eq ?_ h) inner_self_nonneg
    exact single_le_sum (fun i _ ↦ CStarModule.inner_self_nonneg (A := A) (x := x i)) (mem_univ _)
  inner_op_smul_right := by simp [mul_sum]
  inner_smul_right_complex := by simp [smul_sum]
  star_inner x y := by simp
  norm_eq_sqrt_norm_inner_self {x} := by with_reducible_and_instances rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/ConstructionsPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3db811b127fda58f0f3949c31bf93fa4ae6b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8250b65b51a2c5af49eacf9ac97cf3cb44c2edaf9ba309f83342f977ab013b08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4de7919760218b3b3ca9c050aa5959ba5005a8b90e56c83c4089a0d60b700554.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

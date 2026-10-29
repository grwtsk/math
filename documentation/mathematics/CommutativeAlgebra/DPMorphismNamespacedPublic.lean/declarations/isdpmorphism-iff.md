# isDPMorphism_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e835673-0c7a-966a-21c9-5a802b905a58",
  "kind": "lemma",
  "lexical_name": "isDPMorphism_iff",
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
  "slug": "isdpmorphism-iff",
  "source": {
    "blob": "082c800007fde76dce50247937f65a7fc316a03f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0faf69343ff84be2c943748dbb7cc6fd4abd4c0f5bc5047d5f02fd7ec98fbb2b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/DPMorphismNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e835673-0c7a-966a-21c9-5a802b905a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDPMorphism_iff (f : A →+* B) :
    IsDPMorphism hI hJ f ↔ I.map f ≤ J ∧ ∀ n ≠ 0, ∀ a ∈ I, hJ.dpow n (f a) = f (hI.dpow n a) := by
  rw [isDPMorphism_def, and_congr_right_iff]
  refine fun hIJ ↦ ⟨fun H n _ ↦ H, fun H n ↦ ?_⟩
  by_cases hn : n = 0
  · intro _ ha
    rw [hn, hI.dpow_zero ha, hJ.dpow_zero (hIJ (mem_map_of_mem f ha)), map_one]
  · exact H n hn

namespace IsDPMorphism

variable {hI hJ} {C : Type*} [CommSemiring C] {K : Ideal C} (hK : DividedPowers K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/DPMorphismNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082c800007fde76dce50247937f65a7fc316a03f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fe25f700469c8a8b03f14903327919f2685e835aa553eddea8166ed7ed46078 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/DPMorphism/Variant0f86f9491928c2e31aa216d4260f6d5b14dc68c76838c0952f71f170e082995e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

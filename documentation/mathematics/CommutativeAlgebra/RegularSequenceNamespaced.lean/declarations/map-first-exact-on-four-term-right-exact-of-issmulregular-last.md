# map_first_exact_on_four_term_right_exact_of_isSMulRegular_last

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9a9e097-14da-3a12-36a9-d4bc18b5479f",
  "kind": "lemma",
  "lexical_name": "map_first_exact_on_four_term_right_exact_of_isSMulRegular_last",
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
  "slug": "map-first-exact-on-four-term-right-exact-of-issmulregular-last",
  "source": {
    "blob": "8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 562,
    "path": "GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb5d08bd7900751aefa8550668d4eb3b79762b9f90978babeb271e6829eedf2e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/RegularSequenceNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9a9e097-14da-3a12-36a9-d4bc18b5479f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_first_exact_on_four_term_right_exact_of_isSMulRegular_last
    {rs : List R} {f₁ : M →ₗ[R] M₂} {f₂ : M₂ →ₗ[R] M₃} {f₃ : M₃ →ₗ[R] M₄}
    (h₁₂ : Exact f₁ f₂) (h₂₃ : Exact f₂ f₃) (h₃ : Surjective f₃)
    (h₄ : IsWeaklyRegular M₄ rs) :
    Exact (mapQ _ _ _ (smul_top_le_comap_smul_top (Ideal.ofList rs) f₁))
          (mapQ _ _ _ (smul_top_le_comap_smul_top (Ideal.ofList rs) f₂)) := by
  induction h₄ generalizing M M₂ M₃ with
  | nil =>
    apply (Exact.iff_of_ladder_linearEquiv ?_ ?_).mp h₁₂
    any_goals exact quotEquivOfEqBot _ <|
      Eq.trans (congrArg (· • ⊤) Ideal.ofList_nil) (bot_smul ⊤)
    all_goals exact quot_hom_ext _ _ _ fun _ => rfl
  | cons r rs h₄ _ ih =>
    specialize ih
      (map_first_exact_on_four_term_exact_of_isSMulRegular_last h₁₂ h₂₃ h₄)
      (map_exact r h₂₃ h₃) (map_surjective r h₃)
    have H₁ := quotOfListConsSMulTopEquivQuotSMulTopInner_naturality r rs f₁
    have H₂ := quotOfListConsSMulTopEquivQuotSMulTopInner_naturality r rs f₂
    exact (Exact.iff_of_ladder_linearEquiv H₁.symm H₂.symm).mp ih

-- todo: modding out a complex by a regular sequence (prop 1.1.5 in B&H)

section Perm

open LinearMap in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/RegularSequenceNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a39ddb8895d56172d1ba8bb9d4c608860d5489621276ed2bf2095485eab65829 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

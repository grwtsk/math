# continuousOn_cfcₙ_setProd_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 800,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65121ee3-33de-8676-cf26-868b1b01c62f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50429ab9-959f-d85d-ca6a-70200b94ea8f",
  "kind": "theorem",
  "lexical_name": "continuousOn_cfcₙ_setProd_nhdsSet",
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
  "slug": "continuouson-cfc-setprod-nhdsset",
  "source": {
    "blob": "44cd53bc76622f44aed7e388806ac3e32f701e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 820,
    "line": 800,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49219ef43e6e9f3c1de00887b99cf1d1a393342103ba3045edfda4a43ddd3dbd",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/ContinuousFunctionalCalculusContinuityPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50429ab9-959f-d85d-ca6a-70200b94ea8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 800–820.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_cfcₙ_setProd_nhdsSet [CompleteSpace A] {s : Set 𝕜} :
    ContinuousOn (fun fa : (𝕜 →ᵤ[{t | IsCompact t ∧ t ⊆ s}] 𝕜) × A ↦ cfcₙ (toFun {s} fa.1) fa.2)
      ({f | ContinuousOn (toFun {t | IsCompact t ∧ t ⊆ s} f) s ∧ f 0 = 0} ×ˢ
        {a | p a ∧ s ∈ 𝓝ˢ (quasispectrum 𝕜 a)}) := by
  refine continuousOn_of_locally_continuousOn fun (f, a) ⟨hf, ha, has⟩ ↦ ?_
  have hs := NonUnitalContinuousFunctionalCalculus.isCompact_quasispectrum (R := 𝕜) a
  obtain ⟨k, ⟨hka, hk⟩, hks⟩ := hs.nhdsSet_basis_isCompact.mem_iff.mp has
  have := (upperHemicontinuous_quasispectrum 𝕜 A).isOpen k
  refine ⟨Set.univ ×ˢ {x | k ∈ 𝓝ˢ (quasispectrum 𝕜 x)}, isOpen_univ.prod this, by simpa, ?_⟩
  conv in cfcₙ _ =>
    equals cfcₙ (toFun {k} (ofFun {k} (toFun {t | IsCompact t ∧ t ⊆ s} fa.1))) => rfl
  refine continuousOn_cfcₙ_setProd hk |>.comp'
    (uniformContinuous_ofFun_toFun_of_mem _ {t | IsCompact t ∧ t ⊆ s} _ ⟨hk, hks⟩ |>.prodMap
      uniformContinuous_id).continuous.continuousOn ?_
  intro (f, a) ⟨⟨hf, ha⟩, ⟨_, ha'⟩⟩
  exact ⟨⟨hf.1.mono hks, hf.2⟩, ha.1, subset_of_mem_nhdsSet ha'⟩

/-- If `f : 𝕜 → 𝕜` is continuous on a compact set `s` and `f 0 = 0` and `a : X → A` tends to
`a₀ : A` along a filter `l` (such that eventually `a x` satisfies the predicate `p` associated to
`𝕜` and has quasispectrum contained in `s`, as does `a₀`), then `fun x ↦ cfcₙ f (a x)` tends to
`cfcₙ f a₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/ContinuousFunctionalCalculusContinuityPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean#L800).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44cd53bc76622f44aed7e388806ac3e32f701e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5012eedb4d5696c22e6c2a5002f16c5d4c3948326d300acad727dd1af4dd5cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean","GRWTSK/Topology/GeneralTopology/Continuity/Variantd1abdbfa898feda61b41e41dadca64672ea26b9722b6119c270d1aaeda91ac51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

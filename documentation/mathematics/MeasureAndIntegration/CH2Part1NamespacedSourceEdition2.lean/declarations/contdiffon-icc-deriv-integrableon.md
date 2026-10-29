# contDiffOn_Icc_deriv_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aaf701fd-2f0e-d4bd-8c65-72a126b09394",
  "kind": "lemma",
  "lexical_name": "contDiffOn_Icc_deriv_integrableOn",
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
  "slug": "contdiffon-icc-deriv-integrableon",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4898,
    "line": 4878,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b525df31e8d9a168899ac9857a1fb9e68ea8f775b70d6dac8d7ad74d33269e8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/CH2Part1NamespacedSourceEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaf701fd-2f0e-d4bd-8c65-72a126b09394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4878–4898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma contDiffOn_Icc_deriv_integrableOn {a b : ℝ} (hab : a < b)
    {f : ℝ → ℂ} (h_c2 : ContDiffOn ℝ 2 f (Set.Icc a b)) :
    IntegrableOn (deriv f) (Set.Icc a b) := by
  have h_int_within : IntegrableOn (derivWithin f (Set.Icc a b)) (Set.Icc a b) :=
    ContinuousOn.integrableOn_compact isCompact_Icc
      (h_c2.continuousOn_derivWithin (uniqueDiffOn_Icc hab) (by norm_num))
  rw [integrableOn_Icc_iff_integrableOn_Ioo] at h_int_within ⊢
  refine IntegrableOn.congr_fun h_int_within ?_ measurableSet_Ioo
  intro x hx
  exact (derivWithin_subset Set.Ioo_subset_Icc_self (isOpen_Ioo.uniqueDiffWithinAt hx)
    (h_c2.differentiableOn (by norm_num) x (Set.Ioo_subset_Icc_self hx))).symm.trans
    (derivWithin_of_isOpen isOpen_Ioo hx)

@[blueprint
  "varphi-deriv-integ"
  (title := "$\\varphi'$ integrable")
  (statement := /-- The function $(\varphi_\nu^\pm)'$ is integrable. -/)
  (proof := /-- Apply Lemmas \ref{phi-c2-left}, \ref{phi-c2-right}, \ref{phi-cts} We know $(\varphi_\nu^\pm)'$ is integrable because it is $C^1$ on $[-1, 0]$ and $[0, 1]$, and identically $0$ outside $[-1, 1]$./
-/)
  (latexEnv := "lemma")
  (discussion := 1228)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/CH2Part1NamespacedSourceEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L4878).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7b94f6d9da225e01aa820f6781e7914c770737dce3aa73059e45cae0a96a7c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

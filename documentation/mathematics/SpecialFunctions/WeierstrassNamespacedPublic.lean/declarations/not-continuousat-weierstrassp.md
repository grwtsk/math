# not_continuousAt_weierstrassP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bbac3a0-4ea2-7fd4-458b-c44e97670080",
  "kind": "lemma",
  "lexical_name": "not_continuousAt_weierstrassP",
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
  "slug": "not-continuousat-weierstrassp",
  "source": {
    "blob": "50cd53bb41662dfea7ffa092778592ba86849027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 325,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ed0fa0ca98100e1fa6864bd42f20ceff79e1dadaffa4b8ae6362076a321df7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SpecialFunctions/WeierstrassNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bbac3a0-4ea2-7fd4-458b-c44e97670080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_continuousAt_weierstrassP (x : ℂ) (hx : x ∈ L.lattice) : ¬ ContinuousAt ℘[L] x := by
  eta_expand
  simp_rw [← L.weierstrassPExcept_add ⟨x, hx⟩]
  intro H
  apply (NormedField.continuousAt_zpow (n := -2) (x := (0 : ℂ))).not.mpr (by simp)
  simpa [Function.comp_def] using!
    (((H.sub ((L.differentiableOn_weierstrassPExcept x).differentiableAt
      (L.compl_lattice_sdiff_singleton_mem_nhds x)).continuousAt).add
      (continuous_const (y := 1 / x ^ 2)).continuousAt).comp_of_eq
      (continuous_const_add x).continuousAt (add_zero _) :)

end weierstrassP

section derivWeierstrassPExcept

/-- The derivative of Weierstrass `℘` function with the `l₀`-term missing.
This is mainly a tool for calculations where one would want to omit a diverging term.
This has the notation `℘'[L - l₀]` in the namespace `PeriodPairs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/SpecialFunctions/WeierstrassNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50cd53bb41662dfea7ffa092778592ba86849027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8a47a53ec907a33f4a08de19423570589c3a1d790e6534052b7e06d013b420d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

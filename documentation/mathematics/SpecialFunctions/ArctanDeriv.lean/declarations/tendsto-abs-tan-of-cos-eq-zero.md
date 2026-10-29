# tendsto_abs_tan_of_cos_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fe76c99a7630ab45ec97d182cd03083e12238e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61e5dbaa-6c95-d2a2-cb96-887907f4162b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd23daa2-c208-6a33-74d5-baf9b1127b96",
  "kind": "theorem",
  "lexical_name": "tendsto_abs_tan_of_cos_eq_zero",
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
  "slug": "tendsto-abs-tan-of-cos-eq-zero",
  "source": {
    "blob": "3fe76c99a7630ab45ec97d182cd03083e12238e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d3ed30bfd21dcdc688f34b58f22eb22758b37ee30e86fcba6628643fad3709b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SpecialFunctions/ArctanDeriv.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd23daa2-c208-6a33-74d5-baf9b1127b96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_abs_tan_of_cos_eq_zero {x : ℝ} (hx : cos x = 0) :
    Tendsto (fun x => abs (tan x)) (𝓝[≠] x) atTop := by
  have hx : Complex.cos x = 0 := by exact_mod_cast hx
  simp only [← Complex.abs_ofReal, Complex.ofReal_tan]
  refine' (Complex.tendsto_abs_tan_of_cos_eq_zero hx).comp _
  refine' Tendsto.inf Complex.continuous_ofReal.continuousAt _
  exact tendsto_principal_principal.2 fun y => mt Complex.ofReal_inj.1
#align real.tendsto_abs_tan_of_cos_eq_zero Real.tendsto_abs_tan_of_cos_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/SpecialFunctions/ArctanDeriv.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe76c99a7630ab45ec97d182cd03083e12238e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33d40f8590d3ddeaa78dd0c49fcd6bb97bd1efbc8df16e3669530e7b3cd4f107 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ArctanDeriv/Variant94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/94/94f6bc055566d38b60919b92494d7472f31fb17e1f70897c9ff1d8ac7f4128b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

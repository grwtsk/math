# term_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c6d5694-706d-8f14-b269-5289def2aa36",
  "kind": "theorem",
  "lexical_name": "term_hasDerivAt",
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
  "slug": "term-hasderivat",
  "source": {
    "blob": "a6bf9a13da55f8ee99a115c223af0271ea554361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:447fa12987f3f7122ff804e37f22e8759c977550ca6decd51e374dae9a8d5650",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/Attempt04CellKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c6d5694-706d-8f14-b269-5289def2aa36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem term_hasDerivAt {n : ℕ} (hn : 0 < n) {s : ℝ} (hs : (1:ℝ)/2 < s) :
    HasDerivAt (ZetaAsymptotics.term n)
      (∫ x : ℝ in (n:ℝ)..(n+1), cellDerivative n s x) s := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ:=volume.restrict (Ioc (n:ℝ) (n+1)))
    (F:=fun u x : ℝ => cellKernel n u x) (F':=fun u x : ℝ => cellDerivative n u x)
    (bound:=fun _ : ℝ => derivativeMajorant n)
    (Ioi_mem_nhds hs)
    (Eventually.of_forall (fun u => (cellKernel_integrable hn u).aestronglyMeasurable))
    (cellKernel_integrable hn s)
    (cellDerivative_integrable hn s).aestronglyMeasurable
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      intro u hu
      simpa only [Real.norm_eq_abs] using cellDerivative_bound hn hu hx)
    (integrableOn_const (C:=derivativeMajorant n) (by simp))
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      intro u _
      exact cellKernel_hasDerivAt n u ((show (0:ℝ)<n by exact_mod_cast hn).trans hx.1))
  convert h.2 using 1
  · funext u
    exact intervalIntegral.integral_of_le (by linarith : (n:ℝ) ≤ n+1)
  · exact intervalIntegral.integral_of_le (by linarith : (n:ℝ) ≤ n+1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/Attempt04CellKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bf9a13da55f8ee99a115c223af0271ea554361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92d0574e28ca608e31a0cb0d514b7ad78dff280b7fea26d69b60b25f17ca6691 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant1abd450793275aab447274e7f4c00c6c9e335bfda695bc38989d9e7eb1944983.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

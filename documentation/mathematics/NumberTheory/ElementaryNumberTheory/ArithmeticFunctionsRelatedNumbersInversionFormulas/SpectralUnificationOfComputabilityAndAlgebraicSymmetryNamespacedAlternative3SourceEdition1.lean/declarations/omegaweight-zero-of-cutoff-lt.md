# omegaWeight_zero_of_cutoff_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6224c700-c2da-7dfd-04bd-d821a7cd7d04",
  "kind": "theorem",
  "lexical_name": "omegaWeight_zero_of_cutoff_lt",
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
  "slug": "omegaweight-zero-of-cutoff-lt",
  "source": {
    "blob": "c63361f92fc8f634bbe903cddee8ff7740b59f57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:867ac56162ba337531c711a7844396607d0e4570fb27ac3fe1aa2951aaa2d27e",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SpectralUnificationOfComputabilityAndAlgebraicSymmetryNamespacedAlternative3SourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6224c700-c2da-7dfd-04bd-d821a7cd7d04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omegaWeight_zero_of_cutoff_lt (T : ℝ) (m d k : ℕ)
    (hn : sourceKernelCutoff T < m * d * k) : omegaWeight T m d k = 0 := by
  have hn0 : 0 < ((m*d*k : ℕ) : ℝ) := by exact_mod_cast (Nat.zero_le _).trans_lt hn
  have hnexp : Real.exp (2*T) < ((m*d*k : ℕ) : ℝ) := by
    apply lt_of_not_ge
    intro h
    exact (Nat.not_le.mpr hn) ((Nat.le_floor_iff (Real.exp_pos _).le).2 h)
  have hl := (Real.lt_log_iff_exp_lt hn0).2 hnexp
  unfold omegaWeight
  apply if_neg
  intro h
  have h1 : Real.log ((m*d*k : ℕ) : ℝ)/2 < upperScale T m d :=
    (le_max_right _ _).trans_lt h
  have h2 : upperScale T m d ≤ T := min_le_left _ _
  linarith

/-- The requested closed product inventory, with no sign or factor endpoint removed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SpectralUnificationOfComputabilityAndAlgebraicSymmetryNamespacedAlternative3SourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c63361f92fc8f634bbe903cddee8ff7740b59f57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6541592053da29c1a1c93bbc2ccb09830c49e35315e1b13769669b7585f96ea2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

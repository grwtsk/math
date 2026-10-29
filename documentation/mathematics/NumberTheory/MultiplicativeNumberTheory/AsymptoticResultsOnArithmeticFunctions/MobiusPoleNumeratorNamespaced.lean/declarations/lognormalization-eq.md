# logNormalization_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6367c7ce-bfaf-cb08-32b6-7a4abf1c5001",
  "kind": "theorem",
  "lexical_name": "logNormalization_eq",
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
  "slug": "lognormalization-eq",
  "source": {
    "blob": "c42f9d49f1ba77cb9f558949ea7f9b743d15e69a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:296034b2a2406e92f3bae8572d90652e55936aacf9607fdb654bb3b6538a3ae7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MobiusPoleNumeratorNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6367c7ce-bfaf-cb08-32b6-7a4abf1c5001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logNormalization_eq (X : ℕ) (hX : 1 ≤ X) :
    (logNormalization X : ℂ) = (mobiusReciprocalSum X : ℂ) *
      (Real.log (X : ℝ) : ℂ) -
      ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) *
        (Real.log (n : ℝ) : ℂ) := by
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (show X ≠ 0 by omega)
  unfold logNormalization mobiusReciprocalSum
  simp only [Complex.ofReal_sum, Complex.ofReal_mul, Complex.ofReal_div,
    Complex.ofReal_intCast, Complex.ofReal_natCast, sum_mul, ← sum_sub_distrib]
  apply sum_congr rfl
  intro n hn
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (show n ≠ 0 by have := (mem_Icc.mp hn).1; omega)
  rw [Real.log_div hX0 hn0, Complex.ofReal_sub]
  ring

/-- The derivative at the canceled pole is the signed logarithmic normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MobiusPoleNumeratorNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c42f9d49f1ba77cb9f558949ea7f9b743d15e69a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d6c129058a3acfc2949110f54c86071c6e5c614eab43800b909347898ab6fe6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPoleNumerator/Variant5deabd2ff34180e98cf70884ae0e7f1f389a735acde492e0fe5c7577d00f8a82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

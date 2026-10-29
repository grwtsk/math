# chebyshev_mul_continuous_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1f8a515-b7bc-a5eb-2bda-1c6e302a89a0",
  "kind": "theorem",
  "lexical_name": "chebyshev_mul_continuous_intervalIntegrable",
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
  "slug": "chebyshev-mul-continuous-intervalintegrable",
  "source": {
    "blob": "4f1ee3508d66942141d062fe874b58d26fab20d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb19b34239fd84a5b0e0c737bd640da89455a5cf10fa177945f7bf52aadf5146",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f8a515-b7bc-a5eb-2bda-1c6e302a89a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshev_mul_continuous_intervalIntegrable (a b : ℝ) (hab : a ≤ b)
    (F : ℝ → ℝ) (hF : Continuous F) :
    IntervalIntegrable (fun s => chebyshevPrimePower (Real.exp s) * F s) volume a b := by
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b,
      fun s : ℝ => ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) volume a b :=
    IntervalIntegrable.sum (primePowerInventory b) (fun n _ =>
      (intervalIntegrable_closed_step a b (Real.log n) F
        (hF.intervalIntegrable a b)).const_mul (ArithmeticFunction.vonMangoldt n))
  have heq : (∑ n ∈ primePowerInventory b,
      fun s : ℝ => ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) =
      (fun s => ∑ n ∈ primePowerInventory b, ArithmeticFunction.vonMangoldt n *
        (if Real.log n ≤ s then F s else 0)) := by
    funext s
    simp only [Finset.sum_apply]
  rw [heq] at hi
  apply hi.congr
  intro s hs
  exact (chebyshev_mul_eq_steps b s (F s) ((uIoc_of_le hab ▸ hs).2)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ExactSourceJoinForTheKapitzaCorrectorTaskEdition5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f1ee3508d66942141d062fe874b58d26fab20d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62348a627326f70d51038e3ff5f8b9a1c3025af26dc30a99250a6aec81b76d96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variantf1c18818ac672f1d3fec25e6bdc6c74e9fd9055dedada2cec232c278e8f158af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# log_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4b7785f-ac11-85e9-cfb9-47cd48425229",
  "kind": "lemma",
  "lexical_name": "log_pow",
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
  "slug": "log-pow-source-edition-2",
  "source": {
    "blob": "4432d3215bdb2bb3b2887560cfbc96200cefc4dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c5914bf8638d07adc8896ed7c195adb82f06ba75f092592cf6db20cd95657b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/SpecialFunctions/ExpLogBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b7785f-ac11-85e9-cfb9-47cd48425229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_pow (n : ℕ) (a : A) (ha₂ : ∀ x ∈ spectrum ℝ a, x ≠ 0)
    (ha₁ : IsSelfAdjoint a := by cfc_tac) : log (a ^ n) = n • log a := by
  have ha₂' : ContinuousOn Real.log (spectrum ℝ a) := by fun_prop
  have ha₂'' : ContinuousOn Real.log ((· ^ n) '' spectrum ℝ a) := by fun_prop (disch := aesop)
  rw [log, ← cfc_pow_id (R := ℝ) a n ha₁, ← cfc_comp' Real.log (· ^ n) a ha₂'', log]
  simp_rw [Real.log_pow, ← Nat.cast_smul_eq_nsmul ℝ n, cfc_const_mul (n : ℝ) Real.log a ha₂']

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/SpecialFunctions/ExpLogBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4432d3215bdb2bb3b2887560cfbc96200cefc4dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9f9999f015fef593708812a0164d5ccc921c232fba6f4cc3b6e4934eb232ed2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantf50213bb3700ef287d70324fe4c5c08d111298715fd64c41757c674acd12305f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

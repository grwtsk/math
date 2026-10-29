# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightBertrandPositivityControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a5256373af5e9d624338c2493494d7fe7e6d749",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBertrandPositivityControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a5256373af5e9d624338c2493494d7fe7e6d749`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBertrandPositivityControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBertrandPositivityControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightBertrandRatio`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/positivepolarity.md) | 15 | `declaration-track:f38d06484d55887aed431e13a0a0f1ce53b23def61f0628344eacd41de28e521` |
| 2 | `theorem` | [concrete_dyadic_prime_window_nonempty](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/concrete-dyadic-prime-window-nonempty.md) | 19 | `result-track:a7a74129685788a869985cc09f136a40f7baddcea12b990154a25a7ded3d0bf3` |
| 3 | `theorem` | [concrete_dyadic_amplitude_positive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/concrete-dyadic-amplitude-positive.md) | 26 | `result-track:efc7f856d847ebc8b1f11c6f715890709cedb3f19ee91b2ed6c0dcb82447ce84` |
| 4 | `theorem` | [concrete_dyadic_amplitude_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/concrete-dyadic-amplitude-ne-zero.md) | 32 | `result-track:5ac168dde6049a7bf5b2c37d277a9fa044a149dec4f37d987ec687f551b7d159` |
| 5 | `theorem` | [concrete_dyadic_finiteCapacity_iff_bertrandRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/concrete-dyadic-finitecapacity-iff-bertrandratio.md) | 39 | `result-track:ab4d4421349239443c1617efa1be116a30e7f7f3c074cedccf462b963fbc66df` |
| 6 | `theorem` | [concrete_dyadic_nonvacuous_finiteCapacity_iff_ratio_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/concrete-dyadic-nonvacuous-finitecapacity-iff-ratio-le.md) | 50 | `result-track:2da2e78da811651eea38b041a7087b5efb08be7a5754d4164c6e3371a360fe25` |
| 7 | `theorem` | [concrete_dyadic_nonvacuous_amplitude_iff_ratio_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/concrete-dyadic-nonvacuous-amplitude-iff-ratio-le.md) | 68 | `result-track:3de26bbca17fa1efb4f5cb3231dd4d0cacded1ba0e82731349f8a716750afc66` |
| 8 | `theorem` | [concrete_three_clause_fixed_bertrand_ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/concrete-three-clause-fixed-bertrand-ratio.md) | 88 | `result-track:3d46aebbdc8df792af18bba66f00f6be8204b002104dbab6b1141301d0dbaf26` |
| 9 | `theorem` | [concrete_two_clause_fixed_bertrand_ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/concrete-two-clause-fixed-bertrand-ratio.md) | 98 | `result-track:811ceddee1e24deb668c006956ca7269c1258f926f7db879a5526a9053089641` |
| 10 | `def` | [requiredBertrandRatioObligations](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/requiredbertrandratioobligations.md) | 108 | `declaration-track:c341271add1896059ddf05bd4071a6089dfb9703f9d7773532f7098042bdaa3c` |
| 11 | `def` | [prohibitedPromotions](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightBertrandPositivityControls.lean/declarations/prohibitedpromotions.md) | 116 | `declaration-track:641ddd333513ccb060560c5c2ce3b30e46d16b62cb2d673953741b9e456958e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5722dd44bdbd357e2b5624726d1c87d53e390ee61ee87a73304479a5ea404b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBertrandPositivityControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBertrandPositivityControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

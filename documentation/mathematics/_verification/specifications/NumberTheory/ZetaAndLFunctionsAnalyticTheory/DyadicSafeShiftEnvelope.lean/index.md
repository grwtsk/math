# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftEnvelope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d7cfc2cfc92efb3b5ec5b0c1d7c37ee07b34fe8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d7cfc2cfc92efb3b5ec5b0c1d7c37ee07b34fe8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftPrimeTermFactorization`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SafeShiftPrimeTermFactorization.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence`](../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DyadicMellinConvergence.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [safeShiftPlus_three_halves_lt_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeshiftplus-three-halves-lt-re.md) | 42 | `result-track:3937cc6e107a2651442d7bbe9e253c84aab95269aa7a47d4508d9d313211e134` |
| 2 | `theorem` | [safeShiftMinus_three_halves_lt_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeshiftminus-three-halves-lt-re.md) | 48 | `result-track:fad09794070d4d3b3ed695337554413d745c2d6395091551a3e47c07ead32c26` |
| 3 | `def` | [safeDyadicRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safedyadicradius.md) | 55 | `declaration-track:35d3515b4a11166ca6ec1f11e5a423ee1b5823d67b42695b80d0da1eec999e75` |
| 4 | `theorem` | [safeDyadicRadius_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safedyadicradius-nonnegative.md) | 58 | `result-track:59329abbc646e39d089a68db653451c52973ee1be197e417b6258f4956c50f17` |
| 5 | `theorem` | [safeShiftPlus_norm_le_radius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeshiftplus-norm-le-radius.md) | 63 | `result-track:9ab4aa0da1a82bfebe81ec21a3ad8deb734b7676a632b701e300dcfdfe8acb9e` |
| 6 | `theorem` | [safeShiftMinus_norm_le_radius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeshiftminus-norm-le-radius.md) | 67 | `result-track:6ac008cc97f4e06089dcca93a0eb6dfc56301fddac23fde58b7ed17ff3bc2590` |
| 7 | `def` | [safeDyadicHalfWeight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safedyadichalfweight.md) | 72 | `declaration-track:b569780c8ed5563b8616b4bdf38c957a5b152aa171b8ed2512d4a11ab9be78f6` |
| 8 | `def` | [safeDyadicEnergyEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safedyadicenergyenvelope.md) | 77 | `declaration-track:b4ee305aa17e435a38c97304420a7854bbf9c0db8f98e9bc70d59f7b37e0dacd` |
| 9 | `theorem` | [safeDyadicEnergyEnvelope_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safedyadicenergyenvelope-nonnegative.md) | 82 | `result-track:0b8b5016d55d18da5bb960043b7cb57459df36893ddf2e7105822c98fecfb8b1` |
| 10 | `def` | [safePlusDyadicBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeplusdyadicblock.md) | 88 | `declaration-track:280d27daac37f14ea5c592004d5764b55ee2769f5ec5f51977eec3984e9d2533` |
| 11 | `def` | [safeMinusDyadicBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeminusdyadicblock.md) | 91 | `declaration-track:fd37eaea7d77f634c4599ba3736a17a9fba88a76a605c9c20fb216e44cda88a9` |
| 12 | `def` | [safeEvenDyadicBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeevendyadicblock.md) | 94 | `declaration-track:bde2fe0215de795af466ed5d0efda5a8f14890a226772d2d5c32463bec23fc30` |
| 13 | `def` | [safeOddDyadicBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeodddyadicblock.md) | 97 | `declaration-track:247afe596eebfd55db5d383f9bc0caa5f98f227d82ec28c1adc4f4ce7cbd8870` |
| 14 | `theorem` | [safePlusDyadicBlock_norm_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeplusdyadicblock-norm-le.md) | 101 | `result-track:ee5fb7ddcb219b5a3083090bbd58a58c2bf951858dd9907f292889774a0983b1` |
| 15 | `theorem` | [safeMinusDyadicBlock_norm_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeminusdyadicblock-norm-le.md) | 131 | `result-track:cb700976a1172e53a5b4614fca0ee82deb57ffc9a8c49c0f12da5621330e838e` |
| 16 | `theorem` | [safeEvenDyadicBlock_norm_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeevendyadicblock-norm-le.md) | 161 | `result-track:7a919f30692ba93ec61f447f49d846e6e51ac63a308d98521c76272ca8fd193f` |
| 17 | `theorem` | [safeOddDyadicBlock_norm_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicSafeShiftEnvelope.lean/declarations/safeodddyadicblock-norm-le.md) | 174 | `result-track:a9221924b3e294397721f09caefcf68c55659618e093a987b9cc6b4411b57a8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc48db96586e02b32d5cfb59c46f609847fd578dd4cd0a1a89817ddea9661513 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

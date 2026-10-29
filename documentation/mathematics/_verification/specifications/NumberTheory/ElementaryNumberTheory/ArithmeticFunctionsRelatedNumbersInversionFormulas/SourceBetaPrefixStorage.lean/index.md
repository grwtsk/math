# Verification target: Source Beta Prefix Storage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c9202f6cde49b7bc076133d72fa009c43363f6d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant0968cd9ebd4787c755f01ff4b319bf5f85384a617c0429cc356f0c256ac27d78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c9202f6cde49b7bc076133d72fa009c43363f6d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant0968cd9ebd4787c755f01ff4b319bf5f85384a617c0429cc356f0c256ac27d78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant0968cd9ebd4787c755f01ff4b319bf5f85384a617c0429cc356f0c256ac27d78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisorprefix.md) | 27 | `declaration-track:b8a79ab53814bb8fb2f3531ce6bc21ac7318c05416f93bfc98582d2a06e949ed` |
| 2 | `def` | [divisorMean](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisormean.md) | 31 | `declaration-track:369187303fd3d9473203ffffb5548a4536d050bfe62c8d402529d7237e281e77` |
| 3 | `def` | [divisorOscillation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisoroscillation.md) | 35 | `declaration-track:e30c223e6f51a6af138482998db827dc1fab881595caef1eadab4fa220db4167` |
| 4 | `def` | [divisorStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisorstorage.md) | 39 | `declaration-track:6a5ee37cbd5dafa8dcc909e6ebb8687ecfae23a2496cce38de4f05f4c2c2cdba` |
| 5 | `def` | [centeredPrefixMean](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/centeredprefixmean.md) | 43 | `declaration-track:8f81cc56b0c751d9e122d1f18d4618d630e268d8dbf910b16cce297bdc94552d` |
| 6 | `theorem` | [cast_mod_div](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/cast-mod-div.md) | 46 | `result-track:d99236fed92cf08ffe5dcf4edc102e2fb691514e137a0ff2d2de09034a7b4ce9` |
| 7 | `theorem` | [divisorPrefix_eq_neg_floorDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisorprefix-eq-neg-floordiscrepancy.md) | 56 | `result-track:1f617b1cb9bdac1042aa7742b98655a7f68e8ab0180dbbe496a85029891fb7df` |
| 8 | `theorem` | [divisorStorage_succ_sub](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisorstorage-succ-sub.md) | 63 | `result-track:532923dec3ca788fab34c2bc610af40e2c4ac98971af3262f653d0a2b10d0a23` |
| 9 | `theorem` | [divisorPrefix_eq_mean_add_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisorprefix-eq-mean-add-storage.md) | 90 | `result-track:efd36920089dfe49e9c2bebee9356f34bad77a7c8db5ae26df0946f280b689fe` |
| 10 | `theorem` | [divisorStorage_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisorstorage-bounds.md) | 100 | `result-track:898c64edaf428f0f31a877f4582efe8d752ec4098e0abe23b262926340d7b522` |
| 11 | `theorem` | [divisorStorage_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisorstorage-abs-le.md) | 115 | `result-track:bbc1dc695161d8c6e150f951f4271090aa692696b778877bd78be21541b092a9` |
| 12 | `theorem` | [divisorPrefix_weighted_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisorprefix-weighted-abel.md) | 122 | `result-track:d32227a7ef3feb1fee8b986afe380687ee691028a2f3aa534c80ddeb50e214a8` |
| 13 | `theorem` | [actual_centered_prefix_eq_divisor_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/actual-centered-prefix-eq-divisor-prefix.md) | 155 | `result-track:ca67b1c2a8b307c3748c268e116510538aad77b75c2203ac49e043ba36ea5141` |
| 14 | `theorem` | [moebius_floor_convolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/moebius-floor-convolution.md) | 168 | `result-track:626f59cf0eb769d4a83080f219482827eebbcb4b94ba83c154f73a02901f56b6` |
| 15 | `theorem` | [divisorMean_eq_quotient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/divisormean-eq-quotient.md) | 190 | `result-track:4f7c409444b804b0414570a36087c8d673669353548e4d00ebc507761098c502` |
| 16 | `theorem` | [centeredPrefixMean_eq_actual_arithmetic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/centeredprefixmean-eq-actual-arithmetic.md) | 200 | `result-track:281b40d6bbc042b94e54cf36ece8173dd977f98b9f4c41e57b718ff8d984870d` |
| 17 | `theorem` | [actual_centered_prefix_eq_mean_add_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/actual-centered-prefix-eq-mean-add-storage.md) | 222 | `result-track:87ae91e8af613723e3cd8f657f7a1862da53cdcbb83cfeb35c1601acea36a2c2` |
| 18 | `theorem` | [actual_anchor_compensation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/actual-anchor-compensation.md) | 238 | `result-track:4b0d0a92fbb064e570ed77f88b728de9a6baefb96154109e3e0698ec0539c77a` |
| 19 | `theorem` | [signed_storage_abs_budget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/signed-storage-abs-budget.md) | 244 | `result-track:d3abc4ee108230069f84843e4045390530a5bc5fd2b3f87380326bb91d1c985e` |
| 20 | `theorem` | [signed_storage_abs_coarse_budget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceBetaPrefixStorage.lean/declarations/signed-storage-abs-coarse-budget.md) | 256 | `result-track:0e343eab4fabea97b377badfa619b2272b63b5139918f73f72e1d767211ee587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d441d290b5728653e1977c39445877af910c1b8a872bae832f66c3819f203d79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant0968cd9ebd4787c755f01ff4b319bf5f85384a617c0429cc356f0c256ac27d78.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/04SourceBetaPrefixStorage/Variant0968cd9ebd4787c755f01ff4b319bf5f85384a617c0429cc356f0c256ac27d78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

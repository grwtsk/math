# Verification target: Aux Results Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "944ea09b9f9820be0a501d707bce9b856b785b93",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/AuxResultsEdition2.lean/index.md) · [Full source](../../../../NumberTheory/AuxResultsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `944ea09b9f9820be0a501d707bce9b856b785b93`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_factors_of_mult](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/prod-factors-of-mult.md) | 24 | `result-track:3a1142071bdb8e1536161e4afaede03920c8456731cabb510b38ca4bbdfe449b` |
| 2 | `theorem` | [sum_over_dvd_ite](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/sum-over-dvd-ite.md) | 33 | `result-track:d97d420675cbb51877294ff4d6f2af1afed83bfd1c6989a5006944a5cf2746f0` |
| 3 | `theorem` | [ite_sum_zero](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/ite-sum-zero.md) | 38 | `result-track:b0d1db4841d153b872cd6d1d35dc6060746cdadb65d5c9839beb6ab2515569be` |
| 4 | `theorem` | [conv_lambda_sq_larger_sum](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/conv-lambda-sq-larger-sum.md) | 42 | `result-track:9506eedc4bfbf9f1f5aa0167c700d40d6f0a66bd3137a5a90224205870bad969` |
| 5 | `theorem` | [moebius_inv_dvd_lower_bound](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/moebius-inv-dvd-lower-bound-source-edition-2.md) | 61 | `result-track:b931fadeed972265fa76f3cb99804bc4f26e54297d7573f55480ec3eb1b37530` |
| 6 | `theorem` | [moebius_inv_dvd_lower_bound'](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/moebius-inv-dvd-lower-bound.md) | 84 | `result-track:737730006ed256bc6748183c04a5384e5999d8f5129ec64e4e22543a4e594817` |
| 7 | `theorem` | [moebius_inv_dvd_lower_bound_real](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/moebius-inv-dvd-lower-bound-real.md) | 90 | `result-track:488ea59d2bd83ec9fcec6739877950fd6ffa896187a582c01c98e318f27238f8` |
| 8 | `theorem` | [multiplicative_zero_of_zero_dvd](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/multiplicative-zero-of-zero-dvd.md) | 96 | `result-track:e5658dedaddf77f7e3cf2cf10a22aed715300637d33bcd47e77f389e01c5de22` |
| 9 | `theorem` | [div_mult_of_dvd_squarefree](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/div-mult-of-dvd-squarefree.md) | 102 | `result-track:7c7bab585b95b90e3b38752f14d86c72ef574345be19eb374d6396bf590eb3d2` |
| 10 | `theorem` | [inv_sub_antitoneOn_gt](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/inv-sub-antitoneon-gt.md) | 110 | `result-track:7531b18f9248b6f559cb88ec0e11bede3a542f0fa8dc4c67668f68431b523566` |
| 11 | `theorem` | [inv_sub_antitoneOn_Icc](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/inv-sub-antitoneon-icc.md) | 118 | `result-track:756c55eae0646a2de38b486d7780286a3750a2cafad92118064881c3c9542c4f` |
| 12 | `theorem` | [inv_antitoneOn_pos](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/inv-antitoneon-pos.md) | 126 | `result-track:38b81e89e1ce45e50313e376b512db35851e2be81fd06dd5c95e8ff351500562` |
| 13 | `theorem` | [inv_antitoneOn_Icc](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/inv-antitoneon-icc.md) | 130 | `result-track:52f007eb4471bcfa86c6faf7be63d48d8c6e177522a4f15adcbbd98c27c51c8d` |
| 14 | `theorem` | [log_add_one_le_sum_inv](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/log-add-one-le-sum-inv.md) | 135 | `result-track:af2b791f55308ccddb8c999427de55807bf778747dd0376e9507c503b3ac8c9b` |
| 15 | `theorem` | [log_le_sum_inv](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/log-le-sum-inv.md) | 146 | `result-track:35f6087ba4de3960d323cba353785b80d5de4b90dd6ac6323b90fc3212d13932` |
| 16 | `theorem` | [sum_inv_le_log](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/sum-inv-le-log.md) | 156 | `result-track:0feaaaab49cc8d3eedebbc8929f5e3bbe817363c73b2e4e0afef8251153e5f2f` |
| 17 | `theorem` | [sum_inv_le_log_real](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/sum-inv-le-log-real.md) | 175 | `result-track:63adf79c5453b1d1567364fe45baca13a67c7d5c2adabd1f55456dfdf269ad3e` |
| 18 | `theorem` | [sum_pow_cardDistinctFactors_div_self_le_log_pow](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/sum-pow-carddistinctfactors-div-self-le-log-pow.md) | 185 | `result-track:bd0eebcf15072e4ab399a01781586420067245efc15892cbb82b374f95ce7858` |
| 19 | `theorem` | [sum_pow_cardDistinctFactors_le_self_mul_log_pow](../../../../NumberTheory/AuxResultsEdition2.lean/declarations/sum-pow-carddistinctfactors-le-self-mul-log-pow.md) | 253 | `result-track:1d41ebf61e5af957586128168050dcc091f0478603a8dce9606673cbd5d958d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bb8d7a645f5cb0dbd2bf1cf8eb9638dbc39079b57fbfd5d31ff46848a012c55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantdfccc4d3a9feb4d4a1c0c5ba09571ef73faa2868846b747fa9f48d3e8f2c303f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

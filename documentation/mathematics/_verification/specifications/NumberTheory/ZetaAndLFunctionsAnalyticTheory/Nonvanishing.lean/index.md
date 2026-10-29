# Verification target: Nonvanishing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "578c80f866368f9167a44404c0c4bc09387509b6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `578c80f866368f9167a44404c0c4bc09387509b6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.DirichletContinuation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Positivity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaMul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/zetamul.md) | 71 | `declaration-track:79d08b80fbe7d805294094cfcacc395a44cebfae3026762960545b0533d87829` |
| 2 | `lemma` | [isMultiplicative_zetaMul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/ismultiplicative-zetamul.md) | 75 | `result-track:f2699ce028979e30fc54bd381f2052c8ebdfdc1c345a975ac34d93f9eb559ad5` |
| 3 | `lemma` | [LSeriesSummable_zetaMul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lseriessummable-zetamul.md) | 78 | `result-track:79615eb7eb4e1350890f9512e37e3965d00222b9c1556feb07374ff017cc52d9` |
| 4 | `lemma` | [zetaMul_prime_pow_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/zetamul-prime-pow-nonneg.md) | 85 | `result-track:88ff81d155717b54c7c7f6813f62261eff72f63ccdc1c6ffce4f5a2895f62346` |
| 5 | `lemma` | [zetaMul_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/zetamul-nonneg.md) | 101 | `result-track:6b4de4f3a783bdf6c0591e364ca4e67c18dcdc40f2eb709f1b6121dad98878a4` |
| 6 | `structure` | [BadChar](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/badchar.md) | 121 | `declaration-track:c7829cf3830fdd9913309e6f8812ffbd7e048ad870ac944aadd8dd2fee1efdec` |
| 7 | `def` | [F](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/f.md) | 136 | `declaration-track:caf84fae1da0702b453c7f1be3f95e5afd2cbcd2de9532a7636e4233d8627f61` |
| 8 | `lemma` | [F_differentiableAt_of_ne](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/f-differentiableat-of-ne.md) | 139 | `result-track:a4b1589964f8208f471b8398d92f69ec83a67c7658e7a75ddcaf84c85dcb6106` |
| 9 | `lemma` | [F_eq_LSeries](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/f-eq-lseries.md) | 146 | `result-track:73062b5bbc713ce06a1c09c30c2c96f697906a966e4257acf53e065348d7c2b1` |
| 10 | `lemma` | [F_differentiable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/f-differentiable.md) | 160 | `result-track:6242b4c254c68dab1d92da27b1b53d2bd8017f3721a17c96948844066b6fd0eb` |
| 11 | `lemma` | [F_neg_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/f-neg-two.md) | 185 | `result-track:6b7ccb61dee25ff5ad8cb7f9ed2b0c2813d55071e40bc3fe4c911bace6fba656` |
| 12 | `theorem` | [LFunction_apply_one_ne_zero_of_quadratic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lfunction-apply-one-ne-zero-of-quadratic.md) | 195 | `result-track:29a2ff07783a3b666c0b4c7a97a4419c8ebd3e20dc417eeb7cb2abf8107c76a5` |
| 13 | `lemma` | [re_log_comb_nonneg'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/re-log-comb-nonneg-source-edition-2.md) | 216 | `result-track:d4fe5029b3cd2ff00dda9c233d92dc9a45a4a66add913d631fe83e991c5d5030` |
| 14 | `lemma` | [re_log_comb_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/re-log-comb-nonneg.md) | 237 | `result-track:c81bd9552e96f0935da891e6ff97961919588ba2afeef7e227bdb903b77bfc45` |
| 15 | `lemma` | [summable_neg_log_one_sub_mul_prime_cpow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/summable-neg-log-one-sub-mul-prime-cpow.md) | 264 | `result-track:f16bb6d039ae19ecc01a85b11836c17a681ecbbb30aedf6a0ce183e6349e6cb3` |
| 16 | `lemma` | [one_lt_re_one_add](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/one-lt-re-one-add.md) | 273 | `result-track:41099fc415314424a728b0bc2737dd1ddb6268abd9817634e3f116fb0861ae91` |
| 17 | `lemma` | [norm_LSeries_product_ge_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/norm-lseries-product-ge-one.md) | 281 | `result-track:8e44430076e18376ae8a2717b775635a9f26967f305140e006cb333aa32eed5a` |
| 18 | `lemma` | [norm_LFunction_product_ge_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/norm-lfunction-product-ge-one.md) | 304 | `result-track:9a45e460ba45753b6a39585d10e58c802fd94c910a63b7b046046391fcb07890` |
| 19 | `lemma` | [LFunctionTrivChar_isBigO_near_one_horizontal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lfunctiontrivchar-isbigo-near-one-horizontal.md) | 312 | `result-track:6f2189da7516956fab3dc872cf7430b402fb1ff25a6f2db84d6f5506ea76395e` |
| 20 | `lemma` | [one_add_I_mul_ne_one_or](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/one-add-i-mul-ne-one-or.md) | 325 | `result-track:57fb9815f8b5728deb12c57d6c81ae427220ebbe9a9f09f8c145c5bb1959f150` |
| 21 | `lemma` | [LFunction_isBigO_horizontal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lfunction-isbigo-horizontal.md) | 330 | `result-track:5830f44ec7c12d1e37570a616e702a19c72e838eb56ad1287544ca00858a8003` |
| 22 | `lemma` | [LFunction_isBigO_horizontal_of_eq_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lfunction-isbigo-horizontal-of-eq-zero.md) | 338 | `result-track:48b9b39175ecfab92b49c9f36de550a69a7a9a4ed1ddba090319ce2cb05a1dc8` |
| 23 | `lemma` | [LFunction_ne_zero_of_not_quadratic_or_ne_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lfunction-ne-zero-of-not-quadratic-or-ne-one.md) | 349 | `result-track:31b75ca2182a4d0be4e95bbcf79ef43eabcf6e7e3b38d20a0b57800602ce2e5f` |
| 24 | `theorem` | [LFunction_ne_zero_of_re_eq_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lfunction-ne-zero-of-re-eq-one.md) | 383 | `result-track:809c0f5103a816b7fc06da10fae1e8d211faeb8b7a579bdec3f970e7c83e0e01` |
| 25 | `theorem` | [LFunction_ne_zero_of_one_le_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lfunction-ne-zero-of-one-le-re.md) | 396 | `result-track:9129eff4c9acf0645e96ff81c6595a2511862432df8500235c8f9c79e75cfed4` |
| 26 | `theorem` | [LFunction_apply_one_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/lfunction-apply-one-ne-zero.md) | 404 | `result-track:9090b67e488a28d1cd25b0f3b7d0cbfef41693955d1196889ecef466b5c34f7e` |
| 27 | `lemma` | [_root_.riemannZeta_ne_zero_of_one_le_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Nonvanishing.lean/declarations/root-riemannzeta-ne-zero-of-one-le-re.md) | 409 | `result-track:8ebb53f81e0e35b602666fb1ac284811cb2ad3fd84b41cc6ae44670b7cf09647` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=022b6b1eab6d24f84defc96805784a222316253003a8c3aa114d5e4cac8f3c47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Nonvanishing/Variantfee46ff7be0a1b5ff606753682294b362c0ffa4bc97e5d8d43eece8be11b7026.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

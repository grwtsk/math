# Verification target: Actual Mangoldt Laplace Attempt01 Namespaced Mangoldt Weight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "265ab4b58104afaa61109688007e7d6ea86c07c2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante98c46e25c3bc227216ce1c6a24a57eb57aef7e530d2efd5ee9152fbfbb0894a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `265ab4b58104afaa61109688007e7d6ea86c07c2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante98c46e25c3bc227216ce1c6a24a57eb57aef7e530d2efd5ee9152fbfbb0894a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante98c46e25c3bc227216ce1c6a24a57eb57aef7e530d2efd5ee9152fbfbb0894a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/mangoldtweight.md) | 27 | `declaration-track:44517b87587229229c140cffe1bbda34282f356daf787e7a8ba28f388810ffce` |
| 2 | `def` | [laplaceAtom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/laplaceatom.md) | 30 | `declaration-track:ede056e871cfd6417e9718cc19e87bfeff228ef32a1b0eaf4ed489f2b2d1eceb` |
| 3 | `theorem` | [onset_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/onset-pos.md) | 34 | `result-track:ec31aa80b0a21f98d9b17083b6fe51a2ded1e81f2108b7287c781be3a6f18bb5` |
| 4 | `theorem` | [weight_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/weight-nonneg.md) | 37 | `result-track:7902ce19532d2c9694aa7c99405de100641df86d9dea3eee69dcae770e7349f1` |
| 5 | `theorem` | [atom_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atom-nonneg.md) | 41 | `result-track:837157018dca41f14dc9636677d26cc8a16550cb438d7813ff9cde55c4a5b0eb` |
| 6 | `theorem` | [atom_measurable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atom-measurable.md) | 44 | `result-track:97c64479522cad36964f43284bf492662e127662a23219ee0cddf99cd7938e9e` |
| 7 | `theorem` | [atom_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atom-integrable.md) | 50 | `result-track:470dbce3f8e7a68a3098596b85bd4c2116914a41b589b22303c036731b50b3e4` |
| 8 | `theorem` | [atom_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atom-integral.md) | 57 | `result-track:3971904865b4393b5218807d3c1f5bf8f40057fb71ba5976988f7dccce900f4c` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/weighted-exp-eq-norm-term.md) | 65 | `result-track:bab33db360523fd982ab405b997eba4bd5690064a08d41108edc30b9503ce609` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atom-norm-integrals-summable.md) | 78 | `result-track:602fb4f742ae07400b07b60fd282398cfbdcb5f2cbc87b94f89d065547895ed6` |
| 11 | `theorem` | [onset_closed_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/onset-closed-iff.md) | 91 | `result-track:c64ea298290f3dfe0e79a7b082c0bbbcc835e191fd448002323c0962102370de` |
| 12 | `theorem` | [atom_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atom-zero-outside.md) | 96 | `result-track:26f33a3a6ee9950c505e6074e1c8f033762aadcb16ca75f7ea476a21a1003b45` |
| 13 | `theorem` | [atoms_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atoms-summable.md) | 105 | `result-track:404dfcd45430266be20f81ece1127dd0ec6d31318ed278910c68b8195a388919` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atoms-tsum-eq-actual.md) | 108 | `result-track:e65130e1acd31e1a8ac1f2ec6d25854a0b7080bf46a2e14133801d37172afd55` |
| 15 | `theorem` | [atoms_tsum_eq_indicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atoms-tsum-eq-indicator.md) | 134 | `result-track:b0264c783b70e9ed64270b1d78a692ba826db6fa9243d21ef70d7d614cea3357` |
| 16 | `theorem` | [atoms_integrals_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atoms-integrals-summable.md) | 148 | `result-track:30058c530b470d612ed4d7b42726a2f3fd141efe516b37dab90f18e316be94bd` |
| 17 | `theorem` | [atoms_lintegral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/atoms-lintegral.md) | 153 | `result-track:532677b58f7f3d817346ec45df780692e806bcd3a892c53709fe9a7399426ec3` |
| 18 | `theorem` | [actual_prefix_laplace_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/actual-prefix-laplace-integrable.md) | 171 | `result-track:062bb15763bb8f891f8e77f8b84c778f6b18c343b29b5bbaac884f07393dc053` |
| 19 | `theorem` | [actual_prefix_laplace_eq_tsum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/actual-prefix-laplace-eq-tsum.md) | 181 | `result-track:b5deae3de6860322ed01d15fe79f77dad085fce6942e89b750eadf43c03aafc5` |
| 20 | `theorem` | [weighted_exp_eq_term](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/weighted-exp-eq-term.md) | 190 | `result-track:7e07d4ed805103b1977e6709e64f4fe63f80fa707900c37219708f3c07442949` |
| 21 | `theorem` | [actual_prefix_laplace_eq_LSeries](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualMangoldtLaplaceAttempt01NamespacedMangoldtWeight.lean/declarations/actual-prefix-laplace-eq-lseries.md) | 202 | `result-track:52869e40bf6e0145586327d657f8de7b0b3ef8f3ca7eb999267a2ece1077df93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=825be7d5e41ed49531d509453e5c9f03eb38def7a17edb5dde21fb6d48fe900a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante98c46e25c3bc227216ce1c6a24a57eb57aef7e530d2efd5ee9152fbfbb0894a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variante98c46e25c3bc227216ce1c6a24a57eb57aef7e530d2efd5ee9152fbfbb0894a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

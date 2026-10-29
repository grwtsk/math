# Verification target: Formal Research Riemann Hypothesis Source Prime Moment Scale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53fd0c9a7705700988494410c2be136e2035ceb1",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53fd0c9a7705700988494410c2be136e2035ceb1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_eq_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/sourcecorrelation-eq-inner.md) | 26 | `result-track:86b183018e166af77c276f725b884a39c5509d9ab99b4799f70f8de711e3043f` |
| 2 | `def` | [correlationScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/correlationscalederivative.md) | 50 | `declaration-track:b94103620c4a93d5aa99e77c0256cc248155c2ef9d3d57c1ddc42812cd1a2523` |
| 3 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/sourcecorrelation-hasderivat-scale.md) | 55 | `result-track:8648c10bdc00b335d60566562d710fdf76ceae9a3a8833de66ab0fc9e7baa413` |
| 4 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/sourcecorrelation-contdiffat-scale.md) | 73 | `result-track:38812a5a405efa02d977fc9ffeacf6378c70d8729388fd293dea75937dd69d69` |
| 5 | `theorem` | [sourceCorrelation_contDiffOn_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/sourcecorrelation-contdiffon-scale.md) | 85 | `result-track:95dc6aefbf86f1a86b58661b5a51058a94f03bd458eb765334bab035400b0a7e` |
| 6 | `theorem` | [closedPrimeWeight_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimeweight-zero-above-cutoff.md) | 90 | `result-track:c30ee24bc6b5a216f585bd7a78283933246ba0bd949a47f29a07c05e684d8c47` |
| 7 | `theorem` | [correlationScaleDerivative_zero_of_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/correlationscalederivative-zero-of-lt.md) | 104 | `result-track:a996edff237d416dd777b10dc6b2e877a655d4bcfd37f7fc0725c8a959d268bb` |
| 8 | `theorem` | [correlationScaleDerivative_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/correlationscalederivative-zero-above-cutoff.md) | 116 | `result-track:b572d39023db4d90eefea31cea035271ca08f81871fbe150e13a56c918e27b2b` |
| 9 | `def` | [closedPrimeMomentFixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemomentfixed.md) | 127 | `declaration-track:168fd7ce64ff60f7350c5a7d04b129941de635b1245321d1cac7410e8b30ce56` |
| 10 | `def` | [firstPrimeMomentFixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemomentfixed.md) | 131 | `declaration-track:c61c1b78fc9b142edb5f646ca2f1785768c842698c586697bd525ccff20b970c` |
| 11 | `theorem` | [closedPrimeMoment_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemoment-eq-fixed.md) | 135 | `result-track:37e46cfca6eb3c3e8348f0233567077d824256ba1ce814df2bdaef02066d7954` |
| 12 | `theorem` | [firstPrimeMoment_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemoment-eq-fixed.md) | 152 | `result-track:79dca28d51dd28ddb30876afb090d23e8f176208896b000c2f93ff76a627cdf1` |
| 13 | `def` | [localUpperCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/localuppercutoff.md) | 171 | `declaration-track:69c4382793138d52c3673253be5c75057b56834f4c5c7d4a56e427dc92657369` |
| 14 | `theorem` | [closedPrimeMoment_eventually_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemoment-eventually-eq-fixed.md) | 174 | `result-track:0cc0219faf9900238cb48606e3d962c19185c52f0733e79c63189c7f2dc74941` |
| 15 | `theorem` | [firstPrimeMoment_eventually_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemoment-eventually-eq-fixed.md) | 181 | `result-track:f4ed5fc43e4110e1fbcfbbf390d4c56c85d604f42933552bcdd1d73dbe20cc36` |
| 16 | `def` | [closedPrimeWeightScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimeweightscalederivative.md) | 188 | `declaration-track:5a3148b392abfb2a56b8a5c6345a470e00aeb2714356aaed6d6f37f2d0ace41b` |
| 17 | `theorem` | [closedPrimeWeight_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimeweight-hasderivat.md) | 192 | `result-track:0a6f62ca2d8be54bdabd3e4f810a87f54c136f96a22eb6d4faa6162450806d37` |
| 18 | `theorem` | [closedPrimeWeight_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimeweight-contdiffat.md) | 199 | `result-track:0f373ea8fe6295837ecac2870491e40a8cd9e454621af036467134227fa5be21` |
| 19 | `theorem` | [closedPrimeWeightScaleDerivative_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimeweightscalederivative-zero-above-cutoff.md) | 207 | `result-track:60af9dfda8a6b91750f76e68db505ca7ee892064b8acdad9a428bd39b2c1d903` |
| 20 | `def` | [closedPrimeMomentScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemomentscalederivative.md) | 213 | `declaration-track:a02e9dc1456a39508ce22ce5c79e73a8386ad20c6e8739b2608fa338147827e2` |
| 21 | `def` | [firstPrimeMomentScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemomentscalederivative.md) | 217 | `declaration-track:25d84052df46e330b84c33b6c2da80650658b41d6c424cb340fa22188f07bf58` |
| 22 | `theorem` | [closedPrimeMomentScaleDerivative_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemomentscalederivative-eq-fixed.md) | 221 | `result-track:6725a56b7dd9c2bd9aab35d3652f305a9e0672b8ff34b3e495dc2e3646a935fc` |
| 23 | `theorem` | [firstPrimeMomentScaleDerivative_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemomentscalederivative-eq-fixed.md) | 237 | `result-track:a54392b5a8789fa2e5cc367c6688928df34978315b1449d874648c3b80cf9964` |
| 24 | `theorem` | [closedPrimeMomentFixed_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemomentfixed-hasderivat.md) | 258 | `result-track:6c8eb0e963f86e279731db5d3034f85bb63086ab4753d8de10675647b61c6c28` |
| 25 | `theorem` | [firstPrimeMomentFixed_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemomentfixed-hasderivat.md) | 265 | `result-track:d10fce3d514d9098cbb84f6246bd898a962be4f6734e4649377a89c8fc82d0bf` |
| 26 | `theorem` | [closedPrimeMomentFixed_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemomentfixed-contdiffat.md) | 273 | `result-track:7f07d769b3ec17f0172aaec44ad0306145ac5935f8848154cfbcdd8ea3fd3135` |
| 27 | `theorem` | [firstPrimeMomentFixed_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemomentfixed-contdiffat.md) | 279 | `result-track:f01bef1451c77eebfc7d64e2446be21ea8bf9afd154c1ff31ed7b5e3497388ab` |
| 28 | `theorem` | [closedPrimeMoment_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemoment-hasderivat.md) | 285 | `result-track:e4a6c41961ffb8642828476b817fa362e22c0c6f32eed8d32288c3e14347486c` |
| 29 | `theorem` | [firstPrimeMoment_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemoment-hasderivat.md) | 294 | `result-track:9539d19cdfd25d1ee211a776190afcc0745e048eb4cd52216dc7a5e62c48f825` |
| 30 | `theorem` | [closedPrimeMoment_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemoment-contdiffat.md) | 303 | `result-track:afdbee0a520ee6dc384803219134c2d44293fea5d432c1bad0f0070ee0da46bd` |
| 31 | `theorem` | [firstPrimeMoment_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemoment-contdiffat.md) | 309 | `result-track:2a37a0ce8f733916b84eadff21d2345aeec9ef27e4482de2b28304626af3b6c4` |
| 32 | `theorem` | [closedPrimeMoment_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemoment-contdiffon.md) | 315 | `result-track:2ec54d5b2197e0e77d4a3727369a6e6a988a31385db6e38f0e0d9df4979fee7f` |
| 33 | `theorem` | [firstPrimeMoment_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemoment-contdiffon.md) | 319 | `result-track:2dd0203a5f8664d0fd90e7c631aff84e84893dd0ca3dc2eae342645687085eca` |
| 34 | `theorem` | [mertensResidual_eventually_eq_closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/mertensresidual-eventually-eq-closedprimemoment.md) | 323 | `result-track:53e5007171716ac967f3603e1008400a67c1ee211f17d4147637d0e7410e58bb` |
| 35 | `theorem` | [mertensResidual_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/mertensresidual-hasderivat.md) | 329 | `result-track:23724022c1c8eb48306f0598974dd9adade96b1e8526482e9ee16552032b085a` |
| 36 | `theorem` | [mertensResidual_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/mertensresidual-contdiffat.md) | 335 | `result-track:0749e4db7e7fb3527efaed30b5b759f40cf2ab45a05755a747b435aab2c901b2` |
| 37 | `theorem` | [mertensResidual_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/mertensresidual-contdiffon.md) | 341 | `result-track:c1c5d4d2cc2119c7c1b4788d76f3098a40412a5dd88b483395acb7a11f2b36a9` |
| 38 | `theorem` | [correlationScaleDerivative_zero_of_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/correlationscalederivative-zero-of-le.md) | 345 | `result-track:950bc99b7d368aa2d54ac70a8786c1e115d2c31219ae98961640fb282d01ed31` |
| 39 | `theorem` | [closedPrimeWeight_zero_at_birth](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimeweight-zero-at-birth.md) | 359 | `result-track:8f08cf610f9943f3110b71baa1b88fa2c75a6e3ce188cb03b911b5ff6be7b779` |
| 40 | `theorem` | [closedPrimeWeightScaleDerivative_zero_at_birth](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimeweightscalederivative-zero-at-birth.md) | 367 | `result-track:86d2f6a6e3c19ee1f51c74b1a17a905c999996dc151a5ba3562e13ecb74f5c52` |
| 41 | `theorem` | [closedPrimeMoment_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemoment-deriv.md) | 375 | `result-track:7df62b067fdb8c1a3e2dd98a535c967e9202d76aaebecedcab846f9b9585c799` |
| 42 | `theorem` | [firstPrimeMoment_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemoment-deriv.md) | 380 | `result-track:153e489384a87738c28ea2fb69fad1374518aa093ce3cfade77f8f3a4ed8c51f` |
| 43 | `theorem` | [closedPrimeMomentScaleDerivative_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/closedprimemomentscalederivative-continuouson.md) | 385 | `result-track:85758083f638084ba868a7057cd677541498ad9a226ac497851d4e365889b7bb` |
| 44 | `theorem` | [firstPrimeMomentScaleDerivative_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/firstprimemomentscalederivative-continuouson.md) | 392 | `result-track:538c2e67f37d46a196f368201876dacd8946e240ab23abf04390b36248d8a621` |
| 45 | `theorem` | [mertensResidual_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FormalResearchRiemannHypothesisSourcePrimeMomentScale.lean/declarations/mertensresidual-deriv.md) | 399 | `result-track:035dc203730691a5b307936b6a83c00a73b9b226b89c226cb561a3ef7651ec23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7fc5f3767d7aac4026db57a0eb748c17c6caede75994fa379de9ee7f9cc1bf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

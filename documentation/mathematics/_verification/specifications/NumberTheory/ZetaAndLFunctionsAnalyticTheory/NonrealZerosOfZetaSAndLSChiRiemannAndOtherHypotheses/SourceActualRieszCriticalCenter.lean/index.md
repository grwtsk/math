# Verification target: Source Actual Riesz Critical Center

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "117e5d6988dc3d927d95ce913978961c48353803",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant6d77f2e2d9337bddfc8c9bdd78160e81b804c59d710226abddea9465cc51e58d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `117e5d6988dc3d927d95ce913978961c48353803`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant6d77f2e2d9337bddfc8c9bdd78160e81b804c59d710226abddea9465cc51e58d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant6d77f2e2d9337bddfc8c9bdd78160e81b804c59d710226abddea9465cc51e58d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `ActualCriticalOrdinateBudget` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.XiLogDeriv` — import line 3; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.GammaRBracket` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRieszCriticalNumerator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualrieszcriticalnumerator.md) | 22 | `declaration-track:1c218a082bd3927de7024305f189eec83f472e1ecc181489879ab2b203f2c2b0` |
| 2 | `def` | [actualRieszLimitingLinearCenter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualrieszlimitinglinearcenter.md) | 26 | `declaration-track:9b3e220381893219a21cc7cfa0be538d0433ee20f8eb6c77e3fe9a3e64f134be` |
| 3 | `def` | [actualRieszLocalConstantCenter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualrieszlocalconstantcenter.md) | 29 | `declaration-track:47a1a639a6b345f35c7f832de45720df3eb248b04806b23fa5ecfe3010aff55c` |
| 4 | `def` | [actualRieszCriticalRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualrieszcriticalregularization.md) | 32 | `declaration-track:1b0205afabc77adc38526cf0d647ac4efbe386c214a88a3740e8b2edd015be43` |
| 5 | `theorem` | [actualCompletedZeta_logDeriv_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualcompletedzeta-logderiv-half.md) | 36 | `result-track:98652fcb932cb98540ca6d02204e23af6ac78c3aced427b2a6b8d00b0c762162` |
| 6 | `theorem` | [actualZeta_logDeriv_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualzeta-logderiv-half.md) | 44 | `result-track:3f564ed6e47e7d3e0a68556d8a563703d6db4c64ce6e229d49953534e9f97bbf` |
| 7 | `theorem` | [actualRieszCriticalNumerator_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualrieszcriticalnumerator-zero.md) | 57 | `result-track:e4aab68d5d9c9f720adb44a50661f572e5985738a4ee66fb07d449142b71d3ef` |
| 8 | `theorem` | [actualRieszCriticalNumerator_analyticAt_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualrieszcriticalnumerator-analyticat-zero.md) | 66 | `result-track:8aec7ce4775a3d7de5b251c91d39b93020c260b253e53b270ed92433caf03b82` |
| 9 | `theorem` | [actualRieszCriticalRegularization_analyticAt_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualrieszcriticalregularization-analyticat-zero.md) | 88 | `result-track:ddff3757fb0b509b0208cd1df23b929866514b7c713bcb8abfcd31d48f148339` |
| 10 | `theorem` | [actualRieszCriticalRegularization_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualrieszcriticalregularization-eq.md) | 95 | `result-track:979b6b2f88321e8e36dfcab4240c3c8b49a27c16a957ac6c00afabd2470c4243` |
| 11 | `theorem` | [actualRiesz_finite_center_payment](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualriesz-finite-center-payment.md) | 106 | `result-track:d51e9d2ab6fd2d1e1c33f49bc853fcfeb64dbfa5044999fd6810aec58533b720` |
| 12 | `theorem` | [actualRiesz_finite_center_payment_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszCriticalCenter.lean/declarations/actualriesz-finite-center-payment-bound.md) | 113 | `result-track:9e469dda09575b4ca5e275a95dbec6063ba8bd7b817caf7b4852985dd886c7ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43bc0eebfb4645f224a66f3dbefd07a1ebdb4a1005c63a7ad41ffc5e28a22945 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant6d77f2e2d9337bddfc8c9bdd78160e81b804c59d710226abddea9465cc51e58d.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/SourceActualRieszCriticalCenter/Variant6d77f2e2d9337bddfc8c9bdd78160e81b804c59d710226abddea9465cc51e58d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

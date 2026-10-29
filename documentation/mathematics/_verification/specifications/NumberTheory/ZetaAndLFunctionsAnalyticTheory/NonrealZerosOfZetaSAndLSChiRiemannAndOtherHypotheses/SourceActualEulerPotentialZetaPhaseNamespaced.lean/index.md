# Verification target: Source Actual Euler Potential Zeta Phase Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c85af3229c08dc18c0d5dec0e345ac71e7e61cea",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c85af3229c08dc18c0d5dec0e345ac71e7e61cea`.

Source path: `GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEulerPotentialPhase` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/coeff.md) | 25 | `declaration-track:134576dd7f7b3a43362a99bc77e2cd3f5a3d50976785427ae277381d0dd703f7` |
| 2 | `theorem` | [coeff_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/coeff-norm-le.md) | 28 | `result-track:a6aaf8bc4937a25da1029889d93592777daeb280b256d4fe550b04be809fbab8` |
| 3 | `def` | [actualFullPrimeLogPotential](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/actualfullprimelogpotential.md) | 40 | `declaration-track:c9d47a9ec05c1c10407c2071192806079ec6c6584735469201556bc0cf590455` |
| 4 | `theorem` | [actualFullPrimeLogPotential_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/actualfullprimelogpotential-summable.md) | 43 | `result-track:38bb7881630dc683f3dd3a55323430283f11219b9f76965535654d28896741d8` |
| 5 | `theorem` | [actualFullPrimeLogPotential_exp_eq_zeta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/actualfullprimelogpotential-exp-eq-zeta.md) | 49 | `result-track:8dad6dac2f291cf7476b7a4a132d6745d94e6b90361e03bb39d738ff43c7d6b4` |
| 6 | `theorem` | [term_eq_exp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/term-eq-exp.md) | 59 | `result-track:10646064d1d633916dae22bb6397a8f91d480cb352580ba50b3b50eec0f8d70b` |
| 7 | `theorem` | [actualClosedPrimeLogPotential_tendsto_full](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/actualclosedprimelogpotential-tendsto-full.md) | 73 | `result-track:e97cab98312cfe6ed9fc85fea71d4df27ceda875a6de91b2265629a912ab4f94` |
| 8 | `theorem` | [actualFullPrimeLogPotential_re_negative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/actualfullprimelogpotential-re-negative.md) | 87 | `result-track:63f441f2216fdc7b2be5fa12d437f34e5efa7eb953672880307d872f8eef41f4` |
| 9 | `theorem` | [actualZeta_norm_at_prime_two_phase_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNamespaced.lean/declarations/actualzeta-norm-at-prime-two-phase-le.md) | 100 | `result-track:ccdeee85635fd27c6335236d857741d7786b07b6fe6fa92d417ecd94b4a4e36a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb2b9c679cf763f30fde3cc90c676676e5460e6225e64c1b907f9e7373e242fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean","GRWTSK/_verification/specifications/NumberTheory/SourceActualEulerPotentialZetaPhase/Variantbfeb741fc3bae8e74990594a61aec384408d55fff5f61f8e841b10dd9d6925f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

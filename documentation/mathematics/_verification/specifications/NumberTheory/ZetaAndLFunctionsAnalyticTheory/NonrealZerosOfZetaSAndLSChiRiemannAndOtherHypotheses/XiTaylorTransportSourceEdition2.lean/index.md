# Verification target: Xi Taylor Transport Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d148863e4a71c038d3409ed384ceb331c875c1b5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d148863e4a71c038d3409ed384ceb331c875c1b5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gammaReal_conjugation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/gammareal-conjugation.md) | 31 | `result-track:96832eaf2578cd41f5ced351633d315b312e187d89f02b873633eef71558d7e5` |
| 2 | `theorem` | [xi_product_on_right](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/xi-product-on-right.md) | 43 | `result-track:c21d15384d51f31b81f976a39d1fd8990b359881b9183180055e1bd647132b1e` |
| 3 | `theorem` | [xi_conjugation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/xi-conjugation.md) | 53 | `result-track:7b95b7874ef6c8d8ee570dcff1eb8e12aedc3dd73d25edc1b357106fe7e20f18` |
| 4 | `theorem` | [iteratedDeriv_conjugate_function](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/iteratedderiv-conjugate-function.md) | 72 | `result-track:22feb5cbf3d2ebe821857fcd0ae2045a52d406d3dffd8cbaca70688fb5a680b5` |
| 5 | `theorem` | [xi_derivative_center_real](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/xi-derivative-center-real.md) | 80 | `result-track:d9da36d80e285259211872c37d6dc1903ecdca2584b6ce33dacd6f405e239154` |
| 6 | `theorem` | [xi_odd_derivative_center](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/xi-odd-derivative-center.md) | 91 | `result-track:9e539440db835b231a7731256270ea876a411736c8d2f3f659d415875108a91b` |
| 7 | `theorem` | [coefficient_as_complex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/coefficient-as-complex.md) | 107 | `result-track:1aa63820ae66ee651af1fedc8e4f4669c20c6bfa8681999425379c3ce8a6f6d2` |
| 8 | `theorem` | [hasSum_full_centered_taylor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/hassum-full-centered-taylor.md) | 117 | `result-track:f2958d2ad2ffc6e5c4f2fc7347de8e57e25bac84d4c1b2061a7c57e36915796b` |
| 9 | `theorem` | [even_index_injective](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/even-index-injective.md) | 128 | `result-track:27d61cba832d7b28a2ad8efc5014150419d5e7e351e4ffde770d91a239c89ba8` |
| 10 | `theorem` | [taylor_term_zero_off_even](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/taylor-term-zero-off-even.md) | 133 | `result-track:231ecb96eaba92950d7e9d3edc2e63ca14b56d540cf64b8c9db2eddabf81a02f` |
| 11 | `theorem` | [hasSum_centered_square](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/hassum-centered-square.md) | 143 | `result-track:4284a914ba552f31322460d47ac8dd920bb13728a8d79e225fad92b899542677` |
| 12 | `theorem` | [exists_complex_square](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/exists-complex-square.md) | 159 | `result-track:43d3677a7052faca18ee576b281f89c521a08bcec77254d9167ad11e77e9c95e` |
| 13 | `theorem` | [centeredSeries_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/centeredseries-summable.md) | 163 | `result-track:c9c4c7142da819cb629e7caceff4d27c814a06afd7dedd22386cb228ac74994f` |
| 14 | `def` | [centeredPowerSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/centeredpowerseries.md) | 169 | `declaration-track:85c40533346c6109b5bc5ce33aaa50a2434ab82fd577275187a36b68373dfcab` |
| 15 | `theorem` | [centeredPowerSeries_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/centeredpowerseries-radius.md) | 173 | `result-track:7857fef9d6189d6b28463651d66eb455643d67c08af78ae6e4564e5112a1b47b` |
| 16 | `theorem` | [centeredPowerSeries_sum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/centeredpowerseries-sum.md) | 182 | `result-track:9acd4d315f158f65c00ff92efcb5ff17fcf07df37c6df4d708a76c1b9290cfc3` |
| 17 | `theorem` | [differentiable_centeredSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/differentiable-centeredseries.md) | 190 | `result-track:1b66ebf4648fc0f9f808093c75acfcb00e99ec3609de400cf5f39cd80eb5e3df` |
| 18 | `theorem` | [centeredSeries_square](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/centeredseries-square.md) | 199 | `result-track:56165fb0a7916f84ce07cef05fa089391a41dc10c1b4af4b2b36c0f7bae8952a` |
| 19 | `theorem` | [taylorDescent](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/taylordescent.md) | 203 | `result-track:cf306f03b0b11f4088cf127f956c080db47e532091ca3f1a4be5e78f73f06f1a` |
| 20 | `theorem` | [centeredSeries_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportSourceEdition2.lean/declarations/centeredseries-zero.md) | 207 | `result-track:2796d87dda58b899d9841dfa6a6300827a5f8bac1c465e4cc24c52a3d2ff9c03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=beb7c6513de458f859764789baf51491c1bf6e96995f27f0a95ab2514e06f058 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Hadamard Log Derivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf68a2107582bf3798e52f8dfe36e2a6e981421b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant195e3968fd1d9f2677ebd2122759736ebc8c419c36be30242d3ff3a97db35914.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf68a2107582bf3798e52f8dfe36e2a6e981421b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant195e3968fd1d9f2677ebd2122759736ebc8c419c36be30242d3ff3a97db35914.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant195e3968fd1d9f2677ebd2122759736ebc8c419c36be30242d3ff3a97db35914.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hadamardGenusOneFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/hadamardgenusonefactor.md) | 20 | `declaration-track:e978134b096a9832a40d79594862b04aa1677dc41fc20956b180257805dd83ca` |
| 2 | `theorem` | [hadamardGenusOneFactor_pair_cancellation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/hadamardgenusonefactor-pair-cancellation.md) | 24 | `result-track:bf58923a37c138761b64134e235baf7368e7ee8f0603b1639603c522eece86cc` |
| 3 | `def` | [centeredHadamardOrbitBlock](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/centeredhadamardorbitblock.md) | 44 | `declaration-track:706fe504d755ea22c23ec62e60de7761c5a87a15d38624047643447bc784ee11` |
| 4 | `theorem` | [centeredHadamardOrbitBlock_base](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/centeredhadamardorbitblock-base.md) | 47 | `result-track:972da8dcd06b45dd8d91f1f8999b67a6ce9ead3b27b939807fea0d60b648f757` |
| 5 | `theorem` | [centeredHadamardOrbitBlock_zero_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/centeredhadamardorbitblock-zero-pos.md) | 52 | `result-track:f5e2c597d9515eb95a6cc697d0f93adb79fc778119e544f2c515cbb2132ccee4` |
| 6 | `theorem` | [centeredHadamardOrbitBlock_zero_neg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/centeredhadamardorbitblock-zero-neg.md) | 57 | `result-track:5b9c4b010bd91f66b257376e79c030864cba7de3ba2ef307586296bb29f30142` |
| 7 | `theorem` | [centeredHadamardOrbitBlock_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/centeredhadamardorbitblock-ne-zero.md) | 62 | `result-track:c0f822b1ae89623981bf6b16840950569113ac6f456568e3a8409e334f09dc09` |
| 8 | `theorem` | [normalized_hadamardGenusOneFactor_pair_cancellation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/normalized-hadamardgenusonefactor-pair-cancellation.md) | 72 | `result-track:2982e1112e694b30eb0b634fef934ee48bb844acd55a874623ad884584ccd02c` |
| 9 | `theorem` | [logDeriv_centeredHadamardOrbitBlock](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/logderiv-centeredhadamardorbitblock.md) | 81 | `result-track:3898e0a97b050c3447f80c4a6a1b50b514c30e49203489e95468b7a6e99b14e0` |
| 10 | `def` | [finiteCenteredHadamardOrbitProduct](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/finitecenteredhadamardorbitproduct.md) | 98 | `declaration-track:3a37b87cb63b1677245a42de6696e5f9d8a8b35484c3c56a878c023998100adf` |
| 11 | `def` | [finiteCenteredHadamardOrbitLogDerivSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/finitecenteredhadamardorbitlogderivsum.md) | 102 | `declaration-track:ac9cd479920b2ed38bcc9a4907d10b4e5db87440b011f186e8fabb043a991921` |
| 12 | `def` | [genusOneZeroLogTerm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/genusonezerologterm.md) | 106 | `declaration-track:450a81ecb9cf547f97abe8ec4a6b614e34b69ce3906fa0a4b8934996618e4516` |
| 13 | `def` | [genusOneZeroLogSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/genusonezerologsum.md) | 110 | `declaration-track:e426cd46e4af8b8a759c7e6268a5ea79fdc399bab08ee29b100a751a51d5f933` |
| 14 | `def` | [centeredHadamardOrbitLogTerm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/centeredhadamardorbitlogterm.md) | 114 | `declaration-track:df01fce3b6874b076fc71b4894bd5733451d868895a165b0ad88a2d8e5cad692` |
| 15 | `def` | [centeredHadamardOrbitLogSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/centeredhadamardorbitlogsum.md) | 119 | `declaration-track:8f2ff02d3406e270c48f356dfabd5097f87b4c6f99931c5cb5e0f3ed22423fac` |
| 16 | `theorem` | [logDeriv_finiteCenteredHadamardOrbitProduct](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/logderiv-finitecenteredhadamardorbitproduct.md) | 123 | `result-track:18ea615ae3ae8a53ae2149b400ba7ea83849239b17d14964c75ea1524caee30a` |
| 17 | `def` | [zetaPoleFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/zetapolefactor.md) | 139 | `declaration-track:a8b847e25f3a26d401984fd10bcefed1d0c53dfee74d72f83c442aaa1b18782b` |
| 18 | `def` | [zetaPiFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/zetapifactor.md) | 144 | `declaration-track:d17b48145bd5c2090cead93e1c1ff32129681e3ea119f20e9e5fce5e26d137f6` |
| 19 | `def` | [zetaGammaFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/zetagammafactor.md) | 148 | `declaration-track:15a94b53ba17171482baba906374cbd569a068dccb9ff42df7e2f9acb40838f2` |
| 20 | `def` | [completedZetaFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/completedzetafactor.md) | 153 | `declaration-track:731fd935027c8eb88c710a57405246240826aa8cbb1087c708dc02366d0082ce` |
| 21 | `theorem` | [logDeriv_zetaPoleFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/logderiv-zetapolefactor.md) | 156 | `result-track:6a67c8df49f3ac8eafaab4a9d37bb712f0b56904776a18e9beda36d4890dc5c5` |
| 22 | `theorem` | [logDeriv_zetaPiFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/logderiv-zetapifactor.md) | 162 | `result-track:4485ac834e33a8111039cacc9aae3649a9affc9a4febeabcca2e4d3cc9b88630` |
| 23 | `theorem` | [logDeriv_zetaGammaFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/logderiv-zetagammafactor.md) | 172 | `result-track:d1cb077b956cf32dfa6e499210019a1ab9e2ff2ac62c84c9266c81702afa2c3b` |
| 24 | `theorem` | [logDeriv_completedZetaFactor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/logderiv-completedzetafactor.md) | 184 | `result-track:465bd981712eefdac181d2f34cef58464d372eb74f3a69842b97bdcfab8b8ea3` |
| 25 | `theorem` | [neg_zeta_logDeriv_eq_neg_completedZeta_logDeriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/neg-zeta-logderiv-eq-neg-completedzeta-logderiv.md) | 230 | `result-track:646d416718138004e582f4542e41b58050b404a14d0a069b207ad1e916658de3` |
| 26 | `theorem` | [neg_zeta_logDeriv_eq_of_completed_hadamard_logDeriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/neg-zeta-logderiv-eq-of-completed-hadamard-logderiv.md) | 245 | `result-track:3fc4aa4e562b29b53775db2796c290f63080de86b695feff1ce5b90760a3a1e4` |
| 27 | `theorem` | [neg_zeta_logDeriv_eq_of_genusOne_hadamard](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/neg-zeta-logderiv-eq-of-genusone-hadamard.md) | 265 | `result-track:5c172bd29d7be56d4051458c3a42fa70422f9272902df35358fa979bc48c4e80` |
| 28 | `theorem` | [neg_zeta_logDeriv_eq_of_centered_orbit_hadamard](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HadamardLogDerivative.lean/declarations/neg-zeta-logderiv-eq-of-centered-orbit-hadamard.md) | 285 | `result-track:a430230063dda58a907fcb7c54f06e3255f6e41e91445adbfacf3f0f509a9a63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b2f6a8722e68fc7d4a6b3182f6f837d3259badc86ff251600c433969d62545e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant195e3968fd1d9f2677ebd2122759736ebc8c419c36be30242d3ff3a97db35914.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant195e3968fd1d9f2677ebd2122759736ebc8c419c36be30242d3ff3a97db35914.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

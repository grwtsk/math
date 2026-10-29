# Verification target: Higher Power Asymptotic Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a1e2b419080e3f9c808bd6970cf5a642ad3a18e",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticAudit/Variant612182f86049d4bace1e0a01aaf7cc623b31708109964095100d38fdaf9c38a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a1e2b419080e3f9c808bd6970cf5a642ad3a18e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticAudit/Variant612182f86049d4bace1e0a01aaf7cc623b31708109964095100d38fdaf9c38a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticAudit/Variant612182f86049d4bace1e0a01aaf7cc623b31708109964095100d38fdaf9c38a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 10; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 11; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 12; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_derivative_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/sourcecorrelation-derivative-intervalintegrable.md) | 38 | `result-track:4d8695bcd1e61838d4456323d8e7be88bc7d465e95f1c5e7a1b726f8021f9cd7` |
| 2 | `theorem` | [sourceCorrelation_deviation_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/sourcecorrelation-deviation-integral.md) | 42 | `result-track:73bfcc700437312654a66ddd79a0a7b5262c7b4ea0253d93f401bc282cc40acf` |
| 3 | `theorem` | [sourceCorrelation_deviation_bound_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/sourcecorrelation-deviation-bound-nonneg.md) | 50 | `result-track:619ec876a90e3bdf836a6abc4892a9b6dbfb78c8221cb128ade2653a79dd882b` |
| 4 | `theorem` | [sourceCorrelation_deviation_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/sourcecorrelation-deviation-bound.md) | 71 | `result-track:dc5e483531598aee870b15a1140b5576b4181a62dc0537a5d3a1a3d1e640895d` |
| 5 | `theorem` | [sourcePrimeWeight_deviation_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/sourceprimeweight-deviation-bound.md) | 78 | `result-track:f147e584f79aa6cbfcb16b68e20e00eb8a6f7c5bfe2a1186f4d325b0b23fab56` |
| 6 | `def` | [integerMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/integermoment.md) | 101 | `declaration-track:de5c36276cd360e5080c5b76726db851cb752e9a13425456fcc7c8c5c5ef8d92` |
| 7 | `def` | [higherMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highermoment.md) | 104 | `declaration-track:4698752beac57af350e6a2386451a9b1cf2d42a564cdaf5b6e7085f5d535ec59` |
| 8 | `def` | [geometricRatio](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/geometricratio.md) | 108 | `declaration-track:5db3ffff126bea73f1526f9ba000d1cd4a2d7c8336652be857d19a72b56bdc4a` |
| 9 | `def` | [exponentMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/exponentmoment.md) | 111 | `declaration-track:7a094ba3b1667ca892216ca0067c8f7754fd7e879534c7702e789e37d3e1f99a` |
| 10 | `theorem` | [integerMoment_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/integermoment-nonneg.md) | 113 | `result-track:622e7440a54746578feca7bf99c90540e17bea1f7fc5f9920547d9bddd26edca` |
| 11 | `theorem` | [higherMoment_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highermoment-nonneg.md) | 117 | `result-track:bafa5e5836794cae487c50adcd95036ee79a24a6a70c6405f5522947c26ede96` |
| 12 | `theorem` | [geometricRatio_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/geometricratio-pos.md) | 121 | `result-track:6bd33adb80bf27e8291505490fa46fb5f502257680f8c935afc7a9b9c9807580` |
| 13 | `theorem` | [geometricRatio_lt_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/geometricratio-lt-one.md) | 123 | `result-track:090a08c18662798f6b94bee5a9b2135a0d23a7baf906e3fc2e0c16299c7ab9b3` |
| 14 | `theorem` | [exponentMoment_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/exponentmoment-nonneg.md) | 126 | `result-track:9570ae37144f9cafe6659106b5f64f3481ee32d9e2a7201552df06a45bd5cfda` |
| 15 | `theorem` | [integerMoment_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/integermoment-le.md) | 129 | `result-track:890ec2f988628f240b329dfb8f1e7b058772397184848af39b266980e63514b4` |
| 16 | `theorem` | [integerMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/integermoment-summable.md) | 148 | `result-track:2bb2f6c88ffa3110a095b08fcde07eaf39d359e997eca264d4924f70b121223e` |
| 17 | `theorem` | [exponentMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/exponentmoment-summable.md) | 152 | `result-track:765440c7704a48ab5d161c5f13abc6d300d0c5bfeff6135cf3c5add0d56bd53a` |
| 18 | `theorem` | [halfPower_pow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/halfpower-pow.md) | 165 | `result-track:d2c34fcd2dda78fb01ea774439b17a882586c3aaa99269741d597a6160d45bd3` |
| 19 | `theorem` | [higherMoment_factorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highermoment-factorization.md) | 172 | `result-track:b279778dd56e2d85f2dc2cfaeb617b08e5b3feee1061e67dec55354d604b64c0` |
| 20 | `theorem` | [higherMoment_le_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highermoment-le-product.md) | 187 | `result-track:c1dc30e57d5080c75b17fc2e695603f2eeb00da8e9b5ec61046140b42c040503` |
| 21 | `theorem` | [higherMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highermoment-summable.md) | 198 | `result-track:7b48f5b5346d26395cdfd2f1f4b7a3f07db6dfcf0185454722cb18e347d3a1f6` |
| 22 | `theorem` | [primeHigherMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/primehighermoment-summable.md) | 209 | `result-track:9326272df5e40d129bc3d71f5595e668dd0ba0fa9009f57fdbc08e49d2fcc34d` |
| 23 | `theorem` | [logLocation_sq_ge_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/loglocation-sq-ge-one.md) | 222 | `result-track:1f1b4db9b852108b01d2800cb5bdaab718a70e5e0b5c1a677c5876be4c94f47b` |
| 24 | `theorem` | [higherWeight_le_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherweight-le-moment.md) | 233 | `result-track:3ac6a4a830f5d43f972c37219c39b62836d00c516fbed1562d3550e0fe12581f` |
| 25 | `theorem` | [primeHigherWeight_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/primehigherweight-summable.md) | 238 | `result-track:a5ce5bf771c0cc87a3404a20d88d35d51ba3e2054fbb87e7fe0f5590db766005` |
| 26 | `def` | [IsHigherPrimePower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/ishigherprimepower.md) | 259 | `declaration-track:108a792b01b0e190c478a2edb91acb1897a2f73eefa953402f97f569ec24430c` |
| 27 | `def` | [higherPrimePowerIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherprimepowerindices.md) | 262 | `declaration-track:a03111e42ad91cc3b3e05cadf807ab306edbe185c0be943779294f4b91cfdf02` |
| 28 | `def` | [higherPrimePowerContribution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherprimepowercontribution.md) | 267 | `declaration-track:d94138176fe9694daf717caa944f61cd2f8e0dddd15385d1a4494c5cec89b402` |
| 29 | `theorem` | [prime_power_representation_unique](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/prime-power-representation-unique.md) | 273 | `result-track:4cf67781e31988106c44eed6c05577063fed59b50bf5e758a8eac1602f516df0` |
| 30 | `theorem` | [primeSquare_not_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/primesquare-not-higher.md) | 279 | `result-track:fc6be099c0754e4e0ecf55d8c9ace2a2941f3d0f322639161ab3bbbe0d504c66` |
| 31 | `theorem` | [primeSquare_not_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/primesquare-not-prime.md) | 287 | `result-track:355b151a2d87801e8d87a01c95803c66e2edf81bd093506210803f8e60d19fd4` |
| 32 | `theorem` | [higher_not_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higher-not-prime.md) | 292 | `result-track:2ec268227b2d87d6758cb7a379cde28c21f7da01a11009a02aaf0085af34dd04` |
| 33 | `theorem` | [nonprime_primePower_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/nonprime-primepower-iff.md) | 297 | `result-track:a47bfc5eaddbafa57040104df67dca06e7374c562c7b1e043a1126488eff2089` |
| 34 | `theorem` | [nonprime_weight_zero_of_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/nonprime-weight-zero-of-outside.md) | 317 | `result-track:5db570a533278649836ebd950dc5de0d7253ed79c8904dd855ee68cb0d51a672` |
| 35 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/primesquare-higher-indices-disjoint.md) | 325 | `result-track:87e9e97b3643e9c515e67dc9ab0d80cdb2b96978a926d899fb78f23cac9cc092` |
| 36 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/properprimepowercontribution-eq-square-add-higher.md) | 333 | `result-track:d663681ad7f8aafdd2e68e11ab937c84b6414bf668f9b8f61c77094980c99a96` |
| 37 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/primepowercontribution-eq-prime-square-higher.md) | 354 | `result-track:6d99f9a7a6ddb20c6979d73b5e65c5d517d6f872c831afff2f115199f7789042` |
| 38 | `theorem` | [eight_higher_not_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/eight-higher-not-square.md) | 362 | `result-track:3d6744405b35f4a48a4a80a7c137fad9ff39eda47cdf55419d53b086cce2d84a` |
| 39 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/eight-mem-higherprimepowerindices-iff.md) | 367 | `result-track:b6ea7543fbefd8334bb4290481a207993726c479958652ba4db8eb26dcf8e9fd` |
| 40 | `theorem` | [sqrt_nat_power](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/sqrt-nat-power.md) | 386 | `result-track:0202c9332f0a50858f77821831e13a5d2b1a4f1025851fae2a8ae221103b07e7` |
| 41 | `theorem` | [higher_prime_power_weight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higher-prime-power-weight.md) | 393 | `result-track:eecf287aea718bbbddcaf88b0a02fc69363bb6904970c74d8fbb811f13113aae` |
| 42 | `theorem` | [higher_prime_power_summand](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higher-prime-power-summand.md) | 400 | `result-track:9c4d4e4a0c514007dceb958964894a2e739548e147cbe928babe8be554e161a5` |
| 43 | `abbrev` | [HigherPowerIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpowerindex.md) | 420 | `declaration-track:bf0fc22d3328f126cf7bb3f04b79dd968ea37bef838b6221a6d3f5644fdd0d9c` |
| 44 | `def` | [powerIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/powerindex.md) | 423 | `declaration-track:aaba6ccea8d19f4d935e20b4fbf9f22b8f9b99e73cd42c506d1ba8e65261b0a9` |
| 45 | `theorem` | [powerIndex_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/powerindex-injective.md) | 426 | `result-track:8dadfe98ad9188add52b6b30bc1c377466819383f68227cf31a97938375666ba` |
| 46 | `def` | [higherPairIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpairindices.md) | 436 | `declaration-track:968b615bc8f9dbb7aa918e719751e3470807701c723f484d386bd6033ab09426` |
| 47 | `def` | [higherSourceTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highersourceterm.md) | 440 | `declaration-track:f2eb9d3ac41d6bd697c7c7fbf4c3d3e772c0c361046ad946aad0e16886b04718` |
| 48 | `theorem` | [powerIndex_isHigher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/powerindex-ishigher.md) | 445 | `result-track:30f8efeb04ff3d38a6f257fd45f380c2b30abfda6e41ceb63d9200f54f22fd20` |
| 49 | `theorem` | [powerIndex_two_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/powerindex-two-le.md) | 449 | `result-track:8478b1cb251fce09008cf0a189d8fd719655f92d1e0cdb9d2a3e4f31c89af05a` |
| 50 | `theorem` | [mem_higherPairIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/mem-higherpairindices-iff.md) | 453 | `result-track:5d4eb4ba79c240246c3dda1821ed1b2c8da3da2a01af3d789d6d813e9d7e6231` |
| 51 | `theorem` | [higherPairIndices_image](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpairindices-image.md) | 460 | `result-track:75e585701da60e6fef01f6b5cb762e3737dde0aa8fdf3e3dee856d373c16a427` |
| 52 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherprimepowercontribution-eq-finite-sum.md) | 475 | `result-track:4864957fe00e6da4fe6a6a647ab5c51386d931200799a6f4402f1862f92c8420` |
| 53 | `theorem` | [higherSourceTerm_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highersourceterm-zero-outside.md) | 485 | `result-track:35eefc1af4abb59265fa8adf8bbbd609c370063b9c2a4d73ba775e74c3348860` |
| 54 | `theorem` | [higherSourceTerm_finite_support](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highersourceterm-finite-support.md) | 500 | `result-track:e278dab73519b7c0d30b4ec2b446df35657bda4724e96900b832e321824f74ba` |
| 55 | `theorem` | [higherSourceTerm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highersourceterm-summable.md) | 506 | `result-track:ed86af06bc269316e664faec105efcbb1952557f30de26368bf5ff69073a624d` |
| 56 | `theorem` | [higherSourceTerm_norm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/highersourceterm-norm-summable.md) | 511 | `result-track:d09041ef73ce4b5296404e53ade366e82d693dc36a9d76a31c4a1b6133c55720` |
| 57 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherprimepowercontribution-eq-tsum.md) | 518 | `result-track:f030c18ab36d9452b57ab65c6b608848625d39e259d95dc67b2a93e6deca2371` |
| 58 | `def` | [higherPowerConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpowerconstant.md) | 545 | `declaration-track:ec2266bd970b49825177be7aeabba3d94f56d795dc7917203dd508162aa6573b` |
| 59 | `def` | [higherPowerSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpowersum.md) | 550 | `declaration-track:de944478e67b146e18b7cbe9ab60544ef082ef774be540e2e7a5536ec4f1ef6e` |
| 60 | `def` | [higherPowerBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpowerbudget.md) | 556 | `declaration-track:bb19e66bde2487969c2694041dd5c88567b7d2220822f901439e8ef47dcf240c` |
| 61 | `theorem` | [higherPowerBudget_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpowerbudget-nonneg.md) | 561 | `result-track:49564e4467f4850afb618dd7d7a96f3171a212298d5a08ade660f1aa1fd0a65d` |
| 62 | `theorem` | [higherPower_correlation_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpower-correlation-summable.md) | 565 | `result-track:526c4d82a39e29d0384023dedc7a9aa0a405d64d8a7d1d35e524bdbdfe803038` |
| 63 | `theorem` | [higherPowerSum_le_constant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpowersum-le-constant.md) | 576 | `result-track:3d2748a5872db8a584f96bfe51b5b684afb3f648cc16a9cbebc781f1e542d784` |
| 64 | `theorem` | [higherPower_deviation_term_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpower-deviation-term-bound.md) | 585 | `result-track:bb413061f3407ebf2678375b802fffe59340d029396dbcc4f404db964b81eb65` |
| 65 | `theorem` | [higherPower_deviation_norm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpower-deviation-norm-summable.md) | 597 | `result-track:2b7c733d7a995954ed81f3f078e83de673570a4e18afd49bd644f95775e44318` |
| 66 | `theorem` | [higherPower_deviation_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpower-deviation-summable.md) | 608 | `result-track:5046145a9890e50ad26c4b178a7680b1cb56c522fd003c86fb1ac5be8cb8a8f4` |
| 67 | `theorem` | [higherPowerSum_sub_constant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpowersum-sub-constant.md) | 615 | `result-track:b3fef0e47e219bf3512fbdae3241676612f3b1bff63ba305d65ed7b68d0f440c` |
| 68 | `theorem` | [higherPowerSum_deviation_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/higherpowersum-deviation-bound.md) | 627 | `result-track:05de261b86afbff88055409fe1384763dfd7b06f431398439cbce0ade870074a` |
| 69 | `theorem` | [actualHigherPower_deviation_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/actualhigherpower-deviation-bound.md) | 652 | `result-track:7616731e17b4a197e052a9af2aaf0d76e7227f7c249fca59f5c31c20b13d4e8d` |
| 70 | `theorem` | [actualHigherPower_le_constant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/actualhigherpower-le-constant.md) | 657 | `result-track:c247f677759eced2d21e7bcd1c79b7f5c917030659b8e431f52b0b69863ed207` |
| 71 | `theorem` | [actual_higherPower_signed_asymptotic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticAuditNamespaced.lean/declarations/actual-higherpower-signed-asymptotic.md) | 662 | `result-track:a063e5c11b24d4bf1a529d06e7f12b57a51004687adc1ec3f1b065bbeb4ac209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42acacfbffc0e7bbe1dd3e75497bb213f6e95843fdf6734decc52ea530bdb911 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticAudit/Variant612182f86049d4bace1e0a01aaf7cc623b31708109964095100d38fdaf9c38a7.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticAudit/Variant612182f86049d4bace1e0a01aaf7cc623b31708109964095100d38fdaf9c38a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

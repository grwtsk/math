# Verification target: Higher Power Asymptotic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d86a63914c1cae8e84787d796f5bd7c5cc25230b",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d86a63914c1cae8e84787d796f5bd7c5cc25230b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean.json)

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
| 1 | `theorem` | [sourceCorrelation_derivative_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/sourcecorrelation-derivative-intervalintegrable.md) | 38 | `result-track:35ce8d341cc51fd795da330e98c8c984e57bf7bfd6c0ee40e8015aeb327764c0` |
| 2 | `theorem` | [sourceCorrelation_deviation_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/sourcecorrelation-deviation-integral.md) | 42 | `result-track:77bf5a2f4df2f9c49415d68d59863d254eafa03ae823f3f4b7eb64b5d52531e9` |
| 3 | `theorem` | [sourceCorrelation_deviation_bound_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/sourcecorrelation-deviation-bound-nonneg.md) | 50 | `result-track:d255915812b7e78e004d4d8b2521c74406e0ff1c95c1f790b92965d5b7ccecb5` |
| 4 | `theorem` | [sourceCorrelation_deviation_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/sourcecorrelation-deviation-bound.md) | 71 | `result-track:3f1f1d613aa96d4ae57ca17391aa31b8b1907590b9d75a0495eb9384b49949c6` |
| 5 | `theorem` | [sourcePrimeWeight_deviation_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/sourceprimeweight-deviation-bound.md) | 78 | `result-track:51ae6b23747b3d232068cf6ab1c00e5e6e6191d979e5d589464b458eb3893352` |
| 6 | `def` | [integerMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/integermoment.md) | 101 | `declaration-track:dc5a88107b81faec9f2d23cf1470970a5a568d2f56558c66dcbf9e5d08f39f5b` |
| 7 | `def` | [higherMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highermoment.md) | 104 | `declaration-track:d33ef8bd97e8535403abfe25828628373d171402162b61b64d3195878ae109a4` |
| 8 | `def` | [geometricRatio](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/geometricratio.md) | 108 | `declaration-track:6a9cce8c00173610fd640f56a5d8660e6576032cdafec9a40690286eb3903755` |
| 9 | `def` | [exponentMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/exponentmoment.md) | 111 | `declaration-track:5977e537306c469b2574acd87985c966dae0966f55287b69224b50e7e5aa7b42` |
| 10 | `theorem` | [integerMoment_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/integermoment-nonneg.md) | 113 | `result-track:6e3a9a5ef673b3b35a8c1b870f7ff4abf17d642c7756f029601b8c78c3b90a8e` |
| 11 | `theorem` | [higherMoment_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highermoment-nonneg.md) | 117 | `result-track:3000dcdc138261a40cb60ed9b6f13e1d0956ef91e79c0c541df0fe251b64ed0e` |
| 12 | `theorem` | [geometricRatio_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/geometricratio-pos.md) | 121 | `result-track:154b0aa965a44e77ed7246d4766d85160409d10e28fe977f898d8d4dfd966446` |
| 13 | `theorem` | [geometricRatio_lt_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/geometricratio-lt-one.md) | 123 | `result-track:9e28c2f606595cc98feddce7027d698acc59dcfbc111a718dfd94eed078f1a36` |
| 14 | `theorem` | [exponentMoment_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/exponentmoment-nonneg.md) | 126 | `result-track:541cb6b6755e5e77eddb30b8fe07074d8a4e72de12af0a0c8882dfe978c3e77b` |
| 15 | `theorem` | [integerMoment_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/integermoment-le.md) | 129 | `result-track:79942ea2b7ec2771e3773b82b325b2c4c49b1f7c4d9d6c91bc9aa68c479fd6df` |
| 16 | `theorem` | [integerMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/integermoment-summable.md) | 148 | `result-track:248f388dc31774b6d54e8d974d3b3ca3eed98d5e2c5b0db6e34353436422616c` |
| 17 | `theorem` | [exponentMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/exponentmoment-summable.md) | 152 | `result-track:ec66ab792d03d25f976ce132cff8e8015fe0ac9c484bb9859996791773b51771` |
| 18 | `theorem` | [halfPower_pow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/halfpower-pow.md) | 165 | `result-track:a0898007febe86bec6cf97a3426ac0496e4061013a2a87d6f76f69c07b86d5d2` |
| 19 | `theorem` | [higherMoment_factorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highermoment-factorization.md) | 172 | `result-track:293126ee90a973dd201fbf078e25ce6110bf759637514ac848257923f0939f13` |
| 20 | `theorem` | [higherMoment_le_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highermoment-le-product.md) | 187 | `result-track:dc3fdee04c068dbc6efe115500b6db2b145b3307e655d015e6988576a5776265` |
| 21 | `theorem` | [higherMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highermoment-summable.md) | 198 | `result-track:1fd7a2d245d8be5f98427a36462d3a031d2687be423b8eacdb58613c7ce67c61` |
| 22 | `theorem` | [primeHigherMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/primehighermoment-summable.md) | 209 | `result-track:a8aa542084ab8a542372092aa3c5c6cb5aaa6f2ea3c2e99896b9b994bd559581` |
| 23 | `theorem` | [logLocation_sq_ge_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/loglocation-sq-ge-one.md) | 222 | `result-track:7983c11a7d73105f1a03de2ea71924bf5c4936ea2cdb2544dd4343b3544a3244` |
| 24 | `theorem` | [higherWeight_le_moment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherweight-le-moment.md) | 233 | `result-track:410e6cfa6054896e5269b15d1487c785a764f6a3dcfdda45000a7aa4742f0108` |
| 25 | `theorem` | [primeHigherWeight_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/primehigherweight-summable.md) | 238 | `result-track:6e3193741e375676d191bf6b24de386aea51d452c3eab854ed57125593ae39a3` |
| 26 | `def` | [IsHigherPrimePower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/ishigherprimepower.md) | 259 | `declaration-track:ebab113b2e5c408ac4ceb53513d5c035e7d2c9349f267f2e1858fe2072bfbd41` |
| 27 | `def` | [higherPrimePowerIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherprimepowerindices.md) | 262 | `declaration-track:9ba21db9de1fe372c0b09ee166f78b1511cd065ccb97b842bebf29b614051a8d` |
| 28 | `def` | [higherPrimePowerContribution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherprimepowercontribution.md) | 267 | `declaration-track:a20126ab27096a412d9a01049d20170304748b93ef849f5c76f3dc876dba9e3d` |
| 29 | `theorem` | [prime_power_representation_unique](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/prime-power-representation-unique.md) | 273 | `result-track:529f0786fb8cf94628e3a6baf614c9efa61a412c7e34245565a1a50b4f2fd683` |
| 30 | `theorem` | [primeSquare_not_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/primesquare-not-higher.md) | 279 | `result-track:9b650deb04845bd29b16f0e54664b902230e25a9349b3dd533f652920cf6b95e` |
| 31 | `theorem` | [primeSquare_not_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/primesquare-not-prime.md) | 287 | `result-track:06c8141f1329c841c8d6b4ffdeb13f8dce75b449dd8639c3271f75ec2a8c4bb0` |
| 32 | `theorem` | [higher_not_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higher-not-prime.md) | 292 | `result-track:a405473048da45eff1d98282d6ed66bf9ba0de05352f6899e9f3747646c55f4d` |
| 33 | `theorem` | [nonprime_primePower_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/nonprime-primepower-iff.md) | 297 | `result-track:d5d3d70413089c28f50e6bfd40d6daf99bc15427024160931024f67a285de7f1` |
| 34 | `theorem` | [nonprime_weight_zero_of_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/nonprime-weight-zero-of-outside.md) | 317 | `result-track:30f30c2ed7eaa87192e99b6be9f219c157878c2087c454649efe4fd7df1a887a` |
| 35 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/primesquare-higher-indices-disjoint.md) | 325 | `result-track:78774a6c206581dd48e2a77c34979b9c42633648da3f05ba2ce3f0ae142b0edc` |
| 36 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/properprimepowercontribution-eq-square-add-higher.md) | 333 | `result-track:84361863675c9584de0aba6a4ba3a729264531e3815d156e2782eec7390fd637` |
| 37 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/primepowercontribution-eq-prime-square-higher.md) | 354 | `result-track:2d9b5d84c2fc14c81813da02e38151977770f9871373a56c17b259052d79d03d` |
| 38 | `theorem` | [eight_higher_not_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/eight-higher-not-square.md) | 362 | `result-track:c530b44049e6a6fe0bf51a1bf344e36c8873a87af0dc4933c63d0f6b4135b202` |
| 39 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/eight-mem-higherprimepowerindices-iff.md) | 367 | `result-track:42f40cd100539b075edfcf01861b6a1faa73f50f7bb8ed21c1ad8b97e3dafb3f` |
| 40 | `theorem` | [sqrt_nat_power](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/sqrt-nat-power.md) | 386 | `result-track:c7e92a0b75067ebfd05d063f7f2b87de8be9209d539526f0543efcd5e1b1cb18` |
| 41 | `theorem` | [higher_prime_power_weight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higher-prime-power-weight.md) | 393 | `result-track:735277e9b8303193769841edef82035c3a12967a6351d51ba9de7c452135b764` |
| 42 | `theorem` | [higher_prime_power_summand](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higher-prime-power-summand.md) | 400 | `result-track:d1bc66cc7494f1fea1db66d7fabcd03eac98fe76b19a60448b9ba498c036c611` |
| 43 | `abbrev` | [HigherPowerIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpowerindex.md) | 420 | `declaration-track:efd62639df495786a067c8a485393b30d0322e274122eb0cde9ce08e5bfba120` |
| 44 | `def` | [powerIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/powerindex.md) | 423 | `declaration-track:a7e8976d78fdbcd34dfcf1228748bcd75ff506b719416ec14cb1eb38b746f1d9` |
| 45 | `theorem` | [powerIndex_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/powerindex-injective.md) | 426 | `result-track:5bc128a9fa90d527d13d1d67a5c5928a7f439769cd6ddc48e3be5cbe43e9c5ec` |
| 46 | `def` | [higherPairIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpairindices.md) | 436 | `declaration-track:0a459346ad4593604b2fa9431202d56288e63ac68f1caf651fd95f35fc80db42` |
| 47 | `def` | [higherSourceTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highersourceterm.md) | 440 | `declaration-track:f65f3ecfa5dae3866f41e0a7404b165998facafb8a1e3e06c750ad1dbe82490c` |
| 48 | `theorem` | [powerIndex_isHigher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/powerindex-ishigher.md) | 445 | `result-track:62d0f673e404e758163c914f038a164f43c3748eca0cb8b96f6c615c4dcb1056` |
| 49 | `theorem` | [powerIndex_two_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/powerindex-two-le.md) | 449 | `result-track:08ed410d2da5d9e626b1d9c1438e7f72eb6bbee9dacfdffb9752b4be06493f71` |
| 50 | `theorem` | [mem_higherPairIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/mem-higherpairindices-iff.md) | 453 | `result-track:9a9661c7b0caf823b336e6b5c0be1da5ce8ee8fd6db570908bdcc30bd538c48c` |
| 51 | `theorem` | [higherPairIndices_image](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpairindices-image.md) | 460 | `result-track:c29d0463b9e9971753f328ca80bb8ce3e7362330fa6f6c98ed65b2b32008ea82` |
| 52 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherprimepowercontribution-eq-finite-sum.md) | 475 | `result-track:c146ce4c174837d8d04da62ddbd0b3e9026428b1291c60edddf90dcddd60110f` |
| 53 | `theorem` | [higherSourceTerm_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highersourceterm-zero-outside.md) | 485 | `result-track:7a05784af8bfad91084a81571f3aa10b2d8f3d0de3bb3a1b0ef9bb597560aa7a` |
| 54 | `theorem` | [higherSourceTerm_finite_support](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highersourceterm-finite-support.md) | 500 | `result-track:1a36b88d592e5c30f2a867a8303fefd1efa662be2cd3f076830e41fc652d4dd2` |
| 55 | `theorem` | [higherSourceTerm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highersourceterm-summable.md) | 506 | `result-track:0a3a2a131b3ca0f4c8547ca4679f9fb7b64c1591788880e3504f09fbd5bb1554` |
| 56 | `theorem` | [higherSourceTerm_norm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/highersourceterm-norm-summable.md) | 511 | `result-track:d3c10d3c79b4c362c58e2a9df2c77632bcf468cd0db00ba2ab85845a7bd55b8b` |
| 57 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherprimepowercontribution-eq-tsum.md) | 518 | `result-track:29af68c79e0e26eddbc2d7bc7e80ad69f42030434a6e8a120973594a6681a853` |
| 58 | `def` | [higherPowerConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpowerconstant.md) | 545 | `declaration-track:d0afd5a9a065ec1f7c899320f5c0c70ef6c3c04043f3053557dc960eb4c4cac0` |
| 59 | `def` | [higherPowerSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpowersum.md) | 550 | `declaration-track:800b1bf4e707977a828e9a78add05a895fb56b31e77e96ced2a76bf34e02b7ac` |
| 60 | `def` | [higherPowerBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpowerbudget.md) | 556 | `declaration-track:ff1920f9f7f4510b0953519f20d874caab0188b3c1dc50d9afc5f6e54580dffd` |
| 61 | `theorem` | [higherPowerBudget_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpowerbudget-nonneg.md) | 561 | `result-track:555d5c03b8269946a0c0716f84e7287e37a5b5bd3f9a23a2c461144663926d5a` |
| 62 | `theorem` | [higherPower_correlation_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpower-correlation-summable.md) | 565 | `result-track:c0e1caa0d8bd09d1f64e2fdec4848a59f672cc9dc8c56b942c35248263118b74` |
| 63 | `theorem` | [higherPowerSum_le_constant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpowersum-le-constant.md) | 576 | `result-track:08ab9fbc9fcb61d7e6c4d306e1e3f62f7f9924466327601e1cbd249d842194e2` |
| 64 | `theorem` | [higherPower_deviation_term_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpower-deviation-term-bound.md) | 585 | `result-track:2f66129fe7a1f5a4f0c194ed430145e176a8d0a128407e8e3d86be8de7c94db8` |
| 65 | `theorem` | [higherPower_deviation_norm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpower-deviation-norm-summable.md) | 597 | `result-track:57236ca09bcc0b1c0605fab00e57ec313a57a04aeddabee48954ab88c7c59a9a` |
| 66 | `theorem` | [higherPower_deviation_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpower-deviation-summable.md) | 608 | `result-track:937a5fd63708d5698675a420dfe1f07578f9d946f7f57feb742334b6c58ced1f` |
| 67 | `theorem` | [higherPowerSum_sub_constant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpowersum-sub-constant.md) | 615 | `result-track:c564986befb33f915ee3466711dbf9a10f834e91ed7db2b954341cd6d02dcde3` |
| 68 | `theorem` | [higherPowerSum_deviation_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/higherpowersum-deviation-bound.md) | 627 | `result-track:d305df6ef1004167e413cb7a0df8a0187d42a82fafd9f49f450ac92c752839a1` |
| 69 | `theorem` | [actualHigherPower_deviation_bound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/actualhigherpower-deviation-bound.md) | 652 | `result-track:af9182bea7d338c3cec4759c34e57c0ddfa095091da14471f1d4ba5de5cddd2a` |
| 70 | `theorem` | [actualHigherPower_le_constant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/actualhigherpower-le-constant.md) | 657 | `result-track:ad9894ae714410d246a898b423043d754a8b55de893de7a66324b2abcff64ebf` |
| 71 | `theorem` | [actual_higherPower_signed_asymptotic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerAsymptoticNamespaced.lean/declarations/actual-higherpower-signed-asymptotic.md) | 662 | `result-track:c8f62a62dfbb9a5e89b07d39c057959e2e598d0f23ef759ad713849b60bdc416` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab07090f7b1302d14d7afaff4d0206345cfcc14528aa36945b3ccc4e53e76dd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

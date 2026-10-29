# Verification target: Characteristic Phase Family Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb6c104e6b5354e79ca906e8466fa9ee2172fcad",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb6c104e6b5354e79ca906e8466fa9ee2172fcad`.

Source path: `GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Resultant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Quotient` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characteristicPolynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristicpolynomial.md) | 34 | `declaration-track:9a6f68e74ce9585b77a7e79ee662bcdde335cfdc3bb43cf0621dab4974fb4289` |
| 2 | `theorem` | [characteristic_polynomial_expansion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-polynomial-expansion.md) | 37 | `result-track:4bf37c3cb09b2116e4e52de63c60a31e64592fde84ae4285be4df47f275cf908` |
| 3 | `theorem` | [characteristic_polynomial_monic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-polynomial-monic.md) | 42 | `result-track:78e95b541db3d59f823341276ce5558101c7c73596703286385dfef397499df3` |
| 4 | `theorem` | [characteristic_polynomial_degree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-polynomial-degree.md) | 49 | `result-track:d9958adcd717fa8963709c48929e3842ba41ef052fed901e51b5f6f4c15bc6c0` |
| 5 | `theorem` | [characteristic_polynomial_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-polynomial-map.md) | 60 | `result-track:72ee98e8ffd4d5da8282df7485b827f1abdf1a81148f5c37b5b1be384c1fb453` |
| 6 | `abbrev` | [CharacteristicFiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristicfiber.md) | 66 | `declaration-track:22225de53a618f956b45cf5041b5128daace41876c6bca6a82f720796b2512f3` |
| 7 | `def` | [centeredGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/centeredgenerator.md) | 69 | `declaration-track:da792102bbeb5ce93416583bae64966487516ea6bd8e331306266d5ac18fa11e` |
| 8 | `theorem` | [centered_generator_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/centered-generator-sq.md) | 72 | `result-track:63b7c7c5b09f0107ce91b2ed47548bfdf22ca8a853b4b3c07901a4c94761fa76` |
| 9 | `theorem` | [centered_generator_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/centered-generator-ne-zero.md) | 79 | `result-track:b8faa631f9c2b4a6f67e8896d8ea0feda31d3fb8e8189ca0caf58be2f314171c` |
| 10 | `abbrev` | [ParameterRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/parameterring.md) | 89 | `declaration-track:df34453b2741ee3530421f89cd8618da5301f52f23fb1836b0a291b6ed32a747` |
| 11 | `abbrev` | [UniversalFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/universalfamily.md) | 92 | `declaration-track:5c351e0984aba375805acdae58a75b211a80ec6b13df16540a8fd8a499363786` |
| 12 | `def` | [universalParameter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/universalparameter.md) | 95 | `declaration-track:4fdc6321484ef86dbe4f6fbcd034b12274d63f28d8e701509d909d2c6ad7e1a7` |
| 13 | `def` | [universalCentered](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/universalcentered.md) | 98 | `declaration-track:01b80e195d9e3a063889deab4ffd9c7d1d4a572ea50e09245102a1d5fd0359a7` |
| 14 | `theorem` | [universal_centered_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/universal-centered-sq.md) | 101 | `result-track:92b21019fb16a36ce8e8dca07b1da563be6954fcbffd80b6de189583697a7bf3` |
| 15 | `theorem` | [universal_family_free](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/universal-family-free.md) | 109 | `result-track:94d1eeda7bda6cceac8f93b57b8183463dfb4781438dde048b3efc56cba02c59` |
| 16 | `theorem` | [universal_family_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/universal-family-finite.md) | 112 | `result-track:8fcfab7ffe2b5e4516f33c08a46561fc57c0c9bcc78c11f57eca17c8d054445f` |
| 17 | `theorem` | [universal_family_flat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/universal-family-flat.md) | 115 | `result-track:11272f58c954f9256450e8d0c809a85a03cb07ab3e5160d19fa19620e9bc2e96` |
| 18 | `def` | [specialize](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialize.md) | 120 | `declaration-track:110e15cc57af2d4151da98554b85aed9ca722ceeb7873074d3aa9f3ee96a1d93` |
| 19 | `theorem` | [specialize_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialize-root.md) | 126 | `result-track:ddd4968a75eb3e2f124c18137710eab126135c6557b702adc750dba57388a37b` |
| 20 | `theorem` | [specialize_parameter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialize-parameter.md) | 131 | `result-track:ad87d7873b9f3a09391308b742aabda7f364179752e8fdb58830c476540b2e95` |
| 21 | `theorem` | [specialize_centered](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialize-centered.md) | 137 | `result-track:f1ec9ee09d07767978cb238de544db0d81953154532100bb0581a7f756411df8` |
| 22 | `theorem` | [specialize_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialize-surjective.md) | 140 | `result-track:4523ef53ea0f256b92c85924cdd9a13f2b2ef54b795a67203b5187736072dd71` |
| 23 | `def` | [characteristicDiscriminant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristicdiscriminant.md) | 149 | `declaration-track:2c79b6fb0b8174494c8cd1b21a1c291b2a3b1d1dccbe96a9784a72d161a7dd95` |
| 24 | `theorem` | [characteristic_discriminant_eq_native](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-discriminant-eq-native.md) | 151 | `result-track:3ec6ae7c319e448b105c1eb93898f8b3eea50c022af704a20b28b67005064607` |
| 25 | `theorem` | [characteristic_discriminant_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-discriminant-eq-zero-iff.md) | 158 | `result-track:34c4b7495520ff040ae5442d84d1c401914df6fc4fa256fb06b7ded31e20bc20` |
| 26 | `theorem` | [phase_rotation_charpoly_eq_fiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/phase-rotation-charpoly-eq-fiber.md) | 163 | `result-track:28982fa93ec334d95931efcfe64590661a145035ecaa289bf8efad76764a348d` |
| 27 | `theorem` | [centered_generator_sq_unit_phase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/centered-generator-sq-unit-phase.md) | 176 | `result-track:9c6a6fb80c97b27f16ccace289674fbfc7b37225accb4ededba77f08ba510426` |
| 28 | `theorem` | [characteristic_discriminant_unit_phase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-discriminant-unit-phase.md) | 186 | `result-track:99ca10fc532dbb5b9bc36a17b5e4b1516c3a4cf81054422c939bdfe3c01f5040` |
| 29 | `def` | [representPhase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/representphase.md) | 194 | `declaration-track:d79e72a01bcfc93ccc60d840aa603d185f9509d58b8f5a064ed606381d7d840a` |
| 30 | `theorem` | [represent_phase_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/represent-phase-apply-mk.md) | 201 | `result-track:d2860e03c67d1aa4057d1678607f9a4cc125dbaa5ba56bc3a4accb813d28ab6a` |
| 31 | `theorem` | [represent_phase_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/represent-phase-root.md) | 205 | `result-track:8e30bbb12058d223be204aac8669f91311bb847d7bb1a85b716b4e3ae54ffaca` |
| 32 | `theorem` | [centered_generator_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/centered-generator-eq-mk.md) | 210 | `result-track:b50963777771586833ebd6dda2e5e9e98a2064ff5725cd37d6721af5ae0ff95d` |
| 33 | `def` | [observeRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/observeroot.md) | 215 | `declaration-track:f101059fdd5cfc30784259b12eb5556b48b6c7acb5c7f1b5d57f7db2fde66e3d` |
| 34 | `theorem` | [observe_root_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/observe-root-surjective.md) | 219 | `result-track:f23601953dc2c3efa701282dff4979cb7fdc5359b72a1b9bea33c5fb84275cb8` |
| 35 | `theorem` | [characteristic_polynomial_repeated](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-polynomial-repeated.md) | 224 | `result-track:512c7320afe6a6da663b55ce45b7e126c59c4124f81560f751efccd3d7b8ed6f` |
| 36 | `def` | [observeRepeated](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/observerepeated.md) | 229 | `declaration-track:58a51e0500a6334edb21c93a3a4e89056783ab1956c3c07ce8b1279abce15e57` |
| 37 | `theorem` | [repeated_kernel_square_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/repeated-kernel-square-zero.md) | 232 | `result-track:4da2c89abd3f14a67fda4c77f2fa1ef284fec98bda387207a13b010121af9bfe` |
| 38 | `theorem` | [repeated_kernel_eq_jacobson](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/repeated-kernel-eq-jacobson.md) | 242 | `result-track:dc6ae6bea5c2b7c924b28f40419530576f9de3ad2720f99c6da074cc19a1800b` |
| 39 | `theorem` | [repeated_jacobson_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/repeated-jacobson-eq-span.md) | 254 | `result-track:1d31f97a2c138dd9e64f007ec625774a9c8ba6846432f631cadf8ea3673d981f` |
| 40 | `theorem` | [repeated_centered_square_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/repeated-centered-square-zero.md) | 271 | `result-track:6f7d0e12b2bb456017c824419fb4b8045835b835764af7bb9b4ed8dd9a128930` |
| 41 | `theorem` | [repeated_jacobson_ne_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/repeated-jacobson-ne-bot.md) | 275 | `result-track:bed16fb5ffdbcd4f3e713b3cbe0b37b4ac0f7c814aff74dd84914eaeab6d5c4e` |
| 42 | `theorem` | [jacobson_eq_bot_of_distinct_roots](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/jacobson-eq-bot-of-distinct-roots.md) | 285 | `result-track:c95d8d8b67efef02da43416039636fc30318f737bc36a1b2bcfa97a3c947d894` |
| 43 | `theorem` | [jacobson_eq_bot_of_parameter_sq_ne_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/jacobson-eq-bot-of-parameter-sq-ne-one.md) | 312 | `result-track:d2140d4f52579a33b4e1e06aae34efedebf21621552c8306a74f742cc30ba47c` |
| 44 | `theorem` | [jacobson_ne_bot_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/jacobson-ne-bot-iff.md) | 327 | `result-track:3059cf1e404ab70092baaf0fa49bf0692b1c058f3ae5217b759c169bf14c950f` |
| 45 | `abbrev` | [parameterIdeal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/parameterideal.md) | 336 | `declaration-track:dc1a5f4ca05ed7429c4562712af9c1decea268f746f9cd197a636e2c0d76c6fe` |
| 46 | `abbrev` | [specializationIdeal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specializationideal.md) | 339 | `declaration-track:c820a5044dac3496ee0e8b30220f44004a8c902603963d31bf4d7f760e9d7a54` |
| 47 | `theorem` | [specialization_ideal_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialization-ideal-eq-span.md) | 342 | `result-track:382887c9063bc444a2480a88db9b9a030eddbf27e5c315425621eb5dfd2a4cfd` |
| 48 | `theorem` | [specialization_mapped_polynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialization-mapped-polynomial.md) | 349 | `result-track:9e45088208430afe0f26663d61683537f458d2be974ac92380709bbe5c324e3f` |
| 49 | `def` | [specializationEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specializationequiv.md) | 361 | `declaration-track:6c4cecb146ce51a7177d1416725459d0c1e5d3cea19417a6b4f2078c58251ffa` |
| 50 | `theorem` | [specialization_equiv_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialization-equiv-apply-mk.md) | 370 | `result-track:7cd1b258f9b528956b130cc7bba8a9d1e84292643edd3bbb20e4076acd0b9820` |
| 51 | `theorem` | [specialize_ker_eq_specialization_ideal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/specialize-ker-eq-specialization-ideal.md) | 385 | `result-track:ca1153fc8aa2ff331a2559ea74fcd7a691fab835a06a377e0a19265f6d264e38` |
| 52 | `def` | [fiberOneEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/fiberoneequiv.md) | 395 | `declaration-track:a741281b9158fd6b25da39afd6d0cfba39843775ff0139b4b4e1ac34173a5572` |
| 53 | `theorem` | [characteristic_discriminant_eq_zero_iff_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-discriminant-eq-zero-iff-sign.md) | 399 | `result-track:874ab7afc0b4c064758c03a9cb8d1fae61373b668827ae3e42387158a2c6cb17` |
| 54 | `theorem` | [characteristic_discriminant_unit_phase_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-discriminant-unit-phase-eq-zero-iff.md) | 403 | `result-track:ce9d894e4d1ff572f86204da7f2444bb694f2accab89475ecebef4395f91fea5` |
| 55 | `theorem` | [characteristic_discriminant_unit_phase_eq_zero_iff_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-discriminant-unit-phase-eq-zero-iff-sign.md) | 409 | `result-track:fa8e23232cce10cb1644fe2a7ca47a033918a3ec11f0b36cced9db43cddb39b5` |
| 56 | `theorem` | [characteristic_discriminant_eq_defect_product](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-discriminant-eq-defect-product.md) | 423 | `result-track:f697cafd77f16eb510b7b7117b5cd8b24110f4c62205077288abdae27552de2d` |
| 57 | `theorem` | [characteristic_discriminant_eq_zero_iff_defect_eq_zero_on_positive_branch](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-discriminant-eq-zero-iff-defect-eq-zero-on-positive-branc.md) | 437 | `result-track:c3d822865d4af753448992f74c27f9d6becbacd13347a2abea76ad42bc402d08` |
| 58 | `theorem` | [phase_minus_one_discriminant_defect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/phase-minus-one-discriminant-defect.md) | 450 | `result-track:20b10bc2ff1435a6c25040adf617740518d2e0cd0bed20cfadd2d335ea128334` |
| 59 | `theorem` | [aeval_phase_rotation_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/aeval-phase-rotation-diagonal.md) | 455 | `result-track:1f84fa17e1557d17c7297132a109a67821c49fc9807f559eb056d6b4a7231601` |
| 60 | `theorem` | [represent_phase_eq_scalar_observe_repeated](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/represent-phase-eq-scalar-observe-repeated.md) | 466 | `result-track:c80d9ed6f4a2f9179d92de73f356e2f338b60890f397ea846fe9d42a4ea3aa6d` |
| 61 | `theorem` | [represent_phase_ker_eq_jacobson](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/represent-phase-ker-eq-jacobson.md) | 480 | `result-track:b200eaa6f9b8d8d7789fed86131520b2a8c184c81ab0a3996c470934089f91e9` |
| 62 | `theorem` | [characteristic_fiber_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-fiber-finite.md) | 518 | `result-track:a26024d13b138f7e3301a2927dc6ee5cff1776dc8da79d59f8fa106c50b561c4` |
| 63 | `theorem` | [characteristic_fiber_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-fiber-finrank.md) | 521 | `result-track:f3ad05307aafba92947598737b1a7d7dde549cdfebf642f5a86c87d4be928f3b` |
| 64 | `theorem` | [jacobson_eq_bot_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/jacobson-eq-bot-iff.md) | 526 | `result-track:456c1373524cb302475f3ed5d66b146720ffc1748f3f6758a1cc5185b45777f6` |
| 65 | `theorem` | [represent_phase_injective_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/represent-phase-injective-iff.md) | 530 | `result-track:ec77e36a38a92b74c2ec8b632fa68b2cc48548598f000534c0ce725ba9bbe2d0` |
| 66 | `theorem` | [reference_reflection_not_in_fiber_representation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/reference-reflection-not-in-fiber-representation.md) | 540 | `result-track:f2e7d6f051f874a147d325043c19d16ca8ad6052205a24a9c02355705715297e` |
| 67 | `theorem` | [reference_left_action_not_preserved_in_fiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/reference-left-action-not-preserved-in-fiber.md) | 549 | `result-track:a519c5fbb495d1502565b4e68a9fb2132fa9eab99032e1d0534e7c7ec80dcb33` |
| 68 | `theorem` | [characteristic_fiber_nilradical_eq_jacobson](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-fiber-nilradical-eq-jacobson.md) | 557 | `result-track:9536e38fe9f70a96c0681c386c313f74571afaac80ccdcc4551f170eb5df0723` |
| 69 | `theorem` | [characteristic_fiber_isReduced_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/characteristic-fiber-isreduced-iff.md) | 570 | `result-track:fe2614573bfd0faa32a089d8c5e572a5b27dc283c11b90ffe75fb5fcac87935f` |
| 70 | `theorem` | [represent_phase_linear_ker_eq_jacobson](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/represent-phase-linear-ker-eq-jacobson.md) | 574 | `result-track:be6d90be8bad26cacda85c8d7d2d592bb05db93c0a7cc33e4eed23e359d53ad6` |
| 71 | `theorem` | [represent_phase_fiber_eq_affine_coset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharacteristicPhaseFamilyResults.lean/declarations/represent-phase-fiber-eq-affine-coset.md) | 584 | `result-track:6c57c9f308ba8ede2ee323a051d02f2b0f0c4efb3820b490d968236ee4e3d201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7cdf07bc38f56473ddb49a27378c10fdd4bf83b80b4a19ec9fb4d9c7ba812d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean","GRWTSK/_verification/specifications/Algebra/CharacteristicPhaseFamily/Variant11aa1d50b2dec381555908b8e9f85cbcd08db16b54d16eb62b7854d27f2afdd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Adjoin Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1983de7493e8b73504501ff570010d07de15fbd",
  "lexical_observation_count": 101,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1983de7493e8b73504501ff570010d07de15fbd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Directed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Algebraic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.IsSplittingField` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Dimension` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Subfield` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [restrictScalars_le_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/restrictscalars-le-iff.md) | 38 | `result-track:dc7f44571427900f29e21a03626329fb52bdc5ae2465427b1dae5cc9c38e0af9` |
| 2 | `lemma` | [FG.of_restrictScalars](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/fg-of-restrictscalars.md) | 42 | `result-track:db377bcfc1f893acd3909e9669d399e51d1332ef65f3898806071a658701be95` |
| 3 | `theorem` | [mem_adjoin_range_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/mem-adjoin-range-iff.md) | 58 | `result-track:a4af0032dc0cbd6eaadda8816e7fdcf01340dd5d7f77da1d9c00dfce9051d796` |
| 4 | `theorem` | [mem_adjoin_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/mem-adjoin-iff.md) | 64 | `result-track:903841e525549eeb9c4d366230fa9f43c09b3e4db3bc47385fcfcd8270f8f440` |
| 5 | `theorem` | [mem_adjoin_simple_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/mem-adjoin-simple-iff.md) | 69 | `result-track:19ba9ba4d7dd173e1c3608c0cdb0e6ddf503c5f08ae03014c87236baa105e498` |
| 6 | `instance` | [finiteDimensional_sup](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finitedimensional-sup.md) | 80 | `declaration-track:8c262ce56218c3788d5ac49a1d91a80270aa9e65746c3231403b5fa5439e4bca` |
| 7 | `theorem` | [rank_sup_le_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/rank-sup-le-of-isalgebraic.md) | 93 | `result-track:888a048cf91daa320f7c38c3ac62c7bf03e8a9ced889418ad008d67e2bd4186a` |
| 8 | `theorem` | [finrank_sup_le](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-sup-le.md) | 101 | `result-track:e39f11e88f18ea20ca35ff6bf339400e2775cd28f2fcc6acb85ab21052cd3d60` |
| 9 | `theorem` | [coe_iSup_of_directed](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/coe-isup-of-directed.md) | 116 | `result-track:1271bf1e559f0d5974786364f27dc73f1fbf985f3bad1d20a5f98252ccdd445d` |
| 10 | `theorem` | [toSubalgebra_iSup_of_directed](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/tosubalgebra-isup-of-directed.md) | 126 | `result-track:34aba6e6b9c151294741011ba96daeb3c737d07e11d9c63bdec3057b0f63b150` |
| 11 | `instance` | [finiteDimensional_iSup_of_finite](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finitedimensional-isup-of-finite.md) | 132 | `declaration-track:6f7218b1e6e564a32b8976e93c24d46fcbbf551c9e75d30f893769a1aab9d56d` |
| 12 | `instance` | [finiteDimensional_iSup_of_finset](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finitedimensional-isup-of-finset-source-edition-2.md) | 145 | `declaration-track:c3fe5faddecf4cbf91aef38ffcb9b05460ec0fb431076dc022ada98ebe5ce3ac` |
| 13 | `theorem` | [finiteDimensional_iSup_of_finset'](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finitedimensional-isup-of-finset.md) | 150 | `result-track:06ca58ca231db227922bea509028a0e477711e55c288ec8dabb9ecbe81a25d81` |
| 14 | `theorem` | [isSplittingField_iSup](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/issplittingfield-isup.md) | 157 | `result-track:2c2728550ceb0af88506f8e8ff0ff30ba759b6f835ebbb887905d7623a6c6a59` |
| 15 | `theorem` | [adjoin_rank_le_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-rank-le-of-isalgebraic.md) | 181 | `result-track:7ba4c813e43fc1b724a70f5eaed9dcaec5a37956b6fc7215db0313daa9851a1a` |
| 16 | `theorem` | [adjoin_rank_le_of_isAlgebraic_left](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-rank-le-of-isalgebraic-left.md) | 190 | `result-track:502f27a3a9f6822012d849f6acd6e27e570eba76d61f1ceb7f6e503305de688d` |
| 17 | `theorem` | [adjoin_rank_le_of_isAlgebraic_right](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-rank-le-of-isalgebraic-right.md) | 195 | `result-track:e5890d271ff945ff520379edcf9ac5b2a3fe2a48c47f59fe9e3ded30d5197a2a` |
| 18 | `theorem` | [adjoin_simple_isCompactElement](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-simple-iscompactelement.md) | 205 | `result-track:e123ac7ba7bc9fbf3535d53f65563048e4280ff5ecd357e8e640f99d409498e8` |
| 19 | `theorem` | [adjoin_finset_isCompactElement](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-finset-iscompactelement.md) | 213 | `result-track:b00333e7920bde69bbd206147f2890f7382cf861ecae00a21ab918fa12bb38c9` |
| 20 | `theorem` | [adjoin_finite_isCompactElement](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-finite-iscompactelement.md) | 220 | `result-track:73cf497ca1f2899c1ebbd7b5bbc0f0c1deae93051fbdd7ff39e275769d5cdacd` |
| 21 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/instance.md) | 224 | `declaration-track:6beb03bd7b616fd26d8efd80ed43e9d20e460973d2c22c1355b5e28b0dbfcccc` |
| 22 | `theorem` | [exists_finset_of_mem_iSup](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/exists-finset-of-mem-isup.md) | 231 | `result-track:7f530a5092ac8b8cc38144607952f3b3c1f35152c91bc4057e5b5951d847f24d` |
| 23 | `theorem` | [exists_finset_of_mem_supr'](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/exists-finset-of-mem-supr.md) | 237 | `result-track:82ee8619d49bda33719cd246ff2a64a88146351d10f89c5732f6ce5b973981e1` |
| 24 | `theorem` | [exists_finset_of_mem_supr''](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/exists-finset-of-mem-supr-source-edition-2.md) | 242 | `result-track:b91a071f2f67c32eb6321922673b1566146d96cbba4b3dc46bc4d49f0da7b0c7` |
| 25 | `theorem` | [exists_finset_of_mem_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/exists-finset-of-mem-adjoin.md) | 252 | `result-track:f560ea119218bc3cf390e8ef7bbe0b6fae79f0f536fd2eb8295479db88443bb5` |
| 26 | `theorem` | [rank_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/rank-eq-one-iff.md) | 275 | `result-track:1a003e0f21d77d9764ef243cf46f5733e23284db3d7319e26b5cd6c53333b5b8` |
| 27 | `theorem` | [finrank_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-eq-one-iff.md) | 280 | `result-track:3070b941dc851f5ae2df9560bf67b88a27337f4eef00877c3bce8c76fdb847c4` |
| 28 | `theorem` | [rank_bot](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/rank-bot.md) | 285 | `result-track:6a654b031206aae78bb37a7486bcb059b223a5b880805ca0631c8177a9d67fed` |
| 29 | `theorem` | [finrank_bot](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-bot-source-edition-2.md) | 289 | `result-track:b2acf534778317c36bda897904eb55586175fc1cda1314c2838f54c4fe2865ae` |
| 30 | `theorem` | [rank_bot'](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/rank-bot-source-edition-2.md) | 292 | `result-track:92cf117b9fa090e29ce5d668419d05447ed35151bb185383076652ddfe3a11aa` |
| 31 | `theorem` | [finrank_bot'](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-bot.md) | 295 | `result-track:32e98a4b6c66de621a6130672b05db3b32ad02a706329394007efb3a17732591` |
| 32 | `theorem` | [rank_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/rank-top.md) | 298 | `result-track:93d33266e0bcf8995b921acff0461248f6576991b99eeb5335d9b5c54acb908c` |
| 33 | `theorem` | [finrank_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-top.md) | 301 | `result-track:689a1ab98bd6b0ad58657987753442e1059c9346d0ead97d46a52071e2e044e9` |
| 34 | `theorem` | [rank_top'](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/rank-top-source-edition-2.md) | 304 | `result-track:c460e4f3c22538bb9c9e5ed75c637a815fa8362c961dcca74d7a0851e5c77c84` |
| 35 | `theorem` | [finrank_top'](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-top-source-edition-2.md) | 307 | `result-track:69376b1d9bb9607a19f0eb225351ac70989d0130f55e8a0b1424241e0b79ba64` |
| 36 | `lemma` | [finrank_eq_one_iff_eq_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-eq-one-iff-eq-top.md) | 310 | `result-track:d02797985b4d4f22630efb7f69ae97e0e805b36280c3457ec6c845d1115fedfb` |
| 37 | `theorem` | [rank_adjoin_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/rank-adjoin-eq-one-iff.md) | 318 | `result-track:cc5a6aa0c44a2e06d776ff8506533291a0b45d7648b75f86359ebbc5e9304008` |
| 38 | `theorem` | [rank_adjoin_simple_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/rank-adjoin-simple-eq-one-iff.md) | 321 | `result-track:2f692c5ba65730914761f7787505ddc2479f2c39bf07024e6aa0a0d2106c095a` |
| 39 | `theorem` | [finrank_adjoin_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-adjoin-eq-one-iff.md) | 325 | `result-track:a9c1fac69ce13eb5076e657755059b4470be1a5e92cd94aaecf4a947b6176e55` |
| 40 | `theorem` | [finrank_adjoin_simple_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finrank-adjoin-simple-eq-one-iff.md) | 328 | `result-track:3b85c88941caa05f19095997360cba071229077e5123d14a7535769268c13fa4` |
| 41 | `theorem` | [bot_eq_top_of_rank_adjoin_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/bot-eq-top-of-rank-adjoin-eq-one.md) | 333 | `result-track:b903cbcf64ae4fcc397d7b8da6a3e4c37795d4f8a6d19a2638796d42a66a7c0c` |
| 42 | `theorem` | [bot_eq_top_of_finrank_adjoin_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/bot-eq-top-of-finrank-adjoin-eq-one.md) | 339 | `result-track:a1346d4d4868f265a308577f4ecd28a18a76b6e30ae4a9de3069cec2eea2d025` |
| 43 | `theorem` | [subsingleton_of_rank_adjoin_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/subsingleton-of-rank-adjoin-eq-one.md) | 345 | `result-track:7687ff953b4acba4dec61eae3f31a2b73001e836b6104fd23350d7d85d398be6` |
| 44 | `theorem` | [subsingleton_of_finrank_adjoin_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/subsingleton-of-finrank-adjoin-eq-one.md) | 349 | `result-track:a7a9fd36fb68578516bbec632615dffbd96180ba0da51f6ef3c0f2b858b5aa1e` |
| 45 | `theorem` | [bot_eq_top_of_finrank_adjoin_le_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/bot-eq-top-of-finrank-adjoin-le-one.md) | 354 | `result-track:ce84a91cbad71c1a1d8971c7888e472cc0a1887af84a45721bd7c3c2510255ea` |
| 46 | `theorem` | [subsingleton_of_finrank_adjoin_le_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/subsingleton-of-finrank-adjoin-le-one.md) | 359 | `result-track:7f5c9c1c4513072fb06d39d96fd765c3b7229f56a8795024225596c5a1d6097f` |
| 47 | `theorem` | [minpoly_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/minpoly-gen.md) | 374 | `result-track:54bc556d4d30c189a36e2c0f08b4b555a5fa9b060bcd84dc1ecd6cfc19a792a4` |
| 48 | `theorem` | [aeval_gen_minpoly](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/aeval-gen-minpoly.md) | 378 | `result-track:a85b600929e8ee322fb1911a44470ec8421665e2aa68f2f6791ece3f024ec5ab` |
| 49 | `def` | [adjoinRootEquivAdjoin](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoinrootequivadjoin.md) | 386 | `declaration-track:8b8e6609c21684a0855db035e124ebd9d84b62e49146dedc8abdb5e4606782fb` |
| 50 | `theorem` | [adjoinRootEquivAdjoin_apply_root](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoinrootequivadjoin-apply-root.md) | 412 | `result-track:97f4a536ba0ab4e01b76512e8720f9f1a384569329b5b92630ff95a3c4587380` |
| 51 | `theorem` | [adjoinRootEquivAdjoin_symm_apply_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoinrootequivadjoin-symm-apply-gen.md) | 417 | `result-track:0405a12dec1a6999ad604050ea58dc49a43d4622da7840a768c2add686ad1ea9` |
| 52 | `theorem` | [adjoin_root_eq_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-root-eq-top.md) | 421 | `result-track:47875e783c7d872254d151f9f599098a0aa0ca641d9597eec264eb81a7c8cf49` |
| 53 | `def` | [powerBasisAux](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/powerbasisaux.md) | 430 | `declaration-track:9e2b3d7bebf9936142e7e83ac239d508c9e0fb433db4107972af634104100b64` |
| 54 | `def` | [adjoin.powerBasis](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-powerbasis.md) | 439 | `declaration-track:4d514eca047a3ac5f612ebeb970e2aadc8d1959efd4721424c333353fb371c0b` |
| 55 | `theorem` | [adjoin.finiteDimensional](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-finitedimensional.md) | 448 | `result-track:075026632a472a6332825cd93380d5d7c5efe8f07e2e57a6c0c9dfe970a4b226` |
| 56 | `theorem` | [isAlgebraic_adjoin_simple](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/isalgebraic-adjoin-simple.md) | 451 | `result-track:d9db846cb7a09b80b9a10148d7623c50fc3b6386cb52421104606be16bbfbc95` |
| 57 | `theorem` | [adjoin.finrank](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-finrank.md) | 457 | `result-track:6e300249b238c9ec2425d33cd07a64f36078972435643d7ea8097a4354131ba8` |
| 58 | `theorem` | [adjoin_eq_top_of_adjoin_eq_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-eq-top-of-adjoin-eq-top.md) | 464 | `result-track:8a3244ca1ebc9e0a98df4a7cdb72619212d70566659719fc37f9bd640c8a74db` |
| 59 | `theorem` | [adjoin_minpoly_coeff_of_exists_primitive_element](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoin-minpoly-coeff-of-exists-primitive-element.md) | 472 | `result-track:035b87fc5c2a843ea95ef62c43bec07d7549182369a2d0ccc8a63551f389253d` |
| 60 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 501 | `declaration-track:fff111a7be6fe0eb32996e1edf38cad648d3bf09f11b0698b1cbfa4480519926` |
| 61 | `theorem` | [exists_lt_finrank_of_infinite_dimensional](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/exists-lt-finrank-of-infinite-dimensional.md) | 506 | `result-track:d40b25ebd96d6a1a1514569dbed5bec7a37ccd2182bc459b486523b158045f20` |
| 62 | `theorem` | [Adjoin Basic Namespaced](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/natdegree-le.md) | 523 | `result-track:0595595581614219a93d25631eacc281cc2b793a2b07e37c6b84defc9d056007` |
| 63 | `theorem` | [Adjoin Basic Namespaced](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/degree-le.md) | 528 | `result-track:a087fa26ebcea7a532b1bb87c74cc0693e2e58450d167f1be37baf03de341c9a` |
| 64 | `theorem` | [Adjoin Basic Namespaced](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/degree-dvd.md) | 534 | `result-track:69c41c6b47e5570d97899c609f836c867a5349e76c565eeca4ec9b3d16315de0` |
| 65 | `theorem` | [isAlgebraic_iSup](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/isalgebraic-isup.md) | 542 | `result-track:6806841eeb42b72a10c6792c38bd051fa811a1980fec9660fd9972f9b81d2960` |
| 66 | `theorem` | [isAlgebraic_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/isalgebraic-adjoin.md) | 553 | `result-track:f2e767f498af3c4dd3149005b2d245f9d98035efdbf22f1c3f644ca484b157f2` |
| 67 | `theorem` | [finiteDimensional_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finitedimensional-adjoin.md) | 561 | `result-track:7271dc51469304c2fbc1aa6e7b220a3e1b63343bafc9f6c4ab7494a793657340` |
| 68 | `def` | [algHomAdjoinIntegralEquiv](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/alghomadjoinintegralequiv.md) | 571 | `declaration-track:6910ce9f4e7265c8530e932670a03d1cb41d7cc5ffa374c45da750637cc81458` |
| 69 | `lemma` | [algHomAdjoinIntegralEquiv_symm_apply_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/alghomadjoinintegralequiv-symm-apply-gen.md) | 577 | `result-track:da200b4564c24d7f74ea61bc9df8dd9090cf64c08d8cb724f9d78e0def0d7c27` |
| 70 | `def` | [fintypeOfAlgHomAdjoinIntegral](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/fintypeofalghomadjoinintegral.md) | 584 | `declaration-track:08d71f9d9610c4892b3a43362ab8d191aac4e2d45d7b2ca34d9d538bf7869591` |
| 71 | `theorem` | [card_algHom_adjoin_integral](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/card-alghom-adjoin-integral.md) | 587 | `result-track:b2002bc508b6e232e99e6b2b1276746b880215037f8c0b704fc7d4a9d0e3708f` |
| 72 | `theorem` | [Adjoin Basic Namespaced](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/irreducible-comp.md) | 598 | `result-track:7664db4b62e3b778abb0ab98fc535772a602ab2809a4fedebcb1fbbd9ae6adc6` |
| 73 | `def` | [algHomOfDvd](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/alghomofdvd.md) | 659 | `declaration-track:a50ef441e4b1d93ae51bb03413de53c9acf5bdf2565c3a3868972537ce38ae69` |
| 74 | `theorem` | [coe_algHomOfDvd](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/coe-alghomofdvd.md) | 663 | `result-track:a14ac437fceb8319cb982ab8c3f0f6f0bb6926c2604bd1f92a4262c38dc2814e` |
| 75 | `theorem` | [algHomOfDvd_apply_root](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/alghomofdvd-apply-root.md) | 668 | `result-track:95796cdab317e154baacc29c1f634393a771a1bd718e1a21b071fa30ecd3a969` |
| 76 | `def` | [algEquivOfEq](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/algequivofeq.md) | 674 | `declaration-track:555f1d59f73ce0b5307527cd44d0f803b44e4a4910ebf980cab1419520aa05ad` |
| 77 | `theorem` | [coe_algEquivOfEq](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/coe-algequivofeq.md) | 684 | `result-track:8a9d93f5c3321c53d427b0c3b1b206e03f54dcb00db8dbe32d1e83d0620bd7a9` |
| 78 | `theorem` | [algEquivOfEq_toAlgHom](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/algequivofeq-toalghom.md) | 688 | `result-track:ebfa32ef91d6487b1317ae6854344ffbfbf6b17f9762629fbb86c8160ee5036c` |
| 79 | `theorem` | [algEquivOfEq_apply_root](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/algequivofeq-apply-root.md) | 693 | `result-track:f15413868fdeb454722b772bfc576726f163fb7fcfe179f45f571217077a2746` |
| 80 | `def` | [algEquivOfAssociated](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/algequivofassociated.md) | 699 | `declaration-track:8fb4adcd6eca7b1075f58f0569583e3feb9e4e8e47ccac5ecfec9f835f5ff046` |
| 81 | `theorem` | [coe_algEquivOfAssociated](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/coe-algequivofassociated.md) | 710 | `result-track:3ff2156f0094196ca592768c1a36bd5d6bf9ce51377a61202e6382f746888943` |
| 82 | `theorem` | [algEquivOfAssociated_toAlgHom](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/algequivofassociated-toalghom.md) | 715 | `result-track:92cec75715444cfdbc19be56567962aad2694999a7bb3b67b134ce2740ce27eb` |
| 83 | `theorem` | [algEquivOfAssociated_apply_root](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/algequivofassociated-apply-root.md) | 721 | `result-track:8b21dfbe236524c973f1285bda3325639ad3f93096b6326eeacc8157e85561aa` |
| 84 | `theorem` | [eq_of_root](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/eq-of-root.md) | 732 | `result-track:6c8a991eaa4fdfe84ec9f740e7161d4f7dd2964c5348e589c908441df8cc5b29` |
| 85 | `def` | [algEquiv](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/algequiv.md) | 738 | `declaration-track:1fc2628f2f3b2f14e61f0779264b51896eb98966fddefe2c8b0252ce9410f2c9` |
| 86 | `theorem` | [algEquiv_apply](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/algequiv-apply.md) | 746 | `result-track:09f6e135c13c49434bde643b1a2110b6a37ed8c9c024eef9e0d0a2802c3bd653` |
| 87 | `def` | [equivAdjoinSimple](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/equivadjoinsimple.md) | 764 | `declaration-track:7850bb375e1ce26a002388089bc786f646308200014d476d6c1bae89f5b5eb43` |
| 88 | `theorem` | [equivAdjoinSimple_aeval](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/equivadjoinsimple-aeval.md) | 769 | `result-track:a826e06ba270053dca4a0836a1db6ebff31fc181a681888aa5369d1b5f0b08d3` |
| 89 | `theorem` | [equivAdjoinSimple_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/equivadjoinsimple-gen.md) | 774 | `result-track:e0105ac4d860d65258340a615969124267ca991928f3f3902c384fb5a66a4e97` |
| 90 | `theorem` | [equivAdjoinSimple_symm_aeval](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/equivadjoinsimple-symm-aeval.md) | 779 | `result-track:f8b70375dbf812fa82361a39e085b32e1ed81eed2ea608f4afb902dea5a8e0e3` |
| 91 | `theorem` | [equivAdjoinSimple_symm_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/equivadjoinsimple-symm-gen.md) | 784 | `result-track:0218802a7af3b133f653a6a373acc50bd92dccb1aeea514cf6a53904b6e0ac81` |
| 92 | `theorem` | [lift_cardinalMk_adjoin_le](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/lift-cardinalmk-adjoin-le.md) | 798 | `result-track:8c5e976aa5090c2c9c57d4c977d9cfd1c5ca90387ce7761271ab581d1b323f18` |
| 93 | `theorem` | [cardinalMk_adjoin_le](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/cardinalmk-adjoin-le.md) | 807 | `result-track:2c34fdaee2552b1feb6612f74dd036c21b1a66d246a45389189ea6b4c2374cac` |
| 94 | `theorem` | [isAlgebraic_adjoin_pair](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/isalgebraic-adjoin-pair.md) | 815 | `result-track:ae06158599a1c779003c5175c9277c9da2bdf2970fba40fa9fdaaa754e68c170` |
| 95 | `theorem` | [finiteDimensional_adjoin_pair](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/finitedimensional-adjoin-pair.md) | 820 | `result-track:a4e36d12f08ffbf139fac311a43b1754dec5734f6aeb82ca345f506cdd8a0bf5` |
| 96 | `theorem` | [mem_adjoin_pair_left](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/mem-adjoin-pair-left.md) | 829 | `result-track:72e27f1cef3be068f17a84035ea33c9a67c0f5c2014bf315396b5f4d6daa2944` |
| 97 | `theorem` | [mem_adjoin_pair_right](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/mem-adjoin-pair-right.md) | 831 | `result-track:17b8cb8da9c2a8788a22a5bed81d9d630fc72b63c4b7f54990778d97ca79f451` |
| 98 | `def` | [AdjoinPair.gen₁](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoinpair-gen.md) | 835 | `declaration-track:89140f44159ba964775b2a5d2b6ee0f77e66392c71903019547234b1afb8b997` |
| 99 | `def` | [AdjoinPair.gen₂](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoinpair-gen-source-edition-2.md) | 838 | `declaration-track:9b0712a823c98d816bddf3f0966d46fbdd47f21117cff4f80458ca4905b53bbe` |
| 100 | `theorem` | [AdjoinPair.algebraMap_gen₁](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoinpair-algebramap-gen-source-edition-2.md) | 840 | `result-track:d523af1907dfe6fae1eb796d6f6c21e12bdb032daf03a43f73fe57608f20c66e` |
| 101 | `theorem` | [AdjoinPair.algebraMap_gen₂](../../../../FieldTheoryAndPolynomials/AdjoinBasicNamespaced.lean/declarations/adjoinpair-algebramap-gen.md) | 842 | `result-track:c655d943db420e4cd57cf6a8d36a883d90431f1e6911f3ccc027adfb2db09eba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c94c8a9bec179ed69aaa40d97c58ca524901ef087d51f729a33d19613124b87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant8a02e09f843375615b93676bd19612b8c63d2cce9f15adc6e12425e367eb60d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

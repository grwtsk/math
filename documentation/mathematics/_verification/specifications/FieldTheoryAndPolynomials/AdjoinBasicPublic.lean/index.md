# Verification target: Adjoin Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b2c5b1d978a6a13311a00aadf4488637158b03c",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b2c5b1d978a6a13311a00aadf4488637158b03c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [restrictScalars_le_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/restrictscalars-le-iff.md) | 30 | `result-track:01fbdad9dd4aaf80951aa9d3aaa40eefb95ed713c7dbfbfd8de10decd63a465d` |
| 2 | `lemma` | [FG.of_restrictScalars](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/fg-of-restrictscalars.md) | 34 | `result-track:bed86b6e196398f5bd17d0e6830123ac721204c84c7ee3efa62235e9c3584517` |
| 3 | `theorem` | [mem_adjoin_range_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/mem-adjoin-range-iff.md) | 50 | `result-track:7f1ba02fc5fb02c744d60802925d26d11679c6fc7f3ea70afbf70e9e4a239cb7` |
| 4 | `theorem` | [mem_adjoin_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/mem-adjoin-iff.md) | 56 | `result-track:f2f94297f44175415e1a341b51e9cf5a397fc0481927406dd1704dd36ede3079` |
| 5 | `theorem` | [mem_adjoin_simple_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/mem-adjoin-simple-iff.md) | 61 | `result-track:980fa02179226f68f902ceb00633084ffb77a6fb82129ccdeac80084b06b230d` |
| 6 | `theorem` | [forall_mem_adjoin_smul_eq_self_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/forall-mem-adjoin-smul-eq-self-iff.md) | 66 | `result-track:8d7cc461ec0d0d45047e4e872074163729cf2fb3a4b05433e3b9648e707ddea5` |
| 7 | `instance` | [finiteDimensional_sup](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finitedimensional-sup.md) | 78 | `declaration-track:7cf68c539100e4c6a8409729013e88835e036984b6df29b164aac29563b99b4d` |
| 8 | `theorem` | [rank_sup_le_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/rank-sup-le-of-isalgebraic.md) | 91 | `result-track:598ec7a7021429c2b6f5650dfa79517c87f4c045b5dcc2231bf0665f06fd4663` |
| 9 | `theorem` | [finrank_sup_le](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-sup-le.md) | 99 | `result-track:5630231f2656d03bb4da941905a0725663230057da0c91ecf0d914657d44ec81` |
| 10 | `theorem` | [coe_iSup_of_directed](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/coe-isup-of-directed.md) | 114 | `result-track:e5a6e097c1cb1a728f15d36f83a094cb0bb9e505f262fdba3e9ac196da285ec2` |
| 11 | `theorem` | [toSubalgebra_iSup_of_directed](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/tosubalgebra-isup-of-directed.md) | 124 | `result-track:9d28487f628012000940beee64dfa5da18bfbd8dbb7faa5f5a69404a5f0f79fd` |
| 12 | `instance` | [finiteDimensional_iSup_of_finite](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finitedimensional-isup-of-finite.md) | 130 | `declaration-track:2f4e2c85a56be7bfe92978575672a09920b099d72b9086766663d42f5080b0a9` |
| 13 | `instance` | [finiteDimensional_iSup_of_finset](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finitedimensional-isup-of-finset.md) | 143 | `declaration-track:892378dd3c757a10566bda428e2c6c530ccd4d2127e51358b1cc7a24acd1d751` |
| 14 | `theorem` | [finiteDimensional_iSup_of_finset'](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finitedimensional-isup-of-finset-source-edition-2.md) | 148 | `result-track:d55c1504cdc0271b3cd0d115adf8de418455538adc9e6d105a11e04cc3db9e71` |
| 15 | `theorem` | [isSplittingField_iSup](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/issplittingfield-isup.md) | 155 | `result-track:a321862c8af2ad818e979844c61eb079325f4e5c124bebab25e31a9b2578b42d` |
| 16 | `theorem` | [adjoin_rank_le_of_isAlgebraic](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-rank-le-of-isalgebraic.md) | 176 | `result-track:a3a49cd4171e0a7ddeb5fb639e5431081642938883decebf582895ffc60a94fd` |
| 17 | `theorem` | [adjoin_rank_le_of_isAlgebraic_left](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-rank-le-of-isalgebraic-left.md) | 185 | `result-track:f4933833ad528460a12c433671b2ea731d23458b229eb125932e537f58d39bfe` |
| 18 | `theorem` | [adjoin_rank_le_of_isAlgebraic_right](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-rank-le-of-isalgebraic-right.md) | 190 | `result-track:4bda697c4140e0b37e2cc51f01f360d3d39c4725764767264e594a6ee3da3288` |
| 19 | `theorem` | [adjoin_simple_isCompactElement](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-simple-iscompactelement.md) | 200 | `result-track:6cdcd13c722343d468ce2e810a69aac293e781088566672c2edc1e56da493e38` |
| 20 | `theorem` | [adjoin_finset_isCompactElement](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-finset-iscompactelement.md) | 208 | `result-track:27510d2ff16ec3e5bf56659fbe4593b0cf14366085c5b0d791a52e656f52285c` |
| 21 | `theorem` | [adjoin_finite_isCompactElement](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-finite-iscompactelement.md) | 215 | `result-track:c71f2e050e9c33ff9d2867fd819b9f864c329f882e80bdee969bb70ce480e6e4` |
| 22 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/instance-source-edition-2.md) | 219 | `declaration-track:667507154674e1e22dacb3d6f688ab2990411008c1c1cfd99d8d76f776d903ef` |
| 23 | `theorem` | [exists_finset_of_mem_iSup](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/exists-finset-of-mem-isup.md) | 226 | `result-track:7d5923ef02e5688d2ed7167a28ad0df16554b147fbe38f67be9e1e31b8b3d198` |
| 24 | `theorem` | [exists_finset_of_mem_supr'](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/exists-finset-of-mem-supr.md) | 232 | `result-track:ce1947e173ea549b5868380537d2831dcb1715fe359f225417288066afa8fa7a` |
| 25 | `theorem` | [exists_finset_of_mem_supr''](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/exists-finset-of-mem-supr-source-edition-2.md) | 237 | `result-track:e9482331c505a5ef101eb8ee16f5d9efb891a5e9c62974d6dcbaf827fab59063` |
| 26 | `theorem` | [exists_finset_of_mem_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/exists-finset-of-mem-adjoin.md) | 247 | `result-track:9d1beca87f59fc6f696472ac74678dbb50760c528923a189a0cc80ffd58c67da` |
| 27 | `theorem` | [adjoin_simple_add_algebraMap](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-simple-add-algebramap.md) | 259 | `result-track:57b3920010b04c79f2356c302d86d2235c94fa85c516f90de730da934e4125f7` |
| 28 | `theorem` | [adjoin_simple_mul_algebraMap](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-simple-mul-algebramap.md) | 269 | `result-track:3378c18731a0cd94229e757d065d5c49044fd688781931132ca1db76d0207d14` |
| 29 | `theorem` | [rank_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/rank-eq-one-iff.md) | 291 | `result-track:3548acb3b74251aff5893f53e43cfa42854e75a895113cea7e5cf20a0f5cc1ff` |
| 30 | `theorem` | [finrank_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-eq-one-iff.md) | 296 | `result-track:cf578c6d6f7f13d1dadfd01306f07825bcc3b5c0103ba8e0d65d555e64a73020` |
| 31 | `theorem` | [rank_bot](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/rank-bot-source-edition-2.md) | 301 | `result-track:bb9fb73f7aaac7cd0f9968d64ddaa923e685bc15adf6c1c6194f45fa42bc9493` |
| 32 | `theorem` | [finrank_bot](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-bot.md) | 305 | `result-track:7eb78bd69a87793d54e3531418369e14a1556c34b50f188d2107070509754536` |
| 33 | `theorem` | [rank_bot'](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/rank-bot.md) | 308 | `result-track:935cd9a8cb4ad57531d176d92bd94b25750c46bc3f7380bdfe3bd5fea7002174` |
| 34 | `theorem` | [finrank_bot'](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-bot-source-edition-2.md) | 312 | `result-track:81e5b32dfe56ffe8f0a95e5dc3f27ecd9199feabb16e18453ab96f517e485cdf` |
| 35 | `theorem` | [rank_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/rank-top.md) | 315 | `result-track:77ff5b96e2d1cb848d4a103ede3d88a18dd3e2d42a35c08f71608a413e64b71b` |
| 36 | `theorem` | [finrank_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-top-source-edition-2.md) | 319 | `result-track:a8fd301ef728394050962cf5280b3cfa805806a97af075da504eaf3c4d29f9b9` |
| 37 | `theorem` | [rank_top'](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/rank-top-source-edition-2.md) | 322 | `result-track:b18a6b07fa8f908343338b5bd948102971aa5c8c0d5faa66b5f959ae45a86c79` |
| 38 | `theorem` | [finrank_top'](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-top.md) | 325 | `result-track:9a02459a69fd50123d4909030f5ff06105257434a819b2e6392badebaa6e1637` |
| 39 | `lemma` | [finrank_eq_one_iff_eq_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-eq-one-iff-eq-top.md) | 328 | `result-track:1c5f433fedf16c252bdd5bedcbd3b5917388df681f394cddf20cf69e8b21b75c` |
| 40 | `theorem` | [bot_eq_top_iff_finrank_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/bot-eq-top-iff-finrank-eq-one.md) | 336 | `result-track:cb0c367c39956c6e0fad9de3575e76151c9798994ba3e07eb86c53ba841e8bcc` |
| 41 | `theorem` | [isSimpleOrder_of_finrank_prime](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/issimpleorder-of-finrank-prime.md) | 341 | `result-track:06279ebeea055a1647aada1d1682be75cb7c2b99d4d23655b258a06999d7f396` |
| 42 | `theorem` | [rank_adjoin_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/rank-adjoin-eq-one-iff.md) | 349 | `result-track:37c0f957a96a37239727d151016451bb50c24a1d7f3bf1ed9be6f084e02c5fd2` |
| 43 | `theorem` | [rank_adjoin_simple_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/rank-adjoin-simple-eq-one-iff.md) | 352 | `result-track:15b844f1dbf92e5820d2a8e332ff135ff0f58378b009f43165b0aa5ec1a2ea9b` |
| 44 | `theorem` | [finrank_adjoin_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-adjoin-eq-one-iff.md) | 356 | `result-track:6c7d23152afa1f563c36ce68792c8abb971d2309783a152c42d4d6e13e9fdeab` |
| 45 | `theorem` | [finrank_adjoin_simple_eq_one_iff](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finrank-adjoin-simple-eq-one-iff.md) | 359 | `result-track:9d183102ffd5c824f454ab7229a3224c415449ec0d5d49300192a1c32b90f4c0` |
| 46 | `theorem` | [bot_eq_top_of_rank_adjoin_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/bot-eq-top-of-rank-adjoin-eq-one.md) | 364 | `result-track:3e9652144f25e13d2645714dee4f52ed4d38a577e1aa26e5851d88cc7ab91514` |
| 47 | `theorem` | [bot_eq_top_of_finrank_adjoin_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/bot-eq-top-of-finrank-adjoin-eq-one.md) | 370 | `result-track:d34c54a3d91c2fbe7d339c00e3f029b169fcdbed53160ab18a0d0ff090d27d97` |
| 48 | `theorem` | [subsingleton_of_rank_adjoin_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/subsingleton-of-rank-adjoin-eq-one.md) | 376 | `result-track:16262eaedfa96f1f725d21c184269301fa736a6a4a45f0bfa23b2dfa0c28f99f` |
| 49 | `theorem` | [subsingleton_of_finrank_adjoin_eq_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/subsingleton-of-finrank-adjoin-eq-one.md) | 380 | `result-track:720d2be05202603f6ba2badf35d47d1e35e65d0b8a51751791ce90c069cb1157` |
| 50 | `theorem` | [bot_eq_top_of_finrank_adjoin_le_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/bot-eq-top-of-finrank-adjoin-le-one.md) | 385 | `result-track:f4b06b487f7de68c2d374813b48d8755a8c453f33348952f8f61142368165022` |
| 51 | `theorem` | [subsingleton_of_finrank_adjoin_le_one](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/subsingleton-of-finrank-adjoin-le-one.md) | 390 | `result-track:c59f4c0513bd4e7388b66845761df80fdbaef072b3ecf039405e695b57486bf1` |
| 52 | `theorem` | [minpoly_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/minpoly-gen.md) | 405 | `result-track:d5e3df3eb30214347ba19fcf86e7b0699a8020f1740e655db577fddf7254cd5a` |
| 53 | `theorem` | [aeval_gen_minpoly](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/aeval-gen-minpoly.md) | 409 | `result-track:461e2f8d33c1049c829c32eb1f3150058cc4a3e5d36c21ff1d7363dbe2cbe2ca` |
| 54 | `def` | [adjoinRootEquivAdjoin](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoinrootequivadjoin.md) | 417 | `declaration-track:cf85ee3fd82f45cb4005f1ad72876faa02f0bc651212fa061b182d2953b3bfe8` |
| 55 | `theorem` | [adjoinRootEquivAdjoin_apply_root](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoinrootequivadjoin-apply-root.md) | 443 | `result-track:2669662e6dc57f1f48fa301ec6528074cb8c26c1cc0c3b9824c6f2c0c74399f2` |
| 56 | `theorem` | [adjoinRootEquivAdjoin_symm_apply_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoinrootequivadjoin-symm-apply-gen.md) | 448 | `result-track:d0de154cd874dabb4e8f730a7b002664e36e7c85b6428ddeca862c0a9e2239d2` |
| 57 | `theorem` | [adjoin_root_eq_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-root-eq-top.md) | 452 | `result-track:65431dfb75630cd81e319033b2ae46b55848a1763973827bc213a7a27fe2d146` |
| 58 | `def` | [powerBasisAux](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/powerbasisaux.md) | 461 | `declaration-track:9e547377c8df9e58a0f2aee3659d1b32289d135c900be626addd8d62f15d0bca` |
| 59 | `def` | [adjoin.powerBasis](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-powerbasis.md) | 471 | `declaration-track:61c2848376778275282eb088d1ad51e49bce472ee8b79b9f01915925d9fe32d1` |
| 60 | `theorem` | [adjoin.finiteDimensional](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-finitedimensional.md) | 480 | `result-track:7859e30381e462a3c69755a500497a3a5e648e676756fd2339c53f2411e370ca` |
| 61 | `theorem` | [isAlgebraic_adjoin_simple](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/isalgebraic-adjoin-simple.md) | 483 | `result-track:97ce0450f323e8844bf485f40ce8e2e48c2c4b10a0ee8420e554e621b13c3c7b` |
| 62 | `theorem` | [adjoin.finrank](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-finrank.md) | 489 | `result-track:83a568dd0bc76c5f3e30b704e119ebea588896452046e5c09451e6f865524945` |
| 63 | `theorem` | [adjoin_eq_top_of_adjoin_eq_top](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-eq-top-of-adjoin-eq-top.md) | 496 | `result-track:cc75d600b0d6437f4bccd668db073bb5f7795b2adf0c021a454b79f597d287b3` |
| 64 | `theorem` | [adjoin_minpoly_coeff_of_exists_primitive_element](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoin-minpoly-coeff-of-exists-primitive-element.md) | 504 | `result-track:b2f0f693c126a57beaa5a8124e7e904eb6ad9ac2bd81af480017665f39ade2b2` |
| 65 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/instance-source-edition-4.md) | 533 | `declaration-track:f066b026a1b0ca735d51ca98d21ca7193c57908d04d218c0072722fbfc979ecf` |
| 66 | `theorem` | [exists_lt_finrank_of_infinite_dimensional](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/exists-lt-finrank-of-infinite-dimensional.md) | 538 | `result-track:46acbb23e354121d09becc65e532ddde0e9a76995a06ab6e16907c91d7672d25` |
| 67 | `theorem` | [_root_.minpoly.degree_dvd](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/root-minpoly-degree-dvd.md) | 558 | `result-track:357365ffe6ea386e1699210158b8320df802a83c5d15e775be9261504ca66415` |
| 68 | `theorem` | [_root_.Polynomial.Irreducible.natDegree_dvd_finrank](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/root-polynomial-irreducible-natdegree-dvd-finrank.md) | 564 | `result-track:30602b939560b35186fa355abc3c327b2c0d0fd758a554bae7a087d5a5d79b59` |
| 69 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/instance-source-edition-3.md) | 578 | `declaration-track:bfdacd52fc616c2c160cd4c394bebdaa674f2c3de9963920cb061186ff42c4c8` |
| 70 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/instance-source-edition-5.md) | 584 | `declaration-track:fc3c190e7d7aeaeae5f951f72fe39354f709536bd81e78b9c8450dedb1723f24` |
| 71 | `theorem` | [isAlgebraic_iSup](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/isalgebraic-isup.md) | 592 | `result-track:cb93d190d52a7e49758b19e0076c9e02d1ca8f1a54de053658d663585cf6db1c` |
| 72 | `theorem` | [isAlgebraic_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/isalgebraic-adjoin.md) | 603 | `result-track:d519b602ed01f0a3ec72e1c5ca12012a842d67ffa5bda93116bddc3c0c22756e` |
| 73 | `theorem` | [finiteDimensional_adjoin](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finitedimensional-adjoin.md) | 611 | `result-track:1087531782a3fa343c44a4e4d21547ff2d676d21bd3ebb2c5ee969e607c5a7ce` |
| 74 | `def` | [_root_.PowerBasis.ofAdjoinSimpleEqTop](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/root-powerbasis-ofadjoinsimpleeqtop.md) | 620 | `declaration-track:b9ee08a46d211fb572ba2bd7ff9547416d3f40f6f515a7f66efe89664e781abb` |
| 75 | `lemma` | [_root_.PowerBasis.ofAdjoinSimpleEqTop_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/root-powerbasis-ofadjoinsimpleeqtop-gen.md) | 625 | `result-track:14c1e37993b11ab4cd878484234cb2eac11563b11ab006faadfb8c4a0af421f0` |
| 76 | `lemma` | [_root_.PowerBasis.ofAdjoinSimpleEqTop_dim](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/root-powerbasis-ofadjoinsimpleeqtop-dim.md) | 630 | `result-track:79381eced0b212119e8b5081135bf12143f927690bc8cb7247e720b02d1d649e` |
| 77 | `def` | [algHomAdjoinIntegralEquiv](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/alghomadjoinintegralequiv.md) | 639 | `declaration-track:f0f53124fc4f883ec13f3041ae46bdfd83d495b1b10d3b7c5ad1ba79ce765779` |
| 78 | `lemma` | [algHomAdjoinIntegralEquiv_symm_apply_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/alghomadjoinintegralequiv-symm-apply-gen.md) | 645 | `result-track:2d9259f714e2e9cb63d11870cdb4c15b7d8bad9de1214198823e7e7edd6938f9` |
| 79 | `def` | [fintypeOfAlgHomAdjoinIntegral](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/fintypeofalghomadjoinintegral.md) | 653 | `declaration-track:ff74d82cd0eec150ad0d8d2e30e3b5f97445addf7084d71c111f036034397e98` |
| 80 | `theorem` | [card_algHom_adjoin_integral](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/card-alghom-adjoin-integral.md) | 656 | `result-track:35ab76096f5704c84f2ac5dbc65dca90724cef4ad9f3c157000d05d495b798b3` |
| 81 | `theorem` | [_root_.Polynomial.irreducible_comp](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/root-polynomial-irreducible-comp.md) | 668 | `result-track:936437017bf974cf44f50c1f013c90845734f85c1c3bf20bfba26764301c35c1` |
| 82 | `theorem` | [eq_of_root](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/eq-of-root.md) | 726 | `result-track:715587fcd8ae1c642611d183ff8f6ca9c81d4e82727ea59a9626737604f1feb9` |
| 83 | `def` | [algEquiv](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/algequiv.md) | 732 | `declaration-track:6713cb608f678863e0f24914a11e9003304ba1aed5e07c96b1aa85729ed6beae` |
| 84 | `theorem` | [algEquiv_apply](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/algequiv-apply.md) | 739 | `result-track:ebdfc2e21f33bc7d42c01a0007af31ad6520a3366a0e9ea3bec49b6786bf13f3` |
| 85 | `def` | [equivAdjoinSimple](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/equivadjoinsimple.md) | 755 | `declaration-track:5d537a1fa84b61299214a6e9d5e8f6b4f9be82292f0588c93b99fa5b37e3b72f` |
| 86 | `theorem` | [equivAdjoinSimple_aeval](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/equivadjoinsimple-aeval.md) | 760 | `result-track:c0957d716d9afafe598f4a08fb73fd07887f61f379dd2aa8b9000d322e4cb765` |
| 87 | `theorem` | [equivAdjoinSimple_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/equivadjoinsimple-gen.md) | 765 | `result-track:55794fce2f29500cd2fd26d832eb3cac4643500689f2ff060a5312c8cfbc75ea` |
| 88 | `theorem` | [equivAdjoinSimple_symm_aeval](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/equivadjoinsimple-symm-aeval.md) | 770 | `result-track:f7db83911dd8063b6fbd20462e00a92c5dc1ec7bc6f0e9135e0e02361c6a8a65` |
| 89 | `theorem` | [equivAdjoinSimple_symm_gen](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/equivadjoinsimple-symm-gen.md) | 775 | `result-track:12af68e11795978b7dcf4488fa0dd77063593fdc71f8e0602ab3f05c5b68b52a` |
| 90 | `theorem` | [lift_cardinalMk_adjoin_le](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/lift-cardinalmk-adjoin-le.md) | 789 | `result-track:e52cd9d8f54616be03ba995bec8522d1d3c9e9aeee9570cecaf94a1ce3e91e62` |
| 91 | `theorem` | [cardinalMk_adjoin_le](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/cardinalmk-adjoin-le.md) | 798 | `result-track:0f6b85982abc2ebd4c1e986e467781a45f262219637112f1c94988acbd089297` |
| 92 | `theorem` | [isAlgebraic_adjoin_pair](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/isalgebraic-adjoin-pair.md) | 806 | `result-track:a580c0cc7dd468ccf5ccc13e2f1a19777d0e108840994d83e095325c10c7dc0b` |
| 93 | `theorem` | [finiteDimensional_adjoin_pair](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/finitedimensional-adjoin-pair.md) | 811 | `result-track:b88b47992a830835332cb495d77405bb049215d5b3bee577c174518cfb07c823` |
| 94 | `theorem` | [mem_adjoin_pair_left](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/mem-adjoin-pair-left.md) | 820 | `result-track:da55aa88b2d05ad008965089359a4bb0c17d8fd647abd22581a62938a9aa4db6` |
| 95 | `theorem` | [mem_adjoin_pair_right](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/mem-adjoin-pair-right.md) | 822 | `result-track:1cd8f96ad6c88758d18d82d1f8e8d007720119fcb2969a60f7ba819c717eefd3` |
| 96 | `def` | [AdjoinPair.gen₁](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoinpair-gen.md) | 826 | `declaration-track:46541458553e144a3316018372e5c786c6177809cc6b8c0926544d5631d909fd` |
| 97 | `def` | [AdjoinPair.gen₂](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoinpair-gen-source-edition-2.md) | 829 | `declaration-track:6bc45f095cbec073d1fae256b6add3ea4387e59c57df555708c6c253f6d51ddc` |
| 98 | `theorem` | [AdjoinPair.algebraMap_gen₁](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoinpair-algebramap-gen-source-edition-2.md) | 831 | `result-track:7982b5b7e1af1895b8375dfd13134ff5589a93774c58b4c4c3a9c5c700426281` |
| 99 | `theorem` | [AdjoinPair.algebraMap_gen₂](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/adjoinpair-algebramap-gen.md) | 833 | `result-track:1da9b486fbf714499f59ffc267cc60a8e9f2789cd306b90f49a20308fa9be987` |
| 100 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AdjoinBasicPublic.lean/declarations/instance.md) | 839 | `declaration-track:20ea37412cb24f78e1e39e7b32ba4968f5efbef120780dd4c96579424f6ca220` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e3c7cd71d9472f154d83e5d555b09110cbdb14f3a5057e3bcb211e6ad3f3047 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant3735eb1dae0583c9ac40c6d3a21e5f74fd1bc08d0cba95544745b45987fcd38d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

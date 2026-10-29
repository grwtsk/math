# Verification target: Algebraic Integral Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cca6655112d4a938c47e8076287e10b113b1edb9",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cca6655112d4a938c47e8076287e10b113b1edb9`.

Source path: `GRWTSK/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean.json)

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
| 1 | `theorem` | [IsIntegral.isAlgebraic](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isintegral-isalgebraic.md) | 61 | `result-track:dfc3b567d2a3f06a1258d0f771b587a2670e1e9ec08ba0c0ede92b16cb892c10` |
| 2 | `instance` | [Algebra.IsIntegral.isAlgebraic](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isintegral-isalgebraic.md) | 64 | `declaration-track:b10ad7a7483a19ce88a57ec4eb79cdb9c037520f2721e60cbc0842f64213b8f7` |
| 3 | `theorem` | [isAlgebraic_iff_isIntegral](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-iff-isintegral.md) | 74 | `result-track:f4a119c2818f31aa982197ca7312742f0aee26745de5870451ca86afe7891c72` |
| 4 | `theorem` | [Algebra.isAlgebraic_iff_isIntegral](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isalgebraic-iff-isintegral.md) | 80 | `result-track:54bc6a118bb1e326fbe78803efa067e40419c7d186a55f6795997726e2a670d0` |
| 5 | `instance` | [Algebra.IsAlgebraic.isIntegral](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isalgebraic-isintegral.md) | 89 | `declaration-track:fe5aed22b998388424ae9968e72c3afd1c5d37fcd81b9644c1e3ac87d740b823` |
| 6 | `theorem` | [Algebra.IsAlgebraic.of_isIntegralClosure](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isalgebraic-of-isintegralclosure.md) | 92 | `result-track:12ca26f51813969ba7397239959fcf48d2609b4b0bd8c25fe6a459c71390aa32` |
| 7 | `theorem` | [IsAlgebraic.of_finite](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-of-finite.md) | 108 | `result-track:d2f8cf20c620a7980a1b1c8c2205915c099ee1a0a860ab09ae2e662675543c1e` |
| 8 | `instance` | [Algebra.IsAlgebraic.of_finite](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isalgebraic-of-finite.md) | 115 | `declaration-track:822560ec104355e15a412fe6c22e4fd8949fd34de47fc5e983a843b8a82abed8` |
| 9 | `theorem` | [transcendental_aeval_iff](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/transcendental-aeval-iff.md) | 128 | `result-track:d7d468b8825b7fab9624360d113220cad18fa1550e246ab0c2fe85ca4b29cc36` |
| 10 | `abbrev` | [algEquivEquivAlgHom](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algequivequivalghom.md) | 140 | `declaration-track:a1159b202a995e19e650c7e1ef2dfc509796fc1cea93e8741ecb39345c25b8a3` |
| 11 | `theorem` | [exists_integral_multiple](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/exists-integral-multiple.md) | 154 | `result-track:4863f0383a9693fb763889ad97b47492295baa1cb50e22de6e8728072992b240` |
| 12 | `theorem` | [Algebraic Integral Namespaced Public](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/exists-integral-multiples.md) | 168 | `result-track:429c679281bcdae57301b0ce420f043ee8c0e2f2ab6cf9cae11307b562f0d8af` |
| 13 | `theorem` | [of_smul_isIntegral](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/of-smul-isintegral.md) | 177 | `result-track:c7e5e686fddfc3a4ccd0ae71c655d69a379c24b8d2dfa68e9da1505e7ace0479` |
| 14 | `theorem` | [of_smul](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/of-smul.md) | 188 | `result-track:09d1d9fd1a3b080e165bca5a706338fccd5c52302f86d25c2c1c3cd3f2d0449f` |
| 15 | `theorem` | [iff_exists_smul_integral](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/iff-exists-smul-integral.md) | 193 | `result-track:84f3cc7a537de1ed75a41d97e0081ee9d24a1f21eb2660e1a1fc5a7db3deb159` |
| 16 | `lemma` | [exists_smul_eq](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/exists-smul-eq.md) | 207 | `result-track:5aa89681295303bf75a05081bef127e427906ce91f60b0a9098430fbd0c9ff2f` |
| 17 | `lemma` | [exists_nsmul_eq](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/exists-nsmul-eq.md) | 215 | `result-track:82633a3ccab9bc01d96df523dfb4714d907aff8ee5ad43c8373a38bd78c46aea` |
| 18 | `theorem` | [restrictScalars_of_isIntegral](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/restrictscalars-of-isintegral.md) | 238 | `result-track:ac97bfe9fe61543eb0e4af362a2f64728b01b71afad624677b504990715f4340` |
| 19 | `theorem` | [restrictScalars](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/restrictscalars.md) | 255 | `result-track:87180665ca5988acb0de2a890972624393062dbd35e5f6650f070c1688468df6` |
| 20 | `theorem` | [Algebraic Integral Namespaced Public](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/trans-isalgebraic.md) | 279 | `result-track:02899c04d3a8e2838d395e903025c7b13a8abf8f04747c60ef1c314583109684` |
| 21 | `lemma` | [neg](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/neg.md) | 294 | `result-track:fd0d5e890ffc19018baaca4421e78cce46b7a83711f068f4dd8bb422c9cf080f` |
| 22 | `lemma` | [smul](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/smul.md) | 298 | `result-track:3d08f477b67250b3e37d9ef8bc0dd86f86de126ca9358c3e07ab18daf25ec527` |
| 23 | `lemma` | [nsmul](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/nsmul.md) | 302 | `result-track:70314235a9b33a745fcb58cd052b723718b48c8fffe31bf4680ce0ccc54d5641` |
| 24 | `lemma` | [zsmul](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/zsmul.md) | 305 | `result-track:f1884f1f79ac09732574ba32f70f6d3d60a9b9d6105ece8ca7ef8a9c47cfb394` |
| 25 | `lemma` | [tmul](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/tmul.md) | 309 | `result-track:8cc73246833f027e0b94ef13d36858505b31c2b36b4652cd2bda18e19c9c8032` |
| 26 | `lemma` | [mul](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/mul.md) | 324 | `result-track:8e1e4f13eabc6e4faee13cd2f7d2cd2317dd3233d1b80e1001adc1cec5b9a318` |
| 27 | `lemma` | [add](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/add.md) | 331 | `result-track:8c27a3183c61adf10efe929156e2e044def8837a622a59b7d72312ec30bc69ae` |
| 28 | `lemma` | [sub](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/sub.md) | 338 | `result-track:b56ffd69a264ccbb1cd751fd181e8d2e0eac8d7f855c3cd55e95c4062e92e50d` |
| 29 | `lemma` | [pow](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/pow.md) | 342 | `result-track:5703881cb38706a99ddb1c53c8181c452cbf95ed7d4ab2ea7814cb4879ac2910` |
| 30 | `theorem` | [IsAlgebraic.trans](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-trans.md) | 355 | `result-track:b1b232ad27bec6f3aef162d2829a3c83dc08b6131f53f036fde041d1d665ccb3` |
| 31 | `theorem` | [IsIntegral.trans_isAlgebraic](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isintegral-trans-isalgebraic.md) | 359 | `result-track:8012ab58a8f2f916ea933bce9137d6c786e4c7f81460a5461c0ed1589a0e01d0` |
| 32 | `theorem` | [IsAlgebraic.trans_isIntegral](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-trans-isintegral.md) | 363 | `result-track:ae1d35d685c717b04eb64f08921d16cca5a1c14ed53b367c9600d36e47a25be6` |
| 33 | `theorem` | [IsIntegral.isAlgebraic_iff](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isintegral-isalgebraic-iff.md) | 369 | `result-track:2bb1bce6532880dab3c9adfdbb25abfa5961debf4cc7205870e3c12d248f2261` |
| 34 | `theorem` | [IsIntegral.isAlgebraic_iff_top](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isintegral-isalgebraic-iff-top.md) | 373 | `result-track:c1e0bad38c51ff82b4b6826840daa1e4ea0eb9a5634650b0b1377677b0c2cb5e` |
| 35 | `theorem` | [IsAlgebraic.isAlgebraic_iff](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-isalgebraic-iff.md) | 377 | `result-track:97dec76057936ff48bffb573ba048f501aca7377bff39d2f9fa88a9d512aa82e` |
| 36 | `theorem` | [IsAlgebraic.isAlgebraic_iff_top](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-isalgebraic-iff-top.md) | 381 | `result-track:c0b586deda85c91581ab492fe7f518d03c1605a50038c41de8c93c338013fc97` |
| 37 | `theorem` | [IsAlgebraic.isAlgebraic_iff_bot](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-isalgebraic-iff-bot.md) | 385 | `result-track:94d8797acc8a2c22bdde37eb383e23c6200fd8a1ef176a5e16eaf9c42e9a18dd` |
| 38 | `def` | [Subalgebra.algebraicClosure](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/subalgebra-algebraicclosure.md) | 394 | `declaration-track:79e0cc5c3499592365281f2399b4c3dc92b0e0bc96bc0929e9b4c1d5eb159112` |
| 39 | `theorem` | [Subalgebra.mem_algebraicClosure](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/subalgebra-mem-algebraicclosure.md) | 400 | `result-track:0c966d032aede5e512d96c8335081fa4aaa22fda67ce1b2f5d99fb8680ffdbfa` |
| 40 | `theorem` | [integralClosure_le_algebraicClosure](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/integralclosure-le-algebraicclosure.md) | 403 | `result-track:f7c94a591a497eba0bf47e8f9f876085e1c9bc554b10f1ddb1ac96fcf0162f95` |
| 41 | `theorem` | [Subalgebra.algebraicClosure_eq_integralClosure](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/subalgebra-algebraicclosure-eq-integralclosure.md) | 407 | `result-track:6b0f6b2a03a16713e19713e41f067521714a77386ee6639ed8b967c8a6676a69` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 411 | `declaration-track:0de58f820b14c6f3cc8f75454d5ba677a2251495b5319f8f15c139b43d1716f9` |
| 43 | `theorem` | [Algebra.isAlgebraic_adjoin_iff](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isalgebraic-adjoin-iff.md) | 416 | `result-track:f70f8bfbca9a58a74d410459e99f2db1876382ecea899428ba0d5e6d430a370a` |
| 44 | `theorem` | [Algebra.isAlgebraic_adjoin_of_nonempty](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isalgebraic-adjoin-of-nonempty.md) | 420 | `result-track:7eef1ac19f223d28c6891a0287a4d55cbaeea3902662cf7ec81e7f22b673d8b8` |
| 45 | `theorem` | [Algebra.isAlgebraic_adjoin_singleton_iff](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isalgebraic-adjoin-singleton-iff.md) | 430 | `result-track:205dbe6a89f6e14ca209628a9627adfee941afa256356bddcc989ff49711d781` |
| 46 | `theorem` | [IsAlgebraic.of_mul](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-of-mul.md) | 434 | `result-track:fb200ad85ba080ba76208cb0183756f0e4f96a20beceba1cc5cb70ac6cd6d5fd` |
| 47 | `theorem` | [IsAlgebraic.adjoin_of_forall_isAlgebraic](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-adjoin-of-forall-isalgebraic.md) | 443 | `result-track:03d7a9b025a23c2da3c5d99edbf37161c5d1fd0726bfa150c579a6cf22f21264` |
| 48 | `lemma` | [extendScalars_of_isIntegral](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/extendscalars-of-isintegral.md) | 471 | `result-track:849b5a4716579d14c092b24c488f248ebfd55befff2604279ef600666c013fb9` |
| 49 | `lemma` | [extendScalars](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/extendscalars.md) | 477 | `result-track:e99bd24a20d9662cb414e23fc21d382f53593a64f759f0a2dd18485c0cc56ed6` |
| 50 | `lemma` | [integralClosure](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/integralclosure.md) | 487 | `result-track:fc6a276a66fdea2a072784f111b0999d36063bff268c2bd1631d911e1a28112c` |
| 51 | `lemma` | [subalgebraAlgebraicClosure](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/subalgebraalgebraicclosure.md) | 490 | `result-track:d2d79c776166e40d864c65252456e815bfed578b0739c26ded5259d89d53abe5` |
| 52 | `theorem` | [IsIntegral.transcendental_iff](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isintegral-transcendental-iff.md) | 499 | `result-track:2a3ac534c469b372bc2e42094a34a3e4619766e870dc547953e126aae21b9e99` |
| 53 | `theorem` | [IsAlgebraic.transcendental_iff](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isalgebraic-transcendental-iff.md) | 503 | `result-track:9d59157cbd486f0240b8f81e140df7d514710a15f81fe9298577adbd09f56720` |
| 54 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 518 | `declaration-track:473d7b4c13d88ca2171cfd393ff0d0371ba98b46e0e56941398c8fd11f2989df` |
| 55 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 527 | `declaration-track:413943c3e6d8eeb2cac1677a3267e2166401d2a0db8c8b66cb5f516e85676637` |
| 56 | `theorem` | [isBaseChange_of_isFractionRing](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/isbasechange-of-isfractionring.md) | 532 | `result-track:700535ecdca530efcc71e182ebe8ad974eec98a39e478096ecb33a95501c0ffa` |
| 57 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 538 | `declaration-track:f149bd64f948c67e35478827846ec55a6c0312510f7e4699babce4f99f21f7f4` |
| 58 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 539 | `declaration-track:38e01a343c4838366f8dccf200f852752397a625355fb8e97b76f6a0234fad7b` |
| 59 | `theorem` | [lift_rank_of_isFractionRing](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/lift-rank-of-isfractionring.md) | 551 | `result-track:e1ed6c855ba9a00ebf135234cb7ca5fbc07f36fc8378bd21ac264bff3f8445fb` |
| 60 | `theorem` | [rank_of_isFractionRing](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/rank-of-isfractionring.md) | 558 | `result-track:11ce079ff493bee314116e5e12af59d12a9654f8abf4e6dfb2f1fe4d0af04b7e` |
| 61 | `theorem` | [rank_fractionRing](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/rank-fractionring.md) | 566 | `result-track:190481c77a1b62297e2c4673bac59ed1e865218d4783cf55f7ff9800bff119da` |
| 62 | `theorem` | [Module.finrank_mul_finrank'](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/module-finrank-mul-finrank.md) | 576 | `result-track:1f4d0d45c2b10ae379a9137e0270edf4ced4388586bbfe948fa9f619bf91d1fd` |
| 63 | `theorem` | [rank_polynomial_polynomial](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/rank-polynomial-polynomial.md) | 600 | `result-track:9657d14d6125b3271fb0d97e778f6df2f234c6d665afa576c7a96b0707248d39` |
| 64 | `theorem` | [rank_mvPolynomial_mvPolynomial](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/rank-mvpolynomial-mvpolynomial.md) | 603 | `result-track:16ecbc19d384018b1dfe097e78ebca2612f8b8df56d3b84919a26dc2aeb0d63f` |
| 65 | `instance` | [Algebra.IsAlgebraic.tensorProduct](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-isalgebraic-tensorproduct.md) | 618 | `declaration-track:3a5f6ab8210b16ba663ddba02627e61f52b3dba648c67aa42a7d3f49cef66a84` |
| 66 | `theorem` | [Algebra.IsPushout.isAlgebraic'](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-ispushout-isalgebraic.md) | 627 | `result-track:46d1a2bfbd9d56a226f40530302b1cff793b5f47e7dd18682dc27754d047567e` |
| 67 | `theorem` | [Algebra.IsPushout.isAlgebraic](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/algebra-ispushout-isalgebraic-source-edition-2.md) | 630 | `result-track:773bb8b098fc82d4860f045e9a1e202b568cf532fe0685c3737b0d5f462894ae` |
| 68 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 635 | `declaration-track:8328e45bffea069a6213e778b690a3aa465f7566a22b361b17117a2c312ec085` |
| 69 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 637 | `declaration-track:167af6b0e38aaa4b76ac8e4aa29182889118256444928fa98e5f86b7c65a2b1b` |
| 70 | `theorem` | [Polynomial.exists_dvd_map_of_isAlgebraic](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/polynomial-exists-dvd-map-of-isalgebraic.md) | 643 | `result-track:11f2de7f12327cd190590f1a0ff9288afe73a813e741b5da4a64c786be72c23d` |
| 71 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance.md) | 647 | `declaration-track:06accf90662f06c13f99847da18adde5415206cfc2a0969792353d0bfecbdb81` |
| 72 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 650 | `declaration-track:84d8fd85ebdf89474e813180a145af40dcc803b96ab1494e265bfd06cbce3f22` |
| 73 | `theorem` | [MvPolynomial.exists_dvd_map_of_isAlgebraic](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/mvpolynomial-exists-dvd-map-of-isalgebraic.md) | 656 | `result-track:bf89e80797f88e8abff814bbd770c8c0813c0622cfffff5e1c30800b062e93c1` |
| 74 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 665 | `declaration-track:66be5735a6c25d7e6da28e6ba1d1aa42953a5d4fee19737b4b1d4816ba7810f1` |
| 75 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 668 | `declaration-track:26338a0755917efbb3d5ce2097304c34e682ee980a2aa1a5a634009031e8c281` |
| 76 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 670 | `declaration-track:9345e68bcbded29e3e0fb2dc5cddb949c62d3943dd1618cce66c15ffc2cfee63` |
| 77 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 674 | `declaration-track:e960f207da371262217f7230a26d30d279db3453c9a1885cf8e6251a0ea0abcc` |
| 78 | `theorem` | [rank_fractionRing_polynomial](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/rank-fractionring-polynomial.md) | 680 | `result-track:0362a57708cfb0b1bfe3918164373f07ea151f59de8f463d925d579f31a161c0` |
| 79 | `theorem` | [rank_fractionRing_mvPolynomial](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/rank-fractionring-mvpolynomial.md) | 686 | `result-track:6eb5b1eb6ceaa9ca31f623cab01f11df86b68bfc66e6cea82f2edb433ec7a526` |
| 80 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIntegralNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 703 | `declaration-track:4edb44419c1136a8c1f17d57bc69e025f96206b30c268a01e05f4ea635ff72ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a1d17a96f1851caddd4a4ea410c2b4214f493988c926959c11e29ae5db58b03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean","GRWTSK/_verification/specifications/Algebra/Integral/Variant571d3ab7b029944c0f1311703e11939b7481d61dd04b48ed6a6528cee41aab9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

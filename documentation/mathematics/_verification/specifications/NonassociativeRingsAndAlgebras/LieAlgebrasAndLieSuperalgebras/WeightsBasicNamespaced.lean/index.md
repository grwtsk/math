# Verification target: Weights Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1703d2ca8214442d1c2fe73bedb6ce6d37b03b6d",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1703d2ca8214442d1c2fe73bedb6ce6d37b03b6d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Divisibility.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Nilpotent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Engel` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/weightspace.md) | 67 | `declaration-track:524ab784a16c468ff276db20ea70087781036f282ac86c4b1f97c20b4fb188cd` |
| 2 | `lemma` | [mem_weightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/mem-weightspace.md) | 71 | `result-track:564b8d1d9e17df3c66a9a2aeae892f55745816a2d33baa81d0a54a4b15a353c7` |
| 3 | `theorem` | [weight_vector_multiplication](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/weight-vector-multiplication.md) | 80 | `result-track:bf7570b313cdbe9c07918d7363d47c385b244511bb2c22a69c5230f4b4354bce` |
| 4 | `lemma` | [lie_mem_maxGenEigenspace_toEnd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/lie-mem-maxgeneigenspace-toend.md) | 152 | `result-track:2583122d63e1767b46557ebb8d0f79669ccdced3268f981a0e78e25f37fa14b1` |
| 5 | `def` | [genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/genweightspaceof.md) | 167 | `declaration-track:d0b0b470669d379db8235447087979d3fef8a9c81799f48d7f3c1048b2c6fcba` |
| 6 | `theorem` | [mem_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/mem-genweightspaceof.md) | 181 | `result-track:38fcfdca87c49b5b89fd219823a2bc3a061d827b4217144edb951e9896fa9c26` |
| 7 | `theorem` | [coe_genWeightSpaceOf_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/coe-genweightspaceof-zero.md) | 185 | `result-track:98e4760472620e950fd2afe52e4a68277ec94c066ec7161f976c4d6194ddc191` |
| 8 | `def` | [genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/genweightspace.md) | 195 | `declaration-track:0630c62877395f8b3885ded15b98e16602a9e2de0c8a12beac3181aa28d5c568` |
| 9 | `theorem` | [mem_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/mem-genweightspace.md) | 198 | `result-track:1e26c07515df0928ec10981deaf49e160751cb2d43cec3b8f913d0db9315b3a5` |
| 10 | `lemma` | [genWeightSpace_le_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/genweightspace-le-genweightspaceof.md) | 202 | `result-track:a3784c09a14161e36a0a3930a88159a60d769705282c6a7649fe6818767b9516` |
| 11 | `lemma` | [weightSpace_le_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/weightspace-le-genweightspace.md) | 206 | `result-track:ed021b9efda7755188652ea1dcd3f1399faeeed6c000ea470c0c1d712667a889` |
| 12 | `structure` | [Weight](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/weight.md) | 217 | `declaration-track:e50852bc73f903d12d4c548a203c5602135ad29d753d449d5ef6c874fff0e2d1` |
| 13 | `instance` | [instFunLike](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instfunlike.md) | 224 | `declaration-track:5ae23ff0b8dcde82f2a6cda1c8c1c65944c9cf6ac888a2f145e10a44779ac0ac` |
| 14 | `lemma` | [coe_weight_mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/coe-weight-mk.md) | 228 | `result-track:659e0e54bbe1d73561ece8a82afdf22a3ec24baccdac01a47e81ce38ebd894d7` |
| 15 | `lemma` | [genWeightSpace_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/genweightspace-ne-bot.md) | 232 | `result-track:f0f2e8dd3814337b1e6976a3ae5036077d34afad387df18911301bab9322d354` |
| 16 | `lemma` | [ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/ext.md) | 236 | `result-track:41150fb1dc139d83068a197c02e3a6413b1f5196c6061bdf91590d7f8687a2d6` |
| 17 | `lemma` | [ext_iff'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/ext-iff.md) | 239 | `result-track:d25c8aebda11a8ca895ede316b763f836302c2c25829687732e875c08afb4025` |
| 18 | `lemma` | [exists_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/exists-ne-zero.md) | 241 | `result-track:608b876d8d7b47c9376611bf1d78aca5cd68d300ba3e4aa229bcbe75f001afb6` |
| 19 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 245 | `declaration-track:8cc36e1b20da25747cd76bf31addb3dd3a38a9dcc9a8a2542ab888b66f5083f9` |
| 20 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 248 | `declaration-track:66dafe17924cb95c04c64ec265fdf90c9e211d457026d95ff7458448657b31f5` |
| 21 | `lemma` | [coe_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/coe-zero.md) | 252 | `result-track:33294fbd6b69c0e9eedf8a41c477692c9fc2a354848eb3a71d2e2e12b2261059` |
| 22 | `lemma` | [zero_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/zero-apply.md) | 254 | `result-track:18e0a6eac81c98537bff7e71a80e9f96fc61f476a8e33c7a98b5f7ac9d1d3c4d` |
| 23 | `def` | [IsZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/iszero.md) | 260 | `declaration-track:1572498004be74d9e4b3b8cfbaabdb262f6c29d6a2bac0c5bda72b431d5157f8` |
| 24 | `lemma` | [IsZero.eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/iszero-eq.md) | 262 | `result-track:2b3f9f742525fd074c83ad2a7d596c13182ed81db144290c5142f6400f304805` |
| 25 | `lemma` | [coe_eq_zero_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/coe-eq-zero-iff.md) | 264 | `result-track:dab31c59df2a64ece1991d8c842f7474d4b92dc5ba357951373f45922c12146a` |
| 26 | `lemma` | [isZero_iff_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/iszero-iff-eq-zero.md) | 266 | `result-track:68141bed5eddad098af278f8eccbc155ad8d7f129111620ab8a79368ee299ca8` |
| 27 | `lemma` | [isZero_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/iszero-zero.md) | 269 | `result-track:b905b29acbb9db5de0dc31ef20f06b058d3e0672e75d45fef3002f5d106336ba` |
| 28 | `abbrev` | [IsNonZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isnonzero.md) | 272 | `declaration-track:ea4b5813aad0d80202678a0d463779e133b0193233bb7273c56178c84a3b95a2` |
| 29 | `lemma` | [isNonZero_iff_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isnonzero-iff-ne-zero.md) | 274 | `result-track:5604054c6fd8a08f1346f8f690375e6d2248189f3c26532dac90ce6ade38f77e` |
| 30 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 277 | `declaration-track:bf90a37b397940e339b732cfc3e034b0f9d4121173335ffb6f5b6d2b85b69ffc` |
| 31 | `def` | [equivSetOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/equivsetof.md) | 281 | `declaration-track:c67c30d08e7f8c10b77feb8ce0c546597c5d2ed978bd096fa76fe4ba7b0c9f3d` |
| 32 | `lemma` | [genWeightSpaceOf_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/genweightspaceof-ne-bot.md) | 287 | `result-track:822351b939f5059543a36861c1ab5507ccb57397759f0196dae9df8bd6629239` |
| 33 | `lemma` | [hasEigenvalueAt](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/haseigenvalueat.md) | 294 | `result-track:07fb7cd6cdbfdde6418fa6725a8b357ffe5fa31831c2ae518ba618a6e5dbf271` |
| 34 | `lemma` | [apply_eq_zero_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/apply-eq-zero-of-isnilpotent.md) | 300 | `result-track:d3ea3276d94f9e204a5bfac1a613e4af528df899375a5945c46e175bcb14d5a9` |
| 35 | `theorem` | [zero_genWeightSpace_eq_top_of_nilpotent'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/zero-genweightspace-eq-top-of-nilpotent.md) | 309 | `result-track:1ea0e79eeb5a23d1623caac0eacdc0a1cad80d4a0468080f30770f74cd740d59` |
| 36 | `theorem` | [coe_genWeightSpace_of_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/coe-genweightspace-of-top.md) | 314 | `result-track:8bc9601a3bd33449600672dce1220d053e174f5c10e968402a5f9a4736fc9c89` |
| 37 | `theorem` | [zero_genWeightSpace_eq_top_of_nilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/zero-genweightspace-eq-top-of-nilpotent-source-edition-2.md) | 322 | `result-track:545cf274dc67d98bbd0be8085cd9003c7fbe00a6b0666b24f94fd8d3613d4d6f` |
| 38 | `theorem` | [exists_genWeightSpace_le_ker_of_isNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/exists-genweightspace-le-ker-of-isnoetherian.md) | 331 | `result-track:b58b36c809034b085ed350f11c6f00527408648855e46be9a7a61097382dd280` |
| 39 | `theorem` | [exists_genWeightSpace_zero_le_ker_of_isNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/exists-genweightspace-zero-le-ker-of-isnoetherian.md) | 341 | `result-track:68eba38e054185f87fa31c7bc40cb73f3f7f786fb49cac6c1a1f10c27a31d1ad` |
| 40 | `lemma` | [isNilpotent_toEnd_sub_algebraMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isnilpotent-toend-sub-algebramap.md) | 346 | `result-track:8bfacac29abb44536ce6e5f42e2d0dedff70eecdda1f924ae4298d270184d328` |
| 41 | `theorem` | [isNilpotent_toEnd_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isnilpotent-toend-genweightspace-zero.md) | 361 | `result-track:c2639fc18afec0396071c7fe021f1c6e409310998ba7464aa6c93401c88aaad7` |
| 42 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 366 | `declaration-track:58e41369f8bbeb5e8b7cc70ff0a2fa125c3ee9707650a750664879a4b08b8394` |
| 43 | `lemma` | [genWeightSpace_zero_normalizer_eq_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/genweightspace-zero-normalizer-eq-self.md) | 373 | `result-track:27456a9b0fe92f60d26eae24c640acc450f66e3032561cb9a77e04c14cc06fe2` |
| 44 | `lemma` | [iSup_ucs_le_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isup-ucs-le-genweightspace-zero.md) | 384 | `result-track:dc5f400204e97201c9b1d5f92d2b35c47d8df84241663c09be58a2dee3ab0d79` |
| 45 | `lemma` | [iSup_ucs_eq_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isup-ucs-eq-genweightspace-zero.md) | 390 | `result-track:d9633b60503ca1a1be35f4bd1cd33072beeec7e87edfd174b819332cf89e9f0f` |
| 46 | `def` | [posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/posfittingcompof.md) | 407 | `declaration-track:5bc82f53135908340dd34b36d33f66399ee20f4742967bb113278aeb309ccf20` |
| 47 | `lemma` | [mem_posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/mem-posfittingcompof.md) | 430 | `result-track:eea9fcd1f237b4ed6a786fd04343d9c84458adbac612cd1115df73a40085bee9` |
| 48 | `lemma` | [posFittingCompOf_le_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/posfittingcompof-le-lowercentralseries.md) | 434 | `result-track:3516f5a594269c91e86a098164afe4cbd0e76048a761a07042d4fb4c2d18828c` |
| 49 | `lemma` | [posFittingCompOf_eq_bot_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/posfittingcompof-eq-bot-of-isnilpotent.md) | 447 | `result-track:2cb90efc6c93e31c0bbfc9d8b893588d69b9249b852714d3c084ad527f5297c8` |
| 50 | `def` | [posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/posfittingcomp.md) | 460 | `declaration-track:e578e3ad3f880aa1d51b063fea5497512dfa6f8dd0ae0e5d0e86a0065b7722b7` |
| 51 | `lemma` | [mem_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/mem-posfittingcomp.md) | 463 | `result-track:47e4317165601fe90733715f8caea9908fea300c93e68efe6fb1a6b29bbc7229` |
| 52 | `lemma` | [posFittingCompOf_le_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/posfittingcompof-le-posfittingcomp.md) | 467 | `result-track:553f8ea41a63b010ae297942721417a3837654db4f4ff45a2bbf4bca2de32cfd` |
| 53 | `lemma` | [posFittingComp_le_iInf_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/posfittingcomp-le-iinf-lowercentralseries.md) | 471 | `result-track:4158c32cb39bd0db459f9ccca95fc05b6742e78c0963a01da57ae537364fac86` |
| 54 | `lemma` | [iInf_lowerCentralSeries_eq_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/iinf-lowercentralseries-eq-posfittingcomp.md) | 476 | `result-track:209a160269ca2a4bfff8515ecf918639be53d68d84301cf6636eb5f710354dbd` |
| 55 | `lemma` | [posFittingComp_eq_bot_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/posfittingcomp-eq-bot-of-isnilpotent.md) | 498 | `result-track:c6ba13b30474e3681d5a983226602cc60257562da67b82a43c16104430c11fe1` |
| 56 | `lemma` | [map_posFittingComp_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/map-posfittingcomp-le.md) | 510 | `result-track:47b47429980be5205df8cc2da7826a8ebf1719b9035777330f3af8d3c2ec7dcc` |
| 57 | `lemma` | [map_genWeightSpace_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/map-genweightspace-le.md) | 521 | `result-track:9a65c0e8adaf928aeb3fe6cbf33eaa835a7a810fb315b60031ca6db6aad40ddb` |
| 58 | `lemma` | [comap_genWeightSpace_eq_of_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/comap-genweightspace-eq-of-injective.md) | 535 | `result-track:4dbc2c7ffdbbb8ba42cec29a804c2e31c1efa7d7e961f41e4cf25f3a967c7da8` |
| 59 | `lemma` | [map_genWeightSpace_eq_of_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/map-genweightspace-eq-of-injective.md) | 551 | `result-track:281fe4cae57573e7c99feae3549c10b8a13faf0a0604671d76f3aa1e279758be` |
| 60 | `lemma` | [map_genWeightSpace_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/map-genweightspace-eq.md) | 559 | `result-track:322b1782841d1903624c3643cedaade823adb019af9356baa36b69bd2509415f` |
| 61 | `lemma` | [map_posFittingComp_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/map-posfittingcomp-eq.md) | 563 | `result-track:ed86765d15c2638aa71c7f7d2dd4c0e1481c442946ce218623a2f5550a443a55` |
| 62 | `lemma` | [posFittingComp_map_incl_sup_of_codisjoint](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/posfittingcomp-map-incl-sup-of-codisjoint.md) | 574 | `result-track:d66d23febde34c790712c0f8afa6501a8c1b0d19ca4cba63d4b8e1a395a58cae` |
| 63 | `lemma` | [genWeightSpace_genWeightSpaceOf_map_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/genweightspace-genweightspaceof-map-incl.md) | 587 | `result-track:73106cffa11174a0a15188e415f772209861c400b0f84d656b3ef129dc2772e4` |
| 64 | `lemma` | [isCompl_genWeightSpaceOf_zero_posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/iscompl-genweightspaceof-zero-posfittingcompof.md) | 599 | `result-track:f05389720cdbe2428b37f7b4cc4910929a89fba8d27d7d7c40fa5ef6057317bb` |
| 65 | `lemma` | [isCompl_genWeightSpace_zero_posFittingComp_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/iscompl-genweightspace-zero-posfittingcomp-aux.md) | 608 | `result-track:d2566ef7eeb3276d695bfbe389949766496baf484b5c5a25c72dbe1ef25cbd77` |
| 66 | `lemma` | [isCompl_genWeightSpace_zero_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/iscompl-genweightspace-zero-posfittingcomp.md) | 641 | `result-track:21e88d63bcf60c035f999a8159573319b483e7abbea66380de50d5914ac77100` |
| 67 | `lemma` | [disjoint_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/disjoint-genweightspaceof.md) | 658 | `result-track:6ab98820df8e635ccc3b0278117b0a082591df7281a05099dd7fbe1d0595c743` |
| 68 | `lemma` | [disjoint_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/disjoint-genweightspace.md) | 664 | `result-track:ab4ead71ee4927c3b65ed82a347b34389675c09c76bb0af3c1d649637cab3dd3` |
| 69 | `lemma` | [injOn_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/injon-genweightspace.md) | 670 | `result-track:342473af2a80a480d034a445ec35b7a52ca255cc1b442f0dc2bd763ae2ad012f` |
| 70 | `lemma` | [iSupIndep_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isupindep-genweightspace.md) | 679 | `result-track:4e33ffa98d498c49930675c5d48b532751dd8cdda48ab065d82eec91ed085bf5` |
| 71 | `lemma` | [iSupIndep_genWeightSpace'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isupindep-genweightspace-source-edition-2.md) | 688 | `result-track:d54f11794b06f918a02b765aea4201eaf04d9c0e80567cab4f92d2a357c99026` |
| 72 | `lemma` | [iSupIndep_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isupindep-genweightspaceof.md) | 695 | `result-track:3a77dddda57160b407c182f359e4d7f3357b7da3f77f96dc942150760750df54` |
| 73 | `lemma` | [finite_genWeightSpaceOf_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/finite-genweightspaceof-ne-bot.md) | 704 | `result-track:059b34d02073040ffeb560fd408401756e56d4f36aab31ad4b9537f45582bd70` |
| 74 | `lemma` | [finite_genWeightSpace_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/finite-genweightspace-ne-bot.md) | 708 | `result-track:7d054e2e6beda75e07bc3915b11c09ffd4b63b7b5e3c8b31d2de7923725d0f2e` |
| 75 | `instance` | [Weight.instFinite](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/weight-instfinite.md) | 712 | `declaration-track:2cfcc083df6bae60e8181ddd1416da6675c762f47ebe68f259d67f92a50e6475` |
| 76 | `instance` | [Weight.instFintype](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/weight-instfintype.md) | 717 | `declaration-track:c79d7de5281427daf702f2ac14a756b3b67abda1d83263718156f4a967944b27` |
| 77 | `class` | [IsTriangularizable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/istriangularizable.md) | 723 | `declaration-track:f5d2f71bc7e057b180f863a75cec0e166925d85345aa8f9cec3d9e7cea8ec78a` |
| 78 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 726 | `declaration-track:79822f925e904438006b27baeccde26f35c763580fbc94c7e0096562c53c556a` |
| 79 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 729 | `declaration-track:d7b531051aa0569178570e02a18cb5a15b27733f322eeead42f38f2858ffe900` |
| 80 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instance.md) | 732 | `declaration-track:2e3d1aaf69eb358bd733e3a325e467610bdb89011923cf67e0fa372b4b8c8792` |
| 81 | `lemma` | [iSup_genWeightSpaceOf_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isup-genweightspaceof-eq-top.md) | 738 | `result-track:e4b098e23930c7f8b2d2eec9791230f5fd1aee6994e1a7790b87884574548c99` |
| 82 | `lemma` | [trace_toEnd_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/trace-toend-genweightspace.md) | 747 | `result-track:03148dd4e6a5f950701c3f585a2b159ffb0df15f34465f6a15745bbae1eb8cd3` |
| 83 | `instance` | [instIsTriangularizableOfIsAlgClosed](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instistriangularizableofisalgclosed.md) | 764 | `declaration-track:d838e4518a618ef6a2d871ab9028d8b653b77f2dffa0063f793ed605c675429f` |
| 84 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 767 | `declaration-track:df8ff3afbb18cd1bf525a9cb6c26bfe4478d8df9968c7b52fcea7bcdf20fc209` |
| 85 | `lemma` | [iSup_genWeightSpace_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isup-genweightspace-eq-top.md) | 775 | `result-track:08dd3679988d906fb36ec2ce7bd234d0013f007acad0eca8dd2e1ab3e5b0b9c5` |
| 86 | `lemma` | [iSup_genWeightSpace_eq_top'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicNamespaced.lean/declarations/isup-genweightspace-eq-top-source-edition-2.md) | 783 | `result-track:a47e95b365d09adf5d8ed55b59c3ec84147612f17da5373a953c555bef4c6975` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=936da8add706b1bf2ff90e40114a44ee8e2d0fe5de954c34b1001bdf5476340c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Varianted19e659e21581b9f433f108e96e4cb0bdc5f7a5afe3a06e13a73eee51a0a386.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

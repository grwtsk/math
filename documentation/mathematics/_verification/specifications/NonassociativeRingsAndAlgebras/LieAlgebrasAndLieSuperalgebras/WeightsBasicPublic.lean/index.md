# Verification target: Weights Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f5b2952575d4313b52c658f11b1c343244623b",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f5b2952575d4313b52c658f11b1c343244623b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/weightspace.md) | 63 | `declaration-track:b0c95eabaff8b721934c2a4d7803cdb0fbf14673a0ded0fa6191db8171e42a68` |
| 2 | `lemma` | [mem_weightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/mem-weightspace.md) | 67 | `result-track:d27f761890d05c345c0b49c878e19625ae297a0721ffab58450019659f5db642` |
| 3 | `theorem` | [weight_vector_multiplication](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/weight-vector-multiplication.md) | 76 | `result-track:93b9ad91a1ad592d0d59d6ecfefd1b533260a02e417b9adf5723f5dd5d9a0890` |
| 4 | `lemma` | [lie_mem_maxGenEigenspace_toEnd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/lie-mem-maxgeneigenspace-toend.md) | 142 | `result-track:6197ba11e4f4f5b8386da8be116010a85eb0268c15248908ff0075e96f679824` |
| 5 | `def` | [genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/genweightspaceof.md) | 157 | `declaration-track:1681e1708cf93e3761494e50131466e4e0c325f559ada67a7d3405e4517ae977` |
| 6 | `theorem` | [mem_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/mem-genweightspaceof.md) | 171 | `result-track:9d3f0d73e69c02d53269859a3981604e9e8b51cff2154c34776fda513a4b5249` |
| 7 | `theorem` | [coe_genWeightSpaceOf_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/coe-genweightspaceof-zero.md) | 175 | `result-track:5d6820f6c9573e2edf3d18e2464d90188f5d3d912c946a7af15a365a18c7ebbb` |
| 8 | `def` | [genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/genweightspace.md) | 185 | `declaration-track:57147e61acf4d7ac300fd640cdc2f37dd25d843bc2c134f6ce5ad63f9ed15306` |
| 9 | `theorem` | [mem_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/mem-genweightspace.md) | 188 | `result-track:e6ff0cc01733d32afcd269cbc5d3e2054c6c3c7fd9439a730aead61bde36af7f` |
| 10 | `lemma` | [genWeightSpace_le_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/genweightspace-le-genweightspaceof.md) | 192 | `result-track:31ec94aa7c2e7ce74b45925acec3879940178f20ef20effbe7f4efc4601165a9` |
| 11 | `lemma` | [weightSpace_le_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/weightspace-le-genweightspace.md) | 196 | `result-track:45e8e1341dc188932cceecf23fc4d518b792bc99b9f0ca0e76c951280c4263b2` |
| 12 | `structure` | [Weight](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/weight.md) | 207 | `declaration-track:344db32d03db727a270562c40d526e6d0a1c4b13e6e0359b5113eb8584d7180e` |
| 13 | `instance` | [instFunLike](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instfunlike.md) | 215 | `declaration-track:80aab7255ed7b2f59c7178e5a79a8976f474c98b9d195e4f3fa440bb2a26b02e` |
| 14 | `lemma` | [coe_weight_mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/coe-weight-mk.md) | 219 | `result-track:fe71ebb1c6c55eb1bc64055143e00a2fe6f0ab6c34d98c8370c494160b751d09` |
| 15 | `lemma` | [genWeightSpace_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/genweightspace-ne-bot.md) | 223 | `result-track:511003cc08a9a65a78e8c47adb0ff862ebf2e18afdde0db40d80fbd930c4d8fb` |
| 16 | `lemma` | [ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/ext.md) | 227 | `result-track:c425482b67f13613ac28fcbaa281b03853f21fb45193df5fd15d21cada71c2a1` |
| 17 | `lemma` | [ext_iff'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/ext-iff.md) | 229 | `result-track:6a0e3c0cc3c247d7d70a544a7f0ab5cc6a32e9cb98211af423950b6762bbf68e` |
| 18 | `lemma` | [exists_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/exists-ne-zero.md) | 231 | `result-track:4551c62d803c66b59a2f29b09d8b1c475ec9e01f5a2cda95656a50e1da966669` |
| 19 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance-source-edition-7.md) | 235 | `declaration-track:80a1fc8d4ffce4d04cf95a85376d108826ec1bc0d44e475f2b10bb71310644bc` |
| 20 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance-source-edition-6.md) | 238 | `declaration-track:7edc571e7c170bced35bfc95f2d17b8f32946edc1696a9943a6bb55b8d7dd056` |
| 21 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance-source-edition-3.md) | 241 | `declaration-track:583496eec79a3998b6413f4a3d7d9fd34a1f62e441dce7a6a154a4d1c8ba6d04` |
| 22 | `def` | [IsZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/iszero.md) | 252 | `declaration-track:987140860ea2e1b693b8726e92afa6fb58f122078c9116ccef795bea616af961` |
| 23 | `lemma` | [IsZero.eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/iszero-eq.md) | 254 | `result-track:cdeb1281c3ab00385836a290d97ee628f0a6bd79941aa349ea9b47d98f22db7c` |
| 24 | `lemma` | [coe_eq_zero_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/coe-eq-zero-iff.md) | 256 | `result-track:49e6356380942d227160b72ab7e5d14d7d18b58cb050b2756c14904aced72175` |
| 25 | `lemma` | [isZero_iff_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/iszero-iff-eq-zero.md) | 258 | `result-track:e499bf7197b83c3d6d5aaacde7a93a521fb5147a49dee9e46cee581ac5fec503` |
| 26 | `lemma` | [isZero_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/iszero-zero.md) | 261 | `result-track:73426d0a6e736b2a17135659e451ab6be46752dd86aafff9256b46a8e51ebabb` |
| 27 | `abbrev` | [IsNonZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isnonzero.md) | 264 | `declaration-track:39c4d38d762fb10b273b81b08169c3d27a11a1b60d2b28874199b3943369e83e` |
| 28 | `lemma` | [isNonZero_iff_ne_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isnonzero-iff-ne-zero.md) | 266 | `result-track:6d388fdef67084e1fa2c360edc4e556d42cffcdbb90f6c0e69d8e20d4b3e7071` |
| 29 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance-source-edition-9.md) | 269 | `declaration-track:da5d466658afcbd6b503171b27026b5b801419bcfc696ed976abc327f090ac9d` |
| 30 | `def` | [equivSetOfPred](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/equivsetofpred.md) | 273 | `declaration-track:1145bcc75db5654d75b7b872e1f18ec2391348526b4e4b460452fb30efd7dd75` |
| 31 | `lemma` | [genWeightSpaceOf_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/genweightspaceof-ne-bot.md) | 281 | `result-track:66de729fe30722d73c95b4513eea74f5035bc991f1226d8e326f77066a663e96` |
| 32 | `lemma` | [hasEigenvalueAt](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/haseigenvalueat.md) | 288 | `result-track:00961e2dac33b751a9256ef7a81b338e857951dbe6084e772893776ee044e6ab` |
| 33 | `lemma` | [apply_eq_zero_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/apply-eq-zero-of-isnilpotent.md) | 294 | `result-track:94d72f5fd3892cb8d8ad3fe3b1144250299bdc999479351348e97998951a1bfe` |
| 34 | `theorem` | [zero_genWeightSpace_eq_top_of_nilpotent'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/zero-genweightspace-eq-top-of-nilpotent-source-edition-2.md) | 303 | `result-track:860095cad81b495d3578f9fb5968d03e650af482d72b364ece3c1830427e671f` |
| 35 | `theorem` | [coe_genWeightSpace_of_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/coe-genweightspace-of-top.md) | 307 | `result-track:75942080f89b0c15ce281626719830d65ea267f806ec8703fe22d09185a300b7` |
| 36 | `theorem` | [zero_genWeightSpace_eq_top_of_nilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/zero-genweightspace-eq-top-of-nilpotent.md) | 315 | `result-track:6e343eb812a0853d3bc4e0496b1aa0804800572860430536dc61ce33621ccc82` |
| 37 | `theorem` | [exists_genWeightSpace_le_ker_of_isNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/exists-genweightspace-le-ker-of-isnoetherian.md) | 319 | `result-track:151dcab5bbe278610e119a8580397bbeb9c94a56b2675513c7738621f45b1614` |
| 38 | `theorem` | [exists_genWeightSpace_zero_le_ker_of_isNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/exists-genweightspace-zero-le-ker-of-isnoetherian.md) | 329 | `result-track:4ba3b053fe8b7057872c23267f6b3ea3647adeab69163a3462f51922b3a32b74` |
| 39 | `lemma` | [isNilpotent_toEnd_sub_algebraMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isnilpotent-toend-sub-algebramap.md) | 334 | `result-track:cbb907fd5c5d0f7f6065b7545b11995f4702b53bc6ece21606ffa8dc6f68a571` |
| 40 | `theorem` | [isNilpotent_toEnd_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isnilpotent-toend-genweightspace-zero.md) | 349 | `result-track:070232824a30c344757ede91d827908c04199eb44c2e3af1eba24ecbd6182884` |
| 41 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance-source-edition-4.md) | 354 | `declaration-track:713b61bce5314968af0114df87b3267f6ea1d66bde8ee41b43759ec2d76101f1` |
| 42 | `lemma` | [genWeightSpace_zero_normalizer_eq_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/genweightspace-zero-normalizer-eq-self.md) | 361 | `result-track:96c4ffdf33497dc845c5f02a2bcc338364dfb8a4b47d5f0dd1f50c7e15e9e00d` |
| 43 | `lemma` | [iSup_ucs_le_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isup-ucs-le-genweightspace-zero.md) | 372 | `result-track:3ae3d78a18655b13e24b32daaebcd9f3d0202e80adad3c2154f9d9a03358260e` |
| 44 | `lemma` | [iSup_ucs_eq_genWeightSpace_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isup-ucs-eq-genweightspace-zero.md) | 378 | `result-track:f1c7ddf6a0a2ffa906f071496c883467753bd441ce5a29bc6183f89fa7d15d20` |
| 45 | `def` | [posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/posfittingcompof.md) | 395 | `declaration-track:bc452bbb6400d2227358cd7e8c89f6907ee4ce4dd027b9561d0b15e1b78e3bd7` |
| 46 | `lemma` | [mem_posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/mem-posfittingcompof.md) | 418 | `result-track:9e3126879d178ae225d4b63d97f71827a563ea5262ff4ca5ecd13cf551f8a3fe` |
| 47 | `lemma` | [posFittingCompOf_le_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/posfittingcompof-le-lowercentralseries.md) | 422 | `result-track:74c19fb84c973d561d37cb2d5ecedaf3a01c34feb37064e6ef65e0256252b1da` |
| 48 | `lemma` | [posFittingCompOf_eq_bot_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/posfittingcompof-eq-bot-of-isnilpotent.md) | 435 | `result-track:0323fac8b3c1d2850810cdaaa9c3dd2809faf16e67e9f9ccdbd0015a70a0c8a4` |
| 49 | `def` | [posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/posfittingcomp.md) | 448 | `declaration-track:9d5698d2b09ee9c6797460dc9da557bf15bea8a0e28204b5e684db823f52d4b6` |
| 50 | `lemma` | [mem_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/mem-posfittingcomp.md) | 451 | `result-track:aeaef559bddfc822960e808ac7556bb54b01700def4ae8233fc8d58c2da9118c` |
| 51 | `lemma` | [posFittingCompOf_le_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/posfittingcompof-le-posfittingcomp.md) | 455 | `result-track:10d172be5a5ed66e0a20878159ca074055601aafa773eb1056e0ead25ef476da` |
| 52 | `lemma` | [posFittingComp_le_iInf_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/posfittingcomp-le-iinf-lowercentralseries.md) | 459 | `result-track:6e02ef502171c3c7726914535e7d1240673638d34fca8cd98e875fbda26ea7aa` |
| 53 | `lemma` | [iInf_lowerCentralSeries_eq_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/iinf-lowercentralseries-eq-posfittingcomp.md) | 464 | `result-track:5013b11edbd2f7cbccdc786f36004e373ed2d875da730fb44022c143e94a8ab0` |
| 54 | `lemma` | [posFittingComp_eq_bot_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/posfittingcomp-eq-bot-of-isnilpotent.md) | 486 | `result-track:aadd5bd542f7d4d6de6e8abc53d90dee7e495a9e84243ba10288af4ed607635b` |
| 55 | `lemma` | [map_posFittingComp_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/map-posfittingcomp-le.md) | 498 | `result-track:dbe0b1bc1da9cdba50f982aa2359a43b9a881b9aef8797e5848ae986fd9eb232` |
| 56 | `lemma` | [map_genWeightSpace_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/map-genweightspace-le.md) | 509 | `result-track:09a5220232d4ead8293823eb583f9927555dde04a17d65b7385af67ce8a37c28` |
| 57 | `lemma` | [comap_genWeightSpace_eq_of_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/comap-genweightspace-eq-of-injective.md) | 523 | `result-track:4ac3f3d744b21c07311aea5d2c751dd58dc2c8a96ff329f424579c324ea5d7c9` |
| 58 | `lemma` | [map_genWeightSpace_eq_of_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/map-genweightspace-eq-of-injective.md) | 539 | `result-track:9db7319ffd1c7e4da3c5d1a49cbd49f834e2ac155d991b084a5706e7d9b04bbe` |
| 59 | `lemma` | [map_genWeightSpace_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/map-genweightspace-eq.md) | 547 | `result-track:b418754794ba2aed807b0e9713ab757cae80f9b88a0821c6132a36f92fce4909` |
| 60 | `lemma` | [map_posFittingComp_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/map-posfittingcomp-eq.md) | 551 | `result-track:69d8bcac0c1e155c320607576a6d598f957eaadf9a8267332b252eac0fd17eda` |
| 61 | `lemma` | [posFittingComp_map_incl_sup_of_codisjoint](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/posfittingcomp-map-incl-sup-of-codisjoint.md) | 562 | `result-track:68445e82d7709709c3a95a4a85da9963c9b4776852f3034bc922f4f04c3673f4` |
| 62 | `lemma` | [genWeightSpace_genWeightSpaceOf_map_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/genweightspace-genweightspaceof-map-incl.md) | 575 | `result-track:34b1f3eb859d289ee246b9e0168dc0c8f2a4572af7586093c526a2bf018c53b7` |
| 63 | `lemma` | [isCompl_genWeightSpaceOf_zero_posFittingCompOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/iscompl-genweightspaceof-zero-posfittingcompof.md) | 587 | `result-track:31fa13cab87351fd71440d42916ce75f3a3b94afda7043f62565038054e73b6b` |
| 64 | `lemma` | [isCompl_genWeightSpace_zero_posFittingComp_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/iscompl-genweightspace-zero-posfittingcomp-aux.md) | 596 | `result-track:2e1c93a3043f0ccaa89b81d01c768ff85dd023ae38c92e49e9834ca0963e6977` |
| 65 | `lemma` | [isCompl_genWeightSpace_zero_posFittingComp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/iscompl-genweightspace-zero-posfittingcomp.md) | 629 | `result-track:e81f9c6d63709c6cf7eb80fb8208bcbdfe1c4e0dbffb8b3372981e5980fe4985` |
| 66 | `lemma` | [disjoint_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/disjoint-genweightspaceof.md) | 650 | `result-track:4826fbda802c7295e2fefd7902a1340232e845c5fb8e11b74e71c72af5453677` |
| 67 | `lemma` | [disjoint_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/disjoint-genweightspace.md) | 656 | `result-track:00d6425bd75d21e169538638548a5bee41d6f54ede5bccfdb6cdac35d6707684` |
| 68 | `lemma` | [injOn_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/injon-genweightspace.md) | 662 | `result-track:94a1f5329059b81f0bba5ed69d4da66d69d47ad7155821c2c1fd55c3b90d8b8e` |
| 69 | `lemma` | [iSupIndep_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isupindep-genweightspace-source-edition-2.md) | 671 | `result-track:71a7016628603f2112a9860f0097d72e44e6aced2cfc67783bfd6b1e1c43142c` |
| 70 | `lemma` | [iSupIndep_genWeightSpace'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isupindep-genweightspace.md) | 677 | `result-track:114af286e5d69f480b893243e374785686ea914282e281c84ce8ec41a710fc50` |
| 71 | `lemma` | [iSupIndep_genWeightSpaceOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isupindep-genweightspaceof.md) | 681 | `result-track:07382abfdfde5e7b34d5f86bbcc29aa5ad7357d60d1b8b6b3afcc0c724b62840` |
| 72 | `lemma` | [finite_genWeightSpaceOf_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/finite-genweightspaceof-ne-bot.md) | 686 | `result-track:ba58fa3ec6103954dcd3766a09170a5d082fe0eff83848552d3632c70d3ae3b4` |
| 73 | `lemma` | [finite_genWeightSpace_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/finite-genweightspace-ne-bot.md) | 690 | `result-track:02f65f008008b32a61f3ebf3f9e4c8dccdfbd2dfb7f6b51744700aa088a4e6df` |
| 74 | `instance` | [Weight.instFinite](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/weight-instfinite.md) | 694 | `declaration-track:ecdec506daf8369e4cbb55868ed9f090774314bb110e8625e14d1724960ce7e6` |
| 75 | `instance` | [Weight.instFintype](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/weight-instfintype.md) | 698 | `declaration-track:9389bfc9f36a9c28b184e54c51bac0839b24a7be43fe9d0c61ede1a62973461b` |
| 76 | `class` | [IsTriangularizable](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/istriangularizable.md) | 704 | `declaration-track:380921de7c0563f626d31dcf822db2fcf8f955113f8ed9cfc54b2fa3f18fb1f2` |
| 77 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance.md) | 707 | `declaration-track:0cdde3dbafa18a150e2c0d5cfea843b69ce84f61638594c0e04ac56fb91cf3f7` |
| 78 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance-source-edition-8.md) | 710 | `declaration-track:c98d137de39239a0358ae0ed7b9c9c5178ca0d904c738c9c016314c3d64309a1` |
| 79 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance-source-edition-2.md) | 715 | `declaration-track:2ec05bb63c5f42a04d349a76649aa04999ea72bb8358d6e0681a78719cac2ea1` |
| 80 | `lemma` | [IsTriangularizable.exists_hasEigenvalue](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/istriangularizable-exists-haseigenvalue.md) | 721 | `result-track:d676daff5af714a6d692b1ef2ff44d60f8e01544d419318c03070aa453b002b8` |
| 81 | `lemma` | [iSup_genWeightSpaceOf_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isup-genweightspaceof-eq-top.md) | 731 | `result-track:681b17f18a2c0101862927dd4967d42ae243c4940ed84c4c78eaecd05a0fc71b` |
| 82 | `lemma` | [trace_toEnd_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/trace-toend-genweightspace.md) | 740 | `result-track:c20583ba1fcbdf15b639e4bfedd7b62706884acbe37307993e8976aa3064c8dd` |
| 83 | `instance` | [instIsTriangularizableOfIsAlgClosed](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instistriangularizableofisalgclosed.md) | 757 | `declaration-track:de83d3d35ca7791a8f40365b34bacfc87dc0ba6eaaf59a731251c101b286820e` |
| 84 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/instance-source-edition-5.md) | 760 | `declaration-track:76b7a8624b6c18cc163756af98876675e7128c047040f4034c5fb9030bb62399` |
| 85 | `lemma` | [iSup_genWeightSpace_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isup-genweightspace-eq-top-source-edition-2.md) | 768 | `result-track:c1c48b7c58f70b65011d063a3154b341858fe757703a7d10d7bb2eea11437cbb` |
| 86 | `lemma` | [iSup_genWeightSpace_eq_top'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/isup-genweightspace-eq-top.md) | 776 | `result-track:98876ba61409e295397c9448462b9566c92996429d6288478276497fe9c083a8` |
| 87 | `lemma` | [eq_iSup_inf_genWeightSpace](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/WeightsBasicPublic.lean/declarations/eq-isup-inf-genweightspace.md) | 782 | `result-track:6839889730897efa2f403ab105bbccd3653ebaf0b4ea1dc273d1484bd352d0a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed667264a34ea889e60ad0739fe7522960a4341ab4d8f9f67e8bebb604179202 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

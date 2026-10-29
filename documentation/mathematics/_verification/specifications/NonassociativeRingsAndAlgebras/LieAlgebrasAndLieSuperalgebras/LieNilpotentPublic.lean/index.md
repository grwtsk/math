# Verification target: Lie Nilpotent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "574d02dcb2ea1036822381562c39880b364d5649",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `574d02dcb2ea1036822381562c39880b364d5649`.

Source path: `GRWTSK/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean.json)

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
| 1 | `def` | [lcs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs.md) | 58 | `declaration-track:7e399a4e3618ded5f69fc15307fdcff7756876755091215d50e02310f47e4655` |
| 2 | `theorem` | [lcs_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-zero-source-edition-2.md) | 62 | `result-track:c5a6900264a75268a890ead95e10d54048ef648671c6c6463d204d27332ef7de` |
| 3 | `theorem` | [lcs_succ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-succ-source-edition-2.md) | 66 | `result-track:b48e724460d6ab1489f2d5689729d89a2a9a98289c8dd45751a5f2b8230d3672` |
| 4 | `lemma` | [lcs_sup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-sup.md) | 70 | `result-track:526ec4595b58555deb60eb559d478a96ac2fd3c768921d77ab65ad09d875e4e3` |
| 5 | `def` | [lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralseries.md) | 83 | `declaration-track:de9962521a185d3b824c83072234f896d27ca9751aa5571339726e69a44f6a31` |
| 6 | `theorem` | [lowerCentralSeries_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralseries-zero.md) | 87 | `result-track:2dc0f36be4fbc0e21e912935f2893460e7e7726938f4032f44a2964b51c0596d` |
| 7 | `theorem` | [lowerCentralSeries_succ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralseries-succ.md) | 91 | `result-track:5f6e18a8fa8db19b72710b582b9ef4e72a776396d143f84cceea038e1fc39389` |
| 8 | `theorem` | [coe_lowerCentralSeries_eq_int_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/coe-lowercentralseries-eq-int-aux.md) | 95 | `result-track:504c4775031f0bf517eee88c4650d059e2013e626e668e2ccf712b6976c0abac` |
| 9 | `theorem` | [coe_lowerCentralSeries_eq_int](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/coe-lowercentralseries-eq-int.md) | 111 | `result-track:0c88f0cc6dedc313669decac92cf6abd9168c3ee2bc780bd9257da9e5555b4a3` |
| 10 | `theorem` | [lcs_le_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-le-self.md) | 133 | `result-track:deaf4fffb8d6b8fca9284d30cf58a18f589d321cfc82a89acb0753a701ede72d` |
| 11 | `theorem` | [lowerCentralSeries_eq_lcs_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralseries-eq-lcs-comap.md) | 142 | `result-track:9abc21281cfa612be79b8aab853cd97b7aec319beea7f25366ae5be786476db3` |
| 12 | `theorem` | [lowerCentralSeries_map_eq_lcs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralseries-map-eq-lcs.md) | 152 | `result-track:b07f5137fbf8b95209edcfe22c009ef76118256b84ff8ee7cd68a2ee0e77a39c` |
| 13 | `theorem` | [lowerCentralSeries_eq_bot_iff_lcs_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralseries-eq-bot-iff-lcs-eq-bot.md) | 156 | `result-track:a522a420e5bec5e41649e0d32710d438e7cfdf50549b24d575af595c2920ed07` |
| 14 | `theorem` | [antitone_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/antitone-lowercentralseries.md) | 171 | `result-track:b1b925bdcd4087a25e81f7ba635412563ec9890beddb95cf2750025849574dd0` |
| 15 | `theorem` | [eventually_iInf_lowerCentralSeries_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/eventually-iinf-lowercentralseries-eq.md) | 182 | `result-track:804fa37d86a12733bdbf487742a87fc486c064f0343290e829f980937e7769ef` |
| 16 | `theorem` | [trivial_iff_lower_central_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/trivial-iff-lower-central-eq-bot.md) | 193 | `result-track:58153e70fab634eeb74bce5a7d47dd08d88d7d55fa50ddc261b57649c88cda00` |
| 17 | `theorem` | [iterate_toEnd_mem_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/iterate-toend-mem-lowercentralseries-source-edition-2.md) | 204 | `result-track:5a4aa1f899d4196bdadecc5e6356e40c3513ce4fbffc2dc858a0bdc4b4efdb64` |
| 18 | `theorem` | [iterate_toEnd_mem_lowerCentralSeries₂](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/iterate-toend-mem-lowercentralseries.md) | 213 | `result-track:0bb4b01faffbea0121d3e0042a5a117b4e1f713c8d3f8643249e38fb6d89de8b` |
| 19 | `theorem` | [map_lowerCentralSeries_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/map-lowercentralseries-le.md) | 227 | `result-track:ae90c9f7b12714ee0717eec599c1599baaab7413630119461e68b85dba56cc4b` |
| 20 | `lemma` | [map_lowerCentralSeries_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/map-lowercentralseries-eq.md) | 235 | `result-track:76a63b07e301c08606f41e006f11d5b54867a1ca9a72189faf1484383c9468d4` |
| 21 | `theorem` | [derivedSeries_le_lowerCentralSeries](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/derivedseries-le-lowercentralseries.md) | 251 | `result-track:512ad3b1b80e8cec7b4c1b970230023eaa166c755194c336b5ff0c02296b7c91` |
| 22 | `class` | [IsNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent.md) | 263 | `declaration-track:48aec3e0c6469142c5632536429e6e176433f9a7ee9d0eb651efe7168d0213a1` |
| 23 | `lemma` | [isNilpotent_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-iff.md) | 272 | `result-track:1b516655e1d4d076d1072097bc3286d8e2c78d5b7b2c15e0923ed19b39dc272a` |
| 24 | `lemma` | [IsNilpotent.nilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-nilpotent.md) | 276 | `result-track:c09764c107ec51f68a5f2ca22a97be8e1191e1ccb56943d8db3d3433c588d698` |
| 25 | `lemma` | [IsNilpotent.mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-mk.md) | 280 | `result-track:db3ab4be171bd238e07004b2e331fab060eb785b1b05661366bae1c9d1733789` |
| 26 | `lemma` | [iInf_lowerCentralSeries_eq_bot_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/iinf-lowercentralseries-eq-bot-of-isnilpotent.md) | 283 | `result-track:970625c22494486161f191e1f3cc4a971a9f068e8d83d1d6096c1cc433578116` |
| 27 | `theorem` | [_root_.LieSubmodule.isNilpotent_iff_exists_lcs_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/root-liesubmodule-isnilpotent-iff-exists-lcs-eq-bot.md) | 295 | `result-track:c033f6aacc5e9bcbb2cfedfa1d308f1428c6535ee1013429742f7cb05d1af76b` |
| 28 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/instance-source-edition-2.md) | 304 | `declaration-track:268dda44bb6f8316263ddb77e25766d2be069cd68d293afe38aa87a9e2191521` |
| 29 | `instance` | [instIsNilpotentSup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/instisnilpotentsup.md) | 307 | `declaration-track:82c3abd403be9a0c866347dac548a6e8b52c1c9383142fe5ab399f89ca977582` |
| 30 | `theorem` | [exists_forall_pow_toEnd_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/exists-forall-pow-toend-eq-zero.md) | 321 | `result-track:b14cc318ccb0c9a8ffc57ebf7767ad4e4d931aeeb77591dd41df20773d5ca92c` |
| 31 | `theorem` | [isNilpotent_toEnd_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-toend-of-isnilpotent.md) | 329 | `result-track:04587a2d4b72b26e8e0bb5a5c196681cce8862d35fb78050423e3651b9e4d2be` |
| 32 | `theorem` | [isNilpotent_toEnd_of_isNilpotent₂](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-toend-of-isnilpotent-source-edition-2.md) | 335 | `result-track:9d5aa2415572936c5c8940087133c6d25203d3b3bacdaf39522a70fe5560d37e` |
| 33 | `lemma` | [maxGenEigenSpace_toEnd_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/maxgeneigenspace-toend-eq-top.md) | 345 | `result-track:23b112dcce0d29fc59d1f00bd0cbbc1649d91f2178100fb12ac37cd5801370eb` |
| 34 | `theorem` | [nilpotentOfNilpotentQuotient](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/nilpotentofnilpotentquotient.md) | 359 | `result-track:ad2712c195aa44fc28a8d65d17e06aacdbcd66045b90078493eef8782b7b9299` |
| 35 | `theorem` | [isNilpotent_quotient_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-quotient-iff.md) | 371 | `result-track:76da81f6a296b5a49a8594ba61360bfbcf931ef315f97514be04a316e12970bd` |
| 36 | `theorem` | [iInf_lcs_le_of_isNilpotent_quot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/iinf-lcs-le-of-isnilpotent-quot.md) | 378 | `result-track:282dbd9dbc8cac9833569abd311abc993146f4f6934282e8d2b06acfba666ce1` |
| 37 | `def` | [nilpotencyLength](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/nilpotencylength.md) | 389 | `declaration-track:f5be18c17ae9da9ad4c23b741782ce395f2c6b9ac05c370d61b9ac9bbc776749` |
| 38 | `theorem` | [nilpotencyLength_eq_zero_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/nilpotencylength-eq-zero-iff.md) | 393 | `result-track:534ec7b462b94fbf95bc2f2dfbf72738ae1e6eb5867e5d976fde46445464901e` |
| 39 | `theorem` | [nilpotencyLength_eq_succ_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/nilpotencylength-eq-succ-iff.md) | 410 | `result-track:29c7943abd3a3e24a0c256f09d07fde131cd29f26961b9db593c30be87008c73` |
| 40 | `theorem` | [nilpotencyLength_eq_one_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/nilpotencylength-eq-one-iff.md) | 424 | `result-track:4dc01e2d68bf5a4f7facaac09bd8f2eca2bae1aad7ec80fa7c22f62976380770` |
| 41 | `theorem` | [isTrivial_of_nilpotencyLength_le_one](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/istrivial-of-nilpotencylength-le-one.md) | 429 | `result-track:67b1198854efb8e73dddbea98e321ecc04a9cc8b8f225c0c57c1be8e5241de61` |
| 42 | `def` | [lowerCentralSeriesLast](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralserieslast.md) | 443 | `declaration-track:371f5f6a08bb8f0cc18d7f76a223be2c183c47c22e3001804bfafd235e4a313c` |
| 43 | `theorem` | [lowerCentralSeriesLast_le_max_triv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralserieslast-le-max-triv.md) | 448 | `result-track:2523d9884268441775bdbfe2bf62f3afb33358f1c0ec4e1fc20dd4ebc25746ad` |
| 44 | `theorem` | [nontrivial_lowerCentralSeriesLast](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/nontrivial-lowercentralserieslast.md) | 457 | `result-track:3c9aad479433c8a559c01d32c802767fc886b0929d57e2dacf2707075469851d` |
| 45 | `theorem` | [lowerCentralSeriesLast_le_of_not_isTrivial](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lowercentralserieslast-le-of-not-istrivial.md) | 466 | `result-track:f3468f04d304eef6e8bb0132768f5688efb23b7d76c054bfdc926ad188109155` |
| 46 | `lemma` | [disjoint_lowerCentralSeries_maxTrivSubmodule_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/disjoint-lowercentralseries-maxtrivsubmodule-iff.md) | 485 | `result-track:a0124ad9d9281779e863a90eefd85b435e6b6aa1e6d5474d1ffa93469c1d55ce` |
| 47 | `theorem` | [nontrivial_max_triv_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/nontrivial-max-triv-of-isnilpotent.md) | 498 | `result-track:27e5694a1594a4309a0213727e8431c5c579f987e9a4e6ec406a477a2900eab1` |
| 48 | `theorem` | [coe_lcs_range_toEnd_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/coe-lcs-range-toend-eq.md) | 504 | `result-track:49243dd0464a3bf81e066e7f3293f248e6ddb8ec65bae920b379aa931102f54d` |
| 49 | `theorem` | [isNilpotent_range_toEnd_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-range-toend-iff.md) | 515 | `result-track:3e1b88d12440a266fb892f3689aa6646018d25982c1e61f2530fa527f422e76f` |
| 50 | `def` | [ucs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs.md) | 532 | `declaration-track:e48cee178af72711aafe47924a83e69cc44814b38a748d495c5267e3f1276cc6` |
| 51 | `theorem` | [ucs_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-zero.md) | 536 | `result-track:42ddc51e2b072f7d733a524313e80e141e0cc627738d26ca9461238d28bbd0fc` |
| 52 | `theorem` | [ucs_succ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-succ.md) | 540 | `result-track:c57eacf0be337568d6ff28df75634148e9f7f4d191cd9ce62320b40112ae0f6b` |
| 53 | `theorem` | [ucs_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-add.md) | 543 | `result-track:2965a22f93b5b6e2bdbb17d1a9a33d71e3b0d3d3251ff7541ffacd83bb6c99a2` |
| 54 | `theorem` | [ucs_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-mono.md) | 547 | `result-track:1bbdaec59310134c9a590b18bc929383956fd5e623f9750f47e2a1e9bc91e0e3` |
| 55 | `theorem` | [ucs_eq_self_of_normalizer_eq_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-eq-self-of-normalizer-eq-self.md) | 554 | `result-track:d295c3b21ce01f0b249801e33657521e2bf35d29b5169a68677d9ff5f0bab298` |
| 56 | `theorem` | [ucs_le_of_normalizer_eq_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-le-of-normalizer-eq-self.md) | 564 | `result-track:80757891fd2c978e38ed6535304174ab8f557c98aaaf32fa3a76eedcd8c68afa` |
| 57 | `theorem` | [lcs_add_le_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-add-le-iff.md) | 570 | `result-track:ca5aaae330ffb589ade12bb5d058e55f3c54e44004f01897fc6155bf02c42b7c` |
| 58 | `theorem` | [lcs_le_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-le-iff.md) | 576 | `result-track:318460c85f070e99fd7309fb280eaf36deedb0dfff2151800bf3cff0d7cbecf0` |
| 59 | `theorem` | [gc_lcs_ucs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/gc-lcs-ucs.md) | 580 | `result-track:8d69e7422e1051d82d58601ac1e74e2a8030c2de217822cab5490bd8e18dc31e` |
| 60 | `theorem` | [ucs_eq_top_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-eq-top-iff.md) | 585 | `result-track:31ae857a18c34c18b879b9f83d384cfa452e88cc48a4896ae722f3bd02e8ba21` |
| 61 | `theorem` | [_root_.LieModule.isNilpotent_iff_exists_ucs_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/root-liemodule-isnilpotent-iff-exists-ucs-eq-top.md) | 589 | `result-track:04c25abc3ae6a520dfc8dde9132b12095a8b89f113bdb721c2fc9a053db5613a` |
| 62 | `theorem` | [ucs_comap_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-comap-incl.md) | 593 | `result-track:eb6d08b310af0d4fa557853c51a770ea5bdac92cac58035b21c6c38faed7631e` |
| 63 | `theorem` | [isNilpotent_iff_exists_self_le_ucs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-iff-exists-self-le-ucs.md) | 599 | `result-track:235597271f373b2c81289285561191f8de2df04cd3fb21b480da90ee738f2142` |
| 64 | `theorem` | [ucs_bot_one](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/ucs-bot-one.md) | 603 | `result-track:860a2a141c19dfaf3254ab11e110b0453928efbfecda4b2ab78dd65147c93ef0` |
| 65 | `theorem` | [lieModule_lcs_map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liemodule-lcs-map-le.md) | 619 | `result-track:e256a75406ae36e245eecf432247c1dcf5d3af88811cf1cb19c288c9d0e82ba1` |
| 66 | `theorem` | [Function.Injective.lieModuleIsNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/function-injective-liemoduleisnilpotent.md) | 641 | `result-track:05969fd900abfa916db321787c9327385096587e5ddc47b491fc8bcfcc12a9cf` |
| 67 | `theorem` | [Function.Surjective.lieModule_lcs_map_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/function-surjective-liemodule-lcs-map-eq.md) | 652 | `result-track:14ce3c7569308d6da4bfe764ee9b9e9bbecce2dd6b1ad2aec676139efff99bd5` |
| 68 | `theorem` | [Function.Surjective.lieModuleIsNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/function-surjective-liemoduleisnilpotent.md) | 673 | `result-track:afdced731b3a332b0b2c4c4150d53ebce24c009454a4ac2cf8a83265aacb7de6` |
| 69 | `theorem` | [Equiv.lieModule_isNilpotent_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/equiv-liemodule-isnilpotent-iff.md) | 680 | `result-track:8a9f241bc03a8c33f80541b3025e9ea28d52aed69bbb8572ae0850b7575be5bd` |
| 70 | `theorem` | [LieModule.isNilpotent_of_top_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liemodule-isnilpotent-of-top-iff.md) | 691 | `result-track:1326f39761fe9c2fd642e834a272c82e888ed7dd676e636523fe7000866137aa` |
| 71 | `lemma` | [LieModule.isNilpotent_of_top_iff'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liemodule-isnilpotent-of-top-iff-source-edition-2.md) | 695 | `result-track:fd368c2ed9d996e2cd69436ff48053ddeed87ced638ab51372e6e1cae16726dc` |
| 72 | `theorem` | [isNilpotent_of_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-of-le.md) | 706 | `result-track:c22384525100b3d8f9a9b75af395b8c9dfb75b13795a3daf744b230c5e2f5b48` |
| 73 | `def` | [maxNilpotentSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/maxnilpotentsubmodule.md) | 714 | `declaration-track:508fca7ef6a602c813e328cd75c1e3790ba32d65b1674bc2e15c0efe9447dd6c` |
| 74 | `instance` | [instMaxNilpotentSubmoduleIsNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/instmaxnilpotentsubmoduleisnilpotent.md) | 717 | `declaration-track:99f4902fc3f0a06409565128dfae6763496d16a9d18b2d468ebe821995006fbf` |
| 75 | `theorem` | [isNilpotent_iff_le_maxNilpotentSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/isnilpotent-iff-le-maxnilpotentsubmodule.md) | 723 | `result-track:f41dc47d67257020e7f6239a62cea71adaeaf3ec4d6a8cbfdc0f9780f43f8dbe` |
| 76 | `lemma` | [maxNilpotentSubmodule_eq_top_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/maxnilpotentsubmodule-eq-top-of-isnilpotent.md) | 727 | `result-track:abff856ca122ac6dc27b6a033a0090c8176bd1f69809a10b1e2d0182ca2da96e` |
| 77 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/instance.md) | 737 | `declaration-track:1e2a439eae9a168823b6de2ee2b878a0959e484c1560e3bcffc53b6016d0cd06` |
| 78 | `abbrev` | [LieRing.IsNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liering-isnilpotent.md) | 751 | `declaration-track:bc0f76707fda10be9909dd43814293391f326ba8c4052214121fd9b0ae6b2637` |
| 79 | `theorem` | [LieAlgebra.nilpotent_ad_of_nilpotent_algebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liealgebra-nilpotent-ad-of-nilpotent-algebra.md) | 756 | `result-track:46e728a9341364ef6f3b5b11158b89d64749dd59b79fd1be3093781a1f43ae5d` |
| 80 | `theorem` | [coe_lowerCentralSeries_ideal_quot_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/coe-lowercentralseries-ideal-quot-eq.md) | 772 | `result-track:a440cbe652d38064ca49cf1fcca29008fc1da7c2b37f8a6752d7ef06efca96a5` |
| 81 | `theorem` | [LieModule.coe_lowerCentralSeries_ideal_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liemodule-coe-lowercentralseries-ideal-le.md) | 793 | `result-track:c0f73858cee63e62b13f75e7c0486a035dd093dcfe0b76dfb8c99f22f1738908` |
| 82 | `theorem` | [LieAlgebra.nilpotent_of_nilpotent_quotient](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liealgebra-nilpotent-of-nilpotent-quotient.md) | 804 | `result-track:9abdd670c68417a673a4eff4dc0b3d1df3e0bd27d65dfb92ecc3c3a83cf953d1` |
| 83 | `theorem` | [LieAlgebra.non_trivial_center_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liealgebra-non-trivial-center-of-isnilpotent.md) | 812 | `result-track:04688165f393ca1cd773ef0ce7a2fcef03baf891f1c276314b9aed6aa73baff6` |
| 84 | `theorem` | [LieIdeal.map_lowerCentralSeries_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lieideal-map-lowercentralseries-le.md) | 816 | `result-track:a71de79ff258bc03f431e0149dde2f413bb307c9c1795c05cd60952a5d69b96e` |
| 85 | `theorem` | [LieIdeal.lowerCentralSeries_map_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lieideal-lowercentralseries-map-eq.md) | 824 | `result-track:c0e34bfd57d1b771ae41930cec9404834a9c235b003c69a639e4654b7b7594d5` |
| 86 | `theorem` | [Function.Injective.lieAlgebra_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/function-injective-liealgebra-isnilpotent.md) | 833 | `result-track:0475025d4effe23c9ed9fb0ea6bce49420e42adf0c5ada029714f4b63982d692` |
| 87 | `theorem` | [Function.Surjective.lieAlgebra_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/function-surjective-liealgebra-isnilpotent.md) | 840 | `result-track:01a4a8bf6727ef8bb542198202e0afd2cd0b02161e043ed85f7ab8649ad0d49a` |
| 88 | `theorem` | [LieEquiv.nilpotent_iff_equiv_nilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lieequiv-nilpotent-iff-equiv-nilpotent.md) | 847 | `result-track:7d19ffbc5e7b10a077fddea5ab302c9162b78ef12077fbc1049dcfa25fdcecae` |
| 89 | `theorem` | [LieHom.isNilpotent_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liehom-isnilpotent-range.md) | 853 | `result-track:3bbb3d2f83b815af48d6d21da33299e907904b8861e65a8345b86a98dc75d1d3` |
| 90 | `theorem` | [LieAlgebra.isNilpotent_range_ad_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liealgebra-isnilpotent-range-ad-iff.md) | 863 | `result-track:5158a1d213485ccda5d425cc9200d5a990a893c7cddf99d17767e0ca834c78b9` |
| 91 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/instance-source-edition-4.md) | 872 | `declaration-track:f99cc3a45214c7f0de5f8e06119f8f64db909ad826f39c4d5580f3fe1397216c` |
| 92 | `def` | [lcs](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-source-edition-2.md) | 891 | `declaration-track:a4c619120e97aab702796181609b5571b6afc87af79aed322252b856e6fe6619` |
| 93 | `theorem` | [lcs_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-zero.md) | 895 | `result-track:983a4604682cfe90b0533847a9bca7269638308ae55a542b2539c85f46536d64` |
| 94 | `theorem` | [lcs_succ](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-succ.md) | 899 | `result-track:506a87798c478e69a628318a1df2364aa2634b5ad2736c3578c95f88dacd5bdf` |
| 95 | `theorem` | [lcs_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lcs-top.md) | 902 | `result-track:07e03ee8410fb8ca2964f0515c77a14e1ec7ff742a45a52a34609ee71f583d97` |
| 96 | `theorem` | [coe_lcs_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/coe-lcs-eq.md) | 907 | `result-track:00331a814a609a576ac5a7009e037a0e7e60ec6c338095de035ea621a7a5a3ad` |
| 97 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/instance-source-edition-3.md) | 917 | `declaration-track:89eb49b8ee26735c0982a349c911121c1f3a561a2be614e8214cd37ef64222c3` |
| 98 | `lemma` | [LieSubmodule.lowerCentralSeries_tensor_eq_baseChange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liesubmodule-lowercentralseries-tensor-eq-basechange.md) | 934 | `result-track:f58d1bcf277ac98cd33f3065c1f514c0f687e9f06713ae466437374710b21d08` |
| 99 | `instance` | [LieModule.instIsNilpotentTensor](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/liemodule-instisnilpotenttensor.md) | 941 | `declaration-track:f657d545542b6aa70338465e8d83621f023956ba325e69e5775ad908131bb8fd` |
| 100 | `def` | [maxNilpotentIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/maxnilpotentideal.md) | 958 | `declaration-track:54e5f1efd516e6a741027be3664fbdb932ec78aa0e7761c7a14a53bd26bf5d2e` |
| 101 | `instance` | [maxNilpotentIdealIsNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/maxnilpotentidealisnilpotent.md) | 960 | `declaration-track:86e4725052f66aa8bdac736f09a2b7b7c9d3e365e7929201e46a04cb84f1d0cb` |
| 102 | `theorem` | [LieIdeal.isNilpotent_iff_le_maxNilpotentIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/lieideal-isnilpotent-iff-le-maxnilpotentideal.md) | 964 | `result-track:96e640066cb5451074178f153210a013033a949977eccd9185026ebad0f72afa` |
| 103 | `theorem` | [center_le_maxNilpotentIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/center-le-maxnilpotentideal.md) | 968 | `result-track:5e4a197edce88bb0e8b4854ba5149a393eb3188228ae3f3b3ccfed1871119050` |
| 104 | `theorem` | [maxNilpotentIdeal_le_radical](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/maxnilpotentideal-le-radical.md) | 971 | `result-track:15a68ff203d0f3f89cd4784ccdc602e582e5ab4d28d18c7022c4affd78e8f7d4` |
| 105 | `lemma` | [maxNilpotentIdeal_eq_top_of_isNilpotent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieNilpotentPublic.lean/declarations/maxnilpotentideal-eq-top-of-isnilpotent.md) | 974 | `result-track:edbfac9de454127fbd5fb6e5914901b02bf0b7bd268ea9a986daa7a39a864026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7762558947e8cea39ec3ac2411c144fc6d2ea17d6914fc86c2da33e65f26fd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean","GRWTSK/_verification/specifications/Algebra/Nilpotent/Variant9c0a33273922f9ea97c80771c66088fc8f8e8e89ba4505f4721c119fd118c3aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

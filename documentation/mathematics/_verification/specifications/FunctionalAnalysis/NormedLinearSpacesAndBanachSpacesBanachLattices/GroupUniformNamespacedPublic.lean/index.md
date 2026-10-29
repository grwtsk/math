# Verification target: Group Uniform Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "097ffada12534e9bbfe212d5a1a33596997de4a6",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `097ffada12534e9bbfe212d5a1a33596997de4a6`.

Source path: `GRWTSK/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean.json)

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
| 1 | `instance` | [NormedGroup.to_isIsometricSMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/normedgroup-to-isisometricsmul.md) | 39 | `declaration-track:a604a7dc620c3e04d1caaa511ce5800b1a0fa222bfa5b9dc76d55c02d35657a5` |
| 2 | `theorem` | [Isometry.norm_map_of_map_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/isometry-norm-map-of-map-one.md) | 43 | `result-track:8d85647b25e7b2d94fef5fe48bcf451c3685066adcdc32b07e518b7dcb2b1189` |
| 3 | `theorem` | [norm_map'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/norm-map.md) | 47 | `result-track:a766bad9170a5b11642a1b56489a44451ca19112c417a637249c1c7cea26c662` |
| 4 | `theorem` | [nnnorm_map'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/nnnorm-map.md) | 52 | `result-track:3f9e07ffb4e5135ce7d1d4e7a70b2daf1e93189121f14091ba8f75272e44b812` |
| 5 | `lemma` | [enorm_map'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/enorm-map.md) | 57 | `result-track:037eb8b2bb488c9ccbad5c702a5aef65fe974eafd6182d1f0e2c3232e95148f0` |
| 6 | `theorem` | [dist_self_mul_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-self-mul-right.md) | 61 | `result-track:475bdb38b7c7c6b9a622ba878d8c7fb8175187df3cbea6d42590afaa1bf8635c` |
| 7 | `theorem` | [dist_self_mul_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-self-mul-left.md) | 65 | `result-track:8c30bbae9ba5530f5b3b146ce449809c74abe976b18a79940ecf999ed4c258d7` |
| 8 | `theorem` | [MonoidHomClass.lipschitz_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/monoidhomclass-lipschitz-of-bound.md) | 76 | `result-track:6b4ef2289d5f0222eb75e2380d2c58f7c8eb9e97a02f93c5b254bf106132ea16` |
| 9 | `theorem` | [lipschitzOnWith_iff_norm_inv_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzonwith-iff-norm-inv-mul-le.md) | 82 | `result-track:e33be7961fa4c460b034892260fc771e6d64ccddbc64e5cd6b55f37266c68978` |
| 10 | `theorem` | [LipschitzOnWith.norm_inv_mul_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzonwith-norm-inv-mul-le-of-le.md) | 91 | `result-track:c2b2f9056c1d977e7fc629a5271269c740a33c6472f820d8f1b34335e1bc427c` |
| 11 | `theorem` | [lipschitzWith_iff_norm_inv_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-iff-norm-inv-mul-le.md) | 96 | `result-track:32b9ba362d8706907a8d10653fc1624210508980ac40a3c41f4f67ea7813b94b` |
| 12 | `theorem` | [LipschitzWith.norm_inv_mul_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-norm-inv-mul-le-of-le.md) | 105 | `result-track:35171ebfe80a9dc160db42a1c5d188211a39764addd05246f3f05250fa71c7c1` |
| 13 | `theorem` | [MonoidHomClass.continuous_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/monoidhomclass-continuous-of-bound.md) | 113 | `result-track:972d0c1ac16a6f02ad92514c5c467d1e220a82d2011336902edd3253e72184f1` |
| 14 | `theorem` | [MonoidHomClass.uniformContinuous_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/monoidhomclass-uniformcontinuous-of-bound.md) | 118 | `result-track:acb5f464035f4d5dd0286f18b674ca756a97204691b43dec26b2375e4d964485` |
| 15 | `theorem` | [MonoidHomClass.isometry_iff_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/monoidhomclass-isometry-iff-norm.md) | 123 | `result-track:f2f2ae5d07fca15de8f9586c9c1a4e5c7c3541b0e601913f325be17a9cfc5aff` |
| 16 | `theorem` | [MonoidHomClass.lipschitz_of_bound_nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/monoidhomclass-lipschitz-of-bound-nnnorm.md) | 136 | `result-track:bf01d66eca2a26f29a49ecd58f44565953dd31d874f3f569ccb473c2ff7d90db` |
| 17 | `theorem` | [MonoidHomClass.antilipschitz_of_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/monoidhomclass-antilipschitz-of-bound.md) | 141 | `result-track:9b77689fd7d921632c9d710175839909c14a11ff3981fa479ad4689874d5de79` |
| 18 | `theorem` | [LipschitzWith.norm_le_mul'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-norm-le-mul.md) | 147 | `result-track:3280604dd0cbe3b27307e5f60ef37ab9aeae36a22d7f6b9b93aabb184c803f8b` |
| 19 | `theorem` | [LipschitzWith.nnorm_le_mul'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-nnorm-le-mul.md) | 151 | `result-track:466be29b4f39e2669ef06f7f33ac2a42d7c4df5a3d6c4fecb5a65f4b4ea1ee79` |
| 20 | `theorem` | [AntilipschitzWith.le_mul_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/antilipschitzwith-le-mul-norm.md) | 156 | `result-track:df9a4e4aa4ad2a7b3e281f7e87ff758d33ac7cee981d87dab0299446723fb7a1` |
| 21 | `theorem` | [antilipschitzWith_iff_exists_mul_le_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/antilipschitzwith-iff-exists-mul-le-norm.md) | 161 | `result-track:b13a1cf129f78f584d432c113936a02120ba3ff1b4b673d20eacb70162fb399e` |
| 22 | `theorem` | [AntilipschitzWith.le_mul_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/antilipschitzwith-le-mul-nnnorm.md) | 170 | `result-track:ef85d6be9562714ab1c2248d3afd8937af39e518cf2e76793e5193cc5363e53e` |
| 23 | `theorem` | [OneHomClass.bound_of_antilipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/onehomclass-bound-of-antilipschitz.md) | 175 | `result-track:470a525f812ede09b73cd7d60032d4d15abbe4970c3d62ecc9406d8b0a613fad` |
| 24 | `theorem` | [Isometry.nnnorm_map_of_map_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/isometry-nnnorm-map-of-map-one.md) | 180 | `result-track:e0a976798839bceacc84c5f214b29050dbc16222da30bbd3ae3cdf517f9ec1bd` |
| 25 | `theorem` | [lipschitzWith_one_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-one-norm.md) | 187 | `result-track:71f113f550318795d63124bc799d25979a5f812e2b3e08efbc108dd981d6d936` |
| 26 | `theorem` | [lipschitzWith_one_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-one-nnnorm.md) | 191 | `result-track:84f6fb81652337e5919eec8e9dcd25d45e73d63e22f9e7b46249e8f380a838b1` |
| 27 | `theorem` | [uniformContinuous_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/uniformcontinuous-norm.md) | 195 | `result-track:484d9e7ae5c29a29b90720a006893d5ff4864aa810ba7bbf251e728ba4f1978b` |
| 28 | `theorem` | [uniformContinuous_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/uniformcontinuous-nnnorm.md) | 199 | `result-track:be1855ab946410c84c0ace90fde8d3c5fa669f9f31af62e8ce959f786406bee4` |
| 29 | `instance` | [NormedGroup.to_isIsometricSMul_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/normedgroup-to-isisometricsmul-right.md) | 209 | `declaration-track:32d14a3399b98c03d73a678ac76e8496295c9b2605dc08f80b2e208d7cb5347f` |
| 30 | `theorem` | [dist_mul_self_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-mul-self-right.md) | 213 | `result-track:f469f49e5aa1b62cd7613da2a884cd79678f286f1f49fb392918366128177fe8` |
| 31 | `theorem` | [dist_mul_self_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-mul-self-left.md) | 217 | `result-track:66c28a75f84ab5fa9a90371e588b1ee21ae1493e72c58dac2d780efe7852303a` |
| 32 | `theorem` | [dist_self_div_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-self-div-right.md) | 221 | `result-track:39f212581c6ca7c9fa9292f4ede68ecdd9b7e3955c8f6090fd613fe52032a378` |
| 33 | `theorem` | [dist_self_div_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-self-div-left.md) | 225 | `result-track:aa8b32837309e32d4259c041b1200e3434a76d1767e2a4e5810e3a943c79d391` |
| 34 | `theorem` | [dist_div_eq_dist_mul_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-div-eq-dist-mul-left.md) | 229 | `result-track:2eb912f2714ec4ceb9bdf4fd90f80bfb99e4b5e09cfeb403a717853625f0d99b` |
| 35 | `theorem` | [dist_div_eq_dist_mul_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-div-eq-dist-mul-right.md) | 233 | `result-track:bd8eb8a1a39a434816005ff0cb34ed8e674aa7774058e54406e14abb4802e9c3` |
| 36 | `theorem` | [dist_mul_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-mul-mul-le.md) | 237 | `result-track:1f27b1ed86989d6dfa97a7825e3a6f9647af1084894a405dca9fd122605a24c0` |
| 37 | `theorem` | [dist_mul_mul_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-mul-mul-le-of-le.md) | 241 | `result-track:8a7c087b16329110cb8f865c66a3662fde7fb46c933ff006470390154a54c184` |
| 38 | `theorem` | [dist_div_div_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-div-div-le.md) | 246 | `result-track:2eebaad330ec944938c3cb2f83460e322bdafd15a5d1c355135e8702e45cc1c9` |
| 39 | `theorem` | [dist_div_div_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/dist-div-div-le-of-le.md) | 250 | `result-track:72a5ec62895b3a1e8a4b74255fe932b6df57b3864a01f3531834fc254ac5bb90` |
| 40 | `theorem` | [abs_dist_sub_le_dist_mul_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/abs-dist-sub-le-dist-mul-mul.md) | 255 | `result-track:439cf1add3d35a1eec9011c429b6239674fce2ef870fb754d927ae400a798e6d` |
| 41 | `theorem` | [nndist_mul_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/nndist-mul-mul-le.md) | 263 | `result-track:a1357ffe84d2127709fcda3a8ce1b3f6f93edaeb35a494e328e4b6f06675780f` |
| 42 | `theorem` | [edist_mul_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/edist-mul-mul-le.md) | 268 | `result-track:8ef5065cc503ba8bf643916ef3084f3fc345c99f39346225d5226e8f4a7d3bc8` |
| 43 | `lemma` | [lipschitzWith_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-inv-iff.md) | 279 | `result-track:798697d8f84df7c8420d861ec83e06449ad6a78f56edda3a1c5644a27978c83a` |
| 44 | `lemma` | [antilipschitzWith_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/antilipschitzwith-inv-iff.md) | 282 | `result-track:c3a11de005ee0e3bc8fba3d338d7b40d0fd49b2fe45a5e51fca4a4ea7891d448` |
| 45 | `lemma` | [lipschitzOnWith_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzonwith-inv-iff.md) | 286 | `result-track:27867a3cfaef4c16f4e413791f289f6cf5d7b7cb0191d97a4ec06542d91f7c9e` |
| 46 | `lemma` | [locallyLipschitz_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/locallylipschitz-inv-iff.md) | 290 | `result-track:452165b4cc69886f46c522d7aa14889487152a11db1f01aa937db4b7cdda594c` |
| 47 | `lemma` | [locallyLipschitzOn_inv_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/locallylipschitzon-inv-iff.md) | 294 | `result-track:a46434455dda25ca96da7a6524f002605bb183dccf85ea9cf10eac268fbed80d` |
| 48 | `lemma` | [LipschitzOnWith.mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzonwith-mul.md) | 305 | `result-track:3de23322c98b3c57010234069fd98f54d818a9ae68f8f2097b6c97379dc51af1` |
| 49 | `lemma` | [LipschitzWith.mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-mul.md) | 314 | `result-track:b0f10e4ba6504bbd957f580f2f02b7cf6463f716564fbe05282c181850b80e7f` |
| 50 | `lemma` | [LocallyLipschitzOn.mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/locallylipschitzon-mul.md) | 319 | `result-track:9dadfcefc9f75be6bcd7360239e32c655221ae318b491ea7bb511a068795edcb` |
| 51 | `lemma` | [LocallyLipschitz.mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/locallylipschitz-mul.md) | 327 | `result-track:590214cb7764bcd514bb0740a8b91c3c264e3949ecb57fbb3505f2d658b54f7f` |
| 52 | `lemma` | [LipschitzOnWith.div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzonwith-div.md) | 332 | `result-track:da17229df167f6500915962c66fa21a621c0b55ee1447aaf0d5e44ae2292dfe4` |
| 53 | `theorem` | [LipschitzWith.div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-div.md) | 337 | `result-track:3992ef737c3773f2c0e3cba708be8df585056f10579035da5cfc9ba61070ed30` |
| 54 | `lemma` | [LocallyLipschitzOn.div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/locallylipschitzon-div.md) | 342 | `result-track:9a6dd211ab3b25b0b3fff01f51de34b85c415669697caa1016b861c8fd2ee5c7` |
| 55 | `lemma` | [LocallyLipschitz.div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/locallylipschitz-div.md) | 347 | `result-track:575fd2fa3b35309d0004584bf8ef179d2db2c6c8e6b95a60b29a7480ef55263e` |
| 56 | `theorem` | [mul_lipschitzWith](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/mul-lipschitzwith.md) | 354 | `result-track:41aefb955bd3480c06887cffd53b7305628bf1cf4a2ee4659198ead3cd6cbfba` |
| 57 | `theorem` | [mul_div_lipschitzWith](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/mul-div-lipschitzwith.md) | 367 | `result-track:692a32c718ee6233a164fb18922b84e2128fd22ca116fccce07f7c5d9b99d76d` |
| 58 | `theorem` | [le_mul_norm_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/le-mul-norm-div.md) | 372 | `result-track:8f911bdb4df2115f7cc4b198df6181b07b65d8381577af56e9afc67e4fdda79d` |
| 59 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 380 | `declaration-track:23565478e3497cc01754c74ee2514cfea780fcfbf3899c3d2687965ae2ec1d42` |
| 60 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 388 | `declaration-track:18910be4024a15fabc7f88c69262c8f766ab57f9ae1fd52a2ae67b81397ccac6` |
| 61 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/instance.md) | 394 | `declaration-track:0e3605da1feac3b5a6ebb5f581559c0cccd458a87553efce9f1c8c0959ee3acc` |
| 62 | `instance` | [instMulNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/instmulnorm.md) | 402 | `declaration-track:4a2c3c1efca341cfa76b71dca304dbeca7afb01caa9cec77a3d302efd0ffa7be` |
| 63 | `theorem` | [norm_mk'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/norm-mk.md) | 407 | `result-track:78576a0cb4a8851fca2b7cf9fa17086eb3a0ebfaf6b562e157392dbad70f0043` |
| 64 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 410 | `declaration-track:4eb00099b0373910a9ab230c07e70140b3fb0eb1b09d96c76f174b93acea414f` |
| 65 | `theorem` | [mk_eq_one_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/mk-eq-one-iff.md) | 415 | `result-track:1bcd8685b4b7a9950679b3f97c872c139370ae9e42aff6d0c2169f754ed25155` |
| 66 | `theorem` | [nnnorm_mk'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/nnnorm-mk.md) | 420 | `result-track:8a82dc8abeba5fd9d93df3e644d7c2d83e21cd6072d271520c8a2339a3ba2eee` |
| 67 | `theorem` | [cauchySeq_prod_of_eventually_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/cauchyseq-prod-of-eventually-eq.md) | 425 | `result-track:c141cb379ed2031d4f2da5c9d3686de2df06aba3d32733ca490b9d9331b31630` |
| 68 | `lemma` | [CauchySeq.mul_norm_bddAbove](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/cauchyseq-mul-norm-bddabove.md) | 439 | `result-track:e4ed0ffab5930de324ac06dccc5ec37b4332225d05f888cd2931e77a6c8f6522` |
| 69 | `theorem` | [lipschitzOnWith_iff_norm_div_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzonwith-iff-norm-div-le.md) | 452 | `result-track:2e8002c7079fbf8551d4be28c5032196d6e9fc6bb7623e8090765593a0b454a2` |
| 70 | `theorem` | [LipschitzOnWith.norm_div_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzonwith-norm-div-le-of-le.md) | 461 | `result-track:687476c67c76802d48662f7dc07cc0280d21da64b4b7c156f38a45f752654e59` |
| 71 | `theorem` | [lipschitzWith_iff_norm_div_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-iff-norm-div-le.md) | 467 | `result-track:aa997b01f10925a12607358cffdede0af94bd239fd9fed8fd79b5d02c20133e5` |
| 72 | `theorem` | [LipschitzWith.norm_div_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/lipschitzwith-norm-div-le-of-le.md) | 476 | `result-track:3282f31de4ad5cd717babc693bb3771f9fb90ce550c723965d7457e77c1e628f` |
| 73 | `theorem` | [isometry_intCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/isometry-intcast.md) | 485 | `result-track:54e948479fbfa617ae20309142f1b976e1e07e783776113829a18babe1a6b6d5` |
| 74 | `theorem` | [isClosedEmbedding_intCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/isclosedembedding-intcast.md) | 488 | `result-track:16971494acae4318332a1221af4244ff9a51534210be77bbae3d6da00f8de368` |
| 75 | `lemma` | [isClosed_range_intCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/isclosed-range-intcast.md) | 491 | `result-track:cd1c8968e8be7f664482200bac7ad794ea4b81b37abae9f828035bcbd517de25` |
| 76 | `lemma` | [isOpen_compl_range_intCast](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupUniformNamespacedPublic.lean/declarations/isopen-compl-range-intcast.md) | 494 | `result-track:b893dbeeeb37105b3940974f76c4b7bf95ab1726b68f6e0d37e7a1aadc11d2c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fbc933c19df8038ae56c11957eca0a1a4c1a9fcc4300c9e5418945a2da28d52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Uniform/Variant15a84abaaf24ee1cfd1b44835962d8ad9d89e948d2f54626f7b09ab17f53f998.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

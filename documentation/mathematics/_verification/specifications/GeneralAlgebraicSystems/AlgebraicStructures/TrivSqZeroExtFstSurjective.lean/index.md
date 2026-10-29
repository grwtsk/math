# Verification target: Triv Sq Zero Ext Fst Surjective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "067bef3ede868081a574c985587123ab609c4cfb",
  "lexical_observation_count": 164,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `067bef3ede868081a574c985587123ab609c4cfb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TrivSqZeroExt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/trivsqzeroext.md) | 63 | `declaration-track:ad426c05932b1b4ce7a4fe8b7c9c07c526289578b0311379112f5fcf24b2f0b5` |
| 2 | `def` | [inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl.md) | 79 | `declaration-track:84717dbba13ebbf0ad702796323f70406f6ae7d54ee988f0304400d47e8db01c` |
| 3 | `def` | [inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr.md) | 83 | `declaration-track:acbcaf4cd5941f6ffa4104d08dfd8861a6290f7499c6067044d9f16b911a073a` |
| 4 | `def` | [fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst.md) | 87 | `declaration-track:f0a3ac25d5ea6c499926ad34b05291fc830cd6cce31c218015177b799ec82af3` |
| 5 | `def` | [snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd.md) | 91 | `declaration-track:50c4324b1e53f52c4c782c614716973ea2d24b80a8a8e7b54d2bcfc2dc7db345` |
| 6 | `theorem` | [fst_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-mk.md) | 95 | `result-track:1b23ef0d7d9c0572b0bf4445f833de128354f541cb3e55fd8f93ea65d75b3216` |
| 7 | `theorem` | [snd_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-mk.md) | 99 | `result-track:112b80e18d44c0782af89233c29a930beed55592cb9a3352b73edec339dbddc0` |
| 8 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/ext.md) | 103 | `result-track:2f3988056a2007d4f0fb5635644f38fa5922c2d37649ded5b0d06f3cae27a876` |
| 9 | `theorem` | [fst_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-inl.md) | 111 | `result-track:64b69669c8de40f5e07787afde62f1c7170f170cdc907c446cd71f1fff0c8e38` |
| 10 | `theorem` | [snd_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-inl.md) | 115 | `result-track:8570f272058e551f2a3352fb48d24b65654bcee23120109c4975552d9eb1ef74` |
| 11 | `theorem` | [fst_comp_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-comp-inl.md) | 119 | `result-track:0d7202e11a0e2c385c5d05db1f482ce8873953cb3cd7501a407a446297012c01` |
| 12 | `theorem` | [snd_comp_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-comp-inl.md) | 123 | `result-track:04aaa8e193e74108d56fa9a66e5a7f89ae2b9b617533a9166d584407d4b605cc` |
| 13 | `theorem` | [fst_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-inr.md) | 133 | `result-track:abec4c17fd8a20dbd4f8a19f8b7c9bded2ec7778284fed6fbc7eb502732d19c4` |
| 14 | `theorem` | [snd_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-inr.md) | 137 | `result-track:7d7c4d3f09f325ef5a0a5c5106110aca2922495a7f809fc95bf2cfadbf24b3a0` |
| 15 | `theorem` | [fst_comp_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-comp-inr.md) | 141 | `result-track:935d6913ba790ed1ba89ad2b69856b4572bb813dd1be9f78d41e5af75714ad5a` |
| 16 | `theorem` | [snd_comp_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-comp-inr.md) | 145 | `result-track:1b54d2eaf191c75e8b0d39dc8831f8a3f08f0e1b471c4fa0e5f00ebfcc9d170c` |
| 17 | `theorem` | [fst_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-surjective.md) | 150 | `result-track:1e6a42db02ed3b92d332dd2b0c18ad39e9b62b799cae4039183026073247fc36` |
| 18 | `theorem` | [snd_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-surjective.md) | 153 | `result-track:c818610e7fadbd7e168f1e5c7f826aed5f7be0e1169edb2ed262f7abf7592a44` |
| 19 | `theorem` | [inl_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-injective.md) | 156 | `result-track:3df4d525bc10eb1ef4b9bcdc1a5b6afd6fcea71b70c526e4e7fc659c8bf1044f` |
| 20 | `theorem` | [inr_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-injective.md) | 159 | `result-track:dc13020296eedcbadf93d9ef0d004eed16fb57f272ed26cc8540cfc23f996819` |
| 21 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inhabited.md) | 173 | `declaration-track:71a5f8cdb202033136fec0f539310be8494f4f0498cbc3c032f6857134da0cd9` |
| 22 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/zero.md) | 176 | `declaration-track:f87c2e4988f4292e9fb1993a2babbcaabe1fdadaddef1b53dda0e363e80ce954` |
| 23 | `instance` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/add.md) | 179 | `declaration-track:fa4126569cd85599c1f3f58f42041225a537e64f117e97864373dc6b324d632e` |
| 24 | `instance` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/sub.md) | 182 | `declaration-track:d5ee7c2ba2f8733a450bda9efa6b683ddec842037cd5cf14c02a33d32c155fd1` |
| 25 | `instance` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/neg.md) | 185 | `declaration-track:4edd5b79381d9dc3835cd74131eaf50294b3681a84d142d5e6501f860f87a79d` |
| 26 | `instance` | [addSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addsemigroup.md) | 188 | `declaration-track:39b7d8b6885178f58478e655480a21fd54e804cc6816fd813401cada24c937d8` |
| 27 | `instance` | [addZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addzeroclass.md) | 191 | `declaration-track:5f4b54c756adb10394ed26be6a7d3033ab1810163b45261977e9da7ddf51ba4f` |
| 28 | `instance` | [addMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addmonoid.md) | 194 | `declaration-track:395ae2050143afa1e9ee30044c63172cb242d81b2bf911a59cff3f403579834f` |
| 29 | `instance` | [addGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addgroup.md) | 197 | `declaration-track:76e9e557e36fc011391c2156f87d807ac8d4e317efde4f070f5a265aa3f072a0` |
| 30 | `instance` | [addCommSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addcommsemigroup.md) | 200 | `declaration-track:c0b471c45fe604dac097765c08e97c0a498c1b59f2e94a8b5ac9b14037f565a4` |
| 31 | `instance` | [addCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addcommmonoid.md) | 203 | `declaration-track:d0fa03d6b23c65803048f8619414ca442b2391d4121936799db61337d9c08d71` |
| 32 | `instance` | [addCommGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addcommgroup.md) | 206 | `declaration-track:0e1c02a8537130db9ec01dad95f61211db9122b58e5aabba477af6b904b6eaeb` |
| 33 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/smul.md) | 209 | `declaration-track:341837e597f3570f8a1cfb221b042cde39e28c5b2f57ddbd282e724778704908` |
| 34 | `instance` | [isScalarTower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/isscalartower.md) | 212 | `declaration-track:118d57a7073a7d51ef7786a9ae83e95c3f3a0c67c074aa3bf790e67f1e794f37` |
| 35 | `instance` | [smulCommClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/smulcommclass.md) | 216 | `declaration-track:c09c88fe0cf7d05ad453ea4b3333daa86499f30df4c082a52bd7af2783ad6546` |
| 36 | `instance` | [isCentralScalar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/iscentralscalar.md) | 220 | `declaration-track:778416bbdf9f35bdcb3b202327811006b91fc21e193b8076de65b47f138234fd` |
| 37 | `instance` | [mulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/mulaction.md) | 224 | `declaration-track:f5159a0799e907b9da9aa47433d61d75bc5d8a80a7677d6077a57cd239993ad5` |
| 38 | `instance` | [distribMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/distribmulaction.md) | 227 | `declaration-track:caadc998796cc81c4d18ed97da251228c3e0dca1a7430eaf74252418b03c25f5` |
| 39 | `instance` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/module.md) | 231 | `declaration-track:4a8df97b1ede38b65104db7560d694d718e416c30b0c1e65ab032a47ef0aeeba` |
| 40 | `instance` | [instNontrivial_of_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/instnontrivial-of-left.md) | 236 | `declaration-track:63f75e55c2f48b2d3268f8ff6ff9e2b7d637cf761e63651aa7342fb214f67822` |
| 41 | `instance` | [instNontrivial_of_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/instnontrivial-of-right.md) | 241 | `declaration-track:ceee24f07b225eba252659a2a8186d019fbac22f02a2a7518b7b8d9333940c8c` |
| 42 | `theorem` | [fst_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-zero.md) | 246 | `result-track:3347f49b2dd6946c8627c20339092f2754b3c0200c9f090496b70617f8253933` |
| 43 | `theorem` | [snd_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-zero.md) | 250 | `result-track:941ccfd023da62963e098004f51b2edcc00575649e999cbadb103254cccee74a` |
| 44 | `theorem` | [fst_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-add.md) | 254 | `result-track:5b758188cdaa9cbebb2c336c34ca2f6cb1544742807ed3e4e8160e214277f39f` |
| 45 | `theorem` | [snd_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-add.md) | 258 | `result-track:db757c891509e05d9837f2770d319dff0f77b3ec879b56ebaa5a12aee1053c4e` |
| 46 | `theorem` | [fst_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-neg.md) | 262 | `result-track:9027f020c83b6333d2efe4a8d0068cf0063ed746ed5eaa2d31b5895cd819db84` |
| 47 | `theorem` | [snd_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-neg.md) | 266 | `result-track:03d5fc243e6d18e8f55127e388c670a8b9079977e28440d385ce67fbb31cdffe` |
| 48 | `theorem` | [fst_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-sub.md) | 270 | `result-track:2493d17db277c85c0b1cae52b2565a28f8869c87fc02996d6da8d7f329cda7bf` |
| 49 | `theorem` | [snd_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-sub.md) | 274 | `result-track:5d98ccf3f9ecefcbe8fb061ca54a4c0d58a6afddb7994f980c93b29da502ed8c` |
| 50 | `theorem` | [fst_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-smul.md) | 278 | `result-track:04830617a34b2d6c2a1b4c1a8074967942ee76bf2d7c3052599ec64f97ccb219` |
| 51 | `theorem` | [snd_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-smul.md) | 282 | `result-track:553ce21d3fb43c1407b355b3954d9cedbb6cf6ecae2f4e1d6365a2d988d62749` |
| 52 | `theorem` | [fst_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-sum.md) | 285 | `result-track:b957f9a3651a96d5d50d0fa71c84e23c46080f827915c91dd21eaf4358d728a0` |
| 53 | `theorem` | [snd_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-sum.md) | 289 | `result-track:5f7396db641b8d59374cb90336f760f9b800f1923eddcf0268ab9d76b6d022b1` |
| 54 | `theorem` | [inl_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-zero.md) | 298 | `result-track:51b74bf0cf1549e6fcd839acc79e21e7c815304e1325e432bd3ed179b4708d2a` |
| 55 | `theorem` | [inl_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-add.md) | 302 | `result-track:0b03eabc7c9e1b6dfb3b9cd810f3c32a3291bb0fe168ff5f22b698ebd130bf80` |
| 56 | `theorem` | [inl_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-neg.md) | 307 | `result-track:5a340ac5d0b5d3a5f3857ad1f1fe3a956c2f2209035c43f5d76215706ec6a69a` |
| 57 | `theorem` | [inl_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-sub.md) | 311 | `result-track:5ddacc4b24befcb00f1abe99de8195d404158d26f21f7681b51863f44ab6a351` |
| 58 | `theorem` | [inl_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-smul.md) | 316 | `result-track:5e4fbc083e701309065fed3c7bd5de899aaab1c04415e58b5f07e10d9adf85c5` |
| 59 | `theorem` | [inl_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-sum.md) | 320 | `result-track:e031dbc6737f8af3b7e30207ac7d092353724208216e92979a932e101eb8da38` |
| 60 | `theorem` | [inr_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-zero.md) | 331 | `result-track:22d7678f2ff250e2e96058b353e969a4c904a05dd5ef130a00f04d38c6def893` |
| 61 | `theorem` | [inr_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-add.md) | 335 | `result-track:6366a7518f80f94b6abd535effd594171c27732331fbfa1e81e7cb9bd47fd261` |
| 62 | `theorem` | [inr_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-neg.md) | 340 | `result-track:fe5699cd3f11f8ef91afbc13dc8a66d72a21da1b9ad371751e538a4ed99c114b` |
| 63 | `theorem` | [inr_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-sub.md) | 344 | `result-track:8fd1ef4a0fc353b6deca42c981bdf21531b1c33544a66a011bbeb9299bd15199` |
| 64 | `theorem` | [inr_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-smul.md) | 349 | `result-track:5d74c94e231bd5a1f8ec8c834da7bbbea82ef249239941625713fc11a4cec3f9` |
| 65 | `theorem` | [inr_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-sum.md) | 353 | `result-track:a597b2e6cc5eb8f61d888ef2bb53a661189955ad17baea41dfa27acf60c2b288` |
| 66 | `theorem` | [inl_fst_add_inr_snd_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-fst-add-inr-snd-eq.md) | 359 | `result-track:a73a3b3e48af85e1e0411690ba4acaea59d65d7e7b9a258f54e76c24701ce686` |
| 67 | `theorem` | [ind](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/ind.md) | 366 | `result-track:b4397f0d28de56ca65ed872514ab5c0e646ed89d82a5bacdc7280a4649c008a7` |
| 68 | `theorem` | [linearMap_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/linearmap-ext.md) | 372 | `result-track:6031e980a86fd8774f849b8096d29d81add2bcac5a1ca4e996cc4bf7a9d40984` |
| 69 | `def` | [inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inrhom.md) | 381 | `declaration-track:2bdddfe23bd698a34d74d5649d52c1c967c467a3e82d16b8f6fa678b19cdb31f` |
| 70 | `def` | [sndHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/sndhom.md) | 386 | `declaration-track:85c09b97b236d18dd38bedec3ff8dcfe3db4910d24e20b7b91082874b64546bd` |
| 71 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/one.md) | 398 | `declaration-track:cf2394b814ef50c8259a702136a064a1d4f1cd6adfdbbb02f560c1ee99c3ed8e` |
| 72 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/mul.md) | 401 | `declaration-track:276a96d53a71d3bf482ba7f88769d799afb889787d7a6c5d9384f74a1328bfd0` |
| 73 | `theorem` | [fst_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-one.md) | 405 | `result-track:d5ef5766cd526d9fdec587f7908eba5fd5ad9ecc88e2333024da982a5971f0f5` |
| 74 | `theorem` | [snd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-one.md) | 409 | `result-track:8eeb3cab460cd8ae6f150fce95b58320ef1daa39e0db1c0ded76b27810ada317` |
| 75 | `theorem` | [fst_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-mul.md) | 413 | `result-track:9462dede188ba767ab31b2dbb3f50b3f494627548d00e2f980d62000ff1527a8` |
| 76 | `theorem` | [snd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-mul.md) | 418 | `result-track:1f7889818903c45a1fe5798422747639aef4e0807860b65e81d83a2bbe094b1f` |
| 77 | `theorem` | [inl_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-one.md) | 427 | `result-track:8cf311a0a8895a062e14bc914f5f7356879a5e19fb9b867a180be3d00be2cd6f` |
| 78 | `theorem` | [inl_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-mul.md) | 431 | `result-track:3f1886cb46d483a39d484e8dfdf01c54de05e58847a54f2b90f6532503b7d5f8` |
| 79 | `theorem` | [inl_mul_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-mul-inl.md) | 435 | `result-track:09c1e32e8e76b185aa24c42f1dc6c9c36750bc8c78f786e7def2cd8c0e96b8d2` |
| 80 | `theorem` | [inr_mul_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-mul-inr.md) | 446 | `result-track:4e2bff94856005a6fb5e2ea9c44510365a70919b494429dd7196d8021b09a047` |
| 81 | `theorem` | [inl_mul_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-mul-inr.md) | 453 | `result-track:1d2f6c5876326e914f4fb348045286cb8ea2b2f0229cb0d5a6fb80c63d754bc7` |
| 82 | `theorem` | [inr_mul_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inr-mul-inl.md) | 458 | `result-track:a39dfff796cf49a36e0d914e309455800cdc019eb9fc5da3b9c1e51f1ac91686` |
| 83 | `theorem` | [inl_mul_eq_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-mul-eq-smul.md) | 463 | `result-track:8e4fcc4195301af30790d60a0ba5149fd790b41cb0b6d32e8059c1d085edce89` |
| 84 | `theorem` | [mul_inl_eq_op_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/mul-inl-eq-op-smul.md) | 468 | `result-track:3c788b78b4416a84507fef6cbf0c276f72bf22a46d114a1d6ed96955f37dac6c` |
| 85 | `instance` | [mulOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/muloneclass.md) | 473 | `declaration-track:ed2fa870592355564169d2ea2feae2f162ad32c929f3a2ff03d5ee195b032652` |
| 86 | `instance` | [addMonoidWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addmonoidwithone.md) | 483 | `declaration-track:38961cdaf3c1252324b123444e552c78ecc61462f90e290e3c4f64e15ca3cc9a` |
| 87 | `theorem` | [fst_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-natcast.md) | 490 | `result-track:b2f089677bd77257bf14d8721147de310bb309de7cf2354700a41dfe57001c77` |
| 88 | `theorem` | [snd_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-natcast.md) | 494 | `result-track:d66cc4574ca735100c2cd2ecb618389f4bd514e3c035a9daf1977c4b64ac337f` |
| 89 | `theorem` | [inl_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-natcast.md) | 498 | `result-track:e5a0c7cb7f8cbab0cbca5696db502137a67168ca430456ed7bfdebe0596e11ac` |
| 90 | `instance` | [addGroupWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/addgroupwithone.md) | 501 | `declaration-track:c067705319ce03d323ea58cc44ab347c98dec4682a14ebc5652b9300cfc27be6` |
| 91 | `theorem` | [fst_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-intcast.md) | 508 | `result-track:d6266cd0c44b7f3cd46278b433ad93dbaf9e36337a79fe3423103ecb7d9308ff` |
| 92 | `theorem` | [snd_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-intcast.md) | 512 | `result-track:e8f177b3f436aea2ad6bce22afade5ec726343ba955ada92c7dfc9ddf4a59e28` |
| 93 | `theorem` | [inl_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-intcast.md) | 516 | `result-track:53e91ba3b772334a18b8cf9ec961da42028283150eae0bb78c6db8c86d5c4a9a` |
| 94 | `instance` | [nonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/nonassocsemiring.md) | 519 | `declaration-track:d4a7ef1032908f10296f984fbcabcd2634e9910a7906fb329c323dd20e911acd` |
| 95 | `instance` | [nonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/nonassocring.md) | 541 | `declaration-track:93434b0f4e8159f70d16e3f92925eabdfa1a3e08a92e84b1e1b55755b0abe1e9` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/instance.md) | 554 | `declaration-track:3fe06032dd712c9f002eb4cfcf067bc1d6f4a1664e5073ef69feb6b7debaab8d` |
| 97 | `theorem` | [fst_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-pow.md) | 560 | `result-track:8268aff4be096cb7e90f1aa44d714dca146d5e85bacf6213aa382d4445800fd0` |
| 98 | `theorem` | [snd_pow_eq_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-pow-eq-sum.md) | 564 | `result-track:8766ea034175963127b485e648ea1b7f65a07da4308a675f7b3f7cd6d815dca7` |
| 99 | `theorem` | [snd_pow_of_smul_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-pow-of-smul-comm-source-edition-2.md) | 569 | `result-track:3892296ae1b3be718cc07064a2babb0710e2da5eb7286c599149d7610bab8611` |
| 100 | `theorem` | [snd_pow_of_smul_comm'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-pow-of-smul-comm.md) | 591 | `result-track:0aabba8d4c9802951ddd31668134043bd75ed5740277fc850bfb18b39f1eae47` |
| 101 | `theorem` | [snd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-pow.md) | 597 | `result-track:7ffddb00873d1a39bd4cbbc7cbc9609f9025c095f41b09de87b4c5146a2bfaf4` |
| 102 | `theorem` | [inl_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inl-pow.md) | 602 | `result-track:6c2ed77dfc11dc48481b795f026cad0e5a8b3263d67cb9689710240129bc8b2b` |
| 103 | `instance` | [monoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/monoid.md) | 606 | `declaration-track:25e13be0ecd9d0ebea77042229f0f07ffbc26b9a20db276d81fde6366bb8c21b` |
| 104 | `theorem` | [fst_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-list-prod.md) | 629 | `result-track:21769163b7bfa7e4aa52c7736344ce72aa1886b728017c47bbc9520562f6f9b0` |
| 105 | `instance` | [semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/semiring.md) | 633 | `declaration-track:45fbd4e73d6ad3c75ebcef0d5d3f1e08813ace1e285c05b61b699f26ac233bee` |
| 106 | `theorem` | [snd_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-list-prod.md) | 639 | `result-track:09efb5cdf7eb8dd12f0d1a07e69d2e8855b07e9698569d674194a3f0f2520517` |
| 107 | `instance` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/ring.md) | 654 | `declaration-track:c8cfd247328361caa4d519ec4426a9507253b6c258a27ea689aa5103193ee038` |
| 108 | `instance` | [commMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/commmonoid.md) | 658 | `declaration-track:63fff262057ce98c78b71a7d05144fe0ebd85e5d73887d6d2dcda0ca8c210ff7` |
| 109 | `instance` | [commSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/commsemiring.md) | 666 | `declaration-track:d5b7b84e1f41987877dc0982a885cfd88293fcac4bca64836dfee0061dda41a4` |
| 110 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/commring.md) | 670 | `declaration-track:625c8a0ee75e48e3e79cdc0d536607daccf463270aff2b477c2b7a949cb6a4ba` |
| 111 | `def` | [inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inlhom.md) | 678 | `declaration-track:f4385b7ae9a23648d274aa84232f9662eb605e270eaa3ea0fea5ead0e2a46c4b` |
| 112 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/instinv.md) | 694 | `declaration-track:7473a80bc965bff0a977afb7b89bb2f24f54ec2cc32e6ee31611ff1f8f4b00d3` |
| 113 | `theorem` | [fst_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-inv.md) | 697 | `result-track:cd4241adb93ff4ccb6a3993c19adecbef3f2d9b1448c6c7cb1bf48c8347d5b2e` |
| 114 | `theorem` | [snd_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-inv.md) | 700 | `result-track:9f7889efe6f6fd31f14d82a8a2cdca2765d29ff0069e3f1ea7fa0757a437c2b6` |
| 115 | `abbrev` | [invertibleFstOfInvertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/invertiblefstofinvertible.md) | 711 | `declaration-track:17c36f0c6c474d6f263d985d1f02c283a91de18b9634172067fd762fa543d119` |
| 116 | `theorem` | [fst_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-invof.md) | 716 | `result-track:1286667d06a9368ed6e0adf6476ac912a77968a4e21b7d5c9fa5420c261fa450` |
| 117 | `theorem` | [mul_left_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/mul-left-eq-one.md) | 720 | `result-track:5395adf09a36682e3c4ffa55b72803930692410e0f6ef3f0d7d9ffb9ec290f7d` |
| 118 | `theorem` | [mul_right_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/mul-right-eq-one.md) | 727 | `result-track:d90da24f9fc215ef5019f796a94ee76cc6aab29ec059e69082914b2749e11736` |
| 119 | `abbrev` | [invertibleOfInvertibleFst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/invertibleofinvertiblefst.md) | 736 | `declaration-track:75b1335f893101000952fd51b6d5caf463a8903021abd851b6fce9c4318864e8` |
| 120 | `theorem` | [snd_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-invof.md) | 745 | `result-track:b7e17a5449a215cbbe26cf959b62283e9b844889fe62fb3ea30eecde11d2efb2` |
| 121 | `def` | [invertibleEquivInvertibleFst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/invertibleequivinvertiblefst.md) | 754 | `declaration-track:5b4307b80b26f5902bcb24ea4442dfa2746c081ed25d5e4387e608366064ae69` |
| 122 | `theorem` | [isUnit_iff_isUnit_fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/isunit-iff-isunit-fst.md) | 761 | `result-track:4f7abf29a686a6a30000bc75a36fb51a216544c863042a295846005704214765` |
| 123 | `theorem` | [isUnit_inl_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/isunit-inl-iff.md) | 765 | `result-track:4166f2d5f2ea20b5a8343b80aa3fb03d252eea210212618677f0a82bf02aba64` |
| 124 | `theorem` | [isUnit_inr_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/isunit-inr-iff.md) | 769 | `result-track:47a16c7232b63e9cadfcc817c1f14127556d0816cd602e5f4131917ae5b82c80` |
| 125 | `theorem` | [inv_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inv-inl.md) | 778 | `result-track:9213f11fec62fc46406cf1a4fc6beef752bae02ac4cd86d96c155bcf16171294` |
| 126 | `theorem` | [inv_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inv-inr.md) | 785 | `result-track:8bcf2bf1bf0618c6fb8ddbef97fade1200010a2fc3ddc8d5ff457dc15644f4ed` |
| 127 | `theorem` | [inv_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inv-zero.md) | 791 | `result-track:396717f7d4b4e39033b92ad7ed660e5e4a5ec6233f59b5cef6bd0453777e8910` |
| 128 | `theorem` | [inv_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inv-one.md) | 795 | `result-track:737891c6c8615dcc4aedbef53d55954724fb53e60e25826783a4faa2c7b8bc5e` |
| 129 | `theorem` | [inv_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inv-mul-cancel.md) | 798 | `result-track:8b63848ccde60afe9461a3a352f551ae5da17cbff0d4232c277f571c2a838c24` |
| 130 | `theorem` | [invOf_eq_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/invof-eq-inv.md) | 804 | `result-track:40cc2548c160d2af3ff7c1a655fdc08f7ae1a74a31305af099cd315fd5f4a340` |
| 131 | `theorem` | [mul_inv_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/mul-inv-cancel.md) | 808 | `result-track:349394697351d711f176c0392f5548269aadbaec072685b730a6e718e290f73a` |
| 132 | `theorem` | [mul_inv_rev](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/mul-inv-rev.md) | 813 | `result-track:6ee343c885dc8712c03cb882ecc66b9ef93d2e73f74924fbfc7af8522199e48c` |
| 133 | `theorem` | [inv_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inv-inv.md) | 826 | `result-track:a436f8e37803a5e70c9826e9c134d50299216813ee0cd2bad8d127eb16300c8b` |
| 134 | `theorem` | [isUnit_inv_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/isunit-inv-iff.md) | 837 | `result-track:3c0c6617c72f1e5c5bf86de60795c7fcf1f96161bbb4705833df278f7a2614aa` |
| 135 | `theorem` | [inv_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inv-neg.md) | 846 | `result-track:7e9b82b3406c05b00bad9561f3baa5c34bda17b3c3fd4fd84586f6d40d89afcb` |
| 136 | `instance` | [algebra'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/algebra.md) | 859 | `declaration-track:786e6d0ff779651ee9f6566f1354b87ea48f0fe273865f8cd62db7cfdaf201bc` |
| 137 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/instance-source-edition-2.md) | 875 | `declaration-track:7c7cf68f595f6299fecc9fdf5a15a283ee27511ba814160012f6e7979529b5b9` |
| 138 | `theorem` | [algebraMap_eq_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/algebramap-eq-inl.md) | 878 | `result-track:069e89156c975d7913e01697ae383e8c256e408ccd67b6ebd21879d2ef3968cd` |
| 139 | `theorem` | [algebraMap_eq_inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/algebramap-eq-inlhom.md) | 881 | `result-track:c69159651476e67c1555b75d7c9c56d7e0ea20acee2ad4f16c8826e6f14a3019` |
| 140 | `theorem` | [algebraMap_eq_inl'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/algebramap-eq-inl-source-edition-2.md) | 884 | `result-track:fbb80ad8f50729ebb3acc5c613c03e4938647a221fea1fd19afff655b966f818` |
| 141 | `def` | [fstHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fsthom.md) | 889 | `declaration-track:77ea6faa6d2bde17bb9e17088c8def57ee7679b9a93a98e74a4fc72e665a6e54` |
| 142 | `def` | [inlAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/inlalghom.md) | 899 | `declaration-track:584fcd1c64c57b1ae537d66655ecb185a1f3267881b43ae891753db252b0ea04` |
| 143 | `theorem` | [algHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/alghom-ext.md) | 909 | `result-track:90e214fbbc75cfcf1f4010fffa82b0f4cc5aac3703a5d0167c0618b6179f3843` |
| 144 | `theorem` | [algHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/alghom-ext-source-edition-2.md) | 915 | `result-track:fbd6ef771176f445e85dd9b3add38efc767a5d506abd3abb09580efc2c8813d6` |
| 145 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/lift.md) | 939 | `declaration-track:c783d9b2452276f2d3cfb7cbbfa0865dbc3a4fc39221d09674bc662d00d67f5a` |
| 146 | `theorem` | [lift_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/lift-def.md) | 953 | `result-track:1a88757becd18c1047d6498aa4deebe80b9ea335c7880416aa58bec9ba25ca92` |
| 147 | `theorem` | [lift_apply_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/lift-apply-inl.md) | 961 | `result-track:c4ac2f2a49ddadaeaf2fde74f7e89fcfeb6e7daea418be6edb7ffffa875a36a0` |
| 148 | `theorem` | [lift_apply_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/lift-apply-inr.md) | 970 | `result-track:7029fcf79f649fe563892769b11ca2c61909746d16eac66cea8fa8a2b8947209` |
| 149 | `theorem` | [lift_comp_inlHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/lift-comp-inlhom.md) | 979 | `result-track:0727e1dbf7610fbf196acdda42d2e58781f870f5c295991ff8b148fbebcd4f32` |
| 150 | `theorem` | [lift_comp_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/lift-comp-inrhom.md) | 987 | `result-track:1abaaab755b732b740a6e860eaf33b6b1b9d37ac798396fee8e5679b57afe77d` |
| 151 | `theorem` | [lift_inlAlgHom_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/lift-inlalghom-inrhom.md) | 996 | `result-track:f9b0255e45fd429ebb5587bcd3407871ff1670411261e548cfb8c5aa6a94b938` |
| 152 | `def` | [liftEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/liftequiv.md) | 1009 | `declaration-track:b180faa56e3fbd77f81dbe793d66e00101005fc42b4a5dfdd6c4ac0a5a26bc69` |
| 153 | `def` | [liftEquivOfComm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/liftequivofcomm.md) | 1026 | `declaration-track:320744058114028278c63c60495eae9646d170506a00c1ff06c44c48713c3034` |
| 154 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/map.md) | 1050 | `declaration-track:d5a99d5b58b55478ee15e408c101d4f58cfdd0c22978c241b8b5f8dd05e4706e` |
| 155 | `theorem` | [map_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/map-inl.md) | 1054 | `result-track:40ea69524641b81d372df9d7bba0f345c7282ae794a6899c957af86fed745104` |
| 156 | `theorem` | [map_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/map-inr.md) | 1058 | `result-track:1dedc3b508c0d0f2100fc5358f519f3c9d73fe11f87420ef38a619dc55012342` |
| 157 | `theorem` | [fst_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fst-map.md) | 1062 | `result-track:9ef64dba705a44a311f7ba11944a84f65dd5e0609cb70de62c708569427872ac` |
| 158 | `theorem` | [snd_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/snd-map.md) | 1066 | `result-track:6568cf78fdbd9d8b5b16fc80fda57bc7a9f82c0ce8c3779d23eb22467d8044ba` |
| 159 | `theorem` | [map_comp_inlAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/map-comp-inlalghom.md) | 1070 | `result-track:49b609242aecab0f6c2f2b3fa3b186eb44cc08cfd0e218fcd2df9f60a01d3bb4` |
| 160 | `theorem` | [map_comp_inrHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/map-comp-inrhom.md) | 1075 | `result-track:2f8446e37eaf1d2411080a3a49399398c8f837a4bd8c93ef5c6e6afd36c9596b` |
| 161 | `theorem` | [fstHom_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/fsthom-comp-map.md) | 1080 | `result-track:762427d872ef18a1dd8930cd8b98fb35f54e0fc245eb67f420c94dafd2ce9dd4` |
| 162 | `theorem` | [sndHom_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/sndhom-comp-map.md) | 1085 | `result-track:ffb093db82d5e2ecb2e355f632a439467456119459be4960146ad72ba8dcf95b` |
| 163 | `theorem` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/map-id.md) | 1090 | `result-track:6ec4fa60c881521cabc245669dde357f6f4fa9764defc8d9c65da11c91545c52` |
| 164 | `theorem` | [map_comp_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtFstSurjective.lean/declarations/map-comp-map.md) | 1094 | `result-track:71834ff7e86779d271224848dc6179a22f85dfbb60663a5f75dbfa8f5e0e1f68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=768f7f7a3e5d53156f8e667528ced76723c4bbae1098ca44ee4e62a0eb7c18ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

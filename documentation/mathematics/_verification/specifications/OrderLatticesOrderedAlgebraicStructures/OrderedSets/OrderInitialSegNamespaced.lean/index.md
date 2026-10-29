# Verification target: Order Initial Seg Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eab74e0ea80cb08347158d5250ef3b8d759a0e7c",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eab74e0ea80cb08347158d5250ef3b8d759a0e7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sum.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InitialSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/initialseg.md) | 61 | `declaration-track:83eefaac2abcf77dc1022d91c21cfa31760fd4a05ee8d02a8cec3bc850514c78` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-5.md) | 73 | `declaration-track:79313f890e64223c1c056b96390f096336f15647448e7f90802e96d1fe7c6f64` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-10.md) | 76 | `declaration-track:f64448700ef4bb17ba69a449d0c90dada7bf8c913e28c7abe347d50e7993b91b` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-3.md) | 83 | `declaration-track:4a9b74c9331db760605cc273f435121b4241f677de51c24145954ba1652797c0` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-8.md) | 86 | `declaration-track:edc5329a76b254234fac4aa1beace13e0c76f91858ec3b1648aa133fa2154f13` |
| 6 | `def` | [toOrderEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/toorderembedding.md) | 91 | `declaration-track:fcae215501bca8af56e3a70ffdff8b440f41d698b9ec44c4fc7ba3a78fb1328d` |
| 7 | `theorem` | [toOrderEmbedding_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/toorderembedding-apply.md) | 95 | `result-track:ff0a093841eb86098f38f5197bd690f8d8ce5d7bdc6fac97cc5c7445e81f9e3b` |
| 8 | `theorem` | [coe_toOrderEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/coe-toorderembedding.md) | 100 | `result-track:87caf515e3b5c719b11546c6ef3efb130e601f88e74ff3cca61006f39476fab1` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance.md) | 104 | `declaration-track:267b3fdda930ff64f8d0ef1a10e98cf8c9ff1e1398390a1db369056320acefd5` |
| 10 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ext.md) | 107 | `result-track:1df0af648d4d4c5064ee435189cca1c3236c608c14f86ed387da69300f2a32c1` |
| 11 | `theorem` | [coe_coe_fn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/coe-coe-fn-source-edition-2.md) | 111 | `result-track:baad94676df43d92d56c959a774ed3184f5386b1fd6a6659665a83dd9649dea2` |
| 12 | `theorem` | [mem_range_of_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/mem-range-of-rel-source-edition-2.md) | 114 | `result-track:a8d4172e3f698c88375cba4aced47b16d122369358003bdf672b524c670e4d93` |
| 13 | `theorem` | [map_rel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/map-rel-iff.md) | 117 | `result-track:670892d07d4ab56a6935b8a112326436210d8bc6685f6d587698cf5bb7c1f237` |
| 14 | `theorem` | [inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/inj.md) | 120 | `result-track:ca21678b6dc3293316398d0f26ae1a2e4020e86261a398fa35b60e28017a870d` |
| 15 | `theorem` | [exists_eq_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/exists-eq-iff-rel.md) | 123 | `result-track:8b661563788fc01f44d3032fe94a86afcf435ca182afe272292a12734582275d` |
| 16 | `def` | [Order Initial Seg Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-in-source-edition-5.md) | 131 | `declaration-track:df414bc5d194deb9bc0fd8240f602f3f059762995f1f96ac68078fccb6d87601` |
| 17 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/refl.md) | 139 | `declaration-track:6ecd21b69cb157414503e0f1c0e080d75c221971477e1ef982eddc6f07da9bb7` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-7.md) | 142 | `declaration-track:e3d73bc64068673865e6bbbbf0ee97f644bacfb34236beb60cf74ab751d54dca` |
| 19 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/trans.md) | 147 | `declaration-track:08fdbb46278fb54def74db231ff22aa6048b9f2e5f55b0243d6f4ac799f0ce5c` |
| 20 | `theorem` | [refl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/refl-apply.md) | 154 | `result-track:ebe2c89bbb032e3c078ec4864c5034001d331b66c4a6d37276c7f27e96791d34` |
| 21 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/trans-apply-source-edition-2.md) | 158 | `result-track:94655e27515241c1803c3a5e30e20d443fc14ba07096e93b4bb4af4358d28541` |
| 22 | `instance` | [subsingleton_of_trichotomous_of_irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/subsingleton-of-trichotomous-of-irrefl.md) | 161 | `declaration-track:87cebb309f72fd4072825d126853b63237a922dbd9f9ef9675840126797fc4c9` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-11.md) | 171 | `declaration-track:fc94a7e356b35cb5d834a61421634bbf331dcdc5be99681cc06ca11147e7c70d` |
| 24 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/eq-source-edition-2.md) | 174 | `result-track:05088e2a5462bb7442703ac3d3e70b196b9701420f7eac1fdc0fcfa4bf28e89d` |
| 25 | `theorem` | [eq_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/eq-reliso.md) | 177 | `result-track:835416655fcd4380787673bf9ff1bb0a0d1155e182cc78cedf2c428178af27f7` |
| 26 | `theorem` | [antisymm_aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/antisymm-aux.md) | 180 | `result-track:2701d0159b17f83ea5b8818702aefc44f22441766af817a970d38cfa83a74299` |
| 27 | `def` | [antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/antisymm.md) | 185 | `declaration-track:32beb40c8edacdd7c39354a74254d900e2468325d0a6e8f33985a0d0df62485e` |
| 28 | `theorem` | [antisymm_toFun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/antisymm-tofun.md) | 190 | `result-track:cf64aba45ada075e4654b3b70868a94613ce1fc293a0e9fe914873debd50656c` |
| 29 | `theorem` | [antisymm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/antisymm-symm.md) | 194 | `result-track:b40dfc287f22cfd1f68c943ea67eb35ee0de6103594146548f7216f16692ff85` |
| 30 | `theorem` | [eq_or_principal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/eq-or-principal.md) | 201 | `result-track:1d39b94ef3d65c12ec97789cadf1a18f943e826d69d74a7236838ef5e86b301c` |
| 31 | `def` | [codRestrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/codrestrict.md) | 217 | `declaration-track:488f2090fb7600caff265d768c40c8434f215487b0e26ca1238a087187183546` |
| 32 | `theorem` | [codRestrict_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/codrestrict-apply-source-edition-2.md) | 223 | `result-track:6f524b83e57a4284e5330c1b4aee3ce860a100718761a579a0adc70456b3aeae` |
| 33 | `def` | [ofIsEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ofisempty.md) | 227 | `declaration-track:a076f1eb9f664698c63e958bc1c6e60502b9aa4b11a6894b70e6624bd81d6c0e` |
| 34 | `def` | [leAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/leadd.md) | 231 | `declaration-track:507d73df067b6cdd85d8063bb45f9d65e9a3c3fda28fcb019150edecbe5cc6c5` |
| 35 | `theorem` | [leAdd_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/leadd-apply.md) | 236 | `result-track:37fb9f32831fe5296ddeb307ea198a42f70e9ed4502069d8108c812bce92116d` |
| 36 | `theorem` | [acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/acc-source-edition-2.md) | 239 | `result-track:0fefca0e167a68f267034e56562fb80f85f2de011f21cfa2f9f7d4407db78fcf` |
| 37 | `structure` | [PrincipalSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/principalseg.md) | 252 | `declaration-track:dded320cf00d3a5e62007dc9e904d9f085b5db058234f195455457d5c6e52cda` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-6.md) | 268 | `declaration-track:d5b97f00390d702fbca70c2c72598692671a79edc7eff18d0c19805ac7df9909` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-4.md) | 271 | `declaration-track:6dc6fbe94bdf9879d102177c36d23b80ccd630df7163c41cb4fd4b0054f408ae` |
| 40 | `theorem` | [toRelEmbedding_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/torelembedding-injective.md) | 274 | `result-track:df294281aff3af57cc0e6d3bd6ada4a3b657f35237f430155786bde304c7f3fe` |
| 41 | `theorem` | [toRelEmbedding_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/torelembedding-inj.md) | 282 | `result-track:63468455d6e1ed9997c352c5d8ff08d25644e10ba481f2c7d8c374b4621ce5a7` |
| 42 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ext-source-edition-2.md) | 287 | `result-track:fccd8d2138f76caa4f788486de56a9ff901c6a2e3408df8167e33b2e28622c40` |
| 43 | `theorem` | [coe_fn_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/coe-fn-mk.md) | 293 | `result-track:6e5e9d3b1c6f123e58cabe7412f5502faaa623ffdce1a6906a49eb71f3449d42` |
| 44 | `theorem` | [mem_range_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/mem-range-iff-rel.md) | 296 | `result-track:8177733299162f7b1549868358896a24220e558ae0ecddc0c9ef71a6161ef447` |
| 45 | `theorem` | [lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/lt-top.md) | 299 | `result-track:3166e21ad3928a7ebef58217dc2c85472b03d8794c46e6345bd65d79b436fd0e` |
| 46 | `theorem` | [mem_range_of_rel_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/mem-range-of-rel-top.md) | 302 | `result-track:5538b1f6b3a06c6cf9c8df51e597c0de92f84adec8253e0cdb79afb7604fe6d5` |
| 47 | `theorem` | [mem_range_of_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/mem-range-of-rel.md) | 305 | `result-track:1c13d610dd50b25f304a05a7022872081347ef4631b30d03cff6c444f817afb2` |
| 48 | `theorem` | [surjOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/surjon.md) | 309 | `result-track:af7b3a7f3295ec7a34619f56ec92dd2181b66b97b629b2441dcb5c4e3aa3233a` |
| 49 | `instance` | [hasCoeInitialSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/hascoeinitialseg.md) | 314 | `declaration-track:19d1c292ca99588d19ecf1fa586204425e5e398759b6dc0d870a5c775eb7de64` |
| 50 | `theorem` | [coe_coe_fn'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/coe-coe-fn.md) | 317 | `result-track:aaba195c2926858ba4dafeac7d33da2ed723e217bbb27ed72f007f095331a5ea` |
| 51 | `theorem` | [Order Initial Seg Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-in-source-edition-3.md) | 320 | `result-track:850b2c2fa7a7b81a64beed1d36fbf7f34ad4909c51dde04fbb31942f6fc02dee` |
| 52 | `theorem` | [exists_eq_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/exists-eq-iff-rel-source-edition-2.md) | 324 | `result-track:ac9023070287e0d8d407ba80cae75eebd9719bce99dbcc30c28cfbcc7f920e79` |
| 53 | `def` | [Order Initial Seg Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-in.md) | 329 | `declaration-track:4b3890093077402cd3ce091e2e75146d044687a8ae88be3118bd7ec92d1872fc` |
| 54 | `theorem` | [Order Initial Seg Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-in-source-edition-2.md) | 334 | `result-track:72b71a582337bdc2fdeb8c200cd179725eaae28fd0d75f50870392343211d05a` |
| 55 | `theorem` | [irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/irrefl.md) | 338 | `result-track:166595273adb3c9c0fa5f5ba09f5e19c431290c367f496f4cadd8829758c1b10` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-9.md) | 343 | `declaration-track:f572160b46dec8df89167868b140a83d430c5d4548279d1f59264dc136b4c7d5` |
| 57 | `def` | [transInitial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/transinitial.md) | 348 | `declaration-track:4f29f4010f36f19ea807c765d116d0a5339370d02187c49471b8cf13239f39ed` |
| 58 | `theorem` | [transInitial_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/transinitial-apply.md) | 353 | `result-track:f71cf5f4ba8c2cc1346033fa2dab9ba4c9dc265383f89f40eb775990780e9623` |
| 59 | `theorem` | [transInitial_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/transinitial-top.md) | 357 | `result-track:ce96ac5ce87a4f560b05b0577df7e933c204a5e995c8ff0e70f3cd893f3f2144` |
| 60 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/trans-source-edition-2.md) | 362 | `declaration-track:ce41c0ef80932b5290ea502760d3cd8e0648a60008c9c83fc91eae4f2a1f852c` |
| 61 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/trans-apply.md) | 366 | `result-track:2ed11313552f8072bccc63cce0a322ed9c82436ec0196139c2b4e8a2b26f6ddb` |
| 62 | `theorem` | [trans_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/trans-top.md) | 370 | `result-track:b9a74458f3fd8920db5c92cdef8958d7de58e95264d72264bf360259e7bda3d3` |
| 63 | `def` | [relIsoTrans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/relisotrans.md) | 375 | `declaration-track:0ff27748b0f2dc3ff1097d324591addfd6e4316a6f783d714622ff52801e58e8` |
| 64 | `theorem` | [relIsoTrans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/relisotrans-apply.md) | 379 | `result-track:a80ac3e247b813eaac9a469b47797ae4d5b082f733639220dddf9766ae1cdd33` |
| 65 | `theorem` | [relIsoTrans_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/relisotrans-top.md) | 383 | `result-track:fd4bb2cdf9dc25c42da68417be4fc9c7651d106912ae94d6dde922cfaa81bbc3` |
| 66 | `def` | [transRelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/transreliso.md) | 388 | `declaration-track:e0f146d9408a4df541c636e69093ccf31a5a97a1d2ab28725f4c6fb67eca03fd` |
| 67 | `theorem` | [transRelIso_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/transreliso-apply.md) | 392 | `result-track:bf732f1feee8a370599b1148568141520328279524ff9070e80d9d2ab4378f35` |
| 68 | `theorem` | [transRelIso_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/transreliso-top.md) | 396 | `result-track:55f18a9da5c8405bedc4c99df52483340688fd9905c7f4f30fb455fa47519743` |
| 69 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/instance-source-edition-2.md) | 400 | `declaration-track:438b0364601bbbaf8cc3f231a69beaa44c49f294cff872394ee5548d28973edc` |
| 70 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/eq.md) | 403 | `result-track:0271e3d3ae808c8acb1a1e0e52eed27e77ad2b03ecbd247b6c2fdfd0f83b6e81` |
| 71 | `theorem` | [top_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/top-eq.md) | 406 | `result-track:09db77cb67485bbd4e23bdfbadc0ed6e3ef2309a2ed1c43a0874bcd855d13345` |
| 72 | `theorem` | [top_rel_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/top-rel-top.md) | 409 | `result-track:b6b05383ba570ddf9a71d5a9a174a9c9b2f121d927b1bf095bfdd4a886738425` |
| 73 | `def` | [ofElement](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ofelement.md) | 416 | `declaration-track:78b12a8c7e51f72ff6f9bfbfb6d2ec05790455779bfd07ccf37226b98e7ad3ea` |
| 74 | `theorem` | [ofElement_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ofelement-apply.md) | 420 | `result-track:0362687240c2853d76887e41f856583141508a1b00074208be8a4d64af62ebc5` |
| 75 | `def` | [subrelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/subreliso.md) | 425 | `declaration-track:d7c0b139143f6bd9fa331dc227815ce729899443ea43af17289b0a6b50595887` |
| 76 | `theorem` | [apply_subrelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/apply-subreliso.md) | 430 | `result-track:68d3b0505b37d2c5f8fe90edf848cdc55ecca5130ad8b5fc2ab62d59e097fa49` |
| 77 | `theorem` | [subrelIso_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/subreliso-apply.md) | 434 | `result-track:cd0e53c38f8d84deb03f02974935c73148e598704205904bcdbb6b241b905d06` |
| 78 | `def` | [codRestrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/codrestrict-source-edition-2.md) | 438 | `declaration-track:80eaf2a290cf67e01d7f08786273ffcd63782a9e2ed0d58fce0a15496f72c9ed` |
| 79 | `theorem` | [codRestrict_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/codrestrict-apply.md) | 443 | `result-track:441459af3f8907fa04ef09e12305d92991db9ba5a51284fca6714e7fd5de6fe3` |
| 80 | `theorem` | [codRestrict_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/codrestrict-top.md) | 447 | `result-track:c28b970e810a13d17abbb5b11940a344ade5fadb875232e96d9bdaa57430e36c` |
| 81 | `def` | [ofIsEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ofisempty-source-edition-2.md) | 451 | `declaration-track:e23f7224f4577596d34fd06c39412417ac58c581b84d008b1af890c7877e95c4` |
| 82 | `theorem` | [ofIsEmpty_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ofisempty-top.md) | 457 | `result-track:fd5c77d8b6c86c06483ca5f9691a7bcf56b76c0579aa15a44d6ee71e579c3c8b` |
| 83 | `abbrev` | [pemptyToPunit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/pemptytopunit.md) | 462 | `declaration-track:acda8d796e9a05db24adf95bf3ebaf09e1edd9c26a2282200def03fe075a9981` |
| 84 | `theorem` | [acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/acc.md) | 465 | `result-track:028f14f009297372a2a90f7757fa7b6d65a39539d3174aaa39152708c6d5d2eb` |
| 85 | `theorem` | [wellFounded_iff_principalSeg.](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/wellfounded-iff-principalseg.md) | 470 | `result-track:f25a55d474957810677c6697237099757ba85bfadb4dcaa0877d1a0e72f52054` |
| 86 | `def` | [principalSumRelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/principalsumreliso.md) | 483 | `declaration-track:db1876b6ca8bd00f0f6165d5b043e7d5a707c7cbb91b44b1bd62e6ecacf98d09` |
| 87 | `def` | [transPrincipal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/transprincipal.md) | 490 | `declaration-track:f743361eb8b264796e8f504ebd4195c7ae47cf6afb488d0b7fc3229a940bad65` |
| 88 | `theorem` | [transPrincipal_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/transprincipal-apply.md) | 497 | `result-track:923462117e11bbeea4d1a3f9d00c3a04ebe0e963fa63c483d463f99d8439c584` |
| 89 | `def` | [collapseF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/collapsef.md) | 507 | `declaration-track:182d0b0b7f94432355ccdf85515cc4da712729e5790551da8e2bc67c77eec89a` |
| 90 | `theorem` | [collapseF_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/collapsef-lt.md) | 513 | `result-track:97d4b668922ba10f321d613d443861e53cbb2f51705eda2a19f8baa46e00825f` |
| 91 | `theorem` | [collapseF_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/collapsef-not-lt.md) | 520 | `result-track:04f7b94a9e619de680c787fb67c0eb9a03aa071a36b0acf89f4be6fb9335d8ed` |
| 92 | `def` | [RelEmbedding.collapse](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/relembedding-collapse.md) | 530 | `declaration-track:6e6a68bdc8ac00ec32784ff9f468318f7961855bbb4a918ae034751e3d2d9faa` |
| 93 | `def` | [InitialSeg.total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/initialseg-total.md) | 543 | `declaration-track:50ccd628f7d3798a7d2c4245f86d5b7f5f4266bdcb01bd8c9570c3940c38f3f7` |
| 94 | `def` | [Order Initial Seg Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-in-source-edition-4.md) | 566 | `declaration-track:98d8b4d9acb62407b82310374d2756b4fde2104b898a9dce7f503e94f17e5c95` |
| 95 | `theorem` | [mem_range_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/mem-range-of-le-source-edition-2.md) | 571 | `result-track:f39a664f3e95804505d71982fa80c2d945e3dc151cf39f7ff4df944c593e4230` |
| 96 | `theorem` | [isLowerSet_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/islowerset-range-source-edition-2.md) | 575 | `result-track:364999eabe5ccc86efad190c48286eda5ffe6750474b632710d35342851bb8fc` |
| 97 | `theorem` | [le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/le-iff-le-source-edition-2.md) | 581 | `result-track:3c6cb6309dc516d0bc94d7f8d6dade3f195a9af919c119b541dbb9a7a692e886` |
| 98 | `theorem` | [lt_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/lt-iff-lt.md) | 586 | `result-track:8128d2b95a22314b54239ca1cbc953effff7b688040f1531bc178c6ccf51ef76` |
| 99 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/monotone-source-edition-2.md) | 589 | `result-track:f48312adfd93e710737469b7d2f3fae4330552c47e22ff08f02e0bbef7d7b0aa` |
| 100 | `theorem` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/strictmono-source-edition-2.md) | 592 | `result-track:c049d59e66e9beec3570310579eaf6499f8091e72f77043fe13ce5fb7721cc42` |
| 101 | `theorem` | [isMin_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ismin-apply-iff-source-edition-2.md) | 596 | `result-track:e9a4a80e5c674b9cd1cb3de7b16a4c9830f6b4d4b35f6124f8608f44a6d7b23a` |
| 102 | `theorem` | [map_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/map-bot.md) | 605 | `result-track:1c9753254c06238ab41bad29a2add0bea9e4dfd8acb7624190eede6854eed8e6` |
| 103 | `theorem` | [image_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/image-iio.md) | 608 | `result-track:5c4f08fffd2c641e4857a0473911aaf451fdf52dd9efdb71864a0a026a17f6c7` |
| 104 | `theorem` | [le_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/le-apply-iff-source-edition-2.md) | 611 | `result-track:54ea183674235e608f5e92138f60363a42702872533d53715f64e09f57dbba83` |
| 105 | `theorem` | [lt_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/lt-apply-iff-source-edition-2.md) | 620 | `result-track:1317df43cedd1f5d3c3065052ab8aa647079a7e4184effe7e83f3e6db7dc6899` |
| 106 | `theorem` | [mem_range_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/mem-range-of-le.md) | 635 | `result-track:3b80c361ef4604c0be1087627e80876da2b6d8575d3203f648406b0424776f87` |
| 107 | `theorem` | [isLowerSet_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/islowerset-range.md) | 638 | `result-track:341acbbc331db2b11214ebe03f674dc0f6e16b19b00847ec4e34d2a1f81d15f0` |
| 108 | `theorem` | [le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/le-iff-le.md) | 643 | `result-track:376b4e33a772e0d23d9e6ec04f05c59d11bd1bfb316f55b1935ac8b56f7b7728` |
| 109 | `theorem` | [lt_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/lt-iff-lt-source-edition-2.md) | 648 | `result-track:8b713aebba8cac3d3a01c04ffb1c3e401d33115ec49511938bf3f2c6d1620e1e` |
| 110 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/monotone.md) | 651 | `result-track:444f5d9fbc6ae3912a8de2737db834c0bc2d40f2c4a27f2036143cfc3c3288c9` |
| 111 | `theorem` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/strictmono.md) | 654 | `result-track:4c3ae02013f0aa678fea9cad7a4727e2118b9cdbd98d356a24d42bfcf3915287` |
| 112 | `theorem` | [isMin_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/ismin-apply-iff.md) | 658 | `result-track:bafbd7a7ed129269f03adb757c7662f3e11e2361d9e1029e14987397ec3ef3b6` |
| 113 | `theorem` | [map_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/map-bot-source-edition-2.md) | 664 | `result-track:ef027f1ece670addc83fdd1661f63e024b871aab0d47f7ed170dbdb23623c41f` |
| 114 | `theorem` | [image_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/image-iio-source-edition-2.md) | 667 | `result-track:e3e1c4ea9f3a5a28d6cbc4257bce202ba6851330f5c53cd43bee99a7a82a20b3` |
| 115 | `theorem` | [le_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/le-apply-iff.md) | 670 | `result-track:203c7c4f9ba813919ea0a7a70ea66272d27793981406994504adb6e83daea202` |
| 116 | `theorem` | [lt_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegNamespaced.lean/declarations/lt-apply-iff.md) | 673 | `result-track:11c11ac7203fdfc70b7aed82e013f9bee1a09f3d1c809f7b3ad49952c0955ea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8267bc6d4dd4051fd6b2206531aabcd064fca042683df0561f47431ed0eae18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variantcfb0f7211db9bb07e6dc94b3ea904ec17876b8c6377788f95f183ee115acb625.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

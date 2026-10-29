# Verification target: Star Alg Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4203d61448d030b91a70fa32dd8657854da11f01",
  "lexical_observation_count": 169,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4203d61448d030b91a70fa32dd8657854da11f01`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean.json)

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
| 1 | `structure` | [NonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/nonunitalstaralghom.md) | 55 | `declaration-track:bc0322454e18df5714b1e40954878e1a1a59443b980556ca56cbdf77b3163405` |
| 2 | `def` | [_root_.NonUnitalStarAlgHom.ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/root-nonunitalstaralghom-ofclass.md) | 78 | `declaration-track:6ebc4f6b76e9c52e73ccfc8d95492f7d3e8b042f276aa0eff36a49ce54550d85` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-10.md) | 84 | `declaration-track:8fe81b48370c3e73ec24865bbd4e0293d0d6c2b88272268acfebd3c21d229084` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-11.md) | 100 | `declaration-track:a00000f6585f3394b16aeaa91dd6fd1cf2fe2023ee6c9a8b422c631eaee2ff83` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-8.md) | 104 | `declaration-track:806d9a2e4d8541d64b799b85d9c2b7e9ce305174efa5ea8fc1e64317f55201c1` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-4.md) | 110 | `declaration-track:29ccfd834e720e8c11ac701b05559f98baa3410d711dea1eb05add1514f49205` |
| 7 | `theorem` | [coe_ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-ofclass.md) | 117 | `result-track:8982bd1146e116674b4ebc13731b260052969449344137be892a2ee375ecf258` |
| 8 | `theorem` | [coe_toNonUnitalAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-tononunitalalghom.md) | 124 | `result-track:5a722f7ad210f9c5fdf5a569b665aba4ab8c25f13a9276dd39bab836ce94a722` |
| 9 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ext.md) | 128 | `result-track:5406a7f99f77d310fbdbdb6e2a0eb2151186767b5d3a6222dfa5f8f07e8c3464` |
| 10 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/copy-source-edition-2.md) | 133 | `declaration-track:ca5f2e8db9d121e3878404ae34e5d8436c85ebb8d6c006a36ae4e8cbc8d987e0` |
| 11 | `theorem` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-copy-source-edition-2.md) | 142 | `result-track:e0a74199fd020b80dfcd429496998b41d3a67bb0ca8df810fc17b94dface42bf` |
| 12 | `theorem` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/copy-eq.md) | 145 | `result-track:0b281f3756f451b7483f4ef2279adcab1209a14af9d3e02c2a90f9a4871dd283` |
| 13 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-mk-source-edition-5.md) | 149 | `result-track:f7a79715d032906a4e259ffa5c56fdf45be518d8fa877a097e03632d38ee7dd4` |
| 14 | `theorem` | [coe_mk'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-mk.md) | 154 | `result-track:0c27319e0bc1a37605ea7753607ffe855ccf3a27824c35607e93de48e7d1ccb3` |
| 15 | `theorem` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/mk-coe-source-edition-2.md) | 159 | `result-track:ebc9469d6f7673d189e53e211db60e4689067ba3ba5550e8e55a8bfcd9fee77f` |
| 16 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/id-source-edition-2.md) | 169 | `declaration-track:72dfe2dfe134c366152e62c3497313eaf282d0db065b2780c60dd798854a596c` |
| 17 | `theorem` | [coe_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-id.md) | 173 | `result-track:3b4ea74fe2a96fe5d920564981fc1ec183db9d2671a43a6197fa910b76d65cde` |
| 18 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/comp-source-edition-2.md) | 180 | `declaration-track:8a93d18a9c5a1a2d51adc3ceeecabf2648d63ab4cc60133587de58c2ca640744` |
| 19 | `theorem` | [coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-comp-source-edition-2.md) | 187 | `result-track:e0c569eaa3ea485c801be56b90d4ed7a2e565853878b81cd83a6e6689b62e670` |
| 20 | `theorem` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/comp-apply.md) | 191 | `result-track:33d7617cf47cdfc7987224eee6b60968cb9fb2eec7df59b06c30502a8268cd3b` |
| 21 | `theorem` | [comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/comp-assoc-source-edition-2.md) | 195 | `result-track:f071b8d2459820b3798b86acdfa1368fa2099dbd5dafb5dc21c533884e117269` |
| 22 | `theorem` | [id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/id-comp-source-edition-2.md) | 200 | `result-track:5b8d1f31d6dbb60cc2db654601878aa0d91b0b8655423596bbf26d96e2f2667c` |
| 23 | `theorem` | [comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/comp-id.md) | 204 | `result-track:50f7ee383a9f27ee807651bac74e1f3f29c01dcd6cccf939a158449a708c64cd` |
| 24 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-21.md) | 207 | `declaration-track:db2ae80b6c267baf083d6921d3c8493f61f91390fcd756f6c3e29f9aabd712ce` |
| 25 | `theorem` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-one.md) | 215 | `result-track:59493d7815c8272c9a44cc621ff165b5a0a43c61c6ef67f15aeb5019401de3b6` |
| 26 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/one-apply-source-edition-2.md) | 218 | `result-track:d863e0e52a84d97c5fe5beec92fdf837dccf1129019359a0800fb029c25f1eef` |
| 27 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-15.md) | 230 | `declaration-track:ab478f0446a1190637fb085363c4139a57a5a32ab2baee04749d3a3ef0599d6c` |
| 28 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-9.md) | 233 | `declaration-track:86ddf507d37f05aa413e5c76180946477ceb12026fe7b094c14008e1f7da10c1` |
| 29 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-18.md) | 236 | `declaration-track:bd7841295828599f31c1175296be355051315e1ab51697c16d6b48b7dbabbec4` |
| 30 | `theorem` | [coe_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-zero.md) | 243 | `result-track:ef69ee2938baff7f166ac3c44162df12edb6c74932956b049d94d304c6929e19` |
| 31 | `theorem` | [zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/zero-apply.md) | 246 | `result-track:4b62d6ccfa56a866eac8d7f221adb0d5c39df52c45303bf5513ae176f4686700` |
| 32 | `def` | [restrictScalars](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/restrictscalars.md) | 260 | `declaration-track:4a655a4d7c0086887f437573da0405956eba9c4267a8c0efd5d91dcc79436673` |
| 33 | `lemma` | [restrictScalars_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/restrictscalars-apply.md) | 265 | `result-track:c3401f18c84d62ab6aa21021846036ebe97e338513c43faa9fc30ed152b9bdf3` |
| 34 | `lemma` | [coe_restrictScalars](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-restrictscalars-source-edition-2.md) | 267 | `result-track:b122737a3072fec2e5d84b2e930a232888f8873e2643dacef75a1687ab51cdf7` |
| 35 | `lemma` | [coe_restrictScalars'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-restrictscalars.md) | 269 | `result-track:6e3157bd59ac403ade57d3218dde2ff941e5b0dc5eb4b89a425bc769ce75218c` |
| 36 | `theorem` | [restrictScalars_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/restrictscalars-injective.md) | 271 | `result-track:d8159d7e466e6559ffa55443f691e63a684d02bad4c48d88088ab623e1c99fbd` |
| 37 | `structure` | [StarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/staralghom.md) | 286 | `declaration-track:b715ac1409e67d9ffe616bfe18cf6bcb3c21d996847048951b762f8188331da8` |
| 38 | `def` | [_root_.StarAlgHom.ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/root-staralghom-ofclass.md) | 309 | `declaration-track:ab34b8c2d89e212cdecd834d811cb7f424577481d6f92c5893f2f85bf0594e75` |
| 39 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-7.md) | 323 | `declaration-track:63bee84e5d301a036ba8e140a2158fbbb68364c68629e5261343da5212229739` |
| 40 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-20.md) | 327 | `declaration-track:c6ba40e97388778684272745a4ce4e0d68ecdfe7f5b3ef2352068be399c534a9` |
| 41 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-19.md) | 334 | `declaration-track:c4c02879fd1880bdb5712a374f55d76aacc4a784d70873363a290fd2f060f241` |
| 42 | `theorem` | [coe_ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-ofclass-source-edition-2.md) | 338 | `result-track:d6a968d9528b0c8629fd7e1bf126b39b46e389385e11428773c23f20eb66e50b` |
| 43 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-13.md) | 348 | `declaration-track:a3cf0512a1a7a918fa1f38036f1ca2e5baaba9e40b71379f87ffb8223bc08199` |
| 44 | `theorem` | [coe_toAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-toalghom.md) | 352 | `result-track:20f33c93e6e39587a536dcab5f3b7834a7e950251b65fec11d4b60c9d207f01d` |
| 45 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ext-source-edition-2.md) | 356 | `result-track:7acfb6c40fd54198502e0743ddb5f265c3eb42f34220c1b809196598c1ceaa12` |
| 46 | `def` | [copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/copy.md) | 361 | `declaration-track:361bec976c4a614b08b5ca6406c4c900e34d3634ca9f4856d0df3f3b128acee8` |
| 47 | `theorem` | [coe_copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-copy.md) | 371 | `result-track:39fe802bd02510d44a0461ab89b1aa0eb0b62308b22be5a3c51aa58c77ce465d` |
| 48 | `theorem` | [copy_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/copy-eq-source-edition-2.md) | 374 | `result-track:5a10b5618ed3adc3fef2930665acd9f57d3c36804405e3ee285400857b34b38c` |
| 49 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-mk-source-edition-4.md) | 378 | `result-track:db397c9c64cf30667ad0d75137abed4a64dd01132def603e420013b2d87f6ade` |
| 50 | `theorem` | [coe_mk'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-mk-source-edition-2.md) | 384 | `result-track:266943034b56699a2f0f5c43ecf2ba1b7eb9db65a3db75a60bfc1147074d89ab` |
| 51 | `theorem` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/mk-coe.md) | 389 | `result-track:6381dbb3d3ad723ed2e9e1b3f4258b5e8091b959a9609456e951e27fa92cd63a` |
| 52 | `def` | [id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/id.md) | 399 | `declaration-track:1bbbeb44c4e059821c19771d00ddb1544cac98518e3ba4924a0cf743cbaa4e71` |
| 53 | `theorem` | [coe_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-id-source-edition-2.md) | 403 | `result-track:e6fa2617c8f83b2bfcb2b2d6e543a2d776bac30d5e8c53d454618e1f29c3e7d0` |
| 54 | `def` | [ofId](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofid.md) | 408 | `declaration-track:673a23cf20d21da088493591a78fc1054ae09c2670cffd8a93840227e925bd04` |
| 55 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-2.md) | 416 | `declaration-track:1da2c28cb69f31180b7c70673b2fc6f9e7bc379be8486f60531f631b4322341b` |
| 56 | `def` | [comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/comp.md) | 420 | `declaration-track:4c78ceef55a0e6b50cae0e9e29b83754c8a925533c164316245b072bfb12b02e` |
| 57 | `theorem` | [coe_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-comp.md) | 427 | `result-track:887c688b3a5ea473e38fbb96530ac96348fe4699e4de298c6dc7ede127a97868` |
| 58 | `theorem` | [comp_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/comp-apply-source-edition-2.md) | 431 | `result-track:4f26dabb9825781144c7eb5a212a16db3d5982f303eada622942e8ed3af80613` |
| 59 | `theorem` | [comp_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/comp-assoc.md) | 435 | `result-track:1daf27187fe7503c3490028ea82cbdbe4865f38396631bdbb63cb942f4bd2270` |
| 60 | `theorem` | [id_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/id-comp.md) | 440 | `result-track:4aa9311dec3c6b75c1229cb0ea83c0afd7c1c3142449cfbcbffd44add948be02` |
| 61 | `theorem` | [comp_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/comp-id-source-edition-2.md) | 444 | `result-track:9560358effc98c781e4d6572a3d4257c182ab7350ebb21b8ec4421d45da535e4` |
| 62 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-16.md) | 447 | `declaration-track:b48fca4202efef67fd66c1912f5b3c20d824958d9320f3f8361fe54b43fe3d99` |
| 63 | `def` | [toNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tononunitalstaralghom.md) | 455 | `declaration-track:79109a738d26ef8412ada1e75bf7b46c28b627cb22de84cc6e88154653ded515` |
| 64 | `theorem` | [coe_toNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-tononunitalstaralghom.md) | 459 | `result-track:0e9f56d3c41588860b50794991544d7a17d4145fa3f3be27be484a967b03e892` |
| 65 | `def` | [fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/fst.md) | 481 | `declaration-track:1287a222dd875a4bd2ab1262a948e296825822c8f65b03e6440a0b031e0f0af8` |
| 66 | `def` | [snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/snd-source-edition-2.md) | 486 | `declaration-track:55c02434be42820377ae206cb6acad69499d7d68aa1f381508293a4fbf37075e` |
| 67 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/prod-source-edition-2.md) | 493 | `declaration-track:edbe31fb31bc83c8e12e21a9ab77c32f2bf218a3f2b05998b606b4cb91558d07` |
| 68 | `theorem` | [coe_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-prod-source-edition-2.md) | 497 | `result-track:d0124600e624b32f5897540b6e556ce8726d0927b4f705fcc49a6626bff664da` |
| 69 | `theorem` | [fst_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/fst-prod-source-edition-2.md) | 501 | `result-track:cb841d192f84c9f8d06b10e2fd77c139025c99c0b108b75cb72cb6cb90a19a36` |
| 70 | `theorem` | [snd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/snd-prod.md) | 505 | `result-track:3f6378cd87d247bc6773a11c778ec11ca8c91282dc5adc0fc2c1790091801155` |
| 71 | `theorem` | [prod_fst_snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/prod-fst-snd-source-edition-2.md) | 509 | `result-track:abd946097c05fe42e4ea89ae0ddd3bac5aa99dcf738f6cae93e41a10dbc33341` |
| 72 | `def` | [prodEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/prodequiv-source-edition-2.md) | 515 | `declaration-track:ca1f585348cd8bc4e7a91f5e354fe9ed5dbd08f96cf810a67492a00ef4d690b8` |
| 73 | `def` | [_root_.Pi.evalNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/root-pi-evalnonunitalstaralghom.md) | 527 | `declaration-track:92dc975d519064241d747cdd7b4917be29e9e75e15335f3696b1ce35a7cc0635` |
| 74 | `def` | [_root_.Pi.evalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/root-pi-evalstaralghom.md) | 537 | `declaration-track:e51ac5e415a27430d71193f126f3085c41fcb9c45a613be2e954fc9e3f9aad63` |
| 75 | `def` | [inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/inl.md) | 551 | `declaration-track:2eabd3d90da8b59a7dbc80dd5b6fc4d5025d3e01d50b242ec52974d5feefcbd6` |
| 76 | `def` | [inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/inr.md) | 555 | `declaration-track:81352346a6f6d20b21b46b67da2f1e3ed5f8eded49725d34c25b8f6ba67c70da` |
| 77 | `theorem` | [coe_inl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-inl.md) | 561 | `result-track:8ae9419aef194842f751cdb7899a676fac8da8fe17f5f6d68cd1f7d617505bc1` |
| 78 | `theorem` | [inl_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/inl-apply.md) | 564 | `result-track:17b7b4b45467229f8bc0ad1994c8781fa3c5915894fd468651639ecf3c53cd1f` |
| 79 | `theorem` | [coe_inr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-inr.md) | 568 | `result-track:e3648a58ac670e1c5fb0f5e3994b711f60af7dab1beec65aaf08866af3462519` |
| 80 | `theorem` | [inr_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/inr-apply.md) | 571 | `result-track:cf9c6e05bb8918d1ecec9892d14e9fa2b9e08acb48d4e07af355405022f88c44` |
| 81 | `def` | [fst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/fst-source-edition-2.md) | 585 | `declaration-track:c338ada16bd78c7d6f569f904e1a037a6b90994161544851ab77f5fbc56ecee1` |
| 82 | `def` | [snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/snd.md) | 590 | `declaration-track:1622304bb032b5b8e8deca73f94f4e97c8e4551dd592a10f74a97f636b6862e2` |
| 83 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/prod.md) | 597 | `declaration-track:7efe1fb55de7b244c1bd15346276730ccef4bd9aaa99e5fd174890aed7d11aca` |
| 84 | `theorem` | [coe_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-prod.md) | 600 | `result-track:3e2ed80345870f35fe450283adcba785d88ae4e22361645774194c9940d8f0b2` |
| 85 | `theorem` | [fst_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/fst-prod.md) | 604 | `result-track:66955e3d491085377bf4b6de88f4e394a09e42b693fcd6243c851764d78f8750` |
| 86 | `theorem` | [snd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/snd-prod-source-edition-2.md) | 608 | `result-track:b658765442a6495485339cac20143af7be035e43052a698b061d11aae0c88e49` |
| 87 | `theorem` | [prod_fst_snd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/prod-fst-snd.md) | 612 | `result-track:65d40b53cba4f8a4e230234fbad0db17a167eedfdb142083cfe2a92cd04228b4` |
| 88 | `def` | [prodEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/prodequiv.md) | 618 | `declaration-track:9d597eab55a8e53acdd2b09a4971e9d9a623797cf315b1403ea5ef81f6fa2271` |
| 89 | `structure` | [StarAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/staralgequiv.md) | 629 | `declaration-track:7e65ea7585e08cfaefe145a62279924a5ff985952cdc85b76a09af251e498e87` |
| 90 | `class` | [NonUnitalAlgEquivClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/nonunitalalgequivclass.md) | 647 | `declaration-track:379aa3a977c3e8bb902a35837144324eb2947305583cc3baaed91439ced2acbb` |
| 91 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-12.md) | 652 | `declaration-track:a2ff592163977e7b720d10201825a8c2783b52b6cfb313353997607fae8bebf7` |
| 92 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-6.md) | 659 | `declaration-track:4d426bb014b4f8f063f614cc3d40c8840f94e9ccf5b5cd2480fc2f89bfdb091b` |
| 93 | `def` | [StarAlgEquiv.ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/staralgequiv-ofclass.md) | 666 | `declaration-track:53fb8fa348b867c47e3973a13453db257f567c594434b83625f3ad71da22d18b` |
| 94 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-14.md) | 683 | `declaration-track:a7f0e06a261bec72d763c16c602be0bbda955a5cc1500c8a7e930f8fba62006e` |
| 95 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-17.md) | 693 | `declaration-track:b95f5dba24bf988f3be30319b1533283ee6bb3d8047433c5ab4457700cdec3bc` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-5.md) | 698 | `declaration-track:36ddd060e6f1a49acedd0f45da21bd83eff849585ecaa718ce31d9dc8e217b50` |
| 97 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance-source-edition-3.md) | 703 | `declaration-track:200012ed12cf0a66617eba486a3b2d90eae53ba4e28a3b3c5ad359cab4b4f79c` |
| 98 | `theorem` | [toStarRingEquiv_eq_ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tostarringequiv-eq-ofclass.md) | 707 | `result-track:0b2e2e9804bd6580dc22b6286c541cd594256e4bb8c82c9c2b5f9a192f4e0957` |
| 99 | `theorem` | [toRingEquiv_eq_ofClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/toringequiv-eq-ofclass.md) | 712 | `result-track:31ce41834c04423ebea9546916e8718ad120ca17e2e8d2f88293431e45345f4e` |
| 100 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ext-source-edition-3.md) | 718 | `result-track:f4c6e3a8291fb20d408d54caffade85e807d387d6fa602dcc38cf2503881bbbd` |
| 101 | `def` | [refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/refl.md) | 724 | `declaration-track:f35d201aee19aa9e6eafcb36622681054ac436e19d282b825f0c9491a839d822` |
| 102 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/instance.md) | 728 | `declaration-track:04b5793d2434850f4aad8f5af5d725f8cdddf4e05b4193acce9fdca63b311246` |
| 103 | `theorem` | [coe_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-refl.md) | 732 | `result-track:8cdebb5f9c1a3d3735bdcb15399f886628dbc88b5e384edebfdfeee898108f7b` |
| 104 | `def` | [symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm.md) | 737 | `declaration-track:76393155236a84b833d4239c2bdf8827d3e698a07f432428f6c45efff9b12551` |
| 105 | `def` | [Simps.symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/simps-symm-apply.md) | 744 | `declaration-track:ea755df7e5eda33461e4bab9509aa1b35fb44228fe62e0f49a17fd2ed6e82c6b` |
| 106 | `theorem` | [invFun_eq_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/invfun-eq-symm.md) | 750 | `result-track:aea875b257b0ebd9400cb2187a066635b43c43b162eca2f52472b7513713818b` |
| 107 | `theorem` | [symm_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-symm.md) | 754 | `result-track:2ba03c7211ad754f5aea81a1c9daf0f4a7ba06ae62c534b697c6f4b6e9d7429a` |
| 108 | `lemma` | [symm_apply_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-apply-eq.md) | 756 | `result-track:85b59a806f6b275e85714408ad3d8075881a5681a317772a7ebabc8eca523bae` |
| 109 | `lemma` | [eq_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/eq-symm-apply.md) | 760 | `result-track:a894ed467894a45a6ef62e5a433a6c47280eb12ba6c9246254a92df69037ddbe` |
| 110 | `theorem` | [symm_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-bijective.md) | 764 | `result-track:60263298106f7ef6f9d5775001e2e6b50dd660d888beaa07b86c959fc8eb714a` |
| 111 | `theorem` | [coe_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-mk-source-edition-3.md) | 768 | `result-track:9b1ce6ae84b88aed0a60c85a4866a10ba8bccdde4305cae9679f90692504e7a3` |
| 112 | `theorem` | [mk_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/mk-coe-source-edition-3.md) | 771 | `result-track:f645cde0252639a93f7bba50e2f422dcb8f28fd0f163df8be979cf44f386222f` |
| 113 | `theorem` | [symm_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-mk.md) | 775 | `result-track:0d1185e25c28aeee2d8a0acaeae73f0e70cb03b13f5bedc1e53c359ca2d82dc4` |
| 114 | `theorem` | [refl_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/refl-symm.md) | 782 | `result-track:8fe0fe5b15ce9f616eef62687a68aa29deb257a72d3a366cbaf6a915b3c2c24f` |
| 115 | `theorem` | [toStarRingEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tostarringequiv-symm.md) | 786 | `result-track:d5fcf8cdf34391c1279380bf68f644662d16a6c316b779c34b273d91da1c608f` |
| 116 | `theorem` | [toRingEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/toringequiv-symm.md) | 791 | `result-track:c888bfdb5ef14cafc9ac6aa504758e26de7c20700b8f7f2b51dff35961cc33f5` |
| 117 | `def` | [trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/trans.md) | 795 | `declaration-track:906a2827350cd6213d2846afd63f1faee68ce22464acd5384474b57d4be0a8b6` |
| 118 | `theorem` | [apply_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/apply-symm-apply.md) | 802 | `result-track:56e217aae2a44a99e8d89ab4e8516d942558405069a74d829385b2cb1a4924ef` |
| 119 | `theorem` | [symm_apply_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-apply-apply.md) | 806 | `result-track:db336e06d401cc4202fd27d9ab33d7bee5650f3d95ca249719de7bc8fccc03d0` |
| 120 | `theorem` | [symm_trans_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-trans-apply.md) | 810 | `result-track:18b3e68312c2aedd94a67deecbd5edd90b04152ee28f2275c228ecf9027b1455` |
| 121 | `theorem` | [coe_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-trans.md) | 815 | `result-track:f1d70ac6388008c32adde6c634077393286999a01fb83c2decf0dacd9f68d938` |
| 122 | `theorem` | [trans_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/trans-apply.md) | 819 | `result-track:b9a8407230fcfa8c434d3ac255358f7dd396c0666eb72040de226546ab247b37` |
| 123 | `theorem` | [leftInverse_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/leftinverse-symm.md) | 822 | `result-track:9a9dd74d109b1062ab8fbf237e885fec9c3fb5912dbd7d5a4025f24acfe8f2c3` |
| 124 | `theorem` | [rightInverse_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/rightinverse-symm.md) | 825 | `result-track:2a0d9fd4e2a38faab755cdeb2051ed2a07383ade26799a2039f4700e1d9cc2bf` |
| 125 | `def` | [toAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/toalgequiv.md) | 833 | `declaration-track:3cc12cfbbad9ede8c55f9dc5e381d9232fa1b20eebbeaac9caee3c1f5964d63b` |
| 126 | `theorem` | [toAlgEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/toalgequiv-symm.md) | 838 | `result-track:ca9682821e283bd9dcb6bbac921fd4f921e7ca56657e93193ffaf295782b8358` |
| 127 | `theorem` | [coe_toAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-toalgequiv.md) | 841 | `result-track:bc323596761381e680c084f0709c7537af69edb38646974affff8ea6c476cb1e` |
| 128 | `theorem` | [coe_symm_toAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-symm-toalgequiv.md) | 844 | `result-track:209ceb2e3701b73be934f6ccc54df9003c633a9a090000ad92c528a7ed1dd2f5` |
| 129 | `theorem` | [toAlgEquiv_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/toalgequiv-trans.md) | 847 | `result-track:4e072716a497a3af8f741d8df10a975c4c927f00aa4c3a895931f86a19f93c60` |
| 130 | `theorem` | [toAlgEquiv_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/toalgequiv-injective.md) | 850 | `result-track:8e1c310a8fa4f4f45bff37843f719c44e54a6fbed7c5e6e55d0d0745a446b060` |
| 131 | `theorem` | [toAlgEquiv_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/toalgequiv-refl.md) | 854 | `result-track:7838e2a05b9b146a8ffe8ab2b9e8785840716beb823842e417f191a5a612294a` |
| 132 | `def` | [ofAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofalgequiv.md) | 858 | `declaration-track:53422fc0296d16c1b7df8c5a3a7affc2d2f5b5cdf44f986224bbc60b9f3ce549` |
| 133 | `theorem` | [ofAlgEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofalgequiv-apply.md) | 865 | `result-track:1ab39556140327d9cf1e88d06a87b79157d8a96f19d6187a381bc5f1961d19c9` |
| 134 | `theorem` | [ofAlgEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofalgequiv-symm.md) | 869 | `result-track:c4bf7650cb3d7f6318d303fb7cfc3aa80d3927af8d6456198e06d58af63ebbba` |
| 135 | `theorem` | [toAlgEquiv_ofAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/toalgequiv-ofalgequiv.md) | 874 | `result-track:8e20863317d10377855969c8220c01078b508964e0eafdefabf7171458832e66` |
| 136 | `theorem` | [ofAlgEquiv_toAlgEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofalgequiv-toalgequiv.md) | 878 | `result-track:f3bf751ffee0475a63bc25980991d4a376ecbbc33799c0b3a52aa297e3d84404` |
| 137 | `def` | [toNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tononunitalstaralghom-source-edition-2.md) | 898 | `declaration-track:b6f5ab484df322a05499f95189b333fb1bbf949648ed15b5cf5624d31f62341f` |
| 138 | `lemma` | [toNonUnitalStarAlgHom_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tononunitalstaralghom-refl.md) | 904 | `result-track:f59ab3f1578a0074845eb6fd41983b1c56a0c1e33c0c2b9a1ec9fdc0cd1fe434` |
| 139 | `lemma` | [toNonUnitalStarAlgHom_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tononunitalstaralghom-comp.md) | 908 | `result-track:0501127ef5faf620d6fcaaa2373bb3dafc839a806fc837497fe7cafbac6ad6a0` |
| 140 | `def` | [arrowCongr'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/arrowcongr.md) | 917 | `declaration-track:60940609427658827de9467deaae33c6a9845d88faf33e38f0df6a39256796b2` |
| 141 | `theorem` | [arrowCongr'_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/arrowcongr-comp.md) | 924 | `result-track:380fd7f3c8922196cf68e626a537e32899742797d73b160c35720bb8e2cfd2bf` |
| 142 | `theorem` | [arrowCongr'_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/arrowcongr-refl.md) | 931 | `result-track:65d3bd7e2ecadcb47c18f7ca539f368d9d866ae68cfbc12d71c680a5b96ea855` |
| 143 | `theorem` | [arrowCongr'_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/arrowcongr-trans.md) | 935 | `result-track:02249a81490edf255d6095bfd8e768be8ec60ee8c3e6eaf677467296fd38abcb` |
| 144 | `theorem` | [symm_arrowCongr'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-arrowcongr.md) | 941 | `result-track:892e8086255c7cdc4ea5755716705c2210807686038b448ad987a55514e67518` |
| 145 | `def` | [ofNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofnonunitalstaralghom.md) | 947 | `declaration-track:58fc68a0b7750f5b4bf48abcc2ce8b9e8b716ce7442d6956e28699fc3f68c709` |
| 146 | `lemma` | [toNonUnitalStarAlgHom_ofNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tononunitalstaralghom-ofnonunitalstaralghom.md) | 956 | `result-track:3af2479a7c206cde43d22fd8f1fa7dc6b0ee06df7f33da01a8b609a35698f39a` |
| 147 | `lemma` | [symm_ofNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-ofnonunitalstaralghom.md) | 961 | `result-track:5529cc6b465540291a357cb66ed7f756386cdb811fb9789703a7e3487e0b68a3` |
| 148 | `lemma` | [toNonUnitalStarAlgHom_symm_ofNonUnitalStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tononunitalstaralghom-symm-ofnonunitalstaralghom.md) | 967 | `result-track:6890bcc054309df40836e7f349110877181b585606191ccd3054412c928b3ac7` |
| 149 | `def` | [toStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tostaralghom.md) | 987 | `declaration-track:e2cd37d20e273d6cb31c72796b1770b00a14e43967861be28e61a2a636feef06` |
| 150 | `lemma` | [toNonUnitalStarAlgHom_toStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tononunitalstaralghom-tostaralghom.md) | 993 | `result-track:6bc5e1dcfcdd68d0818a263b7c65e5e4b706e05636670068cd1df3fac25a7908` |
| 151 | `lemma` | [toStarAlgHom_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tostaralghom-refl.md) | 998 | `result-track:d4cb9ded5a7ce0edfc2e257acb0af0a29a5b415acf10f1e6935b037c1b3880f3` |
| 152 | `lemma` | [toStarAlgHom_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tostaralghom-comp.md) | 1002 | `result-track:4c2b22278a41a7cfdfc3ae4ccb40db97d0a2a6b753e84d4d9ff79ccadb1fd991` |
| 153 | `def` | [arrowCongr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/arrowcongr-source-edition-2.md) | 1010 | `declaration-track:ca56acf9c2e69074fb4d7b721d2745dc40798966d302ce3e676d86640e4b6041` |
| 154 | `theorem` | [arrowCongr_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/arrowcongr-comp-source-edition-2.md) | 1016 | `result-track:60a93b09d40e425765f2120228ec94cb3744644d9f59b20fe7fc4ef14625a885` |
| 155 | `theorem` | [arrowCongr_refl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/arrowcongr-refl-source-edition-2.md) | 1023 | `result-track:a8607b33a00551ec5ee438f957d7c646d43596b5295a31f4a9c543aa8803f16b` |
| 156 | `theorem` | [arrowCongr_trans](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/arrowcongr-trans-source-edition-2.md) | 1027 | `result-track:eeffee84c8c37f1c4fb3c8f34fcad28d1680424aec27bd5d693b05de84276686` |
| 157 | `theorem` | [symm_arrowCongr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-arrowcongr-source-edition-2.md) | 1033 | `result-track:9d084e9a5d653c171dc4e08e9b847e67b1f7161f2ea333b06e48139af980a52b` |
| 158 | `def` | [ofStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofstaralghom.md) | 1039 | `declaration-track:55e69f4631d067566d232fbf67db786e6095337712f3a2baa605f579b145f9c1` |
| 159 | `lemma` | [toStarAlgHom_ofStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tostaralghom-ofstaralghom.md) | 1051 | `result-track:f42b83593e1f38588cc14f5cc70112d14abc7139f5421e88ef865751a779ce9c` |
| 160 | `lemma` | [symm_ofStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/symm-ofstaralghom.md) | 1056 | `result-track:b6298e63fcf782538fb0c20506d02081fa1a20f0079107a59881c773c852573d` |
| 161 | `lemma` | [toStarAlgHom_symm_ofStarAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/tostaralghom-symm-ofstaralghom.md) | 1062 | `result-track:a166615f1367f2fc8f8e7c8131884b7e103fd120c957798334c297d378598452` |
| 162 | `def` | [ofBijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofbijective.md) | 1077 | `declaration-track:7a6b9101dc7c63b342826f04f6d0ba2971fa5318ba328ebaa3f72f42620d8910` |
| 163 | `theorem` | [coe_ofBijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-ofbijective.md) | 1086 | `result-track:5e566b84778bb163b6afa832e1fe27b782242f9cb9d297b7dc91c901aef2f29a` |
| 164 | `theorem` | [ofBijective_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/ofbijective-apply.md) | 1090 | `result-track:b670ad44fe826b6ea3d54db175d46facb7a52b838d788ac7834d41a3565ecce2` |
| 165 | `instance` | [aut](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/aut.md) | 1100 | `declaration-track:de8eb99869df7fce7d15718d9ed894de0efd4c8669ce3a9e197b70486ab957a4` |
| 166 | `theorem` | [mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/mul-apply.md) | 1109 | `result-track:a674d961c4fd450754a03079d3b0d8fec1c09f0454e511add123f9071c008dd9` |
| 167 | `theorem` | [one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/one-apply.md) | 1111 | `result-track:0b7d0d1d75d8683ca35b000a919ba4045b4868306e2ecb806cfcc99c3ae983a1` |
| 168 | `theorem` | [aut_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/aut-inv.md) | 1113 | `result-track:4991e152e3dca7296fb015d1f316b37d50cdff3d64bb2858902a1902d96f427d` |
| 169 | `theorem` | [coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarAlgHomPublic.lean/declarations/coe-pow.md) | 1115 | `result-track:592d471d30eb740f29d8b61c95952cf6689d0ec513717aaf93f4605db80f884d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6784bb11235886f8eb4e3cae5cea3f4d9ceeada83b8ca44034a856bf10812f1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/StarAlgHom/Variant2dee361fb2a40e1fec9b0a7b2a079f9f4b2c57caab0c6b437d243e98b97395ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

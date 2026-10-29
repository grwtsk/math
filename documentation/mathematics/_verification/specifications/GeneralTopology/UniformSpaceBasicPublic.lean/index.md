# Verification target: Uniform Space Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465181b36d0694eedcd5d526c39adbe802970d7b",
  "lexical_observation_count": 178,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465181b36d0694eedcd5d526c39adbe802970d7b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean.json)

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
| 1 | `lemma` | [IsOpen.relComp](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isopen-relcomp.md) | 55 | `result-track:c791b805e12657890d214e627281ca1b8f6a1325e83e35297c60df968b873de6` |
| 2 | `lemma` | [IsOpen.relInv](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isopen-relinv.md) | 61 | `result-track:26f3a6d2855e793c331411a486507feacc97593790f66b1436cd883c5f060ca4` |
| 3 | `lemma` | [IsOpen.relImage](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isopen-relimage.md) | 65 | `result-track:d2f9731cdd472c7a796729bc115f9d34fb899a61a1fba907c03ce7ff3b04b3cc` |
| 4 | `lemma` | [IsOpen.relPreimage](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isopen-relpreimage.md) | 70 | `result-track:801c90020232bf0a246c9447c5a327297b0ce938008d957fdbceb36eadc6a3ec` |
| 5 | `lemma` | [IsClosed.relInv](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isclosed-relinv.md) | 74 | `result-track:a7bfbc43a288b4e5f31d1dbe7cd784b47ba75418146c2e4084aa04b4a3ba1fbd` |
| 6 | `lemma` | [IsClosed.relImage_of_finite](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isclosed-relimage-of-finite.md) | 78 | `result-track:b7386f6e28171355ba436b7564f5cf0f46901504ee7c7b0d7b2ade5a29be293f` |
| 7 | `lemma` | [IsClosed.relPreimage_of_finite](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isclosed-relpreimage-of-finite.md) | 83 | `result-track:cfb3bfb4d39eebe533ab0a80085176a7101b52118d71287170bf8cbab916741b` |
| 8 | `theorem` | [eventually_uniformity_iterate_comp_subset](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/eventually-uniformity-iterate-comp-subset.md) | 93 | `result-track:d14b8b292fb5272db15c4bf96f1907d851e713d4186f415c4e0ebfdda3779f06` |
| 9 | `theorem` | [eventually_uniformity_comp_subset](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/eventually-uniformity-comp-subset.md) | 108 | `result-track:b4b8f8ee29a9a552fa3dbe618d52ac4a27480df17f75258f7d0eefcca881f257` |
| 10 | `lemma` | [isOpen_ball](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isopen-ball.md) | 120 | `result-track:39bce72dbbe7c877fec9680758a074d31e5e9b39c4254bc3b013d0d7c9e5738d` |
| 11 | `lemma` | [isClosed_ball](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isclosed-ball.md) | 123 | `result-track:991796114289214b152dce2e43630157874db627718a4078b2944171e1dc7368` |
| 12 | `theorem` | [hasBasis_nhds_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/hasbasis-nhds-prod.md) | 130 | `result-track:842a0329b730ef50adb88a8197a14302acd92c04fe6449e738e8505688ba0594` |
| 13 | `theorem` | [nhds_eq_uniformity_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/nhds-eq-uniformity-prod.md) | 142 | `result-track:ddf870567b8d01663c7d7a966f6ee36ce4ed19d8c526d814c3595c0f9c96caff` |
| 14 | `theorem` | [nhdset_of_mem_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/nhdset-of-mem-uniformity.md) | 150 | `result-track:14cb78d176776525657516acb7baa7cba813c6ae10b6a312e485523ec51c06bd` |
| 15 | `theorem` | [nhds_le_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/nhds-le-uniformity.md) | 168 | `result-track:32510b9f084bca79ac5108c7741dd13ed0da62b4c6381345d8cd93f66bd312f9` |
| 16 | `theorem` | [iSup_nhds_le_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isup-nhds-le-uniformity.md) | 179 | `result-track:47a6e10c765c1e14aa2da9d7ae2b38607893735eb8ca6510e1d9adaac4cecdd3` |
| 17 | `theorem` | [nhdsSet_diagonal_le_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/nhdsset-diagonal-le-uniformity.md) | 183 | `result-track:2a59e3caa8f5ab8c0e601fa5559068f89baa11df8293f4591bad2624b1b50323` |
| 18 | `theorem` | [UniformSpace.has_seq_basis](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-has-seq-basis.md) | 190 | `result-track:7819b7201b55145aa0979837653c833c98c5c66bec826c59e3c0adabb2d0a9dd` |
| 19 | `theorem` | [closure_eq_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/closure-eq-uniformity.md) | 201 | `result-track:6aae3e630b16967d549f5f4fdd04c97a045eb0c666a05e85a08aa9423d6d6b97` |
| 20 | `theorem` | [uniformity_hasBasis_closed](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-hasbasis-closed.md) | 208 | `result-track:22515f60356229ff595f1a7c248289bab51aae2e72d3d27f7f7021a9c908eb66` |
| 21 | `theorem` | [uniformity_eq_uniformity_closure](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-eq-uniformity-closure.md) | 219 | `result-track:890c7f4bed0e325958670deae8f717178335c85ecf159f75d29827186b2019ac` |
| 22 | `theorem` | [Filter.HasBasis.uniformity_closure](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/filter-hasbasis-uniformity-closure.md) | 222 | `result-track:dcd382e3f0127f80508a5229b1f08c6754e5c9eec006ac5e8c570dca9ae3d59e` |
| 23 | `theorem` | [uniformity_hasBasis_closure](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-hasbasis-closure.md) | 227 | `result-track:86f2ba3893b2dd51af1d3b233bd2ec032a6ddda9ffcb6c937b9d7b6738dbdedc` |
| 24 | `theorem` | [closure_eq_inter_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/closure-eq-inter-uniformity.md) | 230 | `result-track:38ee0d66d3edd1de6b4871db13d55b59425ff9640792d7076232915e3b0b4369` |
| 25 | `theorem` | [uniformity_eq_uniformity_interior](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-eq-uniformity-interior.md) | 237 | `result-track:369b889d9e29386be9d3d97ba501ecc045b64e6f33ad2e4ef99d15e917f15ea2` |
| 26 | `theorem` | [interior_mem_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/interior-mem-uniformity.md) | 253 | `result-track:1458799d9c67daca2d2fd4b682270f25735532eae92fa22adb3f5927e964bfd6` |
| 27 | `theorem` | [mem_uniformity_isClosed](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/mem-uniformity-isclosed.md) | 256 | `result-track:32d517cd89c0ff8dc2dae8cf306e13527c67be10c641cdb7463a625ae3e3d30e` |
| 28 | `theorem` | [isOpen_iff_isOpen_ball_subset](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isopen-iff-isopen-ball-subset.md) | 260 | `result-track:f7699b208765e0a94e4734aab19e0702ccb99405b50209b6d026ad26207bbce8` |
| 29 | `theorem` | [closure_ball_subset](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/closure-ball-subset.md) | 271 | `result-track:c374faefb21de5d7321c664f9a109ce45fcfeb2b3cad86650fe10607feb97076` |
| 30 | `theorem` | [Dense.biUnion_uniformity_ball](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/dense-biunion-uniformity-ball.md) | 275 | `result-track:168b28316fa601093c75e36aa26725471474ceec8f02cc649a6c376d0737de69` |
| 31 | `lemma` | [DenseRange.iUnion_uniformity_ball](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/denserange-iunion-uniformity-ball.md) | 282 | `result-track:203d42f1470233f595798d322b4ff768dc5d54f2d798ae21ecf3ef0e15098272` |
| 32 | `theorem` | [uniformity_hasBasis_open](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-hasbasis-open.md) | 293 | `result-track:be035075a2aace85ac14dd8e2663119170a8ea20c8305f82a7ed853de5fb9cd8` |
| 33 | `theorem` | [Filter.HasBasis.mem_uniformity_iff](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/filter-hasbasis-mem-uniformity-iff.md) | 297 | `result-track:8183ade220ddf123d567e77f416daa12bd30a39f086f5fd6ad92f607825cbf91` |
| 34 | `theorem` | [uniformity_hasBasis_open_symmetric](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-hasbasis-open-symmetric.md) | 304 | `result-track:403c22e5215c8b615b4f26da78aba7849a2b1c57c3a7e805ab3a957ca694db86` |
| 35 | `theorem` | [comp_open_symm_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/comp-open-symm-mem-uniformity-sets.md) | 312 | `result-track:3f12a57c7749ed6a08075847038a94abe1f72ce214a78a90eb6634f9730554fc` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-10.md) | 324 | `declaration-track:89c906094a9a11a9ed64a3eba8af1cfe6d6aa980d7e7ece3976ea77c15f98dea` |
| 37 | `theorem` | [UniformSpace.le_def](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-le-def.md) | 327 | `result-track:9f9cee5db3fa347fc9b8938e977c0d862062324bc7965b73e240ee0e8f3cfad1` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-16.md) | 329 | `declaration-track:e602f3174f68d3ebd45f621830a436f7a80ac81b12a74582399f78cd7e95bf32` |
| 39 | `theorem` | [UniformSpace.sInf_le](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-sinf-le.md) | 339 | `result-track:c9530a18e6a719cefc84f93e8013e780faecbc7392a7d0948f6b5b79ba80186f` |
| 40 | `theorem` | [UniformSpace.le_sInf](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-le-sinf.md) | 343 | `result-track:c1ed2287f4d795b44cc2c4e75e5bbd3bca4663ec98ed69323805c5c97274193a` |
| 41 | `theorem` | [UniformSpace.isGLB_sInf](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-isglb-sinf.md) | 347 | `result-track:5eb3242799368316a63373578e407f04ae6e1b3a7a14c419c54fa3106bbe3442` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-12.md) | 350 | `declaration-track:9dd36f3deed6f6b2cb708090e1dbca69726495588ec7997040a8f58161448b6c` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-14.md) | 353 | `declaration-track:c46d451455ec10c8d403b738cf40967cb6d9f5766be1f112fb078ee4be92b5eb` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-5.md) | 362 | `declaration-track:3548bfc0def5d2992160ec4bd2f3925d89f65bc1aa280978f2d6b55225be715b` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-13.md) | 372 | `declaration-track:b2f1b9d8a0b59b342cb1b35cf160402febd382cf7af66473394b1c22f10295a8` |
| 46 | `theorem` | [iInf_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/iinf-uniformity.md) | 387 | `result-track:6509aa9e35f96157f29d87493294a4d955897f794629e5b2440ac7a147cb86ab` |
| 47 | `theorem` | [inf_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/inf-uniformity.md) | 390 | `result-track:ccd366faafb47c81b213d4c95619673e9e03a3eec4a68def6c6fd2696565b272` |
| 48 | `lemma` | [bot_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/bot-uniformity.md) | 392 | `result-track:ce566cb3ee09dc91ba1592b917a5df2a50433466a6f09b5f787c5bc08d461faf` |
| 49 | `lemma` | [top_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/top-uniformity.md) | 394 | `result-track:dce27c8734e711a325228109b58f7c66a3520f279e2377aeadfd307940ae8f11` |
| 50 | `instance` | [inhabitedUniformSpace](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/inhabiteduniformspace.md) | 396 | `declaration-track:21bc25b3931e8fb84019b1c7f1263214abf6fcca3844cc11836d6dba79ba121f` |
| 51 | `instance` | [inhabitedUniformSpaceCore](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/inhabiteduniformspacecore.md) | 399 | `declaration-track:ef5002ff0073769a6920c4788a50a17ccd17f0d609e17a25594ccc1aa5b29606` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-9.md) | 402 | `declaration-track:87d5c510b62987f022ce0431dd19ac99a0893fdfd39bc80a46cfe296b9f4673a` |
| 53 | `abbrev` | [UniformSpace.comap](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-comap.md) | 409 | `declaration-track:80755d0fa6d231f2b6051a7469f7a1b0389cca3b0303a4970bec1d9820b863ee` |
| 54 | `theorem` | [uniformity_comap](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-comap.md) | 424 | `result-track:d809de5a66966daff8134b719f4352e6ec24579e01978233788496500237c9ce` |
| 55 | `lemma` | [ball_preimage](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/ball-preimage.md) | 428 | `result-track:63520bed51f8acf2fda4c5bdde55d68d6203955259e917f4507be65fbda87498` |
| 56 | `theorem` | [uniformSpace_comap_id](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-comap-id.md) | 434 | `result-track:796b1207c20b9cc7caf52e57998da4eeabcf4d1f717484bdb663b800c712d4f5` |
| 57 | `theorem` | [UniformSpace.comap_comap](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-comap-comap.md) | 438 | `result-track:ea5cde9efc61e764b0048d0ee6a928800c974114cd55d217188310f6475c0ffa` |
| 58 | `theorem` | [UniformSpace.comap_inf](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-comap-inf.md) | 443 | `result-track:fb001e2651bb87dd9fec4c5d524059c25d0719492e6228bea7ede5c0170bb7b0` |
| 59 | `theorem` | [UniformSpace.comap_iInf](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-comap-iinf.md) | 447 | `result-track:ffda31b7b2c0d3a4e34dbbb774dab0d8f1527d043bc67b9ed76341b5c13d6cda` |
| 60 | `theorem` | [UniformSpace.comap_mono](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-comap-mono.md) | 452 | `result-track:d62f640cd580ff03e14b217e5b8873e4d195874ade0be6ff218c8ae548c6948f` |
| 61 | `theorem` | [uniformContinuous_iff_le_comap](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-iff-le-comap.md) | 456 | `result-track:1f2b0804e69fc1f90fd0ef243baab2bd90a799c2739cdd7302d00f752f5d1864` |
| 62 | `theorem` | [le_iff_uniformContinuous_id](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/le-iff-uniformcontinuous-id.md) | 463 | `result-track:d5e042596acc5ba40355ab7ed0c4f04c1d3345ebd07adfd603fc2627a8652fa3` |
| 63 | `theorem` | [uniformContinuous_comap](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-comap-source-edition-2.md) | 467 | `result-track:ec036c00500d865c333632296e30f2e4623d35f732e71fe70d0da9a50074e12e` |
| 64 | `theorem` | [uniformContinuous_comap'](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-comap.md) | 471 | `result-track:64e682199f1c10b80fa65bb3e0d15cb6fb3de39041991589016e10c87b046897` |
| 65 | `theorem` | [to_nhds_mono](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/to-nhds-mono.md) | 477 | `result-track:2acdc0cf553c4f2bcd7e4bef361d6b69898f795510ec17907e00b4d228c5bfa9` |
| 66 | `theorem` | [toTopologicalSpace_mono](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-mono.md) | 482 | `result-track:1a3267a4688d5dc4328c83692d84a0a6e30d0a8cd38db59fc8fe2ea501b358fb` |
| 67 | `theorem` | [toTopologicalSpace_comap](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-comap.md) | 486 | `result-track:32ced9aeec46dd36b4f4227b44b3ea7be88bedac3cee6f799e349c87bbd96d7e` |
| 68 | `lemma` | [uniformSpace_eq_bot](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformspace-eq-bot.md) | 491 | `result-track:d1d9387f6fabbbdc78a8f764a43b8c2ee36e52ae4be7f2216a2f006c8c2ae446` |
| 69 | `lemma` | [_root_.Filter.HasBasis.uniformSpace_eq_bot](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/root-filter-hasbasis-uniformspace-eq-bot.md) | 494 | `result-track:a3e4f4d0dbfe1923c62b84dbeb10a7c3fffe76c69e826c40fe1a1a81ea09ab31` |
| 70 | `theorem` | [toTopologicalSpace_bot](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-bot.md) | 499 | `result-track:b62d4d2ad0e5210b11dbb5eed6b80934b3108c6656825ff05fec705baae988c0` |
| 71 | `theorem` | [toTopologicalSpace_top](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-top.md) | 501 | `result-track:632301c6a02d50ea07b0b01ba2e79a24ee51553b2753b6471c742bd880e45843` |
| 72 | `theorem` | [toTopologicalSpace_iInf](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-iinf.md) | 503 | `result-track:d0acb4fb045650c06ac09e852b2e446e85533751e00631ce82803e498844e48a` |
| 73 | `theorem` | [toTopologicalSpace_sInf](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-sinf.md) | 508 | `result-track:17d21b924d922d32be28b972a141aada3afee14ce85e4a2a97c63efaf2f0d779` |
| 74 | `theorem` | [toTopologicalSpace_inf](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-inf.md) | 513 | `result-track:b5f87ed114ded66f7e9fef9f163ae7d28d9887370469eb986ea7ec44104f8eaa` |
| 75 | `theorem` | [UniformContinuous.continuous](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-continuous.md) | 524 | `result-track:bcf9be403d37a3f5237e9a466905c0cbb3225704c6933e59dcd511ca370ece2f` |
| 76 | `lemma` | [UniformContinuous.uniformContinuousOn](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-uniformcontinuouson.md) | 529 | `result-track:265322c2ca6c5fc13a730c2834fb05969ec746101ed99b613f7bc2e0349852b8` |
| 77 | `lemma` | [UniformContinuousOn.mono](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuouson-mono.md) | 533 | `result-track:94e30103cd5cac7e080544ba1d8580d928f2e27dff6d7b1a704a7970d424c5c9` |
| 78 | `lemma` | [UniformContinuousOn.congr](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuouson-congr.md) | 537 | `result-track:daa53f99cd6716489e5a6c1396619683fe1faa820de3c5837bc0e9d75505f202` |
| 79 | `lemma` | [UniformContinuousOn.comp](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuouson-comp.md) | 545 | `result-track:dd16db2254dd040d717963697e3eacd68ef5e91f7cfb6059a0fe67ffbb45c185` |
| 80 | `lemma` | [UniformContinuous.comp_uniformContinuousOn](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-comp-uniformcontinuouson.md) | 554 | `result-track:049c599f3ab24dad17fd352f84f7152b76cb768b1257d2636c994ba7cfc2fe5f` |
| 81 | `instance` | [ULift.uniformSpace](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/ulift-uniformspace.md) | 561 | `declaration-track:802650b77619cd12333cff45810eeb90946abd7616453589a1c35bd2fcb24ae5` |
| 82 | `instance` | [OrderDual.instUniformSpace](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/orderdual-instuniformspace.md) | 565 | `declaration-track:01d9e7cc87a2c39b4a64d3d4abdf822fc29c416892bbe1cf6aa63816d7b4d415` |
| 83 | `theorem` | [UniformContinuous.inf_rng](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-inf-rng.md) | 571 | `result-track:e58e8ce9c3c89f131cc6d49b5dd72029df62eb68da94e0482423596d2556fba8` |
| 84 | `theorem` | [UniformContinuous.inf_dom_left](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-inf-dom-left-source-edition-2.md) | 576 | `result-track:f07083f31455b2b7e8d7ed5891e2507d485ce81f5800d0e76554ec0e59f67263` |
| 85 | `theorem` | [UniformContinuous.inf_dom_right](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-inf-dom-right-source-edition-2.md) | 580 | `result-track:90e52699c0400b1ead3f9322db7979f1efe5463963c0636d3e55f4b1744154f5` |
| 86 | `theorem` | [uniformContinuous_sInf_dom](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-sinf-dom.md) | 584 | `result-track:0c0a4f392aaae850f24c8688ba01e9f5bc5e7120eec33304e9356ad88571833f` |
| 87 | `theorem` | [uniformContinuous_sInf_rng](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-sinf-rng.md) | 591 | `result-track:c0532264b6141c05432768a39a6d9eb3c43cafe126d77bcf68ea05f0df9aecff` |
| 88 | `theorem` | [uniformContinuous_iInf_dom](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-iinf-dom.md) | 596 | `result-track:2861d492a1ecb0cc74e828d4cb2055d754ca79b01c5ec9eac3b9f1c08ad2d773` |
| 89 | `theorem` | [uniformContinuous_iInf_rng](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-iinf-rng.md) | 602 | `result-track:6105b8edd230ddbd0665769bbb7d069425d17d117c6d1a25ac70a4e97d2af4e4` |
| 90 | `theorem` | [discreteTopology_of_discrete_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/discretetopology-of-discrete-uniformity.md) | 610 | `result-track:c8c2d5093f9dba32edd75e0424c97526d88d218566c92fbbc8a28056a4262590` |
| 91 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-7.md) | 614 | `declaration-track:68897f2e142dafe1fe250953b3f90e839f62e56db0d3f92a5a760cb576d69223` |
| 92 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-8.md) | 615 | `declaration-track:83bcc43c49e392ec8b402335bd52107bfd4fe9e6700d627aeb88cdbc3d9bb435` |
| 93 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-17.md) | 616 | `declaration-track:ec4c4e05ae65598b7fee238910f272d22cd30d6946ba05ed339c95ee0bca1366` |
| 94 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance.md) | 617 | `declaration-track:01ff9b13ebb15799ffef7254a2afac9219365c81b588578ef1880413ba2c6636` |
| 95 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-3.md) | 618 | `declaration-track:17e137ac5207d0d24fec39333b77d517fd4eb3ce5804864edc24bec7583f6f4f` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-4.md) | 626 | `declaration-track:2199a9138bd7cae98aa0905e123c80bf641d9e5852e86d646790e342a440d34f` |
| 97 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-18.md) | 627 | `declaration-track:fa50f803618320a18e0e562a32059780da5e80005e89ddf2c42b864632999ee5` |
| 98 | `theorem` | [uniformContinuous_ofMul](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-ofmul.md) | 630 | `result-track:b4505ede889ff92936372ca46b34c6c4547982a1f443a8543b24a30812301b6b` |
| 99 | `theorem` | [uniformContinuous_toMul](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-tomul.md) | 634 | `result-track:b39f1bb320e4171fce8ea432d63bdf91da4dfa7bbf089ae486cab961855d6785` |
| 100 | `theorem` | [uniformContinuous_ofAdd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-ofadd.md) | 638 | `result-track:4ea03e6ef8e505866f7424dc7f8ba39fc0152b1154e0eda13d8332129ba8b45a` |
| 101 | `theorem` | [uniformContinuous_toAdd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-toadd.md) | 642 | `result-track:8f170540036949330772df8ecf0a2a5ee2c0dd53ceaf7fa9e480366edb52e56f` |
| 102 | `theorem` | [uniformity_additive](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-additive.md) | 645 | `result-track:108940f3f358410e0d116e4fa4ae483194ceab0c9f847a3d23c2dede3a75163d` |
| 103 | `theorem` | [uniformity_multiplicative](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-multiplicative.md) | 647 | `result-track:2065ad0884272a6ef5255356ecefece466ea6db7f931c446fda748cacd898e85` |
| 104 | `instance` | [instUniformSpaceSubtype](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instuniformspacesubtype.md) | 651 | `declaration-track:6b38a6f5241893c3964ac87d08064d8ce03fdca2a06494ab86e297c587d51bdf` |
| 105 | `theorem` | [uniformity_subtype](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-subtype.md) | 654 | `result-track:397282fded1ff59e61a01d141d3235710a334dcf208dd37c177a63b95a14902e` |
| 106 | `theorem` | [uniformity_setCoe](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-setcoe.md) | 658 | `result-track:d8614f088c313296e1576f033b069cf16131c33fcb270857d2d2698481615c24` |
| 107 | `theorem` | [map_uniformity_set_coe](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/map-uniformity-set-coe.md) | 662 | `result-track:f61536fcaa29564d3ecc47db5f2843ca61160d98bfb42ed802796c566033db61` |
| 108 | `theorem` | [uniformContinuous_subtype_val](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-subtype-val.md) | 667 | `result-track:0e345a7e4a466489443f3f8454746a549b41965314c10e4a7c78b1312825c213` |
| 109 | `theorem` | [UniformContinuous.subtype_mk](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-subtype-mk.md) | 672 | `result-track:02de548a94e1b3bef8b58414df7204cfa29a85380f106462cbd29af75b13590e` |
| 110 | `theorem` | [UniformContinuous.subtype_map](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-subtype-map.md) | 677 | `result-track:b3e3a80452188f07c2f1a2a2be0f708d76413baac118eeb801c38757d5943f15` |
| 111 | `theorem` | [uniformContinuousOn_iff_restrict](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuouson-iff-restrict.md) | 682 | `result-track:172ecd978063247c26d23b76c7274dd0a6812130914226c87542d011bc28d350` |
| 112 | `theorem` | [tendsto_of_uniformContinuous_subtype](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/tendsto-of-uniformcontinuous-subtype.md) | 690 | `result-track:af5d7501911bc8f4ea3749b94320a4826b691f86f921967fa5e3fb40349513bb` |
| 113 | `theorem` | [UniformContinuousOn.continuousOn](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuouson-continuouson.md) | 697 | `result-track:f111e9e954e54555fa7a05498b266377f00de99ab3e334c9b7bceedc78e6c13a` |
| 114 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-15.md) | 703 | `declaration-track:dfbc3ae2bb5174e33458838996f8d1907c34ba5ac10d54e663a8adb2b14c9575` |
| 115 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-6.md) | 707 | `declaration-track:3a0e692a7d830268f9e4de0381f63ba28ce6902386bdb707310208600278b380` |
| 116 | `theorem` | [uniformity_mulOpposite](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-mulopposite.md) | 711 | `result-track:89691d81f966ea83ae0edd9e62880ad03566e7c6af9462f8f6c940d7ec7901fd` |
| 117 | `theorem` | [comap_uniformity_mulOpposite](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/comap-uniformity-mulopposite.md) | 716 | `result-track:36b0c2483a4b94032716648c222a0a2523e5b245930f6f012de75acad18897cd` |
| 118 | `theorem` | [uniformContinuous_unop](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-unop.md) | 723 | `result-track:9fa94a8b93868fe507b3e431c055623855eae8f3b8736518d375ea698653b4bb` |
| 119 | `theorem` | [uniformContinuous_op](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-op.md) | 727 | `result-track:3ff4f3d9467bfef3e7c38a751b452d68ef1910d2059eb2ab5e1d784f594960df` |
| 120 | `theorem` | [isUniformEmbedding_unop](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isuniformembedding-unop.md) | 731 | `result-track:7d1dfc689e89b6bc0ddb3b80708039dee799ae35cce296d944427b0b3782a42c` |
| 121 | `theorem` | [isUniformEmbedding_op](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/isuniformembedding-op.md) | 736 | `result-track:5dce7e7ffa49f7d0418964e128687060b621e4e5a096781fe13852bc9bb5a320` |
| 122 | `instance` | [instUniformSpaceProd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instuniformspaceprod.md) | 748 | `declaration-track:68064116d308af42043821158a872820fab63809af6c3d948cce6a90b30689f3` |
| 123 | `example` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/example.md) | 752 | `declaration-track:bea6f8b08f6f2e371dd7f755518afb8e1d70d69185046bf724bab3425c395e41` |
| 124 | `theorem` | [uniformity_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-prod.md) | 756 | `result-track:ae768ef8d916e4d16e9ff3f88d250b404b32d5ac302ca49f24a8a4108de18690` |
| 125 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-11.md) | 762 | `declaration-track:9d4f3e2c5b8e6da04fac39707512035c6a4d8630c57c33817cadadfa1c980d89` |
| 126 | `theorem` | [uniformity_prod_eq_comap_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-prod-eq-comap-prod.md) | 767 | `result-track:f5a0656cd5e40b191662d411cde8e7466767c70b8d9c47c2e92731671956fb4e` |
| 127 | `theorem` | [uniformity_prod_eq_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformity-prod-eq-prod.md) | 772 | `result-track:ef7b4ffc28ecbf1b65c6a5fa927fc455950e5c2fb099d4198221b14b8b49465e` |
| 128 | `theorem` | [mem_uniformity_of_uniformContinuous_invariant](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/mem-uniformity-of-uniformcontinuous-invariant.md) | 776 | `result-track:9c870f468557c0a1f5e90ece7875da7fa81892019a14155c9d3b61ed64884f44` |
| 129 | `def` | [entourageProd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/entourageprod.md) | 785 | `declaration-track:d5b097bb8f007edee545ea9a81564c19a68dccd423f2ae3806987a7f191ea802` |
| 130 | `theorem` | [mem_entourageProd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/mem-entourageprod.md) | 788 | `result-track:3b05b8c9a4d45092ba4acde42115ff5ec55d67f3977c448423304ba8624850ca` |
| 131 | `theorem` | [entourageProd_mem_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/entourageprod-mem-uniformity.md) | 791 | `result-track:5f7e132ccd3a62fd9f4322c4edddb49887a795e455b3d4986b0e6f9d5727a6b3` |
| 132 | `theorem` | [ball_entourageProd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/ball-entourageprod.md) | 796 | `result-track:e632ff07173205071b27508644e537f56c15528a69ea0f93a3fdb8da5dc8002f` |
| 133 | `instance` | [IsSymm_entourageProd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/issymm-entourageprod.md) | 800 | `declaration-track:dabfed9aac18b357ea7ff51b52f7fbb74623d478a69594ed17b03fb433589c4e` |
| 134 | `theorem` | [inv_entourageProd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/inv-entourageprod.md) | 805 | `result-track:b08ac36c69d88dc14dd6587ecaa42e40e82930288739c325861090c70246a8ce` |
| 135 | `theorem` | [image_entourageProd_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/image-entourageprod-prod.md) | 810 | `result-track:a2b78d2635f004eebd8de74dc78504991c7dacd54dc2f29f38d2ae9e6c1d2f72` |
| 136 | `theorem` | [preimage_entourageProd_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/preimage-entourageprod-prod.md) | 817 | `result-track:46338e5d837e921b442c469c76f7e7dbd91218d8b19ca8f52a1e65159498ebaa` |
| 137 | `theorem` | [Filter.HasBasis.uniformity_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/filter-hasbasis-uniformity-prod.md) | 821 | `result-track:5dc2b667944b4a2b2865e84437158c4beaa8fdd0bc5a46ff05f4fa62c3f0b74a` |
| 138 | `theorem` | [entourageProd_subset](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/entourageprod-subset.md) | 828 | `result-track:226c58de487fc7185960cbf7ed823b4abb349babd4e70eef966f0419ba5d6850` |
| 139 | `theorem` | [tendsto_prod_uniformity_fst](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/tendsto-prod-uniformity-fst.md) | 834 | `result-track:c49b31b78d8ef0a33bf2aabd31d804edee15a0818157d96b0f78f93968e8cc4c` |
| 140 | `theorem` | [tendsto_prod_uniformity_snd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/tendsto-prod-uniformity-snd.md) | 838 | `result-track:6747a6c33b9c570ccf340de7912d70134170191ff09369766059723effb35d8c` |
| 141 | `theorem` | [uniformContinuous_fst](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-fst.md) | 843 | `result-track:ed8bb6b7322d238bb2544e645d0bcaeda6fa9e83936634950c3aef3806ae5aa3` |
| 142 | `theorem` | [uniformContinuous_snd](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-snd.md) | 848 | `result-track:0cdd8b9d12497ceac5d4e2f4959c64976d7e8898bb5552ed86f4fdaa75f1453a` |
| 143 | `theorem` | [UniformContinuous.prodMk](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-prodmk.md) | 855 | `result-track:7dc8e3b60ff5781958e16c08400e0198ba304ab121a18f62ef282ed7980ee8f7` |
| 144 | `theorem` | [UniformContinuous.prodMk_left](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-prodmk-left.md) | 860 | `result-track:ea5ebe568486af7795c7acada27fa6b6c2a4c8a283b5cfa2ab0acf4f90ef7bcf` |
| 145 | `theorem` | [UniformContinuous.prodMk_right](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-prodmk-right.md) | 864 | `result-track:a682d9bdc54e075db9b21c00137d64db03cb0e2450ea00e6e2c4b5f2f526d08e` |
| 146 | `theorem` | [UniformContinuous.prodMap](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-prodmap.md) | 869 | `result-track:28e3130439621b7a187d857ff95cc3864754fbc1c5fec7ea8d480398c1bd658a` |
| 147 | `lemma` | [uniformContinuous_swap](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-swap.md) | 874 | `result-track:0e135490214c2573abd657a62c0a489ffcf3bebd2ffc17455f417441f6e55811` |
| 148 | `theorem` | [toTopologicalSpace_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-prod.md) | 878 | `result-track:42c555c95c8bea02ecee4c239e7f670a4133be08a417e82350f82fff6323ecde` |
| 149 | `theorem` | [uniformContinuous_inf_dom_left₂](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-inf-dom-left.md) | 884 | `result-track:69b92e59cb11352b50e9fc9658021f0b62dd495fcb416a05f3f92f34e9e95713` |
| 150 | `theorem` | [uniformContinuous_inf_dom_right₂](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-inf-dom-right.md) | 897 | `result-track:580d7d1864bf097c966c7ecd6cbd6d3c43120b15632d3905247db133cd3eafed` |
| 151 | `theorem` | [uniformContinuous_sInf_dom₂](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-sinf-dom-source-edition-2.md) | 910 | `result-track:a447d89ff6a4fd12b22b7f12e27f1ba9dfa88386dda79dc69c815f929f8871f2` |
| 152 | `def` | [UniformContinuous₂](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous.md) | 933 | `declaration-track:97459641f87879d6423133d949aaa294f76488fbb01fd6169451f098be357e9d` |
| 153 | `theorem` | [uniformContinuous₂_def](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-def.md) | 936 | `result-track:d4a7e5255314bf7b4007ba89b9de15a2ca82c2d20f4ae1b9fe7125853f8f5b7f` |
| 154 | `theorem` | [UniformContinuous₂.uniformContinuous](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-uniformcontinuous.md) | 940 | `result-track:b8cb17de6b95c20d7f15a9e95cecf76d565e49a688510c86e8511a76c0cb31e3` |
| 155 | `theorem` | [uniformContinuous₂_curry](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-curry.md) | 944 | `result-track:ab544010a54d45a4de46f8f2476488af9a6f0b74120410d93677131f7c09f4b4` |
| 156 | `theorem` | [UniformContinuous₂.comp](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-comp.md) | 949 | `result-track:12c018d1556071490c1a4ca1b863343ee9dd92503337e8eb6bf38f6379cdc262` |
| 157 | `theorem` | [UniformContinuous₂.bicompl](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-bicompl.md) | 954 | `result-track:3812d16c558bdc3de113fa38d4330e0d437fa7328edaee21b9ed73f74d6b84f8` |
| 158 | `theorem` | [toTopologicalSpace_subtype](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/totopologicalspace-subtype.md) | 961 | `result-track:001d664036c7c676ce16f28a2822620a881af98485c14d2c3fb3dbc61a9ef7ba` |
| 159 | `instance` | [Sum.instUniformSpace](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/sum-instuniformspace.md) | 975 | `declaration-track:b73bbcdfd544fea8d6db839ef76f6e58744d19b35df2944bb0e64f11f54d3900` |
| 160 | `theorem` | [union_mem_uniformity_sum](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/union-mem-uniformity-sum.md) | 992 | `result-track:a166719e2bc842b80f671d20b4d26e6d107534a105326de42fe08d50d4a60348` |
| 161 | `theorem` | [Sum.uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/sum-uniformity.md) | 996 | `result-track:217049bbb885b02dd8d0a289ff98c7749d8419e25726c2724b5a6a3f28e75584` |
| 162 | `lemma` | [uniformContinuous_inl](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-inl.md) | 999 | `result-track:e429e7bacbb028d41aa39f138d3dc7399fe71e77163fd9083d3be66225c61cc3` |
| 163 | `lemma` | [uniformContinuous_inr](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniformcontinuous-inr.md) | 1000 | `result-track:51fbdfe2b9d2c844cbb09deea00af31e02b87c4974c6f41effbcadfbc4709112` |
| 164 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/instance-source-edition-2.md) | 1002 | `declaration-track:1006169387c1304e7d0dbb1ef1341ad34c035b9a63fbc4c5c652885be8b65014` |
| 165 | `theorem` | [tendsto_nhds_right](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/tendsto-nhds-right.md) | 1031 | `result-track:319496d861ff66b2b5b33c3a4bbcb3d2e41e315bc7d32403b6d5164f5e4b1ee0` |
| 166 | `theorem` | [tendsto_nhds_left](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/tendsto-nhds-left.md) | 1035 | `result-track:5e6f948d016ff30fcbe2b391f1e54b006d8f5cf0dfe48f70a63d5840e3a54124` |
| 167 | `theorem` | [continuousAt_iff'_right](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuousat-iff-right.md) | 1039 | `result-track:e302b7b4ea1d643843c9c39d2a46d5d83270d29a82b894bd2d58fff63eb46487` |
| 168 | `theorem` | [continuousAt_iff'_left](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuousat-iff-left.md) | 1043 | `result-track:3ccbe13cfb582c4a3f28f4cbe88c8343488f941b22da09d372adf5ca0067eade` |
| 169 | `theorem` | [continuousAt_iff_prod](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuousat-iff-prod.md) | 1047 | `result-track:6fed444526aa89b42e5a242a7b7b2116cb18c481ff764e7284df21ccc7e8fade` |
| 170 | `theorem` | [continuousWithinAt_iff'_right](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuouswithinat-iff-right.md) | 1052 | `result-track:1a3e337f4bd163405f06a4adfd2b29388b64e2e42fbde1240fd81cecf893db40` |
| 171 | `theorem` | [continuousWithinAt_iff'_left](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuouswithinat-iff-left.md) | 1056 | `result-track:8dd498ce4ca3c4eb41b59abc4693673577a852cb8ca72ba3c046d34ec8d9507e` |
| 172 | `theorem` | [continuousOn_iff'_right](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuouson-iff-right.md) | 1060 | `result-track:26bb34f397e8cb9c7415aa7698e4887546f4d9a20da58cf29603b5ec77aab203` |
| 173 | `theorem` | [continuousOn_iff'_left](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuouson-iff-left.md) | 1064 | `result-track:9833f2f56ed61a080c25fed11c18b7d8a27bb2abad82d0991edb4ec46a052c9f` |
| 174 | `theorem` | [continuous_iff'_right](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuous-iff-right.md) | 1068 | `result-track:cf01b5c7184d09930bc665c8ec26911acebc0dbb11556e2160c910a6d2492b51` |
| 175 | `theorem` | [continuous_iff'_left](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/continuous-iff-left.md) | 1072 | `result-track:e2ce04859a587641a978485e868f5e41293a4b1444130e8e6935d2f2df9a7bf7` |
| 176 | `lemma` | [exists_is_open_mem_uniformity_of_forall_mem_eq](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/exists-is-open-mem-uniformity-of-forall-mem-eq.md) | 1078 | `result-track:4223d0b33988d8a97283bc29a90848a2900e108445bde901123d2c1f89808e75` |
| 177 | `theorem` | [Filter.Tendsto.congr_uniformity](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/filter-tendsto-congr-uniformity.md) | 1103 | `result-track:0bafd503a4ea1c072e90b9cb4b8210c1baba4a4586c3a1be9405058714495224` |
| 178 | `theorem` | [Uniform.tendsto_congr](../../../../GeneralTopology/UniformSpaceBasicPublic.lean/declarations/uniform-tendsto-congr.md) | 1107 | `result-track:28d1ba8797fdfe65d2328a8fbe3ea27cd11f9200d0bb45f788b8460ba5865b45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=269cb34bbd3229ef6475c9bcddb4aada8a15fef12aabbc546857ffa30305f934 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

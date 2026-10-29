# Verification target: Cones Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df2393b058e36207833c79e4bb73f8a8e6f356d5",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df2393b058e36207833c79e4bb73f8a8e6f356d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean.json)

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
| 1 | `def` | [cones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cones-source-edition-2.md) | 67 | `declaration-track:9023bc4aaa45588dfb3df8a7a7a15c578567722c02160c19cb57ec7ad6ddd9a7` |
| 2 | `def` | [cocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cocones-source-edition-2.md) | 75 | `declaration-track:e7bc8428568293f26c9c25cfd1d2f7ecd6c90bbf0d7af549732915a053e66f41` |
| 3 | `def` | [cones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cones.md) | 88 | `declaration-track:1dc0b7be518f5ef376883f1ee66aa41a6cb2faabd98a9f3e199d9a14e528e38b` |
| 4 | `def` | [cocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cocones.md) | 96 | `declaration-track:bb7d0269105c744fd92319d9c5ea5c90a48606adc2256a99ba85c87a7344d939` |
| 5 | `structure` | [Cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cone.md) | 116 | `declaration-track:25c0b5cf62fc100f0becb34f6d12d216866145de9547e09382346693b2aee08c` |
| 6 | `structure` | [Cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cocone.md) | 133 | `declaration-track:0b8f572e860c03b6b08be61a0b7629a151a6c4523aebd6eae1c2dcd25fa304ed` |
| 7 | `instance` | [inhabitedCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/inhabitedcone.md) | 140 | `declaration-track:8ffbb05ed0c9d24bca0ac279d9758fc775a61bf63a69b31d548b3dee116b5697` |
| 8 | `theorem` | [Cone.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cone-w.md) | 150 | `result-track:26788236b401ae09880031d00383ab3321c86e5157b65117ee9e6bc709e6a142` |
| 9 | `theorem` | [Cocone.w_apply.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cocone-w-apply.md) | 162 | `result-track:52a058dcdc753e569e341203b3910e3864ac587f159a494f18faaaea61ef130e` |
| 10 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/equiv.md) | 178 | `declaration-track:2b25cccb4baed28d3c00828e6842e87129f818ad586122546d555c2b17f5d425` |
| 11 | `def` | [extensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/extensions-source-edition-2.md) | 194 | `declaration-track:db1d7082f0239a37bad0b004e448971bc634381e478680891852d9baee7d1d86` |
| 12 | `def` | [extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/extend.md) | 200 | `declaration-track:52a9b545a214f7e81e47eaef30490673fa9ccb2f9a2dae84c24fd7557160052b` |
| 13 | `def` | [whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/whisker.md) | 209 | `declaration-track:be21e90f3dd3cb4125e95bdb4c82dfff7b0e3a0f1a0d1ca0db19866d86c35410` |
| 14 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/equiv-source-edition-2.md) | 218 | `declaration-track:4f3fc1211d3b3730a727845eb953bcbaf65f54b5ebb9287841b3e86ed85ff395` |
| 15 | `def` | [extensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/extensions.md) | 234 | `declaration-track:bf139a3e8528180adb1fbb05bb728bdc2967268090491ff6ac5a1f42d7c220de` |
| 16 | `structure` | [ConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/conemorphism.md) | 241 | `declaration-track:c0fd15e96707d0eedaec74ef9a12ebff77c6519083d45f10ae3a7bf4b812568e` |
| 17 | `structure` | [CoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coconemorphism.md) | 250 | `declaration-track:8897350da5bbd97f3d3f655da5ebc102ff427c7d80575cfb14d4a3a2cb969cc1` |
| 18 | `instance` | [inhabitedConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/inhabitedconemorphism.md) | 260 | `declaration-track:b310fb11074a840dbf3fe1d4a8bb4cc02cafb8d83de8865379577b00c3dccd25` |
| 19 | `instance` | [Cone.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cone-category.md) | 265 | `declaration-track:6ab9ed87cb1ccedc981caf465b6b9073f065ebd56de26e854fbf88c1eae27ce3` |
| 20 | `theorem` | [ConeMorphism.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/conemorphism-ext.md) | 274 | `result-track:b6af26cce5ec9fa834ff0e33fdb46ac5843d3fcfae336abe239c2c2d6da19638` |
| 21 | `lemma` | [ConeMorphism.hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/conemorphism-hom-inv-id.md) | 280 | `result-track:68a3b2226d3ef6285ae2ead6571867e978753b39dabe17e6525fdd62ab8884f0` |
| 22 | `lemma` | [ConeMorphism.inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/conemorphism-inv-hom-id.md) | 284 | `result-track:5803d440cde698fc82792fa7bb8b3645edd1a76cfb24f44ba31ea80749b36830` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/instance-source-edition-3.md) | 288 | `declaration-track:dc7b5a69fd795bd7453f966845dce71eef31947472bce6ea2dea1fd7a4968bfc` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/instance-source-edition-2.md) | 291 | `declaration-track:b887fbac63992cad45a71c6c399146b84094f166d84d250e25b89ef1d786058f` |
| 25 | `lemma` | [ConeMorphism.map_w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/conemorphism-map-w.md) | 294 | `result-track:02f763cd797a587ec67c819dc5fbea640b29c82edbf7c290cd56afe29a2b9327` |
| 26 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/ext.md) | 305 | `declaration-track:396171611d176ef0efcf9b736288ac722c46e6b3b3dbf26a0325782ccb9f5b2a` |
| 27 | `def` | [extInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/extinv.md) | 317 | `declaration-track:aceaadc3da22f31e9116169b2bfd8d3214be63ee57b784c168b47e640a7163d2` |
| 28 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/eta.md) | 325 | `declaration-track:13641f03c48a2210cf7e664a75bdbbb567c9fdb0b00d49a3328dd92b8738a0a3` |
| 29 | `theorem` | [cone_iso_of_hom_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cone-iso-of-hom-iso.md) | 335 | `result-track:4c3ab34d6315082c53574fdebe69987d96447cb691a2214102ad1b714dbf3db3` |
| 30 | `def` | [extendHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/extendhom.md) | 341 | `declaration-track:0a7bef3e99dc15e74329a5da3202f6adba857120cdb36dbb964d79d0e4c43ef7` |
| 31 | `def` | [extendId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/extendid.md) | 346 | `declaration-track:54a757aee2bac4b9ba7d2aec82008c19e3fd57476e02ab906933cae6148b4baa` |
| 32 | `def` | [extendComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/extendcomp.md) | 352 | `declaration-track:20d62c50e841c55c1615e02026a1e5de95c35b05384674d782e305dc2729f695` |
| 33 | `def` | [extendIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/extendiso.md) | 359 | `declaration-track:1f8b2baf94527a19f723fd1ebb0962f4305b652768cdaadc6e4518eec7989e0e` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/instance.md) | 364 | `declaration-track:32a42310017a3f6418acad2e23190aab7b822fb12b39591213d2e24a57668c7f` |
| 35 | `def` | [postcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/postcompose.md) | 373 | `declaration-track:7cfb2b4a5acd66d62387f3ad3b534d968671f82b81d059b64b2b7b1589f7193a` |
| 36 | `def` | [postcomposeComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/postcomposecomp.md) | 384 | `declaration-track:dafc2807374cc7a014ea8445a7da1287e28e75e0900ef669a3aac4b004f17c82` |
| 37 | `def` | [postcomposeId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/postcomposeid.md) | 391 | `declaration-track:1799c810d9b1c7622697f2a83264b6f2533bd4e5cb60bd76ccc42a7fe01c16bc` |
| 38 | `def` | [postcomposeEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/postcomposeequivalence.md) | 401 | `declaration-track:070396267f3e95d53a92377d1bdb5542ed5bcd86309a7eba4814843b62844ca5` |
| 39 | `def` | [whiskering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/whiskering.md) | 412 | `declaration-track:0ec914d00916fb20dcc693f7d83eb704d2ffb3be8d15c474082ca92d8966d58b` |
| 40 | `def` | [whiskeringEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/whiskeringequivalence.md) | 421 | `declaration-track:11494fb1bdef0da4adb8960d1357f49fce8e02303c2a956e095a1fde18bcdcf0` |
| 41 | `def` | [equivalenceOfReindexing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/equivalenceofreindexing.md) | 440 | `declaration-track:faa3fff544a0876a56e323bb0e67071fa8708c582a555492d86eee078d61f9b0` |
| 42 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/forget.md) | 449 | `declaration-track:4d2be4bcbafc87225355f45f06ecba60754d6c49896c4f6c5809790b5dac85e2` |
| 43 | `def` | [functoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/functoriality.md) | 458 | `declaration-track:1527b820db005b0f0c5f72f21d76e320c18b8eaef688c569f9056482d74e834c` |
| 44 | `def` | [functorialityCompFunctoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/functorialitycompfunctoriality.md) | 470 | `declaration-track:7cc27d8fa30074fbd5f0c0443503d779b3b359c888a46ef42f60263572d82e48` |
| 45 | `instance` | [functoriality_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/functoriality-full.md) | 475 | `declaration-track:0e4ab7a1c68062885b0b6696b2f301dd623c5782374ed48c09485986756d5797` |
| 46 | `instance` | [functoriality_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/functoriality-faithful.md) | 481 | `declaration-track:2b94f88934463da6d5da334afd16d5ccec641fabee8590adecea71d715b0756a` |
| 47 | `def` | [functorialityEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/functorialityequivalence.md) | 493 | `declaration-track:77a2f5eb63ba4d5bbd8a5925cbb0568edffde3b2e8deac209627b49b4a986baf` |
| 48 | `instance` | [reflects_cone_isomorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/reflects-cone-isomorphism.md) | 508 | `declaration-track:6f1987d917d75f1ba358f0e8990e2cad4078f974a8e4994ee9f48f61724d3a47` |
| 49 | `def` | [mapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapcone.md) | 591 | `declaration-track:7f347eca38d4661a10a9c7a4dd45a6c8a3ab53ff50d3ecfa9c5b591c7f1f516b` |
| 50 | `def` | [mapConeMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconemapcone.md) | 597 | `declaration-track:0501b69fb520996e0e124649da9c20782b6973bd3786726832eeead0514c6e65` |
| 51 | `def` | [mapConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconemorphism.md) | 604 | `declaration-track:4827af6a0080ef492674febf468091210a46770db48de93c8bf7ed65e3a4aef7` |
| 52 | `def` | [mapConeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconeinv.md) | 612 | `declaration-track:a864dbc0fac96f3314958dd7e7b0fe59ee53a7ba34e71597ccc4b880d47c0e80` |
| 53 | `def` | [mapConeMapConeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconemapconeinv.md) | 617 | `declaration-track:d82e4978264f52f04f0e66305cb846fe4e3f781c5271d21562cb82604971c8dd` |
| 54 | `def` | [mapConeInvMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconeinvmapcone.md) | 624 | `declaration-track:15a750d538fa2922ae690c850b7e808cc2439d722a045c72c512da704b1c38fa` |
| 55 | `def` | [functorialityCompPostcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/functorialitycomppostcompose.md) | 631 | `declaration-track:839a60b2e953ddc2d07db9c4526796cdf884d7762488cf88ee990b982ecb32de` |
| 56 | `def` | [postcomposeWhiskerLeftMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/postcomposewhiskerleftmapcone.md) | 645 | `declaration-track:6747c631f8ddb41237e2420b1a272ba95a9c5cf2fa240daadc13f1ef3f09c810` |
| 57 | `def` | [mapConePostcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconepostcompose.md) | 659 | `declaration-track:b20677532869561f726d07f1a0c2fa1987ef9120816f9be30ffe695945ab13df` |
| 58 | `def` | [mapConePostcomposeEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconepostcomposeequivalencefunctor.md) | 666 | `declaration-track:d7b2e0b11f54b09ef3fbecfb3d2cfedd6f6404abd10b6142a1dd6d78e7537432` |
| 59 | `def` | [mapConeWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconewhisker.md) | 673 | `declaration-track:9eabd8d8d8a5675d62b2e3818455d856d7b30c57c6c1a714958e141b1a4a253d` |
| 60 | `def` | [Cone.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cone-op.md) | 686 | `declaration-track:2dfa6432974ac3600b9899e29a7c1e09250a2c36ed171026045a73d24c1683fe` |
| 61 | `def` | [Cone.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/cone-unop.md) | 692 | `declaration-track:b39171619d2bc302a387dba08845ef7b04ff3944ed370f7311384ec162612000` |
| 62 | `def` | [coconeEquivalenceOpConeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coconeequivalenceopconeop.md) | 705 | `declaration-track:2342cfc2318ce0f417187c5907c71b8011a5ff4b95ea63df578c58ab26e8b127` |
| 63 | `def` | [coneOpEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coneopequiv.md) | 729 | `declaration-track:5664d1d69cbfe311f045bce302cbb62b04bd47d641a0b1749b54bbe3ddfd1906` |
| 64 | `def` | [coneOfCoconeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coneofcoconeleftop.md) | 746 | `declaration-track:7b346731a4b4662d1242430caddca54c974cd06f007179dee57c0b427a26bbd2` |
| 65 | `def` | [coconeLeftOpOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coconeleftopofcone.md) | 753 | `declaration-track:2dce3a8cb9d494091ad0486154f0c9ad2e6cbd7249b9c75eb186d2838261937d` |
| 66 | `def` | [coconeLeftOpOfConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coconeleftopofconeequiv.md) | 760 | `declaration-track:0d5a2c1f6fe1b262dd067822581fe2b10c6d2f926c5d8a986968acfd821935d1` |
| 67 | `def` | [coneOfCoconeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coneofcoconerightop.md) | 777 | `declaration-track:da7f7e38cf18e832761c03121a71599aaafc4b4773f330336b6a027eddcee3bb` |
| 68 | `def` | [coconeRightOpOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coconerightopofcone.md) | 784 | `declaration-track:d60f6133290081aef24ce275b3bc73177a46789abce2932007f3ff7cbcf5d219` |
| 69 | `def` | [coconeRightOpOfConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coconerightopofconeequiv.md) | 791 | `declaration-track:62d68192b8620dda472713f6557f23a04265f169a3561c29f5efe415f0f9e3d4` |
| 70 | `def` | [coneOfCoconeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coneofcoconeunop.md) | 808 | `declaration-track:9147baf9f77b8b8c63c23b1e0bf22a7346503025a66ba0a0de33b6ad4de3039f` |
| 71 | `def` | [coconeUnopOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coconeunopofcone.md) | 815 | `declaration-track:d0505eb8468109b334473214b06fa1f6aa92d81c91b8eebe93f23852187e33d6` |
| 72 | `def` | [coconeUnopOfConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/coconeunopofconeequiv.md) | 822 | `declaration-track:8d10036f9c114e8a6828994c1a332b041f33680269b534e54aeec41a3b9f40b0` |
| 73 | `def` | [mapConeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesPublic.lean/declarations/mapconeop.md) | 843 | `declaration-track:6412b663f106c1c6da320ada714ddf6990944aabbf82a73118fad419f6f0db6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b5c808be7f22e51f29702a819e2a506081acd64297df12a7b755f946ab0d4a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantf689d7f9fb2b47b058542580c261f89a5c042141b635f0cbf90732f85d9d1412.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

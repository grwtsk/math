# Verification target: Hom Monoid Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f178027a2f5aeab34361e31724b7030183cb2d8c",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f178027a2f5aeab34361e31724b7030183cb2d8c`.

Source path: `GRWTSK/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean.json)

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
| 1 | `structure` | [OrderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/orderaddmonoidhom.md) | 78 | `declaration-track:e8c5c896a68a1f1615ff9dd764109ce8e317d01e82d6791ca32256e409651f7f` |
| 2 | `structure` | [OrderAddMonoidIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/orderaddmonoidiso.md) | 94 | `declaration-track:b1701f4f87e3312fec4775bf396116171d215536a57fe8372e51d164e942ca90` |
| 3 | `structure` | [OrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/ordermonoidhom.md) | 115 | `declaration-track:a95e1a4e949a6b3e0661147cf58b8c40dc53ed2990764ce2c6787872401eb6c4` |
| 4 | `def` | [OrderMonoidHomClass.toOrderMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/ordermonoidhomclass-toordermonoidhom.md) | 131 | `declaration-track:72adfe2c4c794cc0651a0cd6ce9b8c844d93e1043de42192ada3efdf6685d230` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-10.md) | 139 | `declaration-track:e4b79c7d8b1e2be3d54fa017448a727fa5b049dbb84212cad917c3e75d34a1c8` |
| 6 | `structure` | [OrderMonoidIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/ordermonoidiso.md) | 150 | `declaration-track:944ee4121f5fdd0332af553385d9beab155cd5e9562c72288b418a855f0e3d36` |
| 7 | `def` | [OrderMonoidIsoClass.toOrderMonoidIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/ordermonoidisoclass-toordermonoidiso.md) | 164 | `declaration-track:1f30cd198586a2f4772fd352d4e8a3402976b7ef7bf9e65da2163fc5dcd2ccad` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-4.md) | 173 | `declaration-track:58ce0151001cc89f92e3e27e9bdf7bb30de99f416bfbc5238154a8953c6fbe37` |
| 9 | `theorem` | [map_inv_le_map_inv_iff_map_le_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/map-inv-le-map-inv-iff-map-le-map.md) | 184 | `result-track:520a4a2db7cee2785f10106f3838f9be8f8642e733fcc2565329219c0a0bbfe5` |
| 10 | `theorem` | [MonoidHomClass.ext_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/monoidhomclass-ext-iff-le.md) | 194 | `result-track:dd503bdda0d2d2abf98c492d09cf578065752bd49fafbd865e48738f8d601c2d` |
| 11 | `theorem` | [map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/map-nonneg.md) | 209 | `result-track:62272ed7e4d656933847d596a58cd4ad5b24f31fe1364e764224d8683a626fa4` |
| 12 | `theorem` | [map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/map-nonpos.md) | 213 | `result-track:44f43e5ee4df9321199683d10ca4b6d9f9198513bc3abac0b91395a5220889da` |
| 13 | `theorem` | [monotone_iff_map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/monotone-iff-map-nonneg.md) | 225 | `result-track:1c4d4dd24779dca2e852366fbcc8f89876e5885df5b309538460b3e257e82c6d` |
| 14 | `theorem` | [antitone_iff_map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/antitone-iff-map-nonpos.md) | 235 | `result-track:59a9bc7b88cbddcc09cca767717272de8d0b4329744b781453e75f26b28b9a36` |
| 15 | `theorem` | [monotone_iff_map_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/monotone-iff-map-nonpos.md) | 238 | `result-track:166c0a308ba031fd9288cb0b08b8b1e4c2d83b516dde7d2e3421a7c6a99a2fbb` |
| 16 | `theorem` | [antitone_iff_map_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/antitone-iff-map-nonneg.md) | 241 | `result-track:4aa414e716fb3a6211a21bfc085f926de635ea841eead7b36aa86bb85afc5c47` |
| 17 | `theorem` | [strictMono_iff_map_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/strictmono-iff-map-pos.md) | 244 | `result-track:242f2993d1a1be9e99c75ef7fb0eb2e78cf025a08c23575cbb71792db1e11e4f` |
| 18 | `theorem` | [strictAnti_iff_map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/strictanti-iff-map-neg.md) | 252 | `result-track:62ca95f0d005cd869a7fd6ed66e77c95e6b43ef60a61c34ef1c7c0291a618122` |
| 19 | `theorem` | [strictMono_iff_map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/strictmono-iff-map-neg.md) | 255 | `result-track:7b20601cbf1d10b37075c9b78ec0dd658e4cf735cd3e2a0e170d8307b37252fc` |
| 20 | `theorem` | [strictAnti_iff_map_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/strictanti-iff-map-pos.md) | 258 | `result-track:f13f34d49d4bfc365143f37acbe101d2a0e8fd262e4ed3f386db82445ed845d7` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-12.md) | 271 | `declaration-track:fb3f9c1682f00837d63a06e91a301509c513e5404564806d4046e688a5b33a1f` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-2.md) | 282 | `declaration-track:0957229fd0f96e3f13428be95184f39bbc0f554a57f85fc644d527d3264c9ee3` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-5.md) | 286 | `declaration-track:64618a0f7aaabcbba722a75e8ac9ff2a48edf0063182fdc455c1f116c93477a6` |
| 24 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/ext.md) | 292 | `result-track:bda92f7303fd31442a6c8082e2216116ed8a8b42751bb0841b5a83c046861a8b` |
| 25 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/tofun-eq-coe.md) | 296 | `result-track:4aacfe7f6ecf3175ed15c8b50310bbe011ac081451639b4719a8e642eceee481` |
| 26 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-mk-source-edition-2.md) | 300 | `result-track:89df3f5284d71a5a16248c9b5c7e77c0f05b9de2ad418459c84592f709eea7db` |
| 27 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/mk-coe-source-edition-2.md) | 304 | `result-track:c623cac12094fa083e59afb3fe94b52e36c046b3b48759f051c868a4c5bef450` |
| 28 | `def` | [toOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/toorderhom.md) | 310 | `declaration-track:e29e3cd4736ce1026bacd56605acfc0dfdaa370cd9d77fc8b809d38aa3fbaf02` |
| 29 | `theorem` | [coe_monoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-monoidhom.md) | 314 | `result-track:9fdd5abfc2fe92034c751ce90264d6664818ea62df059b1c56e9892796acd2d0` |
| 30 | `theorem` | [coe_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-orderhom.md) | 318 | `result-track:08fc93938779a86b2f2b1e4d1578215506fecf388da1c4b5afd183c23d0449f3` |
| 31 | `theorem` | [toMonoidHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/tomonoidhom-injective.md) | 322 | `result-track:17c97c36b7a6fe360e32511e7dff4d305b48205f1b931d683b0f906cb4147f3f` |
| 32 | `theorem` | [toOrderHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/toorderhom-injective.md) | 326 | `result-track:bd9a33e0666ee739de13fa2335b46fd6d774201afe29075629ecd1f9de272326` |
| 33 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/copy.md) | 333 | `declaration-track:f0d94467289ff41049d19b9602639fa19affe52fcfd6c9fa1557604866957d63` |
| 34 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-copy.md) | 337 | `result-track:9369170ec80a147db0e2be5cfef3c3fd8c010ba2712825dfa3acfa3a94ea3621` |
| 35 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/copy-eq.md) | 341 | `result-track:bf99f59c40977cab73739b957e383f6f92a322eaa7754d34a504e3cd14beb4c4` |
| 36 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/id.md) | 348 | `declaration-track:05e66acf2abbb2c67fbde319f40c41f37572d36bd93f66a44fe6e6dd5c3a97e1` |
| 37 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-id.md) | 352 | `result-track:5a3a966894558dd29d0fa6c0c84716603c2fe31fcd82ff4004a0200f1426cac0` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-8.md) | 356 | `declaration-track:c9d4043592bae4693eff82d35180972f89b940277a67a0a3d91fc264885797a0` |
| 39 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/comp.md) | 363 | `declaration-track:6fe94ee838b13b98c6f768bc501136ffbe11f026b93c85ff534862cbd03d0dbe` |
| 40 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-comp.md) | 367 | `result-track:8fd468c9582e3a42849ffc218e839a71f508afd5271f44a58912eb03573b5350` |
| 41 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/comp-apply.md) | 371 | `result-track:d4e105715b54c64df382faef0aa76e30435d906bfb00eba8e10176b2ceb174e0` |
| 42 | `theorem` | [coe_comp_monoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-comp-monoidhom.md) | 375 | `result-track:b907656b4d6c04659dbc2ea2c228055a6d7f83c9ba581413a4e6bbd458e9671d` |
| 43 | `theorem` | [coe_comp_orderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-comp-orderhom.md) | 380 | `result-track:4786463f5ff496bd0fa9b77cc5bb7a8a79e938b41a24e46cca2085b26a6d465e` |
| 44 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/comp-assoc.md) | 385 | `result-track:a79a5e960ea05c985b581457baa981de279e52b1c1ce29f91df4f64c91f37173` |
| 45 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/comp-id.md) | 390 | `result-track:bc0e09879bf69b2a92be14c5b0ab2eec39615eca4cbb946462bf827a394483f1` |
| 46 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/id-comp.md) | 394 | `result-track:162f5ecdb85f85dbdb9153f000840f6937b95a270666da5146efd584fb0f9fcc` |
| 47 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/cancel-right-source-edition-2.md) | 398 | `result-track:b6310e6b32c07981088eaa9946b3e9c03711eaea2663335f7d5db4378d8b658c` |
| 48 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/cancel-left-source-edition-2.md) | 403 | `result-track:32e37fe2c9bae6b8d0fdb9b9f057f1b05e87127b93b99ced2e42f02b6c0b1cdc` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-7.md) | 409 | `declaration-track:b2573f396be317dec9dfa928a9759f1860b6e920cfdb8eda483472fc29d13e02` |
| 50 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-one.md) | 413 | `result-track:972d2f75f5d1b3deb3401eb91e4e14ad987f49e59645aa493130ab11397674e7` |
| 51 | `theorem` | [one_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/one-apply.md) | 417 | `result-track:29dcbae17d38f8d1f23d670b8dec6852ebd89c75d3273e356085940c4ccc3ba5` |
| 52 | `theorem` | [one_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/one-comp.md) | 421 | `result-track:143527c8eda597ed7e01ad564f4acb625196c05ed75f9b9cfdb84445ec0ab2c5` |
| 53 | `theorem` | [comp_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/comp-one.md) | 425 | `result-track:5d97ec495b27af191b49f6083b698719f92c7f5bd1e9e40cd6641a0319f4d119` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance.md) | 440 | `declaration-track:083da1a309ac2b6d8790c88d784a6bdfdd99490e8af45e9b8fc004e5faa04670` |
| 55 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-mul.md) | 444 | `result-track:fb02981f496bc6d8ca2c02f7e8ed4f383d79c11bb944ecba02e90eccff07cf52` |
| 56 | `theorem` | [mul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/mul-apply.md) | 448 | `result-track:3152387243335558a0dbb107bca896a036d62d2e0c93f74974dafffdf81dd67a` |
| 57 | `theorem` | [mul_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/mul-comp.md) | 452 | `result-track:2f2d89b44ca6e72d0f1c18394820581f2d26a36a2691c34816cf11d2dc8b471e` |
| 58 | `theorem` | [comp_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/comp-mul.md) | 457 | `result-track:090f02f7a9f5761ccb947c7bc7e38f8798288ba0d6b42a66828274434d493753` |
| 59 | `theorem` | [toMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/tomonoidhom-eq-coe.md) | 468 | `result-track:2b0b20546cbfc28ba20993a71b9f1ac9e07d82185474d99338641e37de4f5ce6` |
| 60 | `theorem` | [toOrderHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/toorderhom-eq-coe.md) | 472 | `result-track:b97488030c2a6c07ebc643c7d42d7d452521a95cccd12db97d3730ad02ce2f26` |
| 61 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/mk-source-edition-2.md) | 485 | `declaration-track:410bf9e107cbbdddced6fc8c5566c6a11e120ebfb12bdcdbae3f12e0b8cbeea9` |
| 62 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-3.md) | 500 | `declaration-track:39a4d17fc538d1be2a8e7bb24dabccbf0cfcb6253e36cbe553b4c42f8db20bdc` |
| 63 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-9.md) | 511 | `declaration-track:da2662a6085b738edce184193e8c3ee1e6f294d202213947653324f51308c785` |
| 64 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-11.md) | 515 | `declaration-track:faf0ac46134e01a5a636b571e43df58ccc5e5b881444087a5b1ec65292baa668` |
| 65 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/ext-source-edition-2.md) | 520 | `result-track:f62efe42e681e45cc294c739e298fe27417c13d9e1b2bd74e0650d7d33c7fe05` |
| 66 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/tofun-eq-coe-source-edition-2.md) | 524 | `result-track:d614fe4f98ffb3546d48b8fb07d1b22139d57d4ab738a790aae990b5dc7033c7` |
| 67 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-mk.md) | 528 | `result-track:1d8213890405ece95b7f8de72723da419316009c02aa27aa8a2213c3ae9793d4` |
| 68 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/mk-coe.md) | 532 | `result-track:53bc003b122d266427cbaf5ee7437f17929b2f7fe5e8626c601a0859484ea1f6` |
| 69 | `def` | [toOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/toorderiso.md) | 537 | `declaration-track:c19874fddd16190fdf9ac3f81e0ddbb30bf5c497744c91cc0ed15a96ce38c6bb` |
| 70 | `theorem` | [coe_mulEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-mulequiv.md) | 542 | `result-track:2f81a503e492b3823114d781c89227ade505c9db761a298ca4c63c8ab81823be` |
| 71 | `theorem` | [coe_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-orderiso.md) | 546 | `result-track:c3acab1d956c9acca2e6c70453ddff3a51ffabd16c10c97e253571b59453ab73` |
| 72 | `theorem` | [toMulEquiv_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/tomulequiv-injective.md) | 550 | `result-track:b3e24e7b01a91cdf1fb69020fd6553876d92437f984e832876782ef23088b71d` |
| 73 | `theorem` | [toOrderIso_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/toorderiso-injective.md) | 554 | `result-track:740231baec7936be0fc4c4d4cbc422a3eae190936284d461dc57b3474924557e` |
| 74 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/refl.md) | 561 | `declaration-track:9c10ca32d9b85b47faba9a3964f825a95b7a2d5be0b84347a088c4750f429265` |
| 75 | `theorem` | [coe_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-refl.md) | 565 | `result-track:b9e85e29489bfdfc172e6eb5160943cf9c7b47a2ec7296d830db4c58714ce206` |
| 76 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/instance-source-edition-6.md) | 569 | `declaration-track:92a5711a5527000c0ee9cb6b1a8f63a4f98f2be49da46e1d437bf2853f664c47` |
| 77 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/trans.md) | 576 | `declaration-track:05ed8f8139e916701efe2096e99ccc1b024e7fd6a3494dd748228f0890f8d68e` |
| 78 | `theorem` | [coe_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-trans.md) | 580 | `result-track:b655168c473be24b7ffd7ae07749e945d5f7ea98a70339b12fe00c20a1a63c81` |
| 79 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/trans-apply.md) | 584 | `result-track:0e4c174a5d84a7c74a2f0b8a8fa724e29836e3301d4d16868440588d1ad76fc0` |
| 80 | `theorem` | [coe_trans_mulEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-trans-mulequiv.md) | 588 | `result-track:795f344a9b6997f0aa45b6eebda0fbedd13106b14da653326744f44d4a0d7747` |
| 81 | `theorem` | [coe_trans_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-trans-orderiso.md) | 593 | `result-track:d4809279eaf89ecedc19ac66a43964769742932c586f3dceca7ada52dc287386` |
| 82 | `theorem` | [trans_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/trans-assoc.md) | 598 | `result-track:671bf0ff4fe815f81eaca7f51ef8b6615e3dfce40cfe40eb12ddb1c4abf12ce4` |
| 83 | `theorem` | [trans_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/trans-refl.md) | 603 | `result-track:9f7a1b043d4e10a8ccb12489195f6f27a79a70d16521d15427b41f613844c0c7` |
| 84 | `theorem` | [refl_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/refl-trans.md) | 607 | `result-track:fcf37d7bc6e1e8d8d1c3a3e302ea197526c6b35f4a18f22017ae3eb402a3fd0a` |
| 85 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/cancel-right.md) | 611 | `result-track:30ae6bb05f3b2c2e78bff71d64b6a2fd46b47220c7f3e6c5283763f642f77fbe` |
| 86 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/cancel-left.md) | 616 | `result-track:02a65d765eaf308e57864f6a489bd8c1a77a46fee2e590d7b50631ffab9312b0` |
| 87 | `theorem` | [toMulEquiv_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/tomulequiv-eq-coe.md) | 621 | `result-track:debb59bf1d7abd1cdab5d12a1769482626a470dbe809ef610ef1175ea475c8a1` |
| 88 | `theorem` | [toOrderIso_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/toorderiso-eq-coe.md) | 625 | `result-track:ed4ce812c551cd04946772acbc05bd03a48958dbfbfc63a215411be34584faae` |
| 89 | `def` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/symm.md) | 630 | `declaration-track:e38d3f65638742ca595fdf742af3acb0853244a09f08c5c6d14dd14a6cff564f` |
| 90 | `def` | [Simps.apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/simps-apply.md) | 635 | `declaration-track:ee658678e4db296dc3c224cb9c92ed589812b2c65e9bfc14fe656ffc7d3c67bc` |
| 91 | `def` | [Simps.symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/simps-symm-apply.md) | 640 | `declaration-track:ff03c7a21ea52c750667f991d23487be8afeb5920937478727954f8ea7ea5597` |
| 92 | `theorem` | [invFun_eq_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/invfun-eq-symm.md) | 647 | `result-track:fd5ba66d9424f1562966c7094b854fc2b609de65f174ed1f1cd70f666689d884` |
| 93 | `theorem` | [coe_toEquiv_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/coe-toequiv-symm.md) | 651 | `result-track:b0edfc95ffd63ac0987ef9c923da3f1bbe94e237d94e4f964d9edf447be81ae2` |
| 94 | `theorem` | [equivLike_inv_eq_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/equivlike-inv-eq-symm.md) | 654 | `result-track:c4e09a493d97e311bfb4c30fb00d03a21ae3f634bfde081b9c35038c0a06f0b0` |
| 95 | `theorem` | [toEquiv_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/toequiv-symm.md) | 657 | `result-track:06703c30b386634fbe79f1d0bb66baddbf08cae2ec2829248146868fe4faa5cd` |
| 96 | `theorem` | [symm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/symm-symm.md) | 660 | `result-track:c9325316ee4cba86fd2ce5868760906cee286f857df5e6c69ea33a8f7204cdd4` |
| 97 | `theorem` | [symm_bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/symm-bijective.md) | 663 | `result-track:7084f6176dd26a129a6721a787059b62dda28b11b1d9777173c7f154f02084af` |
| 98 | `theorem` | [refl_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/refl-symm.md) | 667 | `result-track:1628668a54bb59b99480dd4a03f042ee6cb2a2a08631a18ae539998b1ef606df` |
| 99 | `theorem` | [apply_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/apply-symm-apply.md) | 672 | `result-track:1cd5db29cae30bdff238f998eb96af3cb3f8fed8903e5d694f5bd6a62cd1811d` |
| 100 | `theorem` | [symm_apply_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/symm-apply-apply.md) | 678 | `result-track:3491157c2b0373fa6f9db4e56ce1d7b62c2526a5544090356448bebf559a5a6c` |
| 101 | `theorem` | [symm_comp_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/symm-comp-self.md) | 682 | `result-track:47911452d0ed793b30d82c932146a2bda19cd40238ec8262609023515a298c22` |
| 102 | `theorem` | [self_comp_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/self-comp-symm.md) | 686 | `result-track:466b4ce3656c2e4ab1e1bdbb392ceb52ee9b58d118b18c2571e8b132dadb9c68` |
| 103 | `theorem` | [symm_apply_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/symm-apply-eq.md) | 690 | `result-track:8be21c1e9e9a893a622b294bc134058692d90a9606382913b299d19325195245` |
| 104 | `theorem` | [eq_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/eq-symm-apply.md) | 694 | `result-track:99ed5404951a9262c71666977f284fda76765eb16e84ebc181fa48d0e93a4b38` |
| 105 | `theorem` | [apply_eq_iff_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/apply-eq-iff-symm-apply.md) | 698 | `result-track:4f1a2fa5a3a64c6cf4d1912b1016869a473627c11f1a9d57b32f47779910631b` |
| 106 | `theorem` | [eq_comp_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/eq-comp-symm.md) | 702 | `result-track:563c31d82447f9677c0f099d0815e6b2feb1d16dd09015ece5ee91bfd37b5fb0` |
| 107 | `theorem` | [comp_symm_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/comp-symm-eq.md) | 707 | `result-track:95d5e1da293bd07541ea3c7269e48c1316ffba710ea1d4b513c15ded9c900554` |
| 108 | `theorem` | [eq_symm_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/eq-symm-comp.md) | 712 | `result-track:d5eb8b4d4a02257510313553d1e8959414aac5515d441b4fe1fd3710fa7c30af` |
| 109 | `theorem` | [symm_comp_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/symm-comp-eq.md) | 717 | `result-track:4e2ac2e5730a0d69379e2c733266df5d7e831ae0c928737bb404c6a32b588a05` |
| 110 | `lemma` | [lt_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/lt-symm-apply.md) | 722 | `result-track:9e51dd3348e7bca40b0cf8010fcfc3cb919f02edbd5abc77ab972f5b8ae86248` |
| 111 | `lemma` | [symm_apply_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/symm-apply-lt.md) | 726 | `result-track:c6e4a639f66a5e0e82603c26b90302205caf8cf3002cc5a6cee4aea3c5e51808` |
| 112 | `lemma` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/strictmono.md) | 732 | `result-track:bec5c9190296cbc5632e30ebe549f4e76f94d453ba9b0b1f94d40e486d7e59d0` |
| 113 | `lemma` | [strictMono_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/strictmono-symm.md) | 736 | `result-track:e4e90d46dc76c0b05af1f76082e0d070cc42bec9481e62c7272a6970d527474f` |
| 114 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomMonoidPublic.lean/declarations/mk.md) | 752 | `declaration-track:22331fa8654983bbfe414e494ca9c5dfff09548ec0f879a75f0917510f7e29a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adfe66ffe861d2be33b51586f5498f8a3f8ac648fbf902c02214a9e5e7f75717 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Monoid/Variant4ccfbc83c894fee7183e88216a6e488826df3ada77dedbf88a09d113ff9f5c51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

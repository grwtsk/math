# Verification target: Lie Derivation Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bd5fc0e7f902f82a8b8372d0b6f118982694a1b",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bd5fc0e7f902f82a8b8372d0b6f118982694a1b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean.json)

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
| 1 | `structure` | [LieDerivation](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/liederivation.md) | 53 | `declaration-track:bb419d0c443f0aeeb5043375de4df1b32949a4128172e5bfc44ec590fc2ffc2b` |
| 2 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:8ebebdda992547b42bd907a057ab4fd0e6ff0406c08c5cbb8012d269c8bb900b` |
| 3 | `instance` | [instLinearMapClass](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instlinearmapclass.md) | 75 | `declaration-track:8c50a701904b9b9e515659a7cbc8f66e301c415be5809e5d746cfeb2c5946b6a` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 79 | `result-track:721b54400f3839726db040c7a3279caabdaabbc4569100f03899a7dee0955c76` |
| 5 | `def` | [Simps.apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/simps-apply.md) | 82 | `declaration-track:12e8602cb5f02553a6bed9c4785f10c7606f13e67a2945ad4030072a20daf7ee` |
| 6 | `instance` | [instCoeToLinearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instcoetolinearmap.md) | 88 | `declaration-track:73669be481696557cf24b14b625c8eeb60692d29db3274bf218028626c01d355` |
| 7 | `theorem` | [mk_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/mk-coe.md) | 92 | `result-track:20f3f8b0ab0e868c67881a29e68321f30b8817dcf7963c8b03bdd3b82403b640` |
| 8 | `theorem` | [coeFn_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coefn-coe.md) | 96 | `result-track:06c1fa4d1d1b74ad5b4f2d9ba63b54b8ecb4d744ce0f76a7affa96c04b678f0a` |
| 9 | `theorem` | [coe_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-injective.md) | 99 | `result-track:31f86b457c5c959ceac415fc91855c4492618ae8cdabf5ae86d4ba8fa0de883b` |
| 10 | `theorem` | [ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/ext.md) | 103 | `result-track:0bfc2b14f599233453ae6ab4de27c01af4d21c01d31030ae8f640b7304bbc460` |
| 11 | `theorem` | [congr_fun](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/congr-fun.md) | 106 | `result-track:42763c43e36e8223d2f5e1384aab3c9eafa9d98729e89a5c33385e5d11358b4f` |
| 12 | `lemma` | [apply_lie_eq_sub](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/apply-lie-eq-sub.md) | 110 | `result-track:966d220580ac8e748f3f9ac05dfa6e2ab78581b41c2b68682fd059c983670720` |
| 13 | `lemma` | [apply_lie_eq_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/apply-lie-eq-add.md) | 115 | `result-track:e4f00130cd7939ff423392dc0fd3c781624bd5f5c7e3d2ca893ae3508a74ad32` |
| 14 | `theorem` | [eqOn_lieSpan](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/eqon-liespan.md) | 120 | `result-track:7664c1bcebdfc583e1050340c0bd1e219e8480477b3b568ecea02b3ee23300eb` |
| 15 | `theorem` | [ext_of_lieSpan_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/ext-of-liespan-eq-top.md) | 132 | `result-track:a90dd35bf7b4e088363afec9a5f27ab9d669cfe1a20fc0c9b21558d05f668170` |
| 16 | `theorem` | [iterate_apply_lie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/iterate-apply-lie-source-edition-2.md) | 141 | `result-track:aec0c4689651bf707af1f54de7cd47ec450f99a346e748059b20d3d3d2644f30` |
| 17 | `theorem` | [iterate_apply_lie'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/iterate-apply-lie.md) | 153 | `result-track:645801141fc14335c0d6f1a64b3556ace8f490272aa50cd5166f5d045ed1b8c8` |
| 18 | `instance` | [instZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instzero.md) | 160 | `declaration-track:754c28e9e175b82ba3c04830d62d83333bb88929d9b8767bad5c111a8dd40869` |
| 19 | `theorem` | [coe_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-zero.md) | 166 | `result-track:a58d8ea5f4b42f2cef0b52f690863e53c85dce16b7efbf20006a3aed04bd13a2` |
| 20 | `theorem` | [coe_zero_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-zero-linearmap.md) | 170 | `result-track:acd169412802fb6361706cb021d3849465a810933060661d93a0bb2b8e64ce06` |
| 21 | `theorem` | [zero_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/zero-apply.md) | 173 | `result-track:9a9423c04a59cc3788fa82e140343906e04b0c0536292eac10c9e0bbc02f86be` |
| 22 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 176 | `declaration-track:cbc3d55cf3290934a5f513f918374dd8056b61cea8c744f337a66ec57093c0b2` |
| 23 | `instance` | [instAdd](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instadd.md) | 179 | `declaration-track:0fa7f283f4f1c02a82fa5fe838d6060d95b03242be55a1f3e3d6e0925e723a30` |
| 24 | `theorem` | [coe_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-add.md) | 186 | `result-track:dc862f8883fb6ec7555672afb7d3189a60464d6e002751fdafbc94725fb195b6` |
| 25 | `theorem` | [coe_add_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-add-linearmap.md) | 190 | `result-track:f036cc9c2853936f299f390ae22d3edb9e63f7b7ab20f86fa1de75961d1f5c3a` |
| 26 | `theorem` | [add_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/add-apply.md) | 193 | `result-track:2a14153bbc7c1f0a1d44c8fe0f64ed05f22c5274c1588f97fa333e1d975ed85f` |
| 27 | `theorem` | [map_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/map-neg.md) | 196 | `result-track:7a40a95a0287d756b371de1fbd3e7b6440fb56eb5afe67cda87e9c3b7a163377` |
| 28 | `theorem` | [map_sub](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/map-sub.md) | 199 | `result-track:bffce3c9f98b1a9fa35a0c431044a4e92dfb7c9996678d9f904253903d31bb3a` |
| 29 | `instance` | [instNeg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instneg.md) | 202 | `declaration-track:8325546ec3a2c5b0a72e8a3142353784e5fd463c7f7a9d6447bc6afc2c1c8be7` |
| 30 | `theorem` | [coe_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-neg.md) | 209 | `result-track:3d3fce02de783ac0a832f6192be9de40d278f5ae6836affda3bf57441c9f96ba` |
| 31 | `theorem` | [coe_neg_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-neg-linearmap.md) | 213 | `result-track:45b2bd6aa3c76a1099ee07f6fc18a1c956a8c34a0c188e618488901bfcfcfe14` |
| 32 | `theorem` | [neg_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/neg-apply.md) | 216 | `result-track:4844692ba122d6f171445880a5d8e8eb04c127ca26691df1e017d5a8e295641f` |
| 33 | `instance` | [instSub](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instsub.md) | 219 | `declaration-track:39551c309d4593a1b14f10e78ca62d4e0505b15a25fe5f4f251733bb3634e6d1` |
| 34 | `theorem` | [coe_sub](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-sub.md) | 225 | `result-track:f2b79f1b39f5ff1bda2eba9ae142f8f757dd2b5f7675b607c69ef43061c9d901` |
| 35 | `theorem` | [coe_sub_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-sub-linearmap.md) | 229 | `result-track:aefb1612082c59df4939db0f0223fe540f0a67e96b2ec8ea3b652b5955f8793e` |
| 36 | `theorem` | [sub_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/sub-apply.md) | 232 | `result-track:6d5e7f8e90288cc63bee28ff1a24ec13b8a7cac8af64c7122f4a0424f6a231c7` |
| 37 | `class` | [SMulBracketCommClass](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/smulbracketcommclass.md) | 238 | `declaration-track:5e55966317d3a1aef88b8d79e82410acf830f284d9f1cd0afaf6a4abf6355eeb` |
| 38 | `instance` | [instSMul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instsmul.md) | 247 | `declaration-track:f24c519f899af62d7b27b71dae9edddb9250a6c595773975db2795ebade0ac77` |
| 39 | `theorem` | [coe_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-smul.md) | 254 | `result-track:ed384033681cf3b26b48e2e55ed1866fc7f3ba3b976e3e9955295e287c2aea96` |
| 40 | `theorem` | [coe_smul_linearMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coe-smul-linearmap.md) | 258 | `result-track:af3fd060408f7c424f09432c43bfcd8140c7f6e4e16e28347f888c206a04b7a7` |
| 41 | `theorem` | [smul_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/smul-apply.md) | 261 | `result-track:512be2aa4989512bf0e5f20e84fae8f7aca1721c51ff8dec2922804f5be1cb27` |
| 42 | `instance` | [instSMulBase](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instsmulbase.md) | 264 | `declaration-track:306871f7544205692dfe65a3b95ccf1728c324001d0da6233eb589bf7e11e280` |
| 43 | `instance` | [instSMulNat](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instsmulnat.md) | 266 | `declaration-track:db94bd9a2d0ed10994b375de369a8853920cd4ae56786c630f9ea0d3ac4c4816` |
| 44 | `instance` | [instSMulInt](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instsmulint.md) | 268 | `declaration-track:4c82d6f9493ed713cdebe0f6768072c426d8f514cf7139f9dfa4c67b33e53592` |
| 45 | `instance` | [instAddCommGroup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instaddcommgroup.md) | 270 | `declaration-track:7c1eb0dfbb506710b5e31f2281670cb32e86568046f604cdc527c8a5201a6d4d` |
| 46 | `def` | [coeFnAddMonoidHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coefnaddmonoidhom.md) | 274 | `declaration-track:1107efd840e35c078e15fc50a0e24a705612da1040dc0fda0199bf612d0dd599` |
| 47 | `lemma` | [coeFnAddMonoidHom_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/coefnaddmonoidhom-apply.md) | 280 | `result-track:4471d95c03d8f9c0a086b11ba750303787ec6f41769f4abbf8ed9c39110b9aef` |
| 48 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instance.md) | 282 | `declaration-track:8e3ee87091d9f518eaf4d371dbfd4a18118ebba85c199f96199d5b2802a6bba9` |
| 49 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 285 | `declaration-track:f21790bfe38888e199354a63a760cabcf51ecdd75f0a6721cbfd2018fc201085` |
| 50 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 288 | `declaration-track:ae23040b793cf70535dd97d48d0a1d93323c2ab98bd1f3146af3d837b02c0dd9` |
| 51 | `instance` | [instModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instmodule.md) | 293 | `declaration-track:9e543e6a5eb0a9dd2d932fa9eac776e985c837b5a5e1c8c0cb886afcb72dfe40` |
| 52 | `instance` | [instBracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instbracket.md) | 304 | `declaration-track:9c86c4baec9bfc43414579edaf4305d3632945e597d5c2d00b26875fc6ee19f2` |
| 53 | `lemma` | [commutator_coe_linear_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/commutator-coe-linear-map.md) | 313 | `result-track:e69a02dbdab6d32c1c5388ccfc86aedf4e0cba6b5bfe7406f52cd9e235755cae` |
| 54 | `lemma` | [commutator_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/commutator-apply.md) | 316 | `result-track:5edf32e9f874a05f5b29c1452461e3a59b11b15566de4f18c4d1951554d144de` |
| 55 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 319 | `declaration-track:d5d5599dbc86a3602ab827bd48467a8685f48d5f9dfc3c39617d9457ff02a8ad` |
| 56 | `instance` | [instLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instliealgebra.md) | 330 | `declaration-track:7add210e13dd517905be36546c76a968d742fb09329c08d94c2ee7da8d1c5202` |
| 57 | `lemma` | [lie_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/lie-apply.md) | 333 | `result-track:780d0b15078771bd2c7fd87bad6074344810e13404b8020a8cb0d1b25cddf218` |
| 58 | `def` | [toLinearMapLieHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/tolinearmapliehom.md) | 346 | `declaration-track:0f208343f938eba4deb0a39968e9f3c31d7ef3c27955f2e517abe1d9adcf82ac` |
| 59 | `lemma` | [toLinearMapLieHom_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/tolinearmapliehom-injective.md) | 353 | `result-track:cd2d2e24a3529952045088bba9988010ce34eb1ab7679714b054f55c0d433434` |
| 60 | `instance` | [instNoetherian](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instnoetherian.md) | 357 | `declaration-track:a54ea7bdc3b0175c57bbf7d8f3381b49e8ad6d57e6efff6fb66cf7628fb938a0` |
| 61 | `def` | [inner](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/inner.md) | 369 | `declaration-track:69d45daa42ccda5f0f91eea01720742fc978a9399b26c07fc5d9375aec2476aa` |
| 62 | `instance` | [instLieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instlieringmodule.md) | 376 | `declaration-track:f7c9b31fc7f193b53efc4ca6ee9b08f3f6b7dab9f1ee99c64de4e2f1ed45a8da` |
| 63 | `lemma` | [lie_lieDerivation_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/lie-liederivation-apply.md) | 382 | `result-track:5e747396c618aadd0710e635aac66148bc1db54d61156b0e8a79342a779ff412` |
| 64 | `lemma` | [lie_coe_lieDerivation_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/lie-coe-liederivation-apply.md) | 386 | `result-track:037711326c9453105cc7e03dfbf3891c2dcac2b483616d5f9d237d9e4b8c7b2a` |
| 65 | `instance` | [instLieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/instliemodule.md) | 390 | `declaration-track:02672763dd5c842d2edcd8c8ae80e5e7a1ab0ce1d017e850ab7a2dd357dfeade` |
| 66 | `lemma` | [leibniz_lie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/leibniz-lie.md) | 394 | `result-track:f369664feb220581f513323217f8367b4f85d6e6f5b416005f4bd1760df36b40` |
| 67 | `def` | [exp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/exp.md) | 408 | `declaration-track:e0b18c3fc8e17b3b9a2272f2fab3c7b7fff71b60ccd4b5829b0ad0c594971ebb` |
| 68 | `lemma` | [exp_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/exp-apply.md) | 424 | `result-track:2ca40b3118e050b5beb232168fec70b88c4ba5c99c9a17097d693562c2054cc8` |
| 69 | `lemma` | [exp_map_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieDerivationBasicNamespacedPublic.lean/declarations/exp-map-apply.md) | 428 | `result-track:761390bf9cb86eacba2f6dde971bb1b9744790134f75f21ba46c961d5cace5d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2d117b3b53019947f8816f9961f8bd7c105050c151997f25768bc4c1e82918c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant8fc83e721752fa5fb005310c011bc4ae2751ef4e85613864ab217194bedcc423.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

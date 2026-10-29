# Verification target: Centroid Hom Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0ee8bf066528375e4dc31bc5303bff57aa5c3b3",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CentroidHom/Variante0dbb40748bff26eb37e2218cd4b4c51df001c8b570d5aa3dfd0bcc9c13f2a35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0ee8bf066528375e4dc31bc5303bff57aa5c3b3`.

Source path: `GRWTSK/Algebra/CentroidHom/Variante0dbb40748bff26eb37e2218cd4b4c51df001c8b570d5aa3dfd0bcc9c13f2a35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CentroidHom/Variante0dbb40748bff26eb37e2218cd4b4c51df001c8b570d5aa3dfd0bcc9c13f2a35.lean.json)

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
| 1 | `structure` | [CentroidHom](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/centroidhom.md) | 65 | `declaration-track:5b681151d1f4d111d18fa62cca1b7cce909b9d67a46b2993dd29635c3e1dec50` |
| 2 | `class` | [CentroidHomClass](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/centroidhomclass.md) | 76 | `declaration-track:d5a114b6df567dcd6dab651323b75223ff02ca57319604db284f01492673aeb1` |
| 3 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-23.md) | 86 | `declaration-track:f0c361c32f57eae31c7c0570f973ba8db8938ebeff63f221ad195b2ff0d2df3e` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 103 | `declaration-track:dc7c4e5ea6f8fc603fe387a912bb09062a33a3c69f99c4865bd7e85b5f79ba24` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 111 | `declaration-track:c04a0cfff8658ecc54f14917d98ec9aba021cfc2a9bc80ab24c6e3980b907e0a` |
| 6 | `theorem` | [toFun_eq_coe](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 117 | `result-track:bc79f90fac9979ad0e738a3e267b991af7c15e724b746e99227e30fecbdc33f6` |
| 7 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/ext.md) | 120 | `result-track:78b2e5555046089ce91b6f3b1871f9f1ff4299c4936baf9b4d3f5d344e202f93` |
| 8 | `theorem` | [coe_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-toaddmonoidhom.md) | 124 | `result-track:0b2fb5618ce9a07929132f846fde48ba8f8a770fee7d45d81c22c86a3b108075` |
| 9 | `theorem` | [toAddMonoidHom_eq_coe](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toaddmonoidhom-eq-coe.md) | 128 | `result-track:049760c3e478926a78ce5e1364f39a50683aa8f85d0768ad4fa24f260e3f9dd0` |
| 10 | `theorem` | [coe_toAddMonoidHom_injective](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-toaddmonoidhom-injective.md) | 131 | `result-track:102d8a50788af5be231198218656eab15f3516c2ad9fb3baf85fc02e53db653b` |
| 11 | `def` | [toEnd](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend.md) | 137 | `declaration-track:b3257ec6d2f584f62d7e6739e92a0c280e10a0ed055de5e7d1d5d2b236d36e80` |
| 12 | `theorem` | [toEnd_injective](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-injective.md) | 140 | `result-track:b7cbb9f66850c60306942de53aea9ef664febae593af6fc4afb6536aa03d37a5` |
| 13 | `def` | [copy](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/copy.md) | 145 | `declaration-track:6acd266d93c4691e585c1ca81054928a76c41603e37c424ef9afbcb578ec2e24` |
| 14 | `theorem` | [coe_copy](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-copy.md) | 152 | `result-track:7c84711dbf8eaa0a673ace8f7489449e842171ef100395d50da4e021bf8d9747` |
| 15 | `theorem` | [copy_eq](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/copy-eq.md) | 155 | `result-track:f01af9ced54f2bbb0f97e2ac391f5bf7350332b02b2e02b489ae4291a7ff83c6` |
| 16 | `def` | [id](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/id.md) | 161 | `declaration-track:2c609c87975a5210a4bb2098983776f57f8e68644575e025a528331aeac5107c` |
| 17 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 166 | `declaration-track:bdf12475535f284dde44832804d691d8b39e821d459ff075bb4f3f2090a96120` |
| 18 | `theorem` | [coe_id](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-id.md) | 170 | `result-track:cc4ac4de5453ed6de9930e9580afdf2392f7b2e0e6208f3a9050faa78d6156c1` |
| 19 | `theorem` | [toAddMonoidHom_id](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toaddmonoidhom-id.md) | 174 | `result-track:50613b9f65622782cf5c0de3de1c8bfa2428acbe0e2ae60b51752a4479c0a6da` |
| 20 | `theorem` | [id_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/id-apply.md) | 180 | `result-track:5774f11469c2c1b56546eba6ac1b92e71b2f1cdda5845276c7d6bd3b0cc8b5db` |
| 21 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/comp.md) | 184 | `declaration-track:d43bf01ca78d80c838216d02e465a298b7bb0145abecd9b80e2d843ba73edefe` |
| 22 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-comp.md) | 191 | `result-track:a3203c6958453fb5339fd3e9ac760e0cf96d54086436a151ebae57099f2dbdee` |
| 23 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/comp-apply.md) | 195 | `result-track:658dc8cde259deb08cb3a408a2b8b4cfa4e6b7e2d2169c18bfeec9b01d07e398` |
| 24 | `theorem` | [coe_comp_addMonoidHom](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-comp-addmonoidhom.md) | 199 | `result-track:8d012da059b3c31a4fc93ebcda256d7c2113a8fae7c5da76ca15b9b059a26d0b` |
| 25 | `theorem` | [comp_assoc](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/comp-assoc.md) | 203 | `result-track:f1b3203d244ccd072621b907f7ef3aa8236fd7253daf7415f9f0624434871dfa` |
| 26 | `theorem` | [comp_id](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/comp-id.md) | 207 | `result-track:559a24dcde7f4c7d470def626d808f27212a31c945dca134dd13495badb25251` |
| 27 | `theorem` | [id_comp](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/id-comp.md) | 211 | `result-track:a4640a41c7abef187c7cbcf1da9150437c54575c4370142ff7200217d9f8c8e7` |
| 28 | `theorem` | [cancel_right](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/cancel-right.md) | 215 | `result-track:93a806d9a0ccea49ff70e5077e75044db96c368b2cfe1ee43a47b8c6e728c83a` |
| 29 | `theorem` | [cancel_left](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/cancel-left.md) | 220 | `result-track:c6fb87ed150fc1f0c552777348d59065084bea802c23317fa2299bd68a18c24b` |
| 30 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 224 | `declaration-track:56c9a1b5bcfbb2ab7f1ad030017f8d8fc76ce79f487c4dee5a2d598daad568a4` |
| 31 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 229 | `declaration-track:510e7206ae5940291a9fe4bc225b918d06ddc51a0f42456faffda41b8fd380cd` |
| 32 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 232 | `declaration-track:e691af57f2903777066472ab19d530858a2b2a40875f5e050bc38fdbaaf61be5` |
| 33 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 240 | `declaration-track:274164135435061414d0fdd9f8ebf8da779cf3e0dfbf0f6d4340e087b1f16eb8` |
| 34 | `instance` | [instSMul](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instsmul.md) | 248 | `declaration-track:d6295df2b56f3c6235beb622f932f8abdc1e6a4fa81a22a8a4ae885f2d73ba83` |
| 35 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 258 | `declaration-track:556c7d6427d876a162f4ac43690b53d7ce2e0f26acaa338296161a91b438135b` |
| 36 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 261 | `declaration-track:af2ccee9524a66cc000db28447cee400395c83e32ff2417ae47998cf0d7c55db` |
| 37 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 264 | `declaration-track:c90b6de5b84d63f829470b93e348ddb1df53817c76235b6eb307ac51f3c0a9c8` |
| 38 | `instance` | [isScalarTowerRight](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/isscalartowerright.md) | 267 | `declaration-track:4b4ca0d4ce4d49146847c27c8f310f27b16d6a7b6d29362622b194bd037265c0` |
| 39 | `instance` | [hasNPowNat](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/hasnpownat.md) | 270 | `declaration-track:306343a4adf83c23b1cc86480d87342cc4b54df6b58b623b7064c4527bb817f1` |
| 40 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-zero.md) | 287 | `result-track:18ea2da7525da01b21875e07b923db15e77e5bb342aa9eedd0bd27e1a06deb64` |
| 41 | `theorem` | [coe_one](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-one.md) | 291 | `result-track:372a228392fe9f1ee95e8e16eeb80b2c5f6457e94fa211a0736cdfab654a27f6` |
| 42 | `theorem` | [coe_add](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-add.md) | 295 | `result-track:2295d5c249f9ef960d361b0d9f28e614d5ce56a4bcfd984cc0ce08d0c0441603` |
| 43 | `theorem` | [coe_mul](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-mul.md) | 299 | `result-track:4c029a648e524a5bead99ccdff95ec37b426de6de5c26f93e160f3400d6ecf4a` |
| 44 | `theorem` | [coe_smul](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-smul.md) | 303 | `result-track:1e3da08cb0ccf1f8e9bf57411f4f015aedd70f15308263d9ca41cbbf49cfb6f0` |
| 45 | `theorem` | [zero_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/zero-apply.md) | 307 | `result-track:a1fb6afcca1666926518e31d019ea209355dc626f41a15d0834a5d42bae4897c` |
| 46 | `theorem` | [one_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/one-apply.md) | 311 | `result-track:43c25b7ee1a3a8d822d8b8d2f630424935f6a707af5cb355e659c7ceea47a31d` |
| 47 | `theorem` | [add_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/add-apply.md) | 315 | `result-track:ce82c1e60cda5b621200d92d1d17aa034c5fde2e85ed73d200de4441d6516585` |
| 48 | `theorem` | [mul_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/mul-apply.md) | 319 | `result-track:d9a4763cc5234f50b3b08016c6a6c662fceedde23139f1fd25cb2fe9e0413eea` |
| 49 | `theorem` | [smul_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/smul-apply.md) | 323 | `result-track:66dde186955e9dece97598634423bead9cee5c96d664bed804f1926f5600ff82` |
| 50 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/example-source-edition-2.md) | 326 | `declaration-track:4d339f923da754846de3b65cd87ce53d18c33ec877e70ee67ad9709b71e8fbd9` |
| 51 | `theorem` | [toEnd_zero](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-zero.md) | 329 | `result-track:b9045b22e83cf0918dd7e026bfd6d87964c318885aae50cd3fd18a5b1d4e8d0b` |
| 52 | `theorem` | [toEnd_add](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-add.md) | 333 | `result-track:bb9efa2e26141de71ca204da5bbdbcd70d549d5201aa4854d11017fb457e9d07` |
| 53 | `theorem` | [toEnd_smul](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-smul.md) | 336 | `result-track:6e8389f673b60d15fc77f21359983f4e7242b691c5505386aa893907e0f4ba5b` |
| 54 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 339 | `declaration-track:6d2808763bc9f1d84d9b4c6bb6f7c0ce9cfa45d8d3975a3043a9d4331855b9f0` |
| 55 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 342 | `declaration-track:253f1dd34a9783147232d5e6b5b04b93b90bcb332c1c570c2ff432d7a4bc1c09` |
| 56 | `theorem` | [coe_natCast](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-natcast.md) | 345 | `result-track:07dfc3a55e10e260361ae375bfc48d9295888476e011d0141717d9266e6aaadc` |
| 57 | `theorem` | [natCast_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/natcast-apply.md) | 348 | `result-track:a14625324ef9dc205ccc8093808c1c4c780e764ebc6c88c7800e8bd94ad491a7` |
| 58 | `theorem` | [toEnd_one](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-one.md) | 352 | `result-track:3cf3b605bc70f11481fd892c338b492c4ce6dedf6b40516627be4a1088f842dc` |
| 59 | `theorem` | [toEnd_mul](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-mul.md) | 356 | `result-track:748f8c8c29c1b6a16818499623ab7fd4ace42ddd2173bb2526dfd86bb709fa0a` |
| 60 | `theorem` | [toEnd_pow](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-pow.md) | 360 | `result-track:1ba566ad34c4e5f2520a00b61151a9160dfc3d61b9716b9236815352e29cee9d` |
| 61 | `theorem` | [toEnd_natCast](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-natcast.md) | 364 | `result-track:d3a6f2972e4025fec4d234ceef3daad74146c750e9ec5c11550c60ad032effa8` |
| 62 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 368 | `declaration-track:9022003add20e27f28825bdd37e4a537da62ed1d4e7ec13b792350d936977c17` |
| 63 | `def` | [toEndRingHom](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toendringhom.md) | 375 | `declaration-track:a2e80509d7ea35e3936b227ed6a08a4392f158d45054c191b8d4ca01acb7d883` |
| 64 | `theorem` | [comp_mul_comm](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/comp-mul-comm.md) | 382 | `result-track:fa798ce8fa72ab6e6a2767cfc57429c0bfa5cc2eee76fa5ecd1aa65709509aa4` |
| 65 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 386 | `declaration-track:c086b01b435c992a11d3f2373ad7af6b7a3b3a795601b0eb8deec36680b3cd20` |
| 66 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 389 | `declaration-track:718fd691918e3b8efd42ad5e73bdabc21a284f1afe790d2aa6a8f83925be6df5` |
| 67 | `instance` | [applyModule](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/applymodule.md) | 400 | `declaration-track:5e29b80e8e37fcedba31bdd6b1cd71212c2b3c5494e96ec39a5bc94a8dcf2955` |
| 68 | `lemma` | [smul_def](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/smul-def.md) | 410 | `result-track:08efe8fb170aeadcecc6e2e07ac552cd11c2e25fb29115242c5f2b0887ce8822` |
| 69 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 412 | `declaration-track:d9d2ceddaccc2c393733b550966008f484395948a0331c25dbdf6502ec61d06d` |
| 70 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance.md) | 415 | `declaration-track:038c83fc362123f62081a7a10fdb951515268ab6a5407fe95d4ef7f4856585c5` |
| 71 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 417 | `declaration-track:c55c82bb932b2f5c08f7f33738245b272d836bd44bb52e858881cc63b21d4eee` |
| 72 | `def` | [Centroid Hom Namespaced Public](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/tocentroidhom.md) | 433 | `declaration-track:4e7206904fd7e7297486579f16e7717160d46969c454eac64959016f33c5e826` |
| 73 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/example.md) | 437 | `declaration-track:153f23d36518440624125240b8260defbc7f0fe5b02a4170e0fdb1c36cd6bd9e` |
| 74 | `lemma` | [centroid_eq_centralizer_mulLeftRight](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/centroid-eq-centralizer-mulleftright.md) | 443 | `result-track:2d13b3973681e7df4329eed7f11f9ee245566747590a1a77d4d733f693d7f315` |
| 75 | `def` | [centerToCentroidCenter](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/centertocentroidcenter.md) | 456 | `declaration-track:31776d82263d57039642e591e7938cd44ca6b19e55d7a965bc3272c3d08fef9d` |
| 76 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-24.md) | 476 | `declaration-track:f9f732fe33019ac93a2f1d1dae24b0ba32973cc70fac2a5c2511310d2558ba2f` |
| 77 | `lemma` | [centerToCentroidCenter_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/centertocentroidcenter-apply.md) | 484 | `result-track:01ce98f60a84088cb3f008223e1ff8140393d3f28c0aec59362a91d1511e0d3b` |
| 78 | `def` | [centerToCentroid](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/centertocentroid.md) | 488 | `declaration-track:284732f653b94b2060d787016974850347739f7ce3aee18cf24cd74b487150e5` |
| 79 | `lemma` | [centerToCentroid_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/centertocentroid-apply.md) | 493 | `result-track:754bd49a6ca00f90f42a37fc5fd9ad1b6721eae9732be7ae44430c83179af66a` |
| 80 | `lemma` | [Centroid Hom Namespaced Public](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/mem-center-iff.md) | 496 | `result-track:ba0a0465ead3998ec33a25ef0dd441215b4667e4ef86db30e47a218a724e4ece` |
| 81 | `lemma` | [Centroid Hom Namespaced Public](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/mem-center-iff-source-line-520-occurrence-2.md) | 520 | `result-track:da0d564f15a04bb0de0dc59534781565b307e142ef09de7f87c43fe10fb3dd41` |
| 82 | `def` | [centerIsoCentroid](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/centerisocentroid.md) | 534 | `declaration-track:d4d2f97e79242ddf142c289f03955bfcc23d4dde700e8c02fb2f79c81c094295` |
| 83 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 550 | `declaration-track:6de630e9709348c2708569efabf0998fb4a4227431d30c7ff43df916b835fdea` |
| 84 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-22.md) | 558 | `declaration-track:eb046573433363ef4d9b62c2f616f9c362788960165c31ac2283f651fcbb1ab1` |
| 85 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 566 | `declaration-track:c13c8eef6ec075117d4879b3b46b85dd5a158a68a9dc6d21cecf7b2793f36aba` |
| 86 | `theorem` | [coe_intCast](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-intcast.md) | 569 | `result-track:1272bba6c352adb936c222773fb2bac0b4194ab9a79177a5349ac7ec11d1399c` |
| 87 | `theorem` | [intCast_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/intcast-apply.md) | 572 | `result-track:e7bc61db95b9e2b49cab45230c60a2bb1ae9b686f5942785a0beb549bdb9227e` |
| 88 | `theorem` | [toEnd_neg](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-neg.md) | 576 | `result-track:a31c876f1034b3bfd2ea1f15f18d1e89e2849e4ad794bff1301d7ef26dec8001` |
| 89 | `theorem` | [toEnd_sub](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-sub.md) | 580 | `result-track:32a3648424970e55ce11262e196f98b47abeac7b28bd104f1c17fae6ddf473fb` |
| 90 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 583 | `declaration-track:1261596f7f0f0ebceb64387ca3e2a51a294f174229ca1177402f79f793363f06` |
| 91 | `theorem` | [coe_neg](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-neg.md) | 588 | `result-track:692d32e41f1ecd2f421ce86bdbca41e6fdae07e224da0d5d3eaacebd4f507724` |
| 92 | `theorem` | [coe_sub](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/coe-sub.md) | 592 | `result-track:455e25aa5965ebdee1ce4629460adfa7125e8ca23a0e74ddfed49cda669e9748` |
| 93 | `theorem` | [neg_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/neg-apply.md) | 596 | `result-track:0a018eb9652c309fceda4ee51ece421cbc0bd720a8a366339d362b5ff1d28e1b` |
| 94 | `theorem` | [sub_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/sub-apply.md) | 600 | `result-track:05f83654d5b374069f057f48ab049b35dc9a8e09b0f5c860edd567b916b45ecf` |
| 95 | `theorem` | [toEnd_intCast](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/toend-intcast.md) | 604 | `result-track:817d43bae7b768c96ab59e5238e15e18540c47932501aeb0e6eef2f62a7df07a` |
| 96 | `instance` | [instRing](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/instring.md) | 607 | `declaration-track:3903394edb991d5bf464540edee02f350c61b8f12b0af3e7f7381fdcc73feefe` |
| 97 | `abbrev` | [commRing](../../../../AssociativeRingsAndAlgebras/CentroidHomNamespacedPublic.lean/declarations/commring.md) | 619 | `declaration-track:cababbc06f5fc9383d60f6de778a5cabfa3a22db3a67aa45a06d69a03303701b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=463b6de06dceb2fe9874bda452a67fda3202d3ed59ca5441ace3e6c8bb14d639 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CentroidHom/Variante0dbb40748bff26eb37e2218cd4b4c51df001c8b570d5aa3dfd0bcc9c13f2a35.lean","GRWTSK/_verification/specifications/Algebra/CentroidHom/Variante0dbb40748bff26eb37e2218cd4b4c51df001c8b570d5aa3dfd0bcc9c13f2a35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

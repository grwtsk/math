# Verification target: Centroid Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80f3ca326a6800ccc7757eeb407bfa6ad46fde4a",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80f3ca326a6800ccc7757eeb407bfa6ad46fde4a`.

Source path: `GRWTSK/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean.json)

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
| 1 | `structure` | [CentroidHom](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/centroidhom.md) | 57 | `declaration-track:50069a6974dd1773d8ed079cb90b13e84459987fda4c1a1239ba454b40f78c19` |
| 2 | `class` | [CentroidHomClass](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/centroidhomclass.md) | 68 | `declaration-track:4cb44ac728640694d44f300e4bbfe42b032ed4fa0f2e6d53d73c03d6d1137bb3` |
| 3 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-4.md) | 78 | `declaration-track:1583a5071ae855a8899d365efc5f31b95d232596bdbec8755c80dabc9c83225e` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance.md) | 95 | `declaration-track:0ff866b0b62ec92f146742afab280cb36cfad71241be2b58ce3bf68d16a4a3f8` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-14.md) | 103 | `declaration-track:7439b283e4531d5a781a08a9541bc56f91aaf0e2e782b3960180575f1eb2a934` |
| 6 | `theorem` | [toFun_eq_coe](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/tofun-eq-coe.md) | 109 | `result-track:53aff480822fd9787becee75523cfce14f8adae2ac9360fb3d00646b1bf55a96` |
| 7 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/ext.md) | 112 | `result-track:a6a93bbf7a4098f3dae44fb552bb5646244b9f3238a69a7d35f81e7ab3993245` |
| 8 | `theorem` | [coe_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-toaddmonoidhom.md) | 116 | `result-track:8325b7ccc507e9e3621502dec0a2ffdb110c663c6ac111e21e10ce0eb3740b9c` |
| 9 | `theorem` | [toAddMonoidHom_eq_coe](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toaddmonoidhom-eq-coe.md) | 120 | `result-track:c73f2052179f74bb86af5f31af2a1d5dcdb88b78933bdf55c635202cc5e72efb` |
| 10 | `theorem` | [coe_toAddMonoidHom_injective](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-toaddmonoidhom-injective.md) | 123 | `result-track:f15b12407f87e14f5fff069df106793885a001c73bf9a39a5e2c6407bf164987` |
| 11 | `def` | [toEnd](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend.md) | 129 | `declaration-track:2b2ee736ed7f149e15bcaf2e4ed3835ea1e0370670a3b59ffb2a86762a5fdafa` |
| 12 | `theorem` | [toEnd_injective](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-injective.md) | 132 | `result-track:c297e78835256fc3d618a5ba565ca5fee83bb062da778be090b614297c8451cb` |
| 13 | `def` | [copy](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/copy.md) | 137 | `declaration-track:1e450611e211aeed1cf8792a7559206b46d774df29907a67dc85ce1c810fcce0` |
| 14 | `theorem` | [coe_copy](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-copy.md) | 144 | `result-track:ffcee0011c8642d4fcd0ffba5b2199995410987873851d3c577df18d6be86d4b` |
| 15 | `theorem` | [copy_eq](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/copy-eq.md) | 147 | `result-track:9a4c3fa12a2d7ee2d1c3f7cd58ee3d22a408750eaef16af8f37b92237935b4c6` |
| 16 | `def` | [id](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/id.md) | 153 | `declaration-track:28f28c25e8d91baafc504d45c3f1ffdb35bfa4759ff4d7aa2e81f1f2ade8c380` |
| 17 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-18.md) | 158 | `declaration-track:8c86638efc21c37914947d047505fe24fe8fe45276a75cdc1d0f457853204ee7` |
| 18 | `theorem` | [coe_id](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-id.md) | 162 | `result-track:12af84c6be2af3e27ad6905ade156221115cb27b68344b8b3202ecc02272f8ff` |
| 19 | `theorem` | [toAddMonoidHom_id](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toaddmonoidhom-id.md) | 166 | `result-track:6ae842a054f501a5d655aa0b9240195177f3c7d696b55f55519a52f276c78b79` |
| 20 | `theorem` | [id_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/id-apply.md) | 172 | `result-track:939809e31c1984010486cc2c17bb62a390104caff322ab803686356bd1ee5772` |
| 21 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/comp.md) | 176 | `declaration-track:8f06cd4e957bbe3aecba2ae64a2cd9c14f21083ca388254d60ffe19c9f30b536` |
| 22 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-comp.md) | 183 | `result-track:a95189b551241d9df407b782e7056cbf4757b3747a9b0ff9594e974ca656693b` |
| 23 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/comp-apply.md) | 187 | `result-track:68d35c2d0d5f90e52e027d6c0fed645ac3dbbcb32b60dcea32ec7558085b348a` |
| 24 | `theorem` | [coe_comp_addMonoidHom](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-comp-addmonoidhom.md) | 191 | `result-track:e1121b92c1f785b8fdc5c63b11c606c56e9e775773d27f0642cc3183a50ba3a0` |
| 25 | `theorem` | [comp_assoc](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/comp-assoc.md) | 195 | `result-track:896288eafba0ed182f15012f9ea73552d94ca06ab5bcb08a37a8c951734e2432` |
| 26 | `theorem` | [comp_id](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/comp-id.md) | 199 | `result-track:2bddfb0a14e554696fe185fdd45c1ad5f7fdab204b367fc88578a13d4846c8fd` |
| 27 | `theorem` | [id_comp](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/id-comp.md) | 203 | `result-track:aa14c7028bc158911e17bec4ece4d2c57550fc8a0cde130394c690bf532d4623` |
| 28 | `theorem` | [cancel_right](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/cancel-right.md) | 207 | `result-track:7fde695e6f9f05485e5a38bb6ca45e3ea47df0dd72eb0b12e8cb152bc2aa1aef` |
| 29 | `theorem` | [cancel_left](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/cancel-left.md) | 212 | `result-track:f4de5ac6e691aafd8d135af39687cc447b06a3a684b23f71e967bb23e399c2a4` |
| 30 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-24.md) | 216 | `declaration-track:fba950899776462b1499228a1bb3a022405805d38b9b317a84edcb976d4a192c` |
| 31 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-3.md) | 221 | `declaration-track:157a99d88e19b2d35e0a501f47d91f22ac0b0c3f17ae65630a672c2bbb04f1e2` |
| 32 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-15.md) | 224 | `declaration-track:7d537aeb453299e13bb7faf72f3fadfd28be8d2c3e63878c1cf4a3a3cf99ae42` |
| 33 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-19.md) | 232 | `declaration-track:9b75c348db47e1b7b3f35898c7e29e5a231a8b64bbe855b325fc6bcd04ffce31` |
| 34 | `instance` | [instSMul](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instsmul.md) | 240 | `declaration-track:5d63d2b23955c749e47a0ec8f4c96e4a2eaedd10b40d917e9e9dfcd1a6284a25` |
| 35 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-13.md) | 250 | `declaration-track:66bc3e5f7c2a1b7d6c03e92313684a83306d3ecfb8a86ae5237244a911a08dc0` |
| 36 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-2.md) | 253 | `declaration-track:12133edf917356885a566c04f2bd29d509b49afdea7246bd5969e8adb4526b8b` |
| 37 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-20.md) | 256 | `declaration-track:b251055fc1d700b165058ae6cac21bfdf6664fcbded25e2edad4a4e9a433aaae` |
| 38 | `instance` | [isScalarTowerRight](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/isscalartowerright.md) | 259 | `declaration-track:1edbfef9963cffff5a3e3b8aba0c88c58c9f66ed0d758dba87f76dcd27491011` |
| 39 | `instance` | [hasNPowNat](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/hasnpownat.md) | 262 | `declaration-track:68e5d5322ac9e825404f0c142dc9752ad196f5fee08296be60467316774e26b3` |
| 40 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-zero.md) | 279 | `result-track:cd0908d89f3c28c70d25508203aeabc0396c6b0dad615652c6861426f6263638` |
| 41 | `theorem` | [coe_one](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-one.md) | 283 | `result-track:2a9cb03be5899e468521264d756a23d21d5da24346dc22ba77339b55e6031c8b` |
| 42 | `theorem` | [coe_add](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-add.md) | 287 | `result-track:303c2922994a4919ca54a4a2d94b2db8e4d1f654eac9f0f5100a18487aae3cdd` |
| 43 | `theorem` | [coe_mul](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-mul.md) | 291 | `result-track:7e0a6e599c655e94ffa6b15ff08f3ad4da3b3ba371394642dcfb6a72e66ce322` |
| 44 | `theorem` | [coe_smul](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-smul.md) | 295 | `result-track:e993d018279f05a7900a07d847a19d1c7af9d8c04c17628af7a9ba4dc0bbbc1f` |
| 45 | `theorem` | [zero_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/zero-apply.md) | 299 | `result-track:518e2a7c9d40819e1b7901a2c058774baad59de08c977c114151d98256bf7e19` |
| 46 | `theorem` | [one_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/one-apply.md) | 303 | `result-track:92aea5dc4781431128b0cf5de1c9e0fc8075e4886ef691c7286bfba016e260c2` |
| 47 | `theorem` | [add_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/add-apply.md) | 307 | `result-track:370af8dfe582fa6d9fa5d0de2c48ccada13d19690d396b1989eab95304439449` |
| 48 | `theorem` | [mul_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/mul-apply.md) | 311 | `result-track:cb08494c2b26296d965bb3172544e6578417dee97a026854d6fe24123a026ae7` |
| 49 | `theorem` | [smul_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/smul-apply.md) | 315 | `result-track:bbb5b73063f5123f230478ed22c0b7812f3b069c683dc8749e5634ab490a33e0` |
| 50 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/example.md) | 318 | `declaration-track:157c53b5c5dcda20574aa4d2e5ec622641b9531d72cd4294668adaf180a54538` |
| 51 | `theorem` | [toEnd_zero](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-zero.md) | 321 | `result-track:7c3b779f09dff20368e576e84debe1a361eb6d843a8cc25d3432a6dc56ca52bd` |
| 52 | `theorem` | [toEnd_add](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-add.md) | 325 | `result-track:465487d51da919bfd3b2dd134fd2f93a741ecb0506e1996f0a9c05770700ccf5` |
| 53 | `theorem` | [toEnd_smul](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-smul.md) | 328 | `result-track:2ab27644c720ab0032af9905b58ea789ad60371b8f9d3c62e2a315914a578369` |
| 54 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-8.md) | 331 | `declaration-track:389312ce12e52bceadb3519b82cee727ff2f60497cfa435965276ec1bcf5bd47` |
| 55 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-7.md) | 334 | `declaration-track:3343ff8208d5acffa2f59e55ee5f2898c259f7d7c7b86bb648c6c9c642830685` |
| 56 | `theorem` | [coe_natCast](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-natcast.md) | 337 | `result-track:5798a1a32b1911baa8df26248342180103e6925d57d47d0a1f0ba10166501bc8` |
| 57 | `theorem` | [natCast_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/natcast-apply.md) | 340 | `result-track:20f688e830884860c6d5ad82635703a08196aeb2b1153791775113109be6ee0c` |
| 58 | `theorem` | [toEnd_one](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-one.md) | 344 | `result-track:e37ae484a6a7e371ce64a57f398ecc9a7914811416439142be39a0681a903aab` |
| 59 | `theorem` | [toEnd_mul](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-mul.md) | 348 | `result-track:431e1680432b516fe55b55cf0cc4fba138ae0fe92b95c39c302afbc0fe822e59` |
| 60 | `theorem` | [toEnd_pow](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-pow.md) | 352 | `result-track:893302e8c17172441b85152b517b7fee9674ad60ee53d70bd77ae0da0870e1e6` |
| 61 | `theorem` | [toEnd_natCast](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-natcast.md) | 356 | `result-track:6274a2bccc9cb6df718ed9032cc8156080826d6f1d29243d061d00fe4df12ce3` |
| 62 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-21.md) | 360 | `declaration-track:e7026628d6e9f779edd7dc2d6f433619d4bdd13ff999f6481b07cc9267120d48` |
| 63 | `def` | [toEndRingHom](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toendringhom.md) | 367 | `declaration-track:47000fc401ea81f77729f474035c0b8af06765cfefa584890145e26c44daeda0` |
| 64 | `theorem` | [comp_mul_comm](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/comp-mul-comm.md) | 374 | `result-track:5379891403136db6d130e80ff8c10dadd986f9c422153ecebaa2d1bc3237e3f0` |
| 65 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-9.md) | 378 | `declaration-track:39a3f6d442b0ab665e402ab4249047f6fa4c9c1378d0628a84dd1ec07e7be954` |
| 66 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-6.md) | 381 | `declaration-track:2e4e82f1f0b161668fb21fdd2b6b7ef2213ea9f13960e7cad921f1b2050584a5` |
| 67 | `instance` | [applyModule](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/applymodule.md) | 392 | `declaration-track:94f3d9eb1d1cd2671e8da1fc1d4b24f32ac48e4ddb1a8e1f8346e2c713baf5f6` |
| 68 | `lemma` | [smul_def](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/smul-def.md) | 402 | `result-track:82a1ce99a33c2d912f244248d8dbac1de312001c04b793f51c7c75635f12dee4` |
| 69 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-17.md) | 404 | `declaration-track:8531b26a10957bf32826f57a98085fa165863e5abc57ca57052df920f02d474d` |
| 70 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-23.md) | 407 | `declaration-track:f4c76d3036f1fcf83d404e9212441be294a8e3d203b3e9e9c59d9fcaadee49e9` |
| 71 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-22.md) | 409 | `declaration-track:ef0a632a96e01be909bff5dfbcf5fd794c89ef64f59717719316739de33b2c06` |
| 72 | `def` | [_root_.Module.toCentroidHom](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/root-module-tocentroidhom.md) | 425 | `declaration-track:a713d168fb6144c60685d40644d1d1f72668be526b8875f7ef30c7f3644d46c6` |
| 73 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/example-source-edition-2.md) | 429 | `declaration-track:7507e795f83b8a98ed67be497dee8cb8e5593f9e596f8d3cf41811af709a6f4f` |
| 74 | `lemma` | [centroid_eq_centralizer_mulLeftRight](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/centroid-eq-centralizer-mulleftright.md) | 435 | `result-track:a7273ed0d884c0de6f34b0d18b877afff74b2fb40101f071d4efd891e321ac57` |
| 75 | `def` | [centerToCentroidCenter](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/centertocentroidcenter.md) | 448 | `declaration-track:e3d01e19f823dea2b7d65e079c5a7f2ea30de63cbb1ec2bff4bfbacf82430f98` |
| 76 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-11.md) | 468 | `declaration-track:537eeb5ca1f7b7c4093bbec5c7362fb1c0b9c6b0e317596fae28a9b1401d8759` |
| 77 | `lemma` | [centerToCentroidCenter_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/centertocentroidcenter-apply.md) | 476 | `result-track:c3721443d5a0be76479e8ea278c68fb2e094597bb179b0a7a27bdb882aafab7b` |
| 78 | `def` | [centerToCentroid](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/centertocentroid.md) | 480 | `declaration-track:d99ecd6118175695b51e98b604aed7e1377cf19c38442508bf858b0113a4d30f` |
| 79 | `lemma` | [centerToCentroid_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/centertocentroid-apply.md) | 485 | `result-track:186499ad3af42419d3d97f8fcf90dbc0e3a891c8a8be0d0293459c0af8edf6d7` |
| 80 | `lemma` | [_root_.NonUnitalNonAssocSemiring.mem_center_iff](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/root-nonunitalnonassocsemiring-mem-center-iff.md) | 488 | `result-track:83ce3574c98a54eacab13ff70a600487378500f2d57b7f6f7edabecad0668489` |
| 81 | `lemma` | [_root_.NonUnitalNonAssocCommSemiring.mem_center_iff](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/root-nonunitalnonassoccommsemiring-mem-center-iff.md) | 512 | `result-track:55f17f2d6694bf340c408574ee89108b949eba3d76d1277109ec429eacb05ab5` |
| 82 | `def` | [centerIsoCentroid](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/centerisocentroid.md) | 526 | `declaration-track:15683fc4410aef7c1d596251d7a7b02c97ff8fbcea2ccbe68d1e78d62640331b` |
| 83 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-12.md) | 542 | `declaration-track:655a8bd9fb6ff2a0965a4c89f1c95291cdbc26969a242b7ac8fd15cd38cc0a9c` |
| 84 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-10.md) | 550 | `declaration-track:4363025f4ed35c0440642435c67663fca1b912fe32e71ea142d4eb4a1f42a177` |
| 85 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-5.md) | 558 | `declaration-track:1dc3d60de826240309e83780e75388160db15f1cd47334101c4a014125c5fe94` |
| 86 | `theorem` | [coe_intCast](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-intcast.md) | 561 | `result-track:71a6ff782b89c2c839c836cedbc6fae6c5555e17affd9d6c62f2e833199fa814` |
| 87 | `theorem` | [intCast_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/intcast-apply.md) | 564 | `result-track:73db44c1600b500ad8c3e872bf989bbb472f4ef1d0a2d2639647d3b0fc2cfe08` |
| 88 | `theorem` | [toEnd_neg](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-neg.md) | 568 | `result-track:c445d576cd1335e36b404f899269a0ccd344a45add17b3734e766ee7ab0ec413` |
| 89 | `theorem` | [toEnd_sub](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-sub.md) | 572 | `result-track:22d78166ad5245801aa2267d48239e5883101222904e4d10a7d830f9582b5aa5` |
| 90 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instance-source-edition-16.md) | 575 | `declaration-track:8403792b6a203a18088e06fe29d117a4a5697d2a0d04c009cb51f87c59916538` |
| 91 | `theorem` | [coe_neg](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-neg.md) | 580 | `result-track:4fe2df0a2946614ebc1a818fac06a0201b8512f58b26ae103c9f622a9f5c108f` |
| 92 | `theorem` | [coe_sub](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/coe-sub.md) | 584 | `result-track:ff9353faee99b2296714664f745057622aa359280f61535e136ab8df03b08cab` |
| 93 | `theorem` | [neg_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/neg-apply.md) | 588 | `result-track:bdc6d1424ae3d6acc038b406a49262fda49eadc4da5fa3cc131ae1b3f3e0f678` |
| 94 | `theorem` | [sub_apply](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/sub-apply.md) | 592 | `result-track:871c398c11beaf0624fa97417cf4c444a2ec937226836ac1e1110dc8c1eea8cf` |
| 95 | `theorem` | [toEnd_intCast](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/toend-intcast.md) | 596 | `result-track:d5d49b5bbdfc35da8509ffd2908b3e4832ac35105c148c4727ccb724703f0704` |
| 96 | `instance` | [instRing](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/instring.md) | 599 | `declaration-track:cadc682c65b3a43f1feafe4f22561709598a06fc873f2d7d1ea0a73965476ff3` |
| 97 | `abbrev` | [commRing](../../../../AssociativeRingsAndAlgebras/CentroidHomPublic.lean/declarations/commring.md) | 611 | `declaration-track:23d123929892e1b93e4c1f73b32ccff0d9595a560b1df23ff645cd7f252876a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69cee49f8c315a6861b37078bf34481b7a69dd3c94c933fb79fe498865df01e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean","GRWTSK/_verification/specifications/Algebra/CentroidHom/Variantb95793c468058160e9c75a9bfd216aae89d4b404f91f4b8ef2e0f33e6d04ed59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

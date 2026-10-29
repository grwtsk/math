# Verification target: Direct Sum Ring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c589fe8d50a84528feef71b124cad99fabc4514e",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant69bf27e66e61f1112a389f63fc4ecc91abf7b163d3656c741f050a1e044b93d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c589fe8d50a84528feef71b124cad99fabc4514e`.

Source path: `GRWTSK/Algebra/Ring/Variant69bf27e66e61f1112a389f63fc4ecc91abf7b163d3656c741f050a1e044b93d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant69bf27e66e61f1112a389f63fc4ecc91abf7b163d3656c741f050a1e044b93d4.lean.json)

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
| 1 | `class` | [GNonUnitalNonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/gnonunitalnonassocsemiring.md) | 106 | `declaration-track:171a7a789bab885e104b2453eb4e639b6845cbeb5b0d9cbf1b0057f770d40dd4` |
| 2 | `class` | [GSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/gsemiring.md) | 126 | `declaration-track:20f2f2052dba47a8016bedadaba042d9e5acaada9335ca9da539cc1cdc332a9c` |
| 3 | `class` | [GCommSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/gcommsemiring.md) | 136 | `declaration-track:6451fc105de128c02ead7ff6b2898e70bea15d12fa27da6e768d451a2da90106` |
| 4 | `class` | [GRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/gring.md) | 140 | `declaration-track:c89d92b55dbb2d4d1ae0113a4157108ed4cf043072ce07652bb770915eaa6f18` |
| 5 | `class` | [GCommRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/gcommring.md) | 152 | `declaration-track:b3dd54cd514996289db33e06519658954a9b99cc790dd36a021f3063fa9ae8cc` |
| 6 | `theorem` | [of_eq_of_gradedMonoid_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-eq-of-gradedmonoid-eq.md) | 156 | `result-track:fb0fb4e55825d5a60fb7e61a7a5e0abfe6dd813e1629edd9f4d0745ea9686ae5` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 170 | `declaration-track:ee151d7cee32a5da3989240d7b89a51a51e39d6e3abcc0e21bdff444af44d940` |
| 8 | `theorem` | [one_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/one-def.md) | 172 | `result-track:7606928cff8b6a4da8b4aa327825eebb19d7fac7483459c8cd135a9e715b58e2` |
| 9 | `def` | [gMulHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/gmulhom.md) | 184 | `declaration-track:65cbe0e45f8c8fdcadcd91895cdb1881aa3172acf9a3ac1f6cc29aa2d3c74153` |
| 10 | `def` | [mulHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/mulhom.md) | 195 | `declaration-track:eebfa49500fe2d6dae1662f0316f91c070bdf0454a7d0f02240f9b4aaae285db` |
| 11 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instmul.md) | 201 | `declaration-track:4d0bec61f91af569792c5a970db4b2bd25eee458d56f7cf2d425cdcf0b9cd266` |
| 12 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 204 | `declaration-track:bceafb494f71adb5c8be7ad1a47470de8ed25908da8d74cb90f38f4a41febe07` |
| 13 | `theorem` | [mulHom_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/mulhom-apply.md) | 213 | `result-track:e599ff7c1eb49855fc32dbd439b739e36d41913562bc0c83bd54c2f9d90587e7` |
| 14 | `theorem` | [mulHom_of_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/mulhom-of-of.md) | 215 | `result-track:69ee5344bd7d4f3f190038ec73717308078affd5ccef2b02cfdbcb115bd34421` |
| 15 | `theorem` | [of_mul_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-mul-of.md) | 219 | `result-track:1b7e1b517e8cd6158b015ca36db0aa56f5060e2736f02dc067f2ecea0a7c0b9f` |
| 16 | `theorem` | [one_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/one-mul.md) | 231 | `result-track:72d07fc480c2f2a81ba5ecea7615c97d0e17c1953f09dfdc640cad4f6d21bead` |
| 17 | `theorem` | [mul_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/mul-one.md) | 238 | `result-track:4a0b7bb3a10e92edd6d191ef679ea69245026e6a45e1421e5e180cc4a5fa6725` |
| 18 | `theorem` | [mul_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/mul-assoc.md) | 246 | `result-track:25c63c8d4d3f23719b89884de787af1d75071ac5e96e8e7684b798e292671ea0` |
| 19 | `instance` | [instNatCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instnatcast.md) | 257 | `declaration-track:6506bd25a71d5b362c7588770bd535ce0d1c664fd1c4e71484725116b4644f3c` |
| 20 | `instance` | [semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/semiring.md) | 261 | `declaration-track:87c384cb290e116134d8c9e2999f43aeaebf7f7fd991fb6f1cf162e8f99b5d80` |
| 21 | `theorem` | [ofPow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/ofpow.md) | 272 | `result-track:74dd7e7b61353ac3bf452bcd4093a95a7c50b417236a16a3530458f7f3255873` |
| 22 | `theorem` | [ofList_dProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/oflist-dprod.md) | 280 | `result-track:abc8e6e6ebc4a28779742d574e9e4b2ea72016e4cbf94b198beb42a09d9b74bc` |
| 23 | `theorem` | [list_prod_ofFn_of_eq_dProd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/list-prod-offn-of-eq-dprod.md) | 290 | `result-track:44fb309827ab0ceecae6ad786944fdb207639953b0a53f267bb9ce8813e3c56d` |
| 24 | `theorem` | [mul_eq_dfinsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/mul-eq-dfinsuppsum.md) | 294 | `result-track:d7ce9ceef2a949796ba781a29936b67b0f022e0df799d3a643061ef7ddf4190e` |
| 25 | `theorem` | [mul_eq_sum_support_ghas_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/mul-eq-sum-support-ghas-mul.md) | 309 | `result-track:b3fbb6c7c37d6ee9fdb7d875a6edd123bf524fccb167855ba93eee374fcf9624` |
| 26 | `theorem` | [mul_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/mul-comm.md) | 321 | `result-track:d3098d26a528a66cf30f82d2ef0034b9d0995e09ec1df80204c291c2005932fe` |
| 27 | `instance` | [commSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/commsemiring.md) | 329 | `declaration-track:a22ad70690870abff9ceb0cbab003f3fa1172e16991d603b37a79bae691679ef` |
| 28 | `instance` | [nonAssocRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/nonassocring.md) | 339 | `declaration-track:9a58a01ede1d36072df030104e119b8a4fbc94f210f8b8d355d0dde7a58a75a3` |
| 29 | `instance` | [ring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/ring.md) | 349 | `declaration-track:29f8c6a474961058deca4a3c9dfb0dbaae66fc8f0638d6be409bcc795932f6bd` |
| 30 | `instance` | [commRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/commring.md) | 362 | `declaration-track:2ffc801b79b09f6e534d2adedc069696321410668df1b21b35e38d76417f42e0` |
| 31 | `theorem` | [of_zero_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-zero-one.md) | 386 | `result-track:c1a07beff9778abb6d47a91c328a0b7c1152ba645473e06bd4047ef3c7444ef4` |
| 32 | `theorem` | [of_zero_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-zero-smul.md) | 396 | `result-track:badfc9138852940e670671581a541bcb1fb451c5397a3718dd72c96d865320e6` |
| 33 | `theorem` | [of_zero_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-zero-mul.md) | 400 | `result-track:5b2e6a52bf022a282ee5a576dfaaf4eb3bb6774cd06538911eb4b3b079455e69` |
| 34 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 405 | `declaration-track:5d36420f35630c8094db730b7ec8ac81805ef743d8f746fed7c20e8a6fa1c8dd` |
| 35 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 412 | `declaration-track:ffba09cef536bfc350cc95494f9850792d68644d3e433ddac0a7052ac3b98e4c` |
| 36 | `theorem` | [of_zero_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-zero-pow.md) | 424 | `result-track:635d02f2cf217a221dd97040fbee9b7907e6823fef8452cc79ca70bdd6210f53` |
| 37 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance.md) | 430 | `declaration-track:0a07ca79a67b1118c172db8e80c085b87ca5c3025b8871c441f41688d4652708` |
| 38 | `theorem` | [of_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-natcast.md) | 437 | `result-track:3c1fc92c7fae86b9767d9ba6458ac4d3fd98a149a6cd7928afbb8cc72ca80549` |
| 39 | `theorem` | [of_zero_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-zero-ofnat.md) | 441 | `result-track:9c3eb47ea95a43fc86cc427a80521dcafc91572c123bfe3265af378756861e5c` |
| 40 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 445 | `declaration-track:260297898de253bc12a33584df5dcae038257129c5847ecc7ecaabc74aad2504` |
| 41 | `def` | [ofZeroRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/ofzeroringhom.md) | 451 | `declaration-track:3b69715c6d0df5a74ff0f2e40a318955ba82bed2ebfcaf42df94025ca3ad45da` |
| 42 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 459 | `declaration-track:b7d20d89b11de3e363a2f9e855b6f1d551dc80267d170cbefa9a55931f1cf09f` |
| 43 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 470 | `declaration-track:9fc8bb0dc17ef0d87a8233f3601b4cb7485cb9520292209d0865ec3ed37b9099` |
| 44 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 482 | `declaration-track:39bce5255e4af4a94b2e00591e90a0fe4e95239391a2bda02076be1a80868a8c` |
| 45 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 494 | `declaration-track:658ee1fcdeaf5ea401f7d964b2ef893d754558861b86a8ab4c84a5d3cb3197c4` |
| 46 | `theorem` | [of_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/of-intcast.md) | 498 | `result-track:60b22ff8de8b88451b19b28ef80f85c7c308f302b4c442d89111771f4ae2623e` |
| 47 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 502 | `declaration-track:ef9e5d7f7167ef8e1e9a737d32ea3276c0b8a2e7d83b4972dc50339d2e821798` |
| 48 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 514 | `declaration-track:92b49200b9e78cc6f62e19f8df728d46148eeff0dbe1ec6aed485049e16ecc33` |
| 49 | `theorem` | [ringHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/ringhom-ext-source-edition-2.md) | 533 | `result-track:aa3a0bf30935211e6e5e3c626fa9d09d212579d342e430a05132679c7133b9e9` |
| 50 | `theorem` | [ringHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/ringhom-ext.md) | 538 | `result-track:94e33af6c717083978878f08cedf48e1dace1896e01254e77d5083a981134f32` |
| 51 | `def` | [toSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/tosemiring.md) | 549 | `declaration-track:0020ad124a04e9a518c8fda2b419360479117643a5b4d522c7db21fe3e2e9f51` |
| 52 | `theorem` | [toSemiring_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/tosemiring-of.md) | 568 | `result-track:57e748b8ff17d2725c15fb0f09288c2d054c06b7ffd94b9f6a0247e17f44b720` |
| 53 | `theorem` | [toSemiring_coe_addMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/tosemiring-coe-addmonoidhom.md) | 573 | `result-track:277dcf521fc1a104fb4f0aec46a50dda9f2c4f293fefddca4ef534acf74b7bdc` |
| 54 | `def` | [liftRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/liftringhom.md) | 581 | `declaration-track:b0eb7f1bd3d79236b157bd7ec8889f28d6e64404ecff1e77668e9b8af69b9233` |
| 55 | `instance` | [NonUnitalNonAssocSemiring.directSumGNonUnitalNonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/nonunitalnonassocsemiring-directsumgnonunitalnonassocsemiring.md) | 618 | `declaration-track:a8ea08b3444f3d4487d7bd8b9844265b501c4a5bad3cdfa6481214e8de65b58e` |
| 56 | `instance` | [Semiring.directSumGSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/semiring-directsumgsemiring.md) | 626 | `declaration-track:6ada4796a4a3b8df60042999befb484b735cfe38c57a47e3b2972926974b3f35` |
| 57 | `instance` | [Ring.directSumGRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/ring-directsumgring.md) | 633 | `declaration-track:7b893310645970ae90661767041989a86d43fd6a185993934994222138464edb` |
| 58 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/example.md) | 642 | `declaration-track:87690fad6b79d45c7be7834d9f86fc046b9a59547a63fae7b7e98af9061fe3a5` |
| 59 | `instance` | [CommSemiring.directSumGCommSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/commsemiring-directsumgcommsemiring.md) | 647 | `declaration-track:7d473d137bc135efa758892d600d345b14bcb37632b570a32b7dfa9ca88cf432` |
| 60 | `instance` | [CommRing.directSumGCommRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumRingNamespacedPublic.lean/declarations/commring-directsumgcommring.md) | 651 | `declaration-track:36efc778b7d69587acba22b0063a828627cee43d30a63744a691b4d672058b67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c91f23a3139f8417b60f029e08acb41448911c6347f19f491e836b1c9f60f390 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ring/Variant69bf27e66e61f1112a389f63fc4ecc91abf7b163d3656c741f050a1e044b93d4.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Variant69bf27e66e61f1112a389f63fc4ecc91abf7b163d3656c741f050a1e044b93d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

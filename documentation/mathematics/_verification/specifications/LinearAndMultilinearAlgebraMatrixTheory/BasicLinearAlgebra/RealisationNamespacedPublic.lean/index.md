# Verification target: Realisation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48b70d9ca47fc2bca74198387059bd39e4994868",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48b70d9ca47fc2bca74198387059bd39e4994868`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean.json)

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
| 1 | `structure` | [Realisation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/realisation.md) | 59 | `declaration-track:d6eb9491b118fe59c7f65a4b4913ad0f8f73e7e97e9c05d8a35d73aedd5fdf51` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 80 | `declaration-track:23e61d6c45c621fbb38349d6524c71527919f636984b24a3548adacc8693173a` |
| 3 | `def` | [flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/flip.md) | 83 | `declaration-track:7f6bfb92eeeff3ba4f73fbfdacff29c852afec650a096f68adb112943e4b04d1` |
| 4 | `lemma` | [lin_ind_sRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/lin-ind-sroot.md) | 92 | `result-track:e06318621b6303503fbea8c00665b3c0b292c37adaf184c270d18ff5f2dd5bdf` |
| 5 | `lemma` | [lin_ind_sCoroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/lin-ind-scoroot.md) | 104 | `result-track:8a94bd97567d242b1e30824dd7ac3a24d3c339ce31929691881cc58416a0e126` |
| 6 | `lemma` | [injective_sRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/injective-sroot.md) | 107 | `result-track:5059e3600c4d582bda92c57a92156760f3c03763ae8e8477a55cfeda01b9cc18` |
| 7 | `lemma` | [injective_sCoroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/injective-scoroot.md) | 110 | `result-track:f94a876d7fb552fe197dea3a25001beb763f3162a1be2831de12d79d0aa344b9` |
| 8 | `lemma` | [pairing_sRoot_sCoroot_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/pairing-sroot-scoroot-self.md) | 113 | `result-track:d2d6796a8ac8d60d83cca9d7b72ccc3451ee3d7a77ab770240aeb9964cc10a03` |
| 9 | `lemma` | [exist_int_eq_pairing_of_mem_span_int](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/exist-int-eq-pairing-of-mem-span-int.md) | 117 | `result-track:cec6f40487013efc781b5dc0cae5e1d999359fab477d2f74150215b8cfb046b3` |
| 10 | `def` | [reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/reflection.md) | 140 | `declaration-track:35af42cf91f532d2ff9704c976b4819349b7f22b7a53d215c909a50d2c976a4a` |
| 11 | `def` | [coreflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/coreflection.md) | 145 | `declaration-track:f259e57b6dd01f9e2f3e55e5db4c94a710dca0f11bbdc7f2b1f0f201bd0a4739` |
| 12 | `lemma` | [reflection_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/reflection-apply.md) | 148 | `result-track:b9145fc401cbed237c527bd8d52343cfac0d7d91e3f410f83b3a907a9020749d` |
| 13 | `lemma` | [coreflection_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/coreflection-apply.md) | 152 | `result-track:af178cb3d6c662a821b518089f4c530e1f9ac66ad479b9768b0930d05d6dfa97` |
| 14 | `lemma` | [reflection_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/reflection-same.md) | 157 | `result-track:60e6f4ac2824f6bae91e7d8845fffec7d1cc336ed86186a7cb851f3d9974e7e0` |
| 15 | `lemma` | [coreflection_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/coreflection-same.md) | 162 | `result-track:393b50319823d6d315d4bd88b532655f5b473364614736b0ed7424e64a5cbca9` |
| 16 | `lemma` | [flip_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/flip-pairing.md) | 166 | `result-track:5d8e9edeaa89d36346e744649b1ca220f46449c4700d667f87f6c6ecb7ae57e4` |
| 17 | `lemma` | [flip_sRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/flip-sroot.md) | 168 | `result-track:8010e7466d92fbf8884211a32f767ba182d00bb42c89fa0bed0df047e42b88dd` |
| 18 | `lemma` | [flip_sCoroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/flip-scoroot.md) | 170 | `result-track:c8b723a57a1c374d96d33828f243a197f87b59e4f10a498824c2a46675a21046` |
| 19 | `lemma` | [flip_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/flip-reflection.md) | 172 | `result-track:133b9f41826665b78cd0f39d3e995344ac89df2527b6acb624f27380006c36d3` |
| 20 | `lemma` | [flip_coreflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/flip-coreflection.md) | 174 | `result-track:8209e2db16dbcc73de56572535c96cc6f6d2e1fff990684ebd89dce915acadd0` |
| 21 | `lemma` | [eq_iff_forall_pairing_sRoot_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/eq-iff-forall-pairing-sroot-eq.md) | 176 | `result-track:afd810ef9f3ec76cf00c2e7d8cdd1a344edc570f11fa901a6f1ae5621795d8d2` |
| 22 | `lemma` | [pairing_reflection_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/pairing-reflection-left.md) | 192 | `result-track:6e61590611708692203d207befb23810d09a0788eed4e16d9764bb1565517a8c` |
| 23 | `lemma` | [pairing_reflection_coreflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/pairing-reflection-coreflection.md) | 197 | `result-track:5d84cd999e5e661be81646f8a0a33ef5fbad8c9c25cde67d7a97c2d7fa29916a` |
| 24 | `def` | [weylGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/weylgroup.md) | 202 | `declaration-track:9f7e2e871d9cf3b971b0e361f68222119a46afef0c2af298e2816424588413ca` |
| 25 | `lemma` | [mem_weyl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/mem-weyl.md) | 206 | `result-track:ea1733614ed6eb005184a23884c45a83d32cb3aa8bc32a3333179c90feb5a9d6` |
| 26 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 210 | `declaration-track:c367cf2b6718d148989964373e7bc96bd064416a0b54217bb1aafeae07716977` |
| 27 | `lemma` | [weylGroup_smul_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/weylgroup-smul-def.md) | 212 | `result-track:9571b20567f84c475fc81d5c2076b969cb0c8b56cf98e0057a4c554d2b3baeb6` |
| 28 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance.md) | 214 | `declaration-track:0f2ce5fbe1182b4160e194cfe391fcbc023ed787e199e3bdc1a0fcac605d236d` |
| 29 | `lemma` | [flip_weyl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/flip-weyl.md) | 220 | `result-track:ecced27e86898f4023d1b50400894036d2eebf49d9e515924301f99261438853` |
| 30 | `lemma` | [mem_flip_weyl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/mem-flip-weyl.md) | 224 | `result-track:fd500b4a3ad61b1f2b16d0cbae30a732f5032b6383fce5d7c6bd1c5123b03404` |
| 31 | `lemma` | [reflection_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/reflection-inv.md) | 229 | `result-track:a4cbe896341e30120ea634c090253550434166b2e89d625ecb9b703a3214e719` |
| 32 | `lemma` | [coreflection_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/coreflection-inv.md) | 231 | `result-track:596d2f8f1ee0b375a1e372a9734272d421e4b45210c36f9b260321b57ea57645` |
| 33 | `lemma` | [weylGroup.induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/weylgroup-induction.md) | 234 | `result-track:95975b83099aa05899565efdd031c51e7024a065c80a5f424f088b44f16cff7b` |
| 34 | `lemma` | [pairing_apply_apply_of_mem_weyl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/pairing-apply-apply-of-mem-weyl.md) | 254 | `result-track:930efbaf220e391ff898a7ec677dc46db9e2a7444cbaabfcfb938683546ab601` |
| 35 | `lemma` | [mapsTo_span_int_range_sRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/mapsto-span-int-range-sroot.md) | 262 | `result-track:aff33a5bccd20e67ebbd4e168552a5f4b1a1fa6452c6422452d780d03e400204` |
| 36 | `lemma` | [exists_zsum_eq_of_mem_weylGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/exists-zsum-eq-of-mem-weylgroup.md) | 274 | `result-track:54b5a8bf8a9115182eb1c8f13bad7241a2fb97de0a77f66f5ebeb08bba6e84e2` |
| 37 | `lemma` | [finite_setOf_mem_weylGroup_apply_sRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/finite-setof-mem-weylgroup-apply-sroot.md) | 303 | `result-track:a2a7b5ee32c4808bd1221a2b066bcf0efc6e35d7eb8860b0df61bfed3d30c78d` |
| 38 | `lemma` | [eq_of_mem_weylGroup_of_forall_apply_sRoot_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/eq-of-mem-weylgroup-of-forall-apply-sroot-eq.md) | 317 | `result-track:e99d5476f1c119ac0d16299297f6077d4d466bd63cdfe9db4bcd19885f70d20d` |
| 39 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 342 | `declaration-track:9f4e1ba5301f5a3acf3fe9fc2da3ac885c9d1e010a6d0563cf584714f17c0a6d` |
| 40 | `def` | [idx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/idx.md) | 352 | `declaration-track:47e1593e0b18061f2303f18637541a13dd8d283e7c9ad0d030d522ead7327554` |
| 41 | `lemma` | [idx_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/idx-eq-smul.md) | 355 | `result-track:140993d3c98e3fa76fc800ba251e0e4517e8090291807f7555997033eaf92fe4` |
| 42 | `lemma` | [mk_mem_idx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/mk-mem-idx.md) | 359 | `result-track:8640ef18c14ce05a5a54056d1e69d5e46a6878008139439447b1e5943bfd153a` |
| 43 | `lemma` | [sPair_mem_idx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/spair-mem-idx.md) | 363 | `result-track:9fd20bd2a2787bc301cca456c113ef2ea1160087f4f3f09f81067804c2209ecf` |
| 44 | `lemma` | [apply_mem_idx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/apply-mem-idx.md) | 367 | `result-track:f19265a094fe6d4fd889540c44e3feed18b04feabacc84242d88ae97726ba28b` |
| 45 | `lemma` | [flip_idx](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/flip-idx.md) | 373 | `result-track:2cc1d5e1ed5c13c1fec4aa3869511a03d6af1fa03d9349b0862319a74ae738d2` |
| 46 | `lemma` | [pairing_fst_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/pairing-fst-snd.md) | 381 | `result-track:e7f61c2f3e1fe6da75a36dbf56de46bcf6a300dd9d9552b249021bb0235511e5` |
| 47 | `lemma` | [idx_subset_span_int_sprod_span_int](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/idx-subset-span-int-sprod-span-int.md) | 386 | `result-track:c63db490fb5ed84472c9b64e5e02c9852ba9a56fc119448934f76b10e7cfb7ae` |
| 48 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 393 | `declaration-track:251df99eb61d3b2b3a8a38a28f080a9c9c119bb9cb237d7e640d5e748e96bcbf` |
| 49 | `def` | [reflectionPair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/reflectionpair.md) | 400 | `declaration-track:5fed585e0c23ed28b3a0240f17f68d4d37a5dda62b31a2be9279bb9f51187715` |
| 50 | `lemma` | [reflectionPair_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/reflectionpair-mem.md) | 404 | `result-track:5e421f9fc32842490424d4a8407f7252447c9b8a2b90f636570fbea3a48d9f9d` |
| 51 | `lemma` | [injOn_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/injon-fst.md) | 420 | `result-track:34284c5abf19fec960a7411e17af1db40fdbdb1560efadeea3d6621880b0a756` |
| 52 | `lemma` | [injOn_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/injon-snd.md) | 440 | `result-track:a7bbfe14e64a9c516c42dc40b5a3fdab6d784fb0e5eff35cedd5d7515838de9f` |
| 53 | `def` | [toRootPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/torootpairing-source-edition-2.md) | 447 | `declaration-track:b1ecfeec8c540145f8f12ecf8e3e1caf48c01bdc1bee119d55c96ce04d8e5b71` |
| 54 | `lemma` | [toRootPairing_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/torootpairing-root.md) | 460 | `result-track:df7d2d545748bd336a8d269e0ddc4aa4ebf8ac45135333aa213585291c471fbb` |
| 55 | `lemma` | [toRootPairing_coroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/torootpairing-coroot.md) | 463 | `result-track:314ed184288661c0d8612f69598b6dba4bf571f157a51d246b7e8ffcd1c626d0` |
| 56 | `lemma` | [toRootPairing_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/torootpairing-tolinearmap.md) | 466 | `result-track:273994b9274f9e35c750f83463c039d904afbdeb3d3262487ef7f866fdad3b85` |
| 57 | `lemma` | [toRootPairing_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/torootpairing-pairing.md) | 469 | `result-track:e86690d53664f54044ed06cab5426e883058babf69ac7be769d96e6fb87ea90a` |
| 58 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 472 | `declaration-track:66e7df2dd950c25157fca71f0fd7cf6502f440efb5ce268664e72a9cefd9a11e` |
| 59 | `lemma` | [eq_one_or_neg_one_of_eq_zsmul_sRoot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/eq-one-or-neg-one-of-eq-zsmul-sroot.md) | 479 | `result-track:d01c605d2c34a874866b43898f22c2e83d4fa4a6d60a6295f222e4096373d047` |
| 60 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 492 | `declaration-track:79664d4ed1374826b747cd0a8edbbc342e02e475b837ee7de8109dd1382d7e75` |
| 61 | `lemma` | [isRootSystem_toRootPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/isrootsystem-torootpairing.md) | 519 | `result-track:631ab7e350a7b9d069e1882a2d60a10b7ede4afe1c5ebb64311ea82e067ba52b` |
| 62 | `lemma` | [isIrreducible_toRootPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/isirreducible-torootpairing.md) | 534 | `result-track:afa45b87e957ceb1bd774764a45a54408b78544d5718d8a8e42accbca5b6cb55` |
| 63 | `def` | [toRealisation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/torealisation.md) | 586 | `declaration-track:b12174c340892b60d1675225e9104d58dec096950a097eca0e9f428c7f92c762` |
| 64 | `lemma` | [span_range_sRoot_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/span-range-sroot-eq-top.md) | 598 | `result-track:ce1d6e11ce4be9694661e7dd87cfbdf560dc5ba14050a33d28cbdd49ac6ebbf6` |
| 65 | `def` | [toRootPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/torootpairing.md) | 605 | `declaration-track:30df7c26d906ae6b88a3cd888d6c4725f5abaa4128328369a24c39d4ef1e9d9c` |
| 66 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 607 | `declaration-track:8cddbaea838647ea90ac4bba22cd6308380d13bd6cae7048c1f54466638f43f9` |
| 67 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 610 | `declaration-track:17fb972676dd6db7b7834c9f399e9d4d7c4da4fdd7159d6ca1b065632b580193` |
| 68 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 613 | `declaration-track:c0b62bf5f270b10bd19dbc19a2cfcb5977997c2b9a270c4cf48e5201521d3507` |
| 69 | `lemma` | [isIrreducible_toRootPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RealisationNamespacedPublic.lean/declarations/isirreducible-torootpairing-source-edition-2.md) | 617 | `result-track:d14f62652f063cdbc6cc9632a5736bfd4d2a9160c094aa0b48c314cd175079fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23d563d39802e21a1fca109fb687709e12c85cfeb4a22485bdeba62cd362bcca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Kaehler Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b184a5aebc67289390eac066e3c99fe99281dbd2",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b184a5aebc67289390eac066e3c99fe99281dbd2`.

Source path: `GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean.json)

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
| 1 | `abbrev` | [KaehlerDifferential.ideal](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-ideal.md) | 72 | `declaration-track:0c487682093e837ca2b2421912b18011a4ec48a3a44f2a73741bacd47593060b` |
| 2 | `theorem` | [KaehlerDifferential.one_smul_sub_smul_one_mem_ideal](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-one-smul-sub-smul-one-mem-ideal.md) | 77 | `result-track:df7d47e03d8be1023ef446f121b416be4169b4296c697942911e7c2ab40ff46d` |
| 3 | `def` | [Derivation.tensorProductTo](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-tensorproductto.md) | 84 | `declaration-track:e218c682594a591653c64e3a725db0809b6763892001af9812f3dc8a3f82dc17` |
| 4 | `theorem` | [Derivation.tensorProductTo_tmul](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-tensorproductto-tmul.md) | 87 | `result-track:6f3dbf0b129d45dd728b7e8dea2e96f3e7869e8b75a055787b9f041d23d1f157` |
| 5 | `theorem` | [Derivation.tensorProductTo_mul](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-tensorproductto-mul.md) | 90 | `result-track:f30827d7cdf2eb20f1fff6bfef3dae2e9d2a5c7d58eb79b5fb74b0872776281f` |
| 6 | `theorem` | [KaehlerDifferential.submodule_span_range_eq_ideal](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-submodule-span-range-eq-ideal.md) | 114 | `result-track:3609ca62c03417b9787a0fc337d78760d36d7f6a787d62bccdab271b9ee9bb9f` |
| 7 | `theorem` | [KaehlerDifferential.span_range_eq_ideal](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-span-range-eq-ideal.md) | 138 | `result-track:e1bbd939692845ad02ba5aaa780e9ae743fae6fe7a13e935ebe2a56077eefe48` |
| 8 | `def` | [KaehlerDifferential](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential.md) | 158 | `declaration-track:d9d431b9e5789183be12b882664656d55b7d86511a41cf8255c39f22ab6b1153` |
| 9 | `instance` | [KaehlerDifferential.isScalarTower_of_tower](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-isscalartower-of-tower.md) | 170 | `declaration-track:8e0e3f8497fa312fdbdee2498e1e29a11b73f6f3d02a5726fc4e83b3725d42bd` |
| 10 | `instance` | [KaehlerDifferential.isScalarTower'](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-isscalartower.md) | 176 | `declaration-track:fd327c7e1cd15b46f00269a25e84ecfe2b291ae6d85800e00c5456307b355c0a` |
| 11 | `def` | [KaehlerDifferential.fromIdeal](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-fromideal.md) | 180 | `declaration-track:c09ca297c27e0b86299201154d533ae4b0fb0fee0ab39e9052b041e5d7831d4d` |
| 12 | `theorem` | [KaehlerDifferential.fromIdeal_surjective](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-fromideal-surjective.md) | 183 | `result-track:fb3c1cbc40baa8cd0650790a037bc50cd0aa3cf591cd5605d5c7fe3f721bfa6d` |
| 13 | `def` | [KaehlerDifferential.DLinearMap](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-dlinearmap.md) | 187 | `declaration-track:525d3cce9c9bffb9c819c2987c28ce662e5e700bb3b03ea991df99c3da9d1367` |
| 14 | `theorem` | [KaehlerDifferential.DLinearMap_apply](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-dlinearmap-apply.md) | 195 | `result-track:c05a5a0d93605f7155bef2101edf5c1444dc7ef2309999bcecdc56e1486f2e2f` |
| 15 | `def` | [KaehlerDifferential.D](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-d.md) | 203 | `declaration-track:3c21757f00da4352739c267fa0916a5b04d3141e5753350f92eeda506701221f` |
| 16 | `theorem` | [KaehlerDifferential.D_apply](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-d-apply.md) | 223 | `result-track:3501d0fa04241261877a21d7bdc3da12c4cc880ddba34de6a997860a6d05edbe` |
| 17 | `theorem` | [KaehlerDifferential.span_range_derivation](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-span-range-derivation.md) | 228 | `result-track:3fcdeaa1107f6cb4bc9b00a0061cdd870b972826724205586891dab953f11dec` |
| 18 | `lemma` | [KaehlerDifferential.subsingleton_of_surjective](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-subsingleton-of-surjective.md) | 252 | `result-track:36b1882dc206dc121ca23811126f8c637307e408c791accecd81de4ec2785292` |
| 19 | `def` | [Derivation.liftKaehlerDifferential](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-liftkaehlerdifferential.md) | 262 | `declaration-track:f3a364f2c872181ebfc31ed2be7577bd44c8de0317f2ecb89e1940770f2c8eb2` |
| 20 | `theorem` | [Derivation.liftKaehlerDifferential_apply](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-liftkaehlerdifferential-apply.md) | 276 | `result-track:900c457124701e55f304a41d80007ff2e2bf99a719a8284185c63252c1213774` |
| 21 | `theorem` | [Derivation.liftKaehlerDifferential_comp](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-liftkaehlerdifferential-comp.md) | 280 | `result-track:6f3e7358563f9ff320a9feab2724a2b442e7f10094686e5af793e72bd366a671` |
| 22 | `theorem` | [Derivation.liftKaehlerDifferential_comp_D](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-liftkaehlerdifferential-comp-d.md) | 289 | `result-track:03e02af6b632a8024dc94f01d70aab746201d9eac27129febf4123bba50ddb0b` |
| 23 | `theorem` | [Derivation.liftKaehlerDifferential_unique](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-liftkaehlerdifferential-unique.md) | 294 | `result-track:03c7b7e6ff88b9048865eda83ca0d5532a6d323ec60cd08cf753504c5dddcc9a` |
| 24 | `theorem` | [Derivation.liftKaehlerDifferential_D](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/derivation-liftkaehlerdifferential-d.md) | 309 | `result-track:d4ca724ef09943fa62ccd2a885045df4f5b9082744bee8bc4ac9cedacb550a5e` |
| 25 | `theorem` | [KaehlerDifferential.D_tensorProductTo](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-d-tensorproductto.md) | 316 | `result-track:2192913170a7e5120668c87d47ce0a49b6181b1ec327bae9faaa412608bfc36e` |
| 26 | `theorem` | [KaehlerDifferential.tensorProductTo_surjective](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-tensorproductto-surjective.md) | 324 | `result-track:ab3debc82242a612c22f89582209c8e24ae523bf3693e99b708f70376a7eabae` |
| 27 | `def` | [KaehlerDifferential.linearMapEquivDerivation](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-linearmapequivderivation.md) | 332 | `declaration-track:cbf58e1bed8f9e4ca98ddabf948afa3e374d36b26e86baf7b48070b2fc34fc72` |
| 28 | `def` | [KaehlerDifferential.quotientCotangentIdealRingEquiv](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-quotientcotangentidealringequiv.md) | 340 | `declaration-track:b979dc1e8b7a5f69b615167b4c1cf316156894414991171a36b2190fedbe5ade` |
| 29 | `def` | [KaehlerDifferential.quotientCotangentIdeal](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-quotientcotangentideal.md) | 352 | `declaration-track:8e7dcb93a90d14f64af4039fbaba994d85cc140174cb2bb4d1f87a055d2b009c` |
| 30 | `theorem` | [KaehlerDifferential.End_equiv_aux](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-end-equiv-aux.md) | 358 | `result-track:1839f43df0732f92b26100bb08bd6ff5e23921ae2fda5ec5278a5071324c27aa` |
| 31 | `instance` | [instR](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/instr.md) | 380 | `declaration-track:e6a013b256a35c3d29733d30dc31d8928d40dd3e07384a46d16f555aad15a5ff` |
| 32 | `def` | [KaehlerDifferential.endEquivDerivation'](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-endequivderivation.md) | 385 | `declaration-track:6df5a5ce4e3674435c34d31d643c89a907ac69f008be5831d40319828eb3275a` |
| 33 | `def` | [KaehlerDifferential.endEquivAuxEquiv](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-endequivauxequiv.md) | 391 | `declaration-track:91a604abc221300cb3bc1872c71dcf4a51e9d563ecd5dc25e0b5b8302cfe6b3c` |
| 34 | `def` | [KaehlerDifferential.endEquiv](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-endequiv.md) | 402 | `declaration-track:f9d9be075663520650451ac3cbe8726b5e8011cc2dd8bb7cd393b3af95873731` |
| 35 | `theorem` | [KaehlerDifferential.ideal_fg](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-ideal-fg.md) | 413 | `result-track:a0c6e2e9624599c3bcc2f4da1aa746cc4633fa1b1a28e0499dc1bac7d21c3376` |
| 36 | `instance` | [KaehlerDifferential.finite](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-finite.md) | 438 | `declaration-track:62941c4f3f4ceea38a3b9ccb1c12a9d048f576c6e94eaacffad8f3a07c82fd6d` |
| 37 | `def` | [KaehlerDifferential.kerTotal](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal.md) | 481 | `declaration-track:86e5fcab8a649005c4270df9e7f6bf334f7b1869864b350eb250ce3496660e04` |
| 38 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_add](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-add.md) | 490 | `result-track:71524d338f89985ee115413b90f864847ab33882f9aaeb2090320c44d46afbf8` |
| 39 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_mul](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-mul.md) | 496 | `result-track:2e49562e7790965e037c48e1d497fe760aa84fbdd739801aa85f7b2292576d7d` |
| 40 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_algebraMap](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-algebramap.md) | 504 | `result-track:af1c90db54f765d9b904d2493a80950281ba8b9fdf53404c94aecd308960d95d` |
| 41 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_algebraMap_one](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-algebramap-one.md) | 508 | `result-track:a7b6183a2fca98b35b1cd05ae047fc10e077e64a51dee9a7f5891acb9968910c` |
| 42 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_smul](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-smul.md) | 511 | `result-track:74cbdacd61f6e0df937fe3bafb94181bca469ad4b9ee4fa8cf1ff793b03f4295` |
| 43 | `def` | [KaehlerDifferential.derivationQuotKerTotal](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-derivationquotkertotal.md) | 519 | `declaration-track:e2a791a2c683c87a74c7436175c011a309c17547fff1505c021e67dd5f1350ff` |
| 44 | `theorem` | [KaehlerDifferential.derivationQuotKerTotal_apply](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-derivationquotkertotal-apply.md) | 529 | `result-track:d64af7f9ca3956ff358214333fe6432b92da7d6a48194293aff2ca9acb62f5de` |
| 45 | `theorem` | [KaehlerDifferential.derivationQuotKerTotal_lift_comp_linearCombination](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-derivationquotkertotal-lift-comp-linearcombination.md) | 533 | `result-track:338605d4d1f5f43d61554ffb6c22f383dce159441817dfb5669833758d891bfc` |
| 46 | `theorem` | [KaehlerDifferential.kerTotal_eq](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal-eq.md) | 542 | `result-track:4c1c33a53f3398a70c4f4cfb51e859a12d6941bb1a1eb6b321e0afa2876d9e62` |
| 47 | `theorem` | [KaehlerDifferential.linearCombination_surjective](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-linearcombination-surjective.md) | 552 | `result-track:89a06fcb270c3b4bdbc2cf8c70eb2ee733d323c1a595cc69080c0891749e2f62` |
| 48 | `def` | [KaehlerDifferential.quotKerTotalEquiv](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-quotkertotalequiv.md) | 558 | `declaration-track:517f4ff6876617bc57569f6ce4fbb53163dddf59a581bc2225dfe6ba43c17772` |
| 49 | `theorem` | [KaehlerDifferential.quotKerTotalEquiv_symm_comp_D](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-quotkertotalequiv-symm-comp-d.md) | 579 | `result-track:256388ffc8ec799eae2618d91d60e188090beb06abd801602a511eddcb7adb36` |
| 50 | `macro` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/macro.md) | 602 | `declaration-track:33d2fcef901963cf314d4b4ca61b25316c44175a8070888c45661a6ac91f18a7` |
| 51 | `theorem` | [KaehlerDifferential.kerTotal_map](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal-map.md) | 618 | `result-track:2aad99fd8a5f4a5768b83393e813b9ea367476c2bed3326c9056a83ff65b6339` |
| 52 | `theorem` | [KaehlerDifferential.kerTotal_map'](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotal-map-source-edition-2.md) | 643 | `result-track:54dcf584ee8c2dc9df65d8dc2827f539cab85a4fac19a08e7bb91f5b93e6b360` |
| 53 | `def` | [KaehlerDifferential.map](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-map.md) | 663 | `declaration-track:c6bc4fe7d35c081388ac3fff7ce143239027e5054e2e9f3b02a06643e8c0a945` |
| 54 | `theorem` | [KaehlerDifferential.map_compDer](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-map-compder.md) | 667 | `result-track:505a6f32a6443213e016d530cfde1f05910e7082cfbd96e67e265076de8c6100` |
| 55 | `theorem` | [KaehlerDifferential.map_D](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-map-d.md) | 673 | `result-track:d33e750b5507bb84846891961f06f0eafb4dd9bc8a969fec5a6a82d4833b470d` |
| 56 | `theorem` | [KaehlerDifferential.ker_map](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-ker-map.md) | 678 | `result-track:b42e94b647c4e4538f7010e44e60d3c0d10ef0e8256c7a6d0ac77d91409d4cf6` |
| 57 | `lemma` | [KaehlerDifferential.ker_map_of_surjective](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-ker-map-of-surjective.md) | 695 | `result-track:48651bd171e3773dad47fe4ec7fac87e27a13fb773eb5508208e47b7940852e0` |
| 58 | `theorem` | [KaehlerDifferential.map_surjective_of_surjective](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-map-surjective-of-surjective.md) | 707 | `result-track:f6b1c740b347729dffb1324153062af9fc9e08f90502cd8afd82eb0ad6d62ce7` |
| 59 | `theorem` | [KaehlerDifferential.map_surjective](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-map-surjective.md) | 718 | `result-track:a1847db8748307fb6b09b67bd83b350c1600cd4c204702480cc92fddc2debee2` |
| 60 | `def` | [KaehlerDifferential.mapBaseChange](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-mapbasechange.md) | 724 | `declaration-track:ee987bcc0bb5bbba002242f53c7f0b4bf8b36092008b960738c1bcb6864ae6fd` |
| 61 | `theorem` | [KaehlerDifferential.mapBaseChange_tmul](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-mapbasechange-tmul.md) | 728 | `result-track:a0341803d497314c258f160d389be20ce5917aa976fa0d355cf30eb676c2c3f2` |
| 62 | `lemma` | [KaehlerDifferential.range_mapBaseChange](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-range-mapbasechange.md) | 734 | `result-track:e81b7c46494ee3fa088c0f0d0645f28a9075cf48eab47b99ad45fb4e29bdfe89` |
| 63 | `lemma` | [KaehlerDifferential.exact_mapBaseChange_map](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-exact-mapbasechange-map.md) | 760 | `result-track:94914026ddc4185218b93931f2d7847bc76bd1f431080f2294caf9a5d60823a4` |
| 64 | `def` | [KaehlerDifferential.kerToTensor](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kertotensor.md) | 769 | `declaration-track:8776c0eacd70b7608e680911d8bea8ca933371e3b0bdbcf53c228b06c1fb6aa8` |
| 65 | `def` | [KaehlerDifferential.kerCotangentToTensor](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kercotangenttotensor.md) | 780 | `declaration-track:d79c7bf6e0af2e99b134fab8f596c2d26b5409ac64c157b5fa3edce99d3b1f61` |
| 66 | `lemma` | [KaehlerDifferential.kerCotangentToTensor_toCotangent](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-kercotangenttotensor-tocotangent.md) | 792 | `result-track:0f6ee9816a7257ca74c8e740f9555634430e8a9b558f856b6071f23245f583bf` |
| 67 | `theorem` | [KaehlerDifferential.range_kerCotangentToTensor](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-range-kercotangenttotensor.md) | 797 | `result-track:c0431056ad4d63f03ea2c22a626fa3cf818e8bfb7d8fb74f67da6adf589ac618` |
| 68 | `theorem` | [KaehlerDifferential.exact_kerCotangentToTensor_mapBaseChange](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-exact-kercotangenttotensor-mapbasechange.md) | 843 | `result-track:73e9e9831731a053302078808c04639a5c9f64535c15b979b6418231d7166868` |
| 69 | `lemma` | [KaehlerDifferential.mapBaseChange_surjective](../../../../CommutativeAlgebra/KaehlerBasicNamespacedPublic.lean/declarations/kaehlerdifferential-mapbasechange-surjective.md) | 848 | `result-track:6fdeb880c918b7726ac2d6870e2745366dee16ee9c489872eca5005ee5b847bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16462bb4ca88fbe6d2adaf61d1eee18752f9a2eb42df00d8c5d6f433f31c0b52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

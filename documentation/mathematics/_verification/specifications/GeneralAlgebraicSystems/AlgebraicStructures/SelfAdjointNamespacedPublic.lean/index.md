# Verification target: Self Adjoint Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2e450b9a8721f9879b088d8e80f6150d5500827",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2e450b9a8721f9879b088d8e80f6150d5500827`.

Source path: `GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean.json)

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
| 1 | `def` | [IsSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-source-edition-3.md) | 58 | `declaration-track:fa1ae60efe59da19e5489da9a14e312805b3d1bdfd83ef048dda71e02c7083df` |
| 2 | `class` | [IsStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isstarnormal.md) | 63 | `declaration-track:8db2fd55d6e305ecaf574fc6200fe0aa94b157047c72af6edfb8d7074ababc7a` |
| 3 | `theorem` | [star_comm_self'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/star-comm-self.md) | 71 | `result-track:b1e9fe4c8361a43ce0cb16c641dd0104980381d355eca0b8f37134a478e25c79` |
| 4 | `theorem` | [all](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/all.md) | 78 | `result-track:01a441733807c6dbb5164740c63631d1d985a9d0cff183839aa059ec8cf2d66e` |
| 5 | `theorem` | [star_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/star-eq.md) | 81 | `result-track:e09d2f77aa81f22bff42ff13c5c4825cba0411cb2409cf700007c2864a206972` |
| 6 | `theorem` | [Self Adjoint Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-iff.md) | 86 | `result-track:7f845eafc84af80be77982c832b41fd68f26d166315b3a3c4efb20b13da352e6` |
| 7 | `lemma` | [Self Adjoint Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-iff-source-line-90-occurrence-2.md) | 90 | `result-track:fccc72372c0ad406968068e71abd2d06b0eeea9640b78c32b1edb1c2692cd01f` |
| 8 | `lemma` | [Self Adjoint Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-mk-iff.md) | 98 | `result-track:c5cc848e8a3f0ad06a56e3d190a1051ef7813770a3ca168440e7c3cd9a29c02c` |
| 9 | `theorem` | [star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/star-iff.md) | 106 | `result-track:690d461864ca15c0c74969021430586f3c3d0aceee07a7884271ade2bcf124a2` |
| 10 | `theorem` | [star_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/star-mul-self.md) | 110 | `result-track:edc3dd1f5827f11f3b76d9f11fefc8166c507abc4e8cf03454a779e829e3c98e` |
| 11 | `theorem` | [mul_star_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/mul-star-self.md) | 114 | `result-track:4d6ce41a371a5ba5f3cf4f7890f8c13c96cd31fa11cd740e8fdc4034083178ff` |
| 12 | `lemma` | [commute_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/commute-iff.md) | 118 | `result-track:d0256e922e349fb80759c1e02e392038b16432ce6a395b16779c1b241502014c` |
| 13 | `lemma` | [commute_of_mul_eq_isSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/commute-of-mul-eq-isselfadjoint.md) | 124 | `result-track:7ed142ef07c202dd9c827b0e9b3d358d95515026b99f5dc07966a0ed9aeda42b` |
| 14 | `theorem` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/map-source-edition-2.md) | 131 | `result-track:346de2bc4ceaa3fcc0b6f4fc1e13daeb3790dfa3e4bc115530601189a2a4e5a9` |
| 15 | `lemma` | [of_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/of-map.md) | 135 | `result-track:a8c7f833faf662e618a2f23fab79777160599047c5a28795cdd1a85783259fd2` |
| 16 | `lemma` | [Self Adjoint Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-apply-iff.md) | 141 | `result-track:19590993c1b42db1651bcf4ce5f1398f853b397870ed87423e326b09b8b1362e` |
| 17 | `theorem` | [Self Adjoint Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-map.md) | 149 | `result-track:da6145deb045b6d09e0e9f27274ec3c1209b40c73a17c78c7b32a1608428ad78` |
| 18 | `theorem` | [isStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isstarnormal-source-edition-2.md) | 154 | `result-track:ced9b78f1a9413b7d4017512b43cc7b3ff512002413b6ad9450a4b34839b195a` |
| 19 | `theorem` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/zero-source-edition-2.md) | 162 | `result-track:945771ca930de2b8e3809c04efe5b80245fa62774606d2e2d528a4183f841c54` |
| 20 | `theorem` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/add.md) | 165 | `result-track:f6dc694e00ab64e25a5501a750fcf8afb17213e13664379e3a030ac261383167` |
| 21 | `theorem` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/neg.md) | 175 | `result-track:6db8eb7e6857fa4056493eef92f995ba01d55f1789d128ae94d9df6c78ff72c5` |
| 22 | `theorem` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/sub.md) | 179 | `result-track:43a8c867a33cb06bf80250e83d2d189100f11169ba8d71578883f7ca8727960d` |
| 23 | `theorem` | [add_star_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/add-star-self.md) | 189 | `result-track:6ed5d663524552225b5fdb867ab9a8f323149fe62c99dfb0a6c08c0fcd63f652` |
| 24 | `theorem` | [star_add_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/star-add-self.md) | 193 | `result-track:e3f30c8e094ee9b4f649a8e676bcf2d8451708a65467b13f5735002cd941bb33` |
| 25 | `theorem` | [conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/conjugate-source-edition-4.md) | 203 | `result-track:9ea5ae62e5abb2088037f4a602a774555e280cc5fda35accee16de98d16d425e` |
| 26 | `theorem` | [conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/conjugate-source-edition-3.md) | 207 | `result-track:79d5bc5d1086bb54aaabf606c013cf31d9d248a169dd88b0fcc72a1e46055dc8` |
| 27 | `theorem` | [conjugate_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/conjugate-self.md) | 211 | `result-track:dc0f8dc72e9454bf24b24dc4e9ba02e942e5a036e9bf5fea872a79742d736491` |
| 28 | `theorem` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/one-source-edition-2.md) | 221 | `result-track:70e740f7af9ed83a886f06c9ca2da007fa7b2e6fd22e341837fe63f0b9888eaf` |
| 29 | `theorem` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/pow-source-edition-2.md) | 231 | `result-track:d42e2260e242077be28d9d41fb0fe8425530a67c934e1567b976a212f099fba6` |
| 30 | `theorem` | [invOf_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/invof-iff.md) | 235 | `result-track:6cb3e1e4ca1a984e343e03450163942bfef86921eca00e8ce25fd7e50ffdd7ae` |
| 31 | `lemma` | [Self Adjoint Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-conjugate-iff-source-line-241-occurrence-2.md) | 241 | `result-track:63d80a27f835af09bb3bc1c6ca8106f29092d0896926d703188aafb693fe5855` |
| 32 | `lemma` | [Self Adjoint Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-conjugate-iff.md) | 246 | `result-track:60ed02a9579678d2b29199dcb5357fbda9e5689a4123ccede08b3a0925ee589d` |
| 33 | `theorem` | [natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/natcast.md) | 259 | `result-track:abb3bb1740db5304d37fc6ff9efacfab49965d8c15aab64f69b36c0d15c3ac9e` |
| 34 | `theorem` | [ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/ofnat.md) | 263 | `result-track:ac24427e7c18b0a7390297282625c2cbbcfb007c34b483841ea0fe497fa7e619` |
| 35 | `theorem` | [ringInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/ringinverse.md) | 267 | `result-track:fc07364196bf2e63207f60a4f0e5e4e1f76d6287cf3b6aa4952fe98d5bddc386` |
| 36 | `theorem` | [Self Adjoint Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-ringinverse-iff.md) | 271 | `result-track:e7cf1f575df6cdf3ace7d60012a7c4cf829b911e5efb54dc9b5c9d11a03bf224` |
| 37 | `theorem` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/mul.md) | 281 | `result-track:c6017b1fbf10140f6276ead3ba9ba2f9398e2ffe326fadbfabbf11f4d9b268d8` |
| 38 | `lemma` | [conj_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/conj-eq.md) | 291 | `result-track:195320f003cae27abd7f58365de1e6c9befb03928870142d5f77477b75abaa9d` |
| 39 | `theorem` | [intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/intcast.md) | 300 | `result-track:f1e32ef10a55a8d886e623c527f9807d298510110f31d2ccf56fcac40a7a9a65` |
| 40 | `theorem` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/inv.md) | 310 | `result-track:3f5d06918a8d2e1f682c9a70fddd1fbbc66026b473bfb1d2b4704f5124a3d42f` |
| 41 | `theorem` | [inv_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/inv-iff-source-edition-2.md) | 314 | `result-track:c761d072473ee14045dc666008b0ad956b87ade9d1922cd6514e16a0283e100f` |
| 42 | `theorem` | [zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/zpow-source-edition-2.md) | 318 | `result-track:381aef9cf2eec75ac962397f8ff18457793b2213f7dc3a76d1239d6eddacf656` |
| 43 | `theorem` | [inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/inv-source-edition-2.md) | 328 | `result-track:44ce0911867cd0d0e428da9b6cfd4433e7b86cde5a1adeaf7dbf9412a07bb588` |
| 44 | `theorem` | [inv₀_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/inv-iff.md) | 332 | `result-track:68f412ca0c28119d984335d8194d21f6900894673498d7ed1ded237f5e0a0ef3` |
| 45 | `theorem` | [zpow₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/zpow-source-edition-3.md) | 336 | `result-track:86c6a6718255d4d565392a2f1f1a55e4c5d7d1e630cedad94596c139b354333d` |
| 46 | `lemma` | [nnratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/nnratcast.md) | 342 | `result-track:53a141c24fad39ce1442c249c99e90b05ccb3b48a2563a6b2118fab08cb794ab` |
| 47 | `theorem` | [ratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/ratcast.md) | 351 | `result-track:9f193ed0a24831388ef4fee812fc768eb43314ab541f2f707e412c283ddb1416` |
| 48 | `theorem` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/div.md) | 360 | `result-track:c43dc1467c605877615cfd532418c2c8035a94eeb02f1b495814dbe2d5c3a941` |
| 49 | `theorem` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/smul.md) | 368 | `result-track:41fe9f8f6068a968e297b2dbd85dceff7f4cde2f6dfc9f15c8728afca60fcb39` |
| 50 | `theorem` | [smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/smul-iff.md) | 373 | `result-track:d570e4b7abcea656c835fefe42383edf9d5f58fbb8b8fbb834ce740cdb6f6eab` |
| 51 | `def` | [selfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/selfadjoint.md) | 389 | `declaration-track:6fd4268c580edae70adf5c57f5f625442aaa4ab636c2a1a5c273dc051e9c4b2f` |
| 52 | `def` | [skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/skewadjoint.md) | 396 | `declaration-track:067d71e430d65057c12230708da52f85b9908f7cb0a653ac0ed9b5c4bd218a1f` |
| 53 | `theorem` | [mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/mem-iff.md) | 411 | `result-track:1d7fea915ef1301fbe33e26c11b9c479440f477c71c18f42ddaf1c7a8df052cd` |
| 54 | `theorem` | [star_val_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/star-val-eq-source-edition-2.md) | 416 | `result-track:b7caf2e861df2e69a6c77b16d65055ab6b1659828c2d4979afa2dd010fb890ee` |
| 55 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 419 | `declaration-track:7900952d5d77641f7dfbc38f3a92e4f535fb0530e59fd62844e1c0706f8d4362` |
| 56 | `lemma` | [isSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-source-edition-2.md) | 423 | `result-track:91a5c5616759d9a02fed1e219b0631d45202b6c422e235f90bef3832387e9205` |
| 57 | `instance` | [isStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isstarnormal-source-edition-3.md) | 427 | `declaration-track:ebb836a0cfa458baf581d05d855cd8c2350a89b073430c7ab0a80f3c35ec8333` |
| 58 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 435 | `declaration-track:733cb9db55831ae4ab78294bc88d5ab37a5956d85231c96b8c92b5240bda6df4` |
| 59 | `theorem` | [val_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-one.md) | 439 | `result-track:9af9ec733a4ba835be291cdf1addb3860546ae7c9dda19d431a271b56493dc0d` |
| 60 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 442 | `declaration-track:75a5fabec416cabcc39296e36ca696217a8cc7606bb90805ed9e831a8af69c9b` |
| 61 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 445 | `declaration-track:54deb1dc4fd7d0b1b6f475fdedd838581489fe1f81398e8b45f060130d4f97cd` |
| 62 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 448 | `declaration-track:aa4dc473f8d8f765df7ae35433bb4631c1e02d8dce2975e6248e7fd1d4a8c79f` |
| 63 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 451 | `declaration-track:edf771ca30dccdd53e73b4dd328efcc85ef11a96d50a90f4f65a6810f438841f` |
| 64 | `theorem` | [val_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-pow.md) | 455 | `result-track:737becef81e99d57830a8f6c7933994afa6db4079108d493b810a60dcbbd7dea` |
| 65 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance.md) | 464 | `declaration-track:10101b4e49c3a218f1a68996da3b0d2cd756f6950670c0f226a50529420ea9df` |
| 66 | `theorem` | [val_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-mul.md) | 468 | `result-track:03b29b6d153a2a060c3ae513ca2d707b6b670778ced8fe8292beeecae281a9ff` |
| 67 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 477 | `declaration-track:3a773c78da2f3183cabaa20293ae8708ed3fd8e7b8c6db506fb9519a9dbea2e8` |
| 68 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 489 | `declaration-track:cced79b6b387e0156dc87f4fabb1723b0d544b331f13a7f647ad247788c6c32b` |
| 69 | `theorem` | [val_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-inv-source-edition-2.md) | 493 | `result-track:9804b90840012af5d1bee06e89599385af9a077d31fa3277643b429ae8917ae2` |
| 70 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 496 | `declaration-track:3f318a8b738179d7469c6de66893f88da3f51b482b24d66e73e39a334c0b91f0` |
| 71 | `theorem` | [val_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-div.md) | 500 | `result-track:d990164176d8e6b04d63ccb4bc6b27a6d2a17fe61979c3bf9237a6f23612fd0f` |
| 72 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 503 | `declaration-track:6c8aeb0a932d7c3a7666cb2d9938fafc075360d4d1e11e8b18b95a4d8ad842a7` |
| 73 | `theorem` | [val_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-zpow.md) | 507 | `result-track:e7b30312adc05656f3c4015471369bb55011cb84de2db0ef19a7d060e70a949b` |
| 74 | `instance` | [instNNRatCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instnnratcast.md) | 510 | `declaration-track:0b91fc7e06026c6a462f0206b818c7c572d393eb377c731685b09f4bde2bd575` |
| 75 | `instance` | [instRatCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instratcast.md) | 513 | `declaration-track:1c4430d98faa9b8e016c6adc1455254b6a207a9388ec9e17d4bb6a09a6fa410a` |
| 76 | `lemma` | [val_nnratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-nnratcast.md) | 516 | `result-track:d2357dec306b9e087b71d7ca7a6bc48b45fdeb89c314db1f0c5c52a801c91b5a` |
| 77 | `lemma` | [val_ratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-ratcast.md) | 517 | `result-track:1c318a47762bddd376de0bb0e21d26199d92c86df08cb1a66162ae5dc51f476a` |
| 78 | `instance` | [instSMulNNRat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instsmulnnrat.md) | 519 | `declaration-track:ea3b9d243cd5a0a1a018137354b855d4a78ee1e144268164240cf5797b5493fa` |
| 79 | `instance` | [instSMulRat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instsmulrat.md) | 522 | `declaration-track:4283baff9ca118f2f78e5c1b7ae997e631f04e2b079ff34adace2166610fc18f` |
| 80 | `lemma` | [val_nnqsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-nnqsmul.md) | 525 | `result-track:0d59710a7b351455f6d7bf48da327c03b7adadaf546e1241c86342111a7eac5a` |
| 81 | `lemma` | [val_qsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-qsmul.md) | 526 | `result-track:79b0c11a54881dbd63e57b275421809e4387e69a167b081379a2355e8a85b941` |
| 82 | `instance` | [instField](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instfield.md) | 528 | `declaration-track:7cd08b830f943acbccfccee5ae527d17edee20903c206a1796d49622bde8c589` |
| 83 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 540 | `declaration-track:e96126e875f4c65f7e7ba8e948209d38701c6186949a2e195178f2006aba146b` |
| 84 | `theorem` | [val_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-smul.md) | 544 | `result-track:2161e5ce430fa3cc6b31dc4e6b480ea8fafbfc1967ab6420692d93d86f8ad550` |
| 85 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 547 | `declaration-track:f9e2166416b2c7bd1f881fd5a5c7871b3aff5c289389fc5edde9fb8661a25dce` |
| 86 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 550 | `declaration-track:5045176d20b62483601884fa4201664500055889c0e643f699ad011217c283aa` |
| 87 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 559 | `declaration-track:160f5c633673560a840009e2d414b732afcfc6bf7890ba2bd9284365eb6a19bb` |
| 88 | `theorem` | [mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/mem-iff-source-edition-2.md) | 572 | `result-track:8b757a5a1445438c677a55f07ab735c87fc6c617044352cbd1594e61c6303575` |
| 89 | `theorem` | [star_val_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/star-val-eq.md) | 577 | `result-track:478a325900fb11099fedabedba7612687418d129b82191b24ebce9ebeeeaea24` |
| 90 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-22.md) | 580 | `declaration-track:fc600a51e94808cb16c95e6acc2c3838c3e2ce21e6937c14009218c42f09deb7` |
| 91 | `theorem` | [conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/conjugate.md) | 589 | `result-track:3993f5a834ac800d612db3a9c8881e69b6f156f6d16a1b222eb63f663efd2dd8` |
| 92 | `theorem` | [conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/conjugate-source-edition-2.md) | 592 | `result-track:59f22e4dea29b790b9413ebd346440ae6b32b945839675dcef7a501ef702558e` |
| 93 | `theorem` | [isStarNormal_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isstarnormal-of-mem.md) | 595 | `result-track:2f648e01926c6a951aa2b550bf878fa2fb05caf65fad4aff9f46cf654ac4a379` |
| 94 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 600 | `declaration-track:cd6311b66f90858b60ba9920ad2af6ab924c927b79b1fe6ffad12a33881ec6fd` |
| 95 | `theorem` | [smul_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/smul-mem.md) | 610 | `result-track:f295c7c3930ab65dfdac7164bf2a75aa356e9dffc45ee0718bce34026cfd55fb` |
| 96 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 614 | `declaration-track:da6037af329593e45584e130b21c5bdd90c7d26b80f15fa1345eabb6444ca386` |
| 97 | `theorem` | [val_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-smul-source-edition-2.md) | 618 | `result-track:999cf86ce4198d3d6672bb0ca4002b70bb14cb5f960f6f8ef95bf7bee3e564c0` |
| 98 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 622 | `declaration-track:51b965f00c68408da171a12bea213edfdca0f8ee0232d105301d2a07fa4574aa` |
| 99 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 625 | `declaration-track:1d76d62b12bc0074dde82c8566c526c0279eba6a28471f9693133bd9a9016fe3` |
| 100 | `theorem` | [IsSelfAdjoint.smul_mem_skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-smul-mem-skewadjoint.md) | 634 | `result-track:01e7e31b892fe1216d02d9a3317536d9feb1c03dd674d9a78186a8f4e338c13d` |
| 101 | `theorem` | [isSelfAdjoint_smul_of_mem_skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-smul-of-mem-skewadjoint.md) | 641 | `result-track:1fe5a585f734b2a09f0821f9375c4ef106dbf47f66a53c28fa057a6f830e5012` |
| 102 | `lemma` | [Subtype.isStarNormal_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/subtype-isstarnormal-iff.md) | 647 | `result-track:8208a21fee4a098c2918be04f8c84eb9edf72c55b07f15f49829a2679109a6db` |
| 103 | `instance` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/zero.md) | 656 | `declaration-track:6a66def2c19ea55619ddb048e50289b15fa69126ce9acd73416632adeae45d69` |
| 104 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/one.md) | 660 | `declaration-track:39db1df2cd3f805dbe49d61585235dc406cbb6aa653fc8da01c5a61bb7802c49` |
| 105 | `instance` | [star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/star.md) | 663 | `declaration-track:63b77409578fdd4e5d7bb2018bc67b8c7ea5a96c0805487b23d35aafef5d6ea0` |
| 106 | `instance` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/neg-source-edition-2.md) | 667 | `declaration-track:ff5085e5070256c088611a9987da17b7465b1ecc97799dae9e3fa49a2faff167` |
| 107 | `instance` | [val_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/val-inv.md) | 671 | `declaration-track:0e9541e7245e9a8755e8681e1d5f254cbb0878bbcc4dafd28d819a167676c61e` |
| 108 | `instance` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/pow.md) | 675 | `declaration-track:b6b269c619ac31253518e4a25e4181964bd2101bb95c4655eedee3e2a0b03d94` |
| 109 | `instance` | [zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/zpow.md) | 679 | `declaration-track:2f5fca1f0241bf594e33a42d6a0d89beaf421f536dda7ec6af0e2c3e75ae03c2` |
| 110 | `instance` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/map.md) | 683 | `declaration-track:1ae785417a8abbe5fe9d28377d63181d4e1be5fa408b3c71339f3efbf24edc6b` |
| 111 | `instance` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/smul-source-edition-2.md) | 688 | `declaration-track:481513ba1e6812ce0f4be3534807032b501edd893c3b77aff7721a7e210d43b8` |
| 112 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 696 | `declaration-track:50eee8ae3879ad476244d6874d525ce2f086080d92651fa0b30e518ea984ba11` |
| 113 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 701 | `declaration-track:d6662abaf0b9af7ac51f048269ff8db776ff68eb8c863805d569e1e9a2530658` |
| 114 | `theorem` | [Commute.isStarNormal_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/commute-isstarnormal-add.md) | 705 | `result-track:fed3c1838131271b0b3f9928c4d51a901836b96c3724531d59dac45079b50cf3` |
| 115 | `theorem` | [Commute.isStarNormal_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/commute-isstarnormal-sub.md) | 713 | `result-track:04e8e96742984f1a14e8d2a072c46660c31c1602c4343c0f9fb71c2a883f32b5` |
| 116 | `instance` | [IsStarNormal.one_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isstarnormal-one-add.md) | 718 | `declaration-track:dc1875384630b07192d0762c6486f532e2815bbdcbf686d6ca03167aa0ed591e` |
| 117 | `instance` | [IsStarNormal.one_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isstarnormal-one-sub.md) | 722 | `declaration-track:2908c01a2bc2c7fe733d01a02398c04ffdf6196409e3f08042d867aa2e989c52` |
| 118 | `lemma` | [IsSelfAdjoint.commute_of_mul_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint-commute-of-mul-eq-zero.md) | 726 | `result-track:4cd07248f4cfb4b0b5ec13b9e3f160dd12937cdf7215e419ea5d9cb50537a969` |
| 119 | `lemma` | [isSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedPublic.lean/declarations/isselfadjoint.md) | 735 | `result-track:0ff9634dccc4256700faa63f68495be55db3214788883ea098a64f8ceddd97f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d6d910df28b4d1fd36491adfeeccb1c4649571c3c39c6fe7a050c10df0bec6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SelfAdjoint/Variant63df22ef3f4d8fe7a73d1ab3907a7613acbb0dd5d700f0d50b8a4b7c8e7142ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

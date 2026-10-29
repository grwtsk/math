# Verification target: Direct Sum Internal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6313e75f01ff9a65c277c42e3dbe6e46f415cda9",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6313e75f01ff9a65c277c42e3dbe6e46f415cda9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean.json)

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
| 1 | `theorem` | [SetLike.algebraMap_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/setlike-algebramap-mem-graded.md) | 69 | `result-track:c52ab11789b543b14db0e7aa922cf21a9bc8ebe3b038417ec9d8acd3870a9980` |
| 2 | `theorem` | [SetLike.natCast_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/setlike-natcast-mem-graded.md) | 74 | `result-track:1a17ca65f9ef18724385b4055d5c7095bf5b361c85ab25909f6ae11b95a627ff` |
| 3 | `theorem` | [SetLike.intCast_mem_graded](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/setlike-intcast-mem-graded.md) | 84 | `result-track:4823ef8b69fe2cd953d0bda233c41e3fedcfcbb0d1d4d9ab93730ad4d97f3075` |
| 4 | `instance` | [gnonUnitalNonAssocSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/gnonunitalnonassocsemiring.md) | 103 | `declaration-track:92ffa0cb92a673f0a50774f57512879cb2dd44e2dc58f434419d61e28cd72c6f` |
| 5 | `instance` | [gsemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/gsemiring.md) | 112 | `declaration-track:72d2f041295148ab31273f5c25500f8d98795b2b2201661adcfa5ff46e7d8e38` |
| 6 | `instance` | [gcommSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/gcommsemiring.md) | 119 | `declaration-track:17bd2535aba03de4420b8abeb86cad17d2d689d9959dee2ad50d84dffe9be60b` |
| 7 | `instance` | [gring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/gring.md) | 123 | `declaration-track:57371f75fa34ffab97141a33cbb48cb629aa6b0237b71cfc718f4e12b00eeb35` |
| 8 | `instance` | [gcommRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/gcommring.md) | 130 | `declaration-track:5c85a660e0dd242ebd539f1365abdc46298004426ad1a7793c500c9b4b3b8ecf` |
| 9 | `def` | [coeRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coeringhom.md) | 142 | `declaration-track:ccb6f36421237500731ad7bb7a13b5a455cd521689cb8f2a6b7b0dd912dcd94d` |
| 10 | `theorem` | [coeRingHom_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coeringhom-of.md) | 147 | `result-track:f5c82c93f8448f5907c9c216d6715e137c27425bfc345480bb4b4bf2ccdc8657` |
| 11 | `theorem` | [coe_mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-apply.md) | 151 | `result-track:c5765ac6eaa06ad4519ab8c0e24ef6b31e70bbe694f6ec66d7875bd9f7c5d31f` |
| 12 | `theorem` | [coe_mul_apply_eq_dfinsuppSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-apply-eq-dfinsuppsum.md) | 158 | `result-track:19c0fc57332155f5ccac6eefcf2f363201220c5ac2cefb1ef59555220748298e` |
| 13 | `theorem` | [coe_mul_apply_eq_sum_antidiagonal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-apply-eq-sum-antidiagonal.md) | 173 | `result-track:9df40604bd797d8f5f7b38aee3062a7e1bffe88c2b2ae42d8fba82909f384c02` |
| 14 | `theorem` | [coe_of_mul_apply_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-of-mul-apply-aux.md) | 181 | `result-track:645bddf3b66acde2dfdeb32b057f1658374e60dfb6073eb5f2db6b60baa4ced7` |
| 15 | `theorem` | [coe_mul_of_apply_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-of-apply-aux.md) | 195 | `result-track:963c5952f74d558bf6d2b22f9a5fe04260e82fa2853a698a9438d9a6e626feab` |
| 16 | `theorem` | [coe_of_mul_apply_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-of-mul-apply-add.md) | 209 | `result-track:e10eb9e4734c37cacd906cc7a713fd066cc5370f702ab8e103aab9cc5346081a` |
| 17 | `theorem` | [coe_mul_of_apply_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-of-apply-add.md) | 213 | `result-track:9c4b573167b91d017e4347451357792ea31a4c36359867f28bed1733e12671e5` |
| 18 | `theorem` | [coe_of_mul_apply_of_mem_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-of-mul-apply-of-mem-zero.md) | 217 | `result-track:eafd1390d2d4bbca1657a00da3a220b6c333643fff2b4b13e5922ea6282b2f54` |
| 19 | `theorem` | [coe_mul_of_apply_of_mem_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-of-apply-of-mem-zero.md) | 221 | `result-track:12074407d8ec0e2e89842542c3328209340192187a5d80ad05768ec891c7ed02` |
| 20 | `theorem` | [coe_of_mul_apply_of_not_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-of-mul-apply-of-not-le.md) | 232 | `result-track:c61d2f1a36ddca7c0965547608af893f26196d47b06a0e77e70ecab7ce91226a` |
| 21 | `theorem` | [coe_mul_of_apply_of_not_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-of-apply-of-not-le.md) | 243 | `result-track:00bf3ff636e998432f86e9adfc2eb42e1469e6f7c99456560ef713de3f0e062d` |
| 22 | `theorem` | [coe_mul_of_apply_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-of-apply-of-le.md) | 259 | `result-track:8c5a0e977d42aef08719613d132f7330b3c670eb7a5f879e91347a26834b1203` |
| 23 | `theorem` | [coe_of_mul_apply_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-of-mul-apply-of-le.md) | 263 | `result-track:2da54bdeedad09f7d8e4e5adba7f43bdee96c037b0bfd8b46728e65893285c01` |
| 24 | `theorem` | [coe_mul_of_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-mul-of-apply.md) | 267 | `result-track:5051f22919a758129e5caad04b9ec61bf89287fdab354dca39cf31517ecebf24` |
| 25 | `theorem` | [coe_of_mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-of-mul-apply.md) | 272 | `result-track:50e48261b33b4e59925aa64bdafb59adaab4df20ee0ee27dcb3f3699da09607a` |
| 26 | `instance` | [galgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/galgebra.md) | 286 | `declaration-track:a169ff8bc7f18c11ed4805f3f3415bf0f81b76e831fd02cae93b4a9261c30931` |
| 27 | `theorem` | [setLike.coe_galgebra_toFun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/setlike-coe-galgebra-tofun.md) | 297 | `result-track:19d6d631eff9fc9ea0a857b047682d822cc785b75944dfd0a7c5030d565c4736` |
| 28 | `instance` | [nat_power_gradedMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/nat-power-gradedmonoid.md) | 303 | `declaration-track:77f660fedbad159279f23ca8b659b67aab2b9a01a05a59775652ede5fe87f18f` |
| 29 | `def` | [DirectSum.coeAlgHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/directsum-coealghom.md) | 314 | `declaration-track:7b80735993cebd2c42b0316db248059f04db68d2d41985095f7a853f03b8d14b` |
| 30 | `theorem` | [Submodule.iSup_eq_toSubmodule_range](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/submodule-isup-eq-tosubmodule-range.md) | 320 | `result-track:a29b2118e927eaaebc3db2c347894e7f1d8ce855277733a3304dafa764e43ef1` |
| 31 | `theorem` | [DirectSum.coeAlgHom_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/directsum-coealghom-of.md) | 326 | `result-track:a76517266d694fb66150b137edfd22a80771a8c57258dc330d9b8faaabed8a80` |
| 32 | `def` | [subsemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/subsemiring.md) | 342 | `declaration-track:6a10876ad64498c95bf00c9dffe6c4f09215d90be98b036a029c0266edd70041` |
| 33 | `instance` | [instSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/instsemiring.md) | 349 | `declaration-track:f3a78537170b9f215cd46c8f9ebf60813b134076ebef0e62530c73b9f3dd40e5` |
| 34 | `theorem` | [coe_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-natcast.md) | 351 | `result-track:4b8130a1c831dd04b99abcc315d49f2cac54d48b734d52da9d9e3a4505b79bb0` |
| 35 | `theorem` | [coe_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-ofnat.md) | 353 | `result-track:978c6ce27f10d43ec910567ee6faddadb83dfb27123654160d6e570e380d7cc2` |
| 36 | `instance` | [instCommSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/instcommsemiring.md) | 365 | `declaration-track:b07eb9006af90efa2015744819c3cb4cd0a283507b69c94267d81041b59f3d0e` |
| 37 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/instance.md) | 367 | `declaration-track:f52556e84035504dc5b004d14014d1502486d81211ede02f5c8f58d43bc0fc30` |
| 38 | `lemma` | [algebraMap_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/algebramap-apply.md) | 370 | `result-track:c693eba04b34445bfb1cff90eddcb60e08e6b3c3d750f0cd072edca5352c15b0` |
| 39 | `def` | [subring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/subring.md) | 379 | `declaration-track:c8bc2ac0bde111bcb1e7e54083c370273593e0e5aaa0c78d9afb9a52dffb9e60` |
| 40 | `instance` | [instRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/instring.md) | 385 | `declaration-track:665dfc635a212e1a7d42ac3b5c9dbdea63a3d9d32d354ae89e99142f49b0a0a9` |
| 41 | `theorem` | [coe_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-intcast.md) | 387 | `result-track:6cec1040ee0aeac4dc69f8e7d083e1423c6c9736b347ef77f4afd61e36e3c7f8` |
| 42 | `instance` | [instCommRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/instcommring.md) | 397 | `declaration-track:93e17be4f5296a54f8639ae5cc922f8af38accbf42b83fbb1813d0bbebff3b18` |
| 43 | `def` | [subalgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/subalgebra.md) | 406 | `declaration-track:5d01b17d7067e65ddf461c58824a25b2949e7ab98f0b866a1e581ed342abbcf4` |
| 44 | `instance` | [instAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/instalgebra.md) | 412 | `declaration-track:3c6fa7eadd5b7dbb46893e8092eee8b6da4512b334a14606e2540346f924eb0d` |
| 45 | `theorem` | [coe_algebraMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/coe-algebramap.md) | 414 | `result-track:a1093e35a0fd65488d5280ee80738dc9fd6bf06da49a1feafe08714fbc13a4fc` |
| 46 | `theorem` | [SetLike.homogeneous_zero_submodule](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/setlike-homogeneous-zero-submodule.md) | 423 | `result-track:814a7faf77809da6ef017fa83bce90cd130509b87084d5a96e0220999292fd91` |
| 47 | `theorem` | [SetLike.Homogeneous.smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/setlike-homogeneous-smul.md) | 427 | `result-track:35a8722f7614a94d488bcd3ebcfb0167d2b77a66e81868cfbe68862d728053ad` |
| 48 | `theorem` | [mul_apply_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/mul-apply-eq-zero.md) | 445 | `result-track:fe326c81b2d09a415eaae37953e0ba1f67f1b166e5fb268caabb114a29eb8eb5` |
| 49 | `theorem` | [listProd_apply_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/listprod-apply-eq-zero.md) | 461 | `result-track:35ea9a76985d111ec85b20a446a400cf3210f30e3c1bf3dc996d5309c559f69a` |
| 50 | `theorem` | [listProd_apply_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/listprod-apply-eq-zero-source-edition-2.md) | 471 | `result-track:9177dc809e5e79c89f3f34d3e6f0afe723a1e25b0c75364c0b8596d6f3e73e5a` |
| 51 | `theorem` | [multisetProd_apply_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/multisetprod-apply-eq-zero.md) | 493 | `result-track:7a8241ccb03cdbb92f12eb9ebc66dfc30f5ac0e495f0cb39d1e45ae2d6dc020d` |
| 52 | `theorem` | [multisetProd_apply_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/multisetprod-apply-eq-zero-source-edition-2.md) | 500 | `result-track:fa32a3072417c4117ea43bcf74555bd8481281dc44850074d0bba24f1466be24` |
| 53 | `theorem` | [finsetProd_apply_eq_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/finsetprod-apply-eq-zero.md) | 509 | `result-track:6e91f1364b98e5949ec870606dcf651781ebb284531875f49ecff648732dc44a` |
| 54 | `theorem` | [finsetProd_apply_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumInternalNamespacedPublic.lean/declarations/finsetprod-apply-eq-zero-source-edition-2.md) | 514 | `result-track:ff561858fe7b972146d3669374e504c4d158ec2d0bc125a7d23261d78810ee86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=769ffc85f92a5003bb36d1db1cfe8de7b7820d608c6b0ff35f7a6b3a391b8146 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Internal/Variantf0c776b87ce17309d93f474486749fb76711f3bac30d978698670d7469e4d241.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

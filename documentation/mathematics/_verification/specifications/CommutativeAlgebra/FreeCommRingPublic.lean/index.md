# Verification target: Free Comm Ring Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b75cf295b5a330ae88b1721919fb6c5a419a9ac",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b75cf295b5a330ae88b1721919fb6c5a419a9ac`.

Source path: `GRWTSK/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean.json)

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
| 1 | `def` | [FreeCommRing](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/freecommring.md) | 76 | `declaration-track:1f51cc4f6b59742916652e755d6d4c925311ca966dc9f60ca9d95dadcdf2bbc7` |
| 2 | `def` | [of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/of.md) | 85 | `declaration-track:240ce78855885f3dab52115482cea1ea051c49b9cab3f84e6ad89815f6f53610` |
| 3 | `theorem` | [of_injective](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/of-injective.md) | 88 | `result-track:9fd0487fddda53b21ea4dc3fb3f75a5dfefe688d7415e8213e5f8870303c3dc5` |
| 4 | `theorem` | [of_ne_zero](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/of-ne-zero.md) | 93 | `result-track:d9e4840b151f986f7c66b07c5bae8a0ac3f8bb2656e4ed0e8ea7016fd6a02704` |
| 5 | `theorem` | [zero_ne_of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/zero-ne-of.md) | 96 | `result-track:0b9d553d9f3ca28805937aaa7f336f7d9f0bc8a12dd02414c14d457466c9c00b` |
| 6 | `theorem` | [of_ne_one](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/of-ne-one.md) | 99 | `result-track:055979d75490c630730838e7891cdf0ac3a2732a247e2719d18c70960b5ecd03` |
| 7 | `theorem` | [one_ne_of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/one-ne-of.md) | 103 | `result-track:0eaefad999fa5c79d922eb793b417bf59609c191e4e98b8fd722df874b109254` |
| 8 | `theorem` | [induction_on](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/induction-on.md) | 107 | `result-track:7214a03467e477c3479e66b29108cd15f56197b26dd0a578fc102294feb358ef` |
| 9 | `def` | [liftToMultiset](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/lifttomultiset.md) | 136 | `declaration-track:98a8727362283aa04d30d7d0ddde196450b1519c1b9eec0bac92fe104001e764` |
| 10 | `def` | [lift](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/lift.md) | 159 | `declaration-track:c69788eb99d69c6b9c1aa0b6f8d45a1221a35f8dab82ac6df59358bb7617c4c4` |
| 11 | `theorem` | [lift_of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/lift-of.md) | 164 | `result-track:9f523537463c1b0f4c77cb9bf48538d510e934c00ba80b66fa3209167c1904af` |
| 12 | `theorem` | [lift_comp_of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/lift-comp-of.md) | 168 | `result-track:5e6671f97da0e83273cdcedf5321a1c93e0c0e58f94345db1acb60e710e97e92` |
| 13 | `theorem` | [hom_ext](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/hom-ext.md) | 172 | `result-track:a8b542147e67095020790a306a2e96f0a236051bbaf42419e195f9692ecee5d1` |
| 14 | `def` | [map](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/map.md) | 180 | `declaration-track:ea124c13b0d7fd3c2a560fdb2bb678913f160b2a1aca7619cbe62abb9987dbb7` |
| 15 | `theorem` | [map_of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/map-of.md) | 184 | `result-track:1c1bfd74d9794b8d8c97af865341b70933de7768ee9776c02b08260279526f79` |
| 16 | `def` | [IsSupported](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported.md) | 188 | `declaration-track:17c6e4876af099f533eb046adedb91ddcb5e33de917edeb81b6aa05f2c0ff9e7` |
| 17 | `theorem` | [isSupported_upwards](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-upwards.md) | 195 | `result-track:380a60b17571c9f47728b3e08eb4d26c5608e5e69c41d9745e34d786255eaf25` |
| 18 | `theorem` | [isSupported_add](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-add.md) | 198 | `result-track:0e67ac3b1cef1719f76d47f9035686d0aa93f1656818790840757b23a1f7db24` |
| 19 | `theorem` | [isSupported_neg](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-neg.md) | 201 | `result-track:f8006568a870e57d382230da40b7eff8b0b20e3f157f5214a0de15d88d80473f` |
| 20 | `theorem` | [isSupported_sub](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-sub.md) | 204 | `result-track:e52a9166f72ba8c9fa1af4394031dae07310b1bea701e3ab02152895b1c6a210` |
| 21 | `theorem` | [isSupported_mul](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-mul.md) | 207 | `result-track:0e23ea4f1e0b784fe4c346ab457b40d9cf3a13db25a74f03d4ecea45dc6e960f` |
| 22 | `theorem` | [isSupported_zero](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-zero.md) | 210 | `result-track:48c983fbd076dca6173a30d4926ff971969b06c00f6a13fa5c201c3bba67049f` |
| 23 | `theorem` | [isSupported_one](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-one.md) | 213 | `result-track:89bea5cbd51d2f80203cfbbdc4b737045e1a21c8fb0180ef84fa710cfb7c2c1e` |
| 24 | `theorem` | [isSupported_int](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-int.md) | 216 | `result-track:841ee3c77dd7fc3ba09c0e847fe967c592a6616fc84a85fb82670620ee4bfdae` |
| 25 | `def` | [restriction](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/restriction.md) | 225 | `declaration-track:01eaed7be102ec3c9dc370e48f0192a62d96b4b792ecc7dc481dd0dcd362f9ad` |
| 26 | `theorem` | [restriction_of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/restriction-of.md) | 233 | `result-track:74a92916b0a89d3de5dc26776993dcfe95399980a302ad4aad6cc6a53483907d` |
| 27 | `theorem` | [isSupported_of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/issupported-of.md) | 238 | `result-track:e10ee391de6cfbcd30bdb47f3c054d92db09b78e909225b2bc64489076e2f302` |
| 28 | `theorem` | [map_subtype_val_restriction](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/map-subtype-val-restriction.md) | 271 | `result-track:43e71d3731187096f98618e9d92e781b1e868410e46f51c19029eb87adda931a` |
| 29 | `theorem` | [exists_finite_support](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/exists-finite-support.md) | 281 | `result-track:fdfa39967ec44bc27da49dcd957a31a8e41959a1fb4424cb6da21ce405c54a11` |
| 30 | `theorem` | [exists_finset_support](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/exists-finset-support.md) | 293 | `result-track:c88789fe2f8af9b295dbe7e63a143f28b1ed74eeccafa84a8c5f7a4f47b03400` |
| 31 | `def` | [toFreeCommRing](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/tofreecommring.md) | 305 | `declaration-track:4fa97a4b2aab43c5bb07f3eb239acc3d48e3c77e0c331c509319637d86ba81b9` |
| 32 | `def` | [castFreeCommRing](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/castfreecommring.md) | 310 | `declaration-track:0c3d8d80a0db429bfd7431ca11c3b0d586561ab0dad634cc982388b52c49a61b` |
| 33 | `instance` | [FreeCommRing.instCoe](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/freecommring-instcoe.md) | 312 | `declaration-track:365050dd4c118d15d03b1c015ba62021511754a1fdbabf28ed683a8ae6d63130` |
| 34 | `def` | [coeRingHom](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coeringhom.md) | 316 | `declaration-track:909876824cd77708ac9fb07193dd81c667687d4c7c61302d9437b0099d5202c9` |
| 35 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coe-zero.md) | 320 | `result-track:4a2ec760e3fc79ff7164839175490af2d341545cc77151c8c5973915b0e34179` |
| 36 | `theorem` | [coe_one](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coe-one.md) | 323 | `result-track:25b38d49f812497cf3493c3fe7b144387e760fc21febf5b1b532f2d928b01859` |
| 37 | `theorem` | [coe_of](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coe-of.md) | 328 | `result-track:e0118dfe965dd3e636708dd243e041ba2974e7d57d46961f2984b8c8fb10d75f` |
| 38 | `theorem` | [coe_neg](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coe-neg.md) | 332 | `result-track:64f8a8ec948bf9a7c313819e208108d001489e66f3a4857e59a392b5e2c1f494` |
| 39 | `theorem` | [coe_add](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coe-add.md) | 336 | `result-track:f3fa3b3c17fb42bd739ad9d10f10d80b04cca8f06bd281dcccb3978cab707ce6` |
| 40 | `theorem` | [coe_sub](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coe-sub.md) | 340 | `result-track:846a50c1e77d3b61ba9bf22127cad224732a17e6ea0c160ce6cbe5c1c1d994c7` |
| 41 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coe-mul.md) | 344 | `result-track:2c73260e87f37eae19dd33b4726eb5b73be894187dacc93764d388d0fecd45ae` |
| 42 | `theorem` | [coe_surjective](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/coe-surjective.md) | 349 | `result-track:e9ddfdf6653d85f5757ec2dd4e6dceb70838398efae04aa66f2d2aa9baf55cfc` |
| 43 | `instance` | [instCommRing](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/instcommring.md) | 360 | `declaration-track:a297858671029da8703fab9c4b10530e9ac130b2971735dde09096561d5d47e3` |
| 44 | `def` | [subsingletonEquivFreeCommRing](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/subsingletonequivfreecommring.md) | 375 | `declaration-track:9ce0ecc33709ed066b75a0c0fede451068bbf165e466f5ef9e5b7f4d31967f69` |
| 45 | `def` | [freeCommRingEquivMvPolynomialInt](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/freecommringequivmvpolynomialint.md) | 383 | `declaration-track:25a51522159c74fbae530967cdded9c6bcb214eddd7444cedb60a87697e7252c` |
| 46 | `def` | [freeCommRingPEmptyEquivInt](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/freecommringpemptyequivint.md) | 389 | `declaration-track:fbd01db9fabbf228183166a982d1806ab8055244a8153666b5c82114dd0cc4aa` |
| 47 | `def` | [freeCommRingPUnitEquivPolynomialInt](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/freecommringpunitequivpolynomialint.md) | 393 | `declaration-track:4212b2f20e0fc3e3516f5efd94c39aebb6c0aa8a037eb5447636ee7e09c1fe7e` |
| 48 | `def` | [freeRingPEmptyEquivInt](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/freeringpemptyequivint.md) | 399 | `declaration-track:1b86c6ec1d4d4fcab6fe56247f1bf4420d749b0f00b179d36aded8fce6d7b913` |
| 49 | `def` | [freeRingPUnitEquivPolynomialInt](../../../../CommutativeAlgebra/FreeCommRingPublic.lean/declarations/freeringpunitequivpolynomialint.md) | 403 | `declaration-track:0738b78033ccb3411d34914e4f5fb4f16e70988160abc3e48c6df290ffc41cbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94ff4d71f9e531d47f1baae8e3b806550b733763901a57e4be6cbd913ab590b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/FreeCommRing/Variantc8e5ec55247724be397c03f969633e9d8710e7a37bdae2f0ef71e013c1bbb5c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

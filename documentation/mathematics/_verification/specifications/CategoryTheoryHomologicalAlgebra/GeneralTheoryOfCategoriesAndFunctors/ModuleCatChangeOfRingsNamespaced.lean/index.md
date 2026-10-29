# Verification target: Module Cat Change Of Rings Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddee0fd1ce72b50ccdb91956c214c2980ed3b477",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddee0fd1ce72b50ccdb91956c214c2980ed3b477`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [obj'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/obj-source-edition-2.md) | 64 | `declaration-track:e802a047f015197930e4767502438d84c74bb13c1e7dd079ca6f7ade291a2760` |
| 2 | `def` | [map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/map-source-edition-2.md) | 72 | `declaration-track:5264c1bb8d3ff9e46e1c3c642dd83c22b4f0ff18a82f4d162ae2bec572bccc53` |
| 3 | `def` | [restrictScalars](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/restrictscalars.md) | 82 | `declaration-track:36a252d7d1acc51a4e9755e5586531e1a9a9771b8546e2f768db67993fc379b0` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-3.md) | 90 | `declaration-track:2eb7921a917f629834106af173d84f56dc305d570c5600f55b1396575ddadae8` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-10.md) | 96 | `declaration-track:f6a7a5cb662f1b6c7d08d37c89004603c72a33385b4d11c9f31a3370557dd5d5` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance.md) | 101 | `declaration-track:00f163c27ece2e3c1988eab21e549d66d0fb04e278938c3e93fdb43841651d21` |
| 7 | `theorem` | [restrictScalars.map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/restrictscalars-map-apply.md) | 106 | `result-track:45bd253e1e53b765a2c5e8e873c6758c917a39bdf7e97cd6a94ddf1768834c17` |
| 8 | `theorem` | [restrictScalars.smul_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/restrictscalars-smul-def.md) | 112 | `result-track:2f81aed0824e6bfd0657cd9f02765c016f1db298fbe8632b99f7482ec24e6b2f` |
| 9 | `theorem` | [restrictScalars.smul_def'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/restrictscalars-smul-def-source-edition-2.md) | 117 | `result-track:78a9d54b1afd2397e76d6f446843acb814e6493437162e1073f5143f701f02eb` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-9.md) | 126 | `declaration-track:d2ff58fe450d3813dae212026fb8409a938996a7aa9106f558c61c84b253589c` |
| 11 | `def` | [obj'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/obj.md) | 160 | `declaration-track:0855a14c0ab25c22f4f449b1aac5b7ee12cc29b0430cc4f14e2cf99acf4c047e` |
| 12 | `def` | [map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/map-source-edition-3.md) | 167 | `declaration-track:631d1b971e9d37fc6cffc1a3d2d6a999700816dc40f238924cc92bf2e7fe542e` |
| 13 | `theorem` | [map'_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/map-id.md) | 172 | `result-track:e39acbc20e52402ed040196ecfb10df19c920c4eeeb1b159d4480b297f1879fe` |
| 14 | `theorem` | [map'_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/map-comp.md) | 184 | `result-track:23e3b78bd3cff9c0b3c462ab62c23ce72b108e56bc62bebaf4322776f5da2962` |
| 15 | `def` | [extendScalars](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/extendscalars.md) | 199 | `declaration-track:10a929c4074251e30d8322ac000eebf4f051c172f25b9f1e315d8c1f348f35aa` |
| 16 | `theorem` | [smul_tmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/smul-tmul.md) | 214 | `result-track:f4cdb4e583abe5111b0a33c1d334a123a00907ebd68f588426287760e3193a00` |
| 17 | `theorem` | [map_tmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/map-tmul.md) | 220 | `result-track:aa7d765ee892ef15992aef5f6f64d525d592e2481c9eca93e7c046ef2f72bc69` |
| 18 | `instance` | [hasSMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/hassmul.md) | 243 | `declaration-track:23a5beaff3e097e4f787e5c397433f901519fdf5898e247cc1978d4e584b6d60` |
| 19 | `theorem` | [smul_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/smul-apply-source-edition-2.md) | 255 | `result-track:90c996e8993bc89693021b3168174977d2698dbf1ded8d1dd7e56afba765901d` |
| 20 | `instance` | [mulAction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/mulaction.md) | 260 | `declaration-track:db2b26104579307822b21035a16ead54c85db231d6c14fde6ffbe0db8dfc99fc` |
| 21 | `instance` | [distribMulAction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/distribmulaction.md) | 266 | `declaration-track:56d35efa921d0b47489a5faa366d64048d11666ddc8bc5bff44dbdcf5202102f` |
| 22 | `instance` | [isModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/ismodule.md) | 275 | `declaration-track:42b8d2202da95ba54089423186acf2950e75c6248deebd82d3ac4b4a1e01a41d` |
| 23 | `def` | [obj'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/obj-source-edition-3.md) | 287 | `declaration-track:f4fc241076ba41eaa288a0d2034bf8e9bf5e09b0cdd0cb4951eb8733f109625b` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-5.md) | 291 | `declaration-track:527eba1f21208bb470b2917e33deadea612028623c0fb79edeedb7e4b5be2109` |
| 25 | `def` | [map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/map.md) | 296 | `declaration-track:383ec644616e174dbd279fd45b8a7a2a5300ae65a4df73451654191030bce789` |
| 26 | `def` | [coextendScalars](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/coextendscalars.md) | 310 | `declaration-track:54a0365967063f5dd35966eb777eb321238e442be45f655b1e70e359803f4699` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-2.md) | 323 | `declaration-track:28ff04b5b3a8bd848d9280c0d6a577c72f6487f14669e092a800d1bdf3ff39ab` |
| 28 | `theorem` | [smul_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/smul-apply.md) | 326 | `result-track:1edd99beb255e5f7db48a4cc52634561687504a823f6ed8c535cf90a1195da04` |
| 29 | `theorem` | [map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/map-apply.md) | 332 | `result-track:e431fdbc861ed4b4ee8bdb5a6fd2deabfeb2951385e73913309d4c57850b8f77` |
| 30 | `def` | [HomEquiv.fromRestriction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/homequiv-fromrestriction.md) | 349 | `declaration-track:e4214305c4f646af94fd28d3891c0af06798522365d58adc967ed403ed6a1dfc` |
| 31 | `def` | [HomEquiv.toRestriction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/homequiv-torestriction.md) | 379 | `declaration-track:ce8c07c0fd43365b0d9d8d48e46de5eaa711ae33c8d5b2061bc37f766b30d543` |
| 32 | `def` | [app'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/app.md) | 394 | `declaration-track:ceb756838635f2539b0e38f8451e42d255660c542ea571a01150f9729502a851` |
| 33 | `def` | [unit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/unit-source-edition-2.md) | 419 | `declaration-track:ad260d9be4891d45ce955a448582f6ea0e99c50aa252df425e87fb1d7d4e9e9f` |
| 34 | `def` | [counit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/counit-source-edition-2.md) | 438 | `declaration-track:e75e31dabf66f218a68d8f4dc628f73ddbb38d797dd397cf91be44663fad0ff5` |
| 35 | `def` | [restrictCoextendScalarsAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/restrictcoextendscalarsadj.md) | 462 | `declaration-track:dd9d022cdcf7de36434e1c9a40109dbfece8c6f8abd7ef5d1eab469f52829216` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-4.md) | 489 | `declaration-track:4f311839a3697b721ced372e74181df12557c3370acb8787b13353034aca8d85` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-7.md) | 493 | `declaration-track:72e78fa4d47bfa028fa537f3d10ae1724837642e66750b395bf73e6cece640ad` |
| 38 | `def` | [HomEquiv.toRestrictScalars](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/homequiv-torestrictscalars.md) | 511 | `declaration-track:318f05a337a5128694c218e4601ea002d46fe1a2697b2a2b821c95a759ade8e0` |
| 39 | `def` | [HomEquiv.evalAt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/homequiv-evalat.md) | 529 | `declaration-track:f73e882002ddb3301f955e8205364b5ba3d23ec0ead8a22b71faceddd9a29677` |
| 40 | `def` | [HomEquiv.fromExtendScalars](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/homequiv-fromextendscalars.md) | 546 | `declaration-track:a7bfe1af6178a23b29755a550dd2ffa2f2c809ac68ebc99695ed5af50f52fd0b` |
| 41 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/homequiv.md) | 577 | `declaration-track:ed9e71f0a65cd9ee15290ee2e957fe6b1a708fe39363a6ded116ec802b15d7da` |
| 42 | `def` | [Unit.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/unit-map.md) | 605 | `declaration-track:6adb84dd691743f315476d3031aa288fb5fbb3d200efd8d3a3fbaffec21df0a1` |
| 43 | `def` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/unit.md) | 619 | `declaration-track:67f3aec4769a5585786ce77a4b68c902c31357a9635a055634308f40d1ec9fb3` |
| 44 | `def` | [Counit.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/counit-map.md) | 627 | `declaration-track:dc7ff7bb9bb0ff206cb037edab0fe4c4f34404925fd95f65261495c3945a65f2` |
| 45 | `def` | [counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/counit.md) | 669 | `declaration-track:19d3ff994e9ee9348a5eac45b70efa8f511fc2709f1f24bba9a5acb89e06d6f0` |
| 46 | `def` | [extendRestrictScalarsAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/extendrestrictscalarsadj.md) | 695 | `declaration-track:cf021a51c16ba08e4a9a59861ee6781af7e150540cb19e5412ef14f7e58f8fba` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-8.md) | 719 | `declaration-track:d19512c4aef2d7a29dc43d586f519f20ec358f6bae9330344867940a08ca1f9d` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatChangeOfRingsNamespaced.lean/declarations/instance-source-edition-6.md) | 723 | `declaration-track:72c16a66988476b34728f0b78815f6bdad30b6a397afca1e6fe266a843978312` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe0a345ef857d620229e8a9d22ea550b39558a4a0fd0731ae1da4ce67317b05a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ChangeOfRings/Variant55647887f3ae0c9ed0c80973d90370f298f8536511bf3b2d2bf878bf28aaa570.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

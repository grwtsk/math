# Verification target: Arithmetic Measurable Inv Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7cd1cccdb7e570b3d7e87fba6e69fe4f2473ebc",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7cd1cccdb7e570b3d7e87fba6e69fe4f2473ebc`.

Source path: `GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.AEMeasurable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MeasurableAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurableadd.md) | 61 | `declaration-track:643bd042e102a1a8fe434ef11e3aa7fd70ddab4cebeec71b38bacb0757867da0` |
| 2 | `class` | [MeasurableAdd₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurableadd-source-edition-2.md) | 72 | `declaration-track:66936f57d71b474b6175a1e2ac58572df9b4206de6156237379312322155d07a` |
| 3 | `class` | [MeasurableMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablemul.md) | 81 | `declaration-track:5a6cf883e58a77a79f95978ddd26a8bbaf0da2e16d9a4907db8f1a7ba2e62531` |
| 4 | `class` | [MeasurableMul₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablemul-source-edition-2.md) | 93 | `declaration-track:9c61257a0a6ab78d1e06418a69aaf0077c509d4418d3065c759a5b4ad59a424a` |
| 5 | `theorem` | [Measurable.const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-const-mul.md) | 106 | `result-track:6099c3aa0b4087a3e10bdaf812eddfeccc4cb1759542630b0212f007e08d2d83` |
| 6 | `theorem` | [AEMeasurable.const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-const-mul.md) | 113 | `result-track:41aec4b4cc0d9538f52550d0e8d40b5d1044884ea0e199622b9798e4baaff404` |
| 7 | `theorem` | [Measurable.mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-mul-const.md) | 120 | `result-track:2002e4417b868bafc78ec62a2db9622ff103be65cef956713b1053e40126b640` |
| 8 | `theorem` | [AEMeasurable.mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-mul-const.md) | 127 | `result-track:5ed447e72be2b05f0b04ad3da31d62d583c186478e649f55fb449978f93334ae` |
| 9 | `theorem` | [Measurable.mul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-mul.md) | 134 | `result-track:351a9efa6055d33721dfba142e41d4937365fd1bf812ebdefae0fb4a48ef26e8` |
| 10 | `theorem` | [Measurable.mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-mul-source-edition-2.md) | 141 | `result-track:f51871a2121608486ad1d6aa9848417d47e17f657c816054b9c37b0239c1b834` |
| 11 | `theorem` | [AEMeasurable.mul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-mul.md) | 148 | `result-track:4bf995f99603b4ce0697f49a1518e13e6b7ba9eab843148470019cd9556fd592` |
| 12 | `theorem` | [AEMeasurable.mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-mul-source-edition-2.md) | 155 | `result-track:7af710412d758e51f6b1f4d04a289d33d5073b7bbc4d47a555b02fbe1291cbe0` |
| 13 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/instance-source-edition-2.md) | 162 | `declaration-track:23f8f482b13f7b12482196b92698b04d7dc6447e142f93e65c0639e2a7a804c1` |
| 14 | `instance` | [Pi.measurableMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/pi-measurablemul-source-edition-2.md) | 169 | `declaration-track:a69f41a6c77d8bbe53c5f6a70f232d7e02087015fc0976ccadcc90b978afea43` |
| 15 | `instance` | [Pi.measurableMul₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/pi-measurablemul.md) | 177 | `declaration-track:6eb1fb7ed6a1029f3dc705affa49e5caa5aca785f3f95c0405171cf05f148ce4` |
| 16 | `theorem` | [measurable_div_const'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-div-const.md) | 189 | `result-track:09fcc0afce94ad4251e28bcbe37914fa4c3d8f4c2baad49575063ff232001d9d` |
| 17 | `class` | [MeasurablePow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablepow.md) | 195 | `declaration-track:c5cfbc7b392b9dc1b699fb61078854df753c64f690269a237491bf2736036edd` |
| 18 | `instance` | [Monoid.measurablePow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/monoid-measurablepow.md) | 202 | `declaration-track:47caf465b6d3b7e86468dbd7b059ab5b37805c4e7f140346170ba76dc76181fb` |
| 19 | `theorem` | [Measurable.pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-pow.md) | 217 | `result-track:68f3f5de22d609017cc78caffdc9163c2de71492eb96bc426cc7d1f8cf627927` |
| 20 | `theorem` | [AEMeasurable.pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-pow.md) | 222 | `result-track:1c4d7890b195b9b8a57621b4a31d1a94ea848cb3a816064f6a78dce0bef7a141` |
| 21 | `theorem` | [Measurable.pow_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-pow-const.md) | 228 | `result-track:46aab73579a467c3daccb46738c69152ef9872099cb50f59f4e0f038a7ee89f5` |
| 22 | `theorem` | [AEMeasurable.pow_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-pow-const.md) | 233 | `result-track:5d5fed5839c4a2babd7d5a7adf65b612f6b3f76a6f7bde9592fff15a5cb6826d` |
| 23 | `theorem` | [Measurable.const_pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-const-pow.md) | 239 | `result-track:e04612fa93cd3b791ac9a34585ef377899e078d9cbb3dadac085521f90447390` |
| 24 | `theorem` | [AEMeasurable.const_pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-const-pow.md) | 244 | `result-track:063a5aa0e6066c0d5c6db8bfda4294c7ae60832d9bec6172342d47f29b6bff32` |
| 25 | `class` | [MeasurableSub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesub-source-edition-2.md) | 253 | `declaration-track:8b8e7a3f977c5edcf9619ddfbcfe6dbc3e5aa65e17d5036423a1a1a7a94174de` |
| 26 | `class` | [MeasurableSub₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesub.md) | 264 | `declaration-track:78d81fdb3db5afcade76f3fbafa2c32716a91383c7f564c716bdd863a136d6db` |
| 27 | `class` | [MeasurableDiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablediv.md) | 274 | `declaration-track:1366facf9cf926e95a09e2330b6b965f43ce64bf326b5578e52474192c1fa35f` |
| 28 | `class` | [MeasurableDiv₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablediv-source-edition-2.md) | 286 | `declaration-track:a4e79afdc104de017513ffeb802e1b93365cada5606cd1093fbec5ef8e48ccb4` |
| 29 | `theorem` | [Measurable.const_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-const-div.md) | 299 | `result-track:95851b9f9f943946aa6727434f318ef6879b66e19b2669229568c90d44e98085` |
| 30 | `theorem` | [AEMeasurable.const_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-const-div.md) | 306 | `result-track:c11501eb9d523b3c7422276b35f6d4f3211b3e0a2703e3f24a08b6d592f01517` |
| 31 | `theorem` | [Measurable.div_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-div-const-source-edition-2.md) | 313 | `result-track:fd855fac9cb53229a770f94cfd12d23e7a899346055ac33e279a6a54ede2ee7c` |
| 32 | `theorem` | [AEMeasurable.div_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-div-const.md) | 320 | `result-track:794e040b007bff8fe38d57244ed2dfc7d9613c24ae7e96f77f33ec5132421354` |
| 33 | `theorem` | [Measurable.div'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-div-source-edition-2.md) | 327 | `result-track:816ba8071fc967e68a8fefea74c39f38f4637965703f86db585392b158a4c0d2` |
| 34 | `theorem` | [Measurable.div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-div.md) | 334 | `result-track:73e35e2845e0388d5bb83641db5ca3d124391547e29402713cd9042494d957d8` |
| 35 | `theorem` | [AEMeasurable.div'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-div-source-edition-2.md) | 341 | `result-track:3157bdd218f778f6aedeecac3e3989320b8ba9f689cc8fe3f990015fbd7e5f97` |
| 36 | `theorem` | [AEMeasurable.div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-div.md) | 348 | `result-track:17db6859ced8ae5a71846f28f372b3a4867cd8b849208cc0535d4043913b35ad` |
| 37 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/instance.md) | 355 | `declaration-track:0ded12ea7a51eff109e0fd9360d822ba304a38a1479a828bf9c21e7e9c4c91af` |
| 38 | `instance` | [Pi.measurableDiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/pi-measurablediv.md) | 362 | `declaration-track:56d0f8abfc1cde2ec0882639e64e51b912851f19f9e3b325fdc249333ae81206` |
| 39 | `instance` | [Pi.measurableDiv₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/pi-measurablediv-source-edition-2.md) | 370 | `declaration-track:80aa84e58e226d3b67aa1f1b654fe048465a590e685f9e2db295220cbe192ac8` |
| 40 | `theorem` | [measurableSet_eq_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurableset-eq-fun.md) | 377 | `result-track:7b77a1ff45e99c914553f4d035b9814d63251796bdc1755a80bafb23fddf7e95` |
| 41 | `theorem` | [nullMeasurableSet_eq_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/nullmeasurableset-eq-fun.md) | 387 | `result-track:1115da3ade1e21768c4dcd7e2dbf4025189aa8df3370ba5c62553b01f5bb8bc4` |
| 42 | `theorem` | [measurableSet_eq_fun_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurableset-eq-fun-of-countable.md) | 396 | `result-track:77ec29c53e3a108205063d7d02639f43b8ac19aa61af0da22d69cb34ad9ba30d` |
| 43 | `theorem` | [ae_eq_trim_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/ae-eq-trim-of-measurable.md) | 408 | `result-track:b439d355d9909ac7ddaa827aadf6f8bad57def10edb13ac8ecea7adf28482f77` |
| 44 | `class` | [MeasurableNeg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurableneg.md) | 419 | `declaration-track:b886ccd467446f693e131bf686cd35fd6e0235c37eba6a5765a94c9f758c9dd7` |
| 45 | `class` | [MeasurableInv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurableinv.md) | 426 | `declaration-track:aaa1691be3804c7a9878c15855975006a6daf5cc0628517584980e7b1ce1afde` |
| 46 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/instance-source-edition-4.md) | 436 | `declaration-track:f1d3dd7075feebc41c7f4cba75f696b63c48153b6cff89b2b1888e2d158668fc` |
| 47 | `theorem` | [Measurable.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-inv.md) | 455 | `result-track:a7bd404f2618c2c7e3cdd0aa8a374cfc8d8c8d87ae7de64d1f6173c2a3067d30` |
| 48 | `theorem` | [AEMeasurable.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-inv.md) | 461 | `result-track:02996ae8d7271c0c08e43f0ff25176b492e989dce11eb941566bd880188a58d4` |
| 49 | `theorem` | [measurable_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-inv-iff.md) | 467 | `result-track:3b0dc12db282addef75738855e544178e9ba093ab0ba09c85e010567bee824db` |
| 50 | `theorem` | [aemeasurable_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-inv-iff.md) | 474 | `result-track:86e8cea3b451fba235c180e0dd97a2711039f2effc05fc4c4ef6e5d8139143d4` |
| 51 | `theorem` | [measurable_inv_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-inv-iff-source-edition-2.md) | 481 | `result-track:82b7e51e7b826d59e16e88f7a73cc77eaee4acff0916f5a76a3cd26d5452af16` |
| 52 | `theorem` | [aemeasurable_inv_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-inv-iff-source-edition-2.md) | 487 | `result-track:ae1f7b18f5522e61ee7f147055eb848c50f116135583acd62c647ab7c6ef2f8d` |
| 53 | `instance` | [Pi.measurableInv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/pi-measurableinv.md) | 493 | `declaration-track:37be108541c74216f99126c888a46dcca23bfc6f6cad37d2d4a55892075902c8` |
| 54 | `theorem` | [MeasurableSet.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurableset-inv.md) | 500 | `result-track:a1bbabf945055164a6286b0292dd607eaf82e4af34748c956cf816e054175f71` |
| 55 | `instance` | [DivInvMonoid.measurableZpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/divinvmonoid-measurablezpow.md) | 508 | `declaration-track:748b302023fd5efc2852268636858b8ca8c35ccb87437df1e3f810697f3730b4` |
| 56 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/instance-source-edition-5.md) | 519 | `declaration-track:f9cf949608e17b1176dcb5ebac0ea99d13a178a218cb6c85e8b48cafa15c2680` |
| 57 | `class` | [MeasurableVAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablevadd.md) | 529 | `declaration-track:17b8caa16e826801eb0f0e25439cc0cbb15b1e77d36f77a41a18d5e171bb4c74` |
| 58 | `class` | [MeasurableSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesmul-source-edition-2.md) | 540 | `declaration-track:6ac61bd0cd591b7c6c57c2d6de967c22fc2a6e38e9adf344f5653147177c2795` |
| 59 | `class` | [MeasurableVAdd₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablevadd-source-edition-2.md) | 550 | `declaration-track:3b4fdc5d3dd7e248a676c547ab952926faead747ea2411cbd14f37389ce43b15` |
| 60 | `class` | [MeasurableSMul₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesmul.md) | 559 | `declaration-track:5072942925d975665b1dfaa28d89ec19f34de4514c23e7b3b50af5672e911fd2` |
| 61 | `instance` | [measurableSMul_of_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesmul-of-mul-source-edition-2.md) | 574 | `declaration-track:9f3fc79a97d46f0b8136ff02b4f42bc18e2c49c7ea5521ebef71c22bdc8bd050` |
| 62 | `instance` | [measurableSMul₂_of_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesmul-of-mul.md) | 581 | `declaration-track:3e4b7bbc748e64b94d9b621fc6ec11b6e8ad55bd95bf7b0ffa67192b7e67ed78` |
| 63 | `instance` | [Submonoid.measurableSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/submonoid-measurablesmul.md) | 588 | `declaration-track:f869a92d80d6b829bc14e91b73718f2208429322118799163cbb7726ecf3cec7` |
| 64 | `instance` | [Subgroup.measurableSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/subgroup-measurablesmul.md) | 596 | `declaration-track:a8721ad4527f543e637d228bbd06fc34820b649680f38ccc1fd4c6c6a626ac86` |
| 65 | `theorem` | [Measurable.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-smul.md) | 608 | `result-track:d925484e3f6f5889c35e8263997f81f9bd97429d3b50c9058ce5528ca87878f3` |
| 66 | `theorem` | [AEMeasurable.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-smul.md) | 615 | `result-track:830c85ed6bafedeec333b7af08fc52db35c0285c75add0357350544fcdc0285d` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/instance-source-edition-3.md) | 622 | `declaration-track:a64c261ad753acbd3eefbfc0a0bbd8245a2b4526ef151004ebc175367040879c` |
| 68 | `theorem` | [Measurable.smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-smul-const.md) | 631 | `result-track:b0c0102d173c8a98623f612a0a2f9a8039c2cd7c20c028559bf7c0d47f35a83f` |
| 69 | `theorem` | [AEMeasurable.smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-smul-const.md) | 637 | `result-track:c0e62beb29b664f9a8331dfb0ab9b981b0dda8a0d46a39dbeeada57953685ecd` |
| 70 | `theorem` | [Measurable.const_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-const-smul-source-edition-2.md) | 644 | `result-track:d81f7035c43063feb4acc62940fbb20bf2831066eed9b03f635e8a2cfc0f6ebf` |
| 71 | `theorem` | [Measurable.const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-const-smul.md) | 650 | `result-track:05cd6859b749d750d975626df9054f1e505f396f2ef87efeb1ead257e854fcfb` |
| 72 | `theorem` | [AEMeasurable.const_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-const-smul.md) | 656 | `result-track:5e6aa4a5051af73eaf35c9f57ddc639c705f9398e5ad3127238e19b2a4247870` |
| 73 | `theorem` | [AEMeasurable.const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-const-smul-source-edition-2.md) | 663 | `result-track:7adc1d858c25cb20e6fdf1830739a5ad28d13096583f3a11edc45718f991cb9d` |
| 74 | `instance` | [Pi.measurableSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/pi-measurablesmul.md) | 669 | `declaration-track:3addce751a2f3b4bca969a52620421e89e118282a15de6a5b0bfa8e973942b0e` |
| 75 | `instance` | [AddMonoid.measurableSMul_nat₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/addmonoid-measurablesmul-nat.md) | 678 | `declaration-track:be45f2434bfadf18377c95d8de013c8301b44de27b521a3b0a0eda035f95d927` |
| 76 | `instance` | [SubNegMonoid.measurableSMul_int₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/subnegmonoid-measurablesmul-int.md) | 690 | `declaration-track:1ab8a28468f92a8b04f87db885101677e6eaf0e9b2e7f423fcadea7200c9e8a9` |
| 77 | `theorem` | [measurable_const_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-const-smul-iff-source-edition-2.md) | 712 | `result-track:ca73d441bbbee5cde47c3bfe27b77937dc84dab9957592d6b63b514b3e671cea` |
| 78 | `theorem` | [aemeasurable_const_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-const-smul-iff.md) | 718 | `result-track:8705c0aa6e7abbe777f9cafdcc5d1843df0ee6f435dac9d8f1907ed33c00a1fe` |
| 79 | `instance` | [Units.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/units-instmeasurablespace.md) | 725 | `declaration-track:cf9b54e7c41fc31abc9602d8ad6758701d8165503f94d270437260f74c68fd5e` |
| 80 | `instance` | [Units.measurableSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/units-measurablesmul.md) | 730 | `declaration-track:6f906e39aa07209df12b744e5507020736a5d6fcada399ff18dd1914a8295e66` |
| 81 | `theorem` | [IsUnit.measurable_const_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/isunit-measurable-const-smul-iff.md) | 738 | `result-track:4e9bc28b64786a67e257c22ad748e752613202b138caad07231ec381d4ebd41b` |
| 82 | `theorem` | [IsUnit.aemeasurable_const_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/isunit-aemeasurable-const-smul-iff.md) | 746 | `result-track:b0c0cd658e0542aa4dcdd7d0b52bbc1b0fdd11ce4329a96bbb6b7e5f7727ff21` |
| 83 | `theorem` | [measurable_const_smul_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-const-smul-iff.md) | 756 | `result-track:3c4e662b8a3f910914b61f1b80306215b6c517349972ee747095656128e0bcaf` |
| 84 | `theorem` | [aemeasurable_const_smul_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/aemeasurable-const-smul-iff-source-edition-2.md) | 761 | `result-track:e6c2a999dfddb2544b97013f4e109a358be1aefff33a439452e6577b1d9ab017` |
| 85 | `instance` | [MulOpposite.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/mulopposite-instmeasurablespace.md) | 778 | `declaration-track:929a73f8a069f62e2675da8a8b4331db3c98349d3491d41a92b50d6b0f2dada3` |
| 86 | `theorem` | [measurable_mul_op](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-mul-op.md) | 785 | `result-track:48b940dacec802b9967d2de92ef717cb7a2c326af495ef98d522cef817b06314` |
| 87 | `theorem` | [measurable_mul_unop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurable-mul-unop.md) | 791 | `result-track:f0d33fcdf24ebc28b9f19f75a7373125fba6110ce56f10877fb5dc9c6c2b77f5` |
| 88 | `instance` | [MulOpposite.instMeasurableMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/mulopposite-instmeasurablemul-source-edition-2.md) | 797 | `declaration-track:eb5e30c9bed0343b79d359d628656fd6afd1bf957f78eba9ede22cd6adf63e3a` |
| 89 | `instance` | [MulOpposite.instMeasurableMul₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/mulopposite-instmeasurablemul.md) | 805 | `declaration-track:df6c23ec2e6cae623fa4b075b418feede3de0b45ab99bf14b0031888fe218138` |
| 90 | `instance` | [MeasurableSMul.op](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesmul-op.md) | 813 | `declaration-track:48cdcbf3e07d2a23f91b589354e398031f044b1abf619929d9733d0156d3df7a` |
| 91 | `instance` | [MeasurableSMul₂.op](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesmul-op-source-edition-2.md) | 824 | `declaration-track:7f2f64f42e700f99bd0d5ab25aff19ea83ac7ba4b94b2fca0f5658659a02bddd` |
| 92 | `instance` | [measurableSMul_opposite_of_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesmul-opposite-of-mul-source-edition-2.md) | 832 | `declaration-track:cc655d52082ce8f4219f341f465bd46e288e34f434b487842ee4f647407ee67e` |
| 93 | `instance` | [measurableSMul₂_opposite_of_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/measurablesmul-opposite-of-mul.md) | 839 | `declaration-track:61a3bf16b7c82b0e0ffc008e05070124480a53ef2f2a9497108b81d2a600a5b7` |
| 94 | `theorem` | [List.measurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/list-measurable-prod-source-edition-2.md) | 858 | `result-track:fff5e708956cb420ee33da2e6608dc36d670827dae2376582345ec608ba2d47e` |
| 95 | `theorem` | [List.aemeasurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/list-aemeasurable-prod.md) | 868 | `result-track:39597301cc6cb2b5cf5100e4d61adf18501469df581b4d1c71ebb4c30682b899` |
| 96 | `theorem` | [List.measurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/list-measurable-prod.md) | 878 | `result-track:98401a6daa0538bbfd71960ffe70b92bc681926bfd6bac5a78ca8fa6bf984fcd` |
| 97 | `theorem` | [List.aemeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/list-aemeasurable-prod-source-edition-2.md) | 885 | `result-track:f0d29ab0f9a13744e6ad710d5e5daea2734a982783d4301ad1c8e79596958e50` |
| 98 | `theorem` | [Multiset.measurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/multiset-measurable-prod.md) | 899 | `result-track:d370ff918413b6ac9a36dd0b68744aa5be31b86b38c790a05258b441ab5792ce` |
| 99 | `theorem` | [Multiset.aemeasurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/multiset-aemeasurable-prod.md) | 907 | `result-track:6364a2b885742282ca32add62cb60e1d6132d3213c12b23f2862ed87477b258d` |
| 100 | `theorem` | [Multiset.measurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/multiset-measurable-prod-source-edition-2.md) | 915 | `result-track:e2680e866bf578143f40c4579a741bfffbe5433712c71c6054ecef3caaba917f` |
| 101 | `theorem` | [Multiset.aemeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/multiset-aemeasurable-prod-source-edition-2.md) | 922 | `result-track:8c1b03c9e782cb1a03b54142cccea66335e22216a3aef8481c3bc7d49b49c561` |
| 102 | `theorem` | [Finset.measurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/finset-measurable-prod.md) | 929 | `result-track:022db660aef377ce89a8433b08f32cf6fb0ad0599eed963d27352c6ee3eee08d` |
| 103 | `theorem` | [Finset.measurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/finset-measurable-prod-source-edition-2.md) | 936 | `result-track:fefbd534bc996ff716a7d0179d2a9702fca6fc6e89c86ba0fe87702ccbe71605` |
| 104 | `theorem` | [Finset.aemeasurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/finset-aemeasurable-prod.md) | 943 | `result-track:2857308d09a7092b49194637072d27933c133d91cbda087a0135900821dcae9f` |
| 105 | `theorem` | [Finset.aemeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ArithmeticMeasurableInvIff.lean/declarations/finset-aemeasurable-prod-source-edition-2.md) | 952 | `result-track:51c047d88fe8a2d2efcfba4f38f0a2b1be93c6a4b8e80c9551a11fef6c309142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aad19801404e666e2be08e1c357521f5d1d176cf2a26aab816ff7abe36300f71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

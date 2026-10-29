# Verification target: Ring Theory Integral Closure Integral Closure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29df876472ed81a1a197bc618f845bfeffda252c",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29df876472ed81a1a197bc618f845bfeffda252c`.

Source path: `GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Expand` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.LinearMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.FG` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.ScaleRoots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RingHom.IsIntegralElem](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegralelem.md) | 46 | `declaration-track:d7266d3b7ca761d0ba8f9495a6ac214a114998e3754fb10e602705f351282180` |
| 2 | `def` | [RingHom.IsIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegral.md) | 52 | `declaration-track:84545ee7a1dafc4aa781b56e7cdf63616be2e9b646d01527185d8ec0d589a702` |
| 3 | `def` | [IsIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-source-edition-2.md) | 61 | `declaration-track:c400b6185078ab8d456a74e5a076d209d7b9a0200f49861a78e8dc3e16aad9ea` |
| 4 | `def` | [Algebra.IsIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebra-isintegral.md) | 68 | `declaration-track:72c0e258488bae61d80367c8f2817a87c727dddd67f3aefec77464fb9b73d828` |
| 5 | `theorem` | [RingHom.is_integral_map](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-is-integral-map.md) | 74 | `result-track:c72d62f301c420a7f7326fa8ac43f73e6f29fb9d4d7a4e6dddca63d565ea0d06` |
| 6 | `theorem` | [isIntegral_algebraMap](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-algebramap-source-edition-2.md) | 78 | `result-track:f412df0b5ff6593a3c98e304d068c41f5d828316a1b827bb23c4ae08f5516971` |
| 7 | `theorem` | [isIntegral_of_noetherian](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-noetherian.md) | 82 | `result-track:b2714ac793efd4ac340aa954c197ab58885e8e517993d010b513881807b31bdc` |
| 8 | `theorem` | [isIntegral_of_submodule_noetherian](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-submodule-noetherian.md) | 101 | `result-track:40bb4333527f42d645210faa1d8f380c996b38fa162e3f3c81523ebc824d4665` |
| 9 | `theorem` | [isIntegral_of_finite](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-finite.md) | 124 | `result-track:4be0b1fd94971b5b7a943e09aee2856916512d5e1fdddf6fdc2e7343afb3893b` |
| 10 | `theorem` | [Algebra.isIntegral_of_finite](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebra-isintegral-of-finite-source-edition-2.md) | 130 | `result-track:a5cb83a497ab7397cce956b6f8f3ac89398a0748b10b5926243d880cf4157e00` |
| 11 | `theorem` | [map_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/map-isintegral.md) | 144 | `result-track:0ce9c2c4a6e6039c2ef425d90acb471faa2ab955cdfeea77407ad7e43e9a4192` |
| 12 | `theorem` | [isIntegral_map_of_comp_eq_of_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-map-of-comp-eq-of-isintegral.md) | 153 | `result-track:fe89db89cd0aeaddbc16b4b811522775c80807ba23d07a0a71ddb55f91d0e386` |
| 13 | `theorem` | [isIntegral_algHom_iff](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-alghom-iff.md) | 164 | `result-track:53796fc4bc709d2775ccf2270bb13b4f406436cb805181dc2fccb7934c40bfb3` |
| 14 | `theorem` | [isIntegral_algEquiv](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-algequiv.md) | 174 | `result-track:8b7f4d2c761ea70c9b07eaf9b841c89a738b67fb2de23553b2662070ffca6849` |
| 15 | `theorem` | [isIntegral_of_isScalarTower](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-isscalartower.md) | 179 | `result-track:743d769afdda9a83e3b67508e37940b27b175db225c42ae1de440f0cbbce66e8` |
| 16 | `theorem` | [map_isIntegral_int](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/map-isintegral-int.md) | 185 | `result-track:6f82a59eb2178061637f1037047d640f4dcad071e40fccf25715d7bd43ec308b` |
| 17 | `theorem` | [isIntegral_ofSubring](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-ofsubring.md) | 190 | `result-track:643729571474be6484cb3170a5531168a61b91379c4d0de8e15a60d46885579b` |
| 18 | `theorem` | [IsIntegral.algebraMap](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-algebramap.md) | 194 | `result-track:b28458784a2539c06783c1ec206febffeef6507332d0603b9ffcc9e1656830c6` |
| 19 | `theorem` | [isIntegral_algebraMap_iff](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-algebramap-iff.md) | 201 | `result-track:05469e82cf18c0900a03d1360254ddeb5cc21fd16d0063706157f66efc2a19c5` |
| 20 | `theorem` | [isIntegral_iff_isIntegral_closure_finite](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-iff-isintegral-closure-finite.md) | 207 | `result-track:4b77e24165efdeb974c36072f8502d1ffa880b0d5e4312422b6121e3ef306fcf` |
| 21 | `theorem` | [FG_adjoin_singleton_of_integral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/fg-adjoin-singleton-of-integral.md) | 217 | `result-track:eb2eaf971de9fec76fb6ddfe4cf733e8d8967f39cf9e7d5bd50d56f5443f5363` |
| 22 | `theorem` | [FG_adjoin_of_finite](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/fg-adjoin-of-finite.md) | 247 | `result-track:a110368bc782e16c919348eb2b02bc1a42f9afa06e728b2ac62e4f4018eb515b` |
| 23 | `theorem` | [isNoetherian_adjoin_finset](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isnoetherian-adjoin-finset.md) | 264 | `result-track:9b92b147a2c162eb3f6c7d0018a4df04e2620c8a627e60106237ad58d51ff211` |
| 24 | `theorem` | [isIntegral_of_mem_of_FG](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-mem-of-fg.md) | 271 | `result-track:9d8a075674b7a2c413d90cf4c3ee8ba796fd3cb740975a1c4d265ba1cd20312f` |
| 25 | `theorem` | [Module.End.isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/module-end-isintegral.md) | 372 | `result-track:0d031d3d86c3e05baee82ce10830d6c563bfd2cc0e3cb522d59ea5cbfc0f17a2` |
| 26 | `theorem` | [isIntegral_of_smul_mem_submodule](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-smul-mem-submodule.md) | 379 | `result-track:dabcb2ef6020bec0f2540dc41c39493ed09aa1cf1696fd0caf56b5428e0d781c` |
| 27 | `theorem` | [RingHom.Finite.to_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-finite-to-isintegral.md) | 422 | `result-track:33a419f90adb7155cde4ccf98fb11bc11db514524e743d7cbc69c96e8fb07233` |
| 28 | `theorem` | [RingHom.IsIntegral.to_finite](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegral-to-finite.md) | 430 | `result-track:873c8cd49ccba172b0c0f5b0bd15d0e2ac2426da91cff0b1f03f5750ef61cb38` |
| 29 | `theorem` | [RingHom.finite_iff_isIntegral_and_finiteType](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-finite-iff-isintegral-and-finitetype.md) | 443 | `result-track:9f737f45e2f2287d169a0000b8d36a26dadca674b8bc21b7ba64ca3af2e09b42` |
| 30 | `theorem` | [Algebra.IsIntegral.finite](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebra-isintegral-finite.md) | 447 | `result-track:42b4a7c85fc25a168f37305e64ee9903509490a9e492e247eeade0421b7cbf9b` |
| 31 | `theorem` | [Algebra.IsIntegral.of_finite](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebra-isintegral-of-finite.md) | 463 | `result-track:1ca5cc8c211efe74770339a3be47f9aba334ee862b948a8f693f294f3edfed33` |
| 32 | `theorem` | [Algebra.finite_iff_isIntegral_and_finiteType](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebra-finite-iff-isintegral-and-finitetype.md) | 472 | `result-track:4dae910947e8143d7e736d7bc2689bfbdf01e8f08c9fa6575f2e0b9eda88b051` |
| 33 | `theorem` | [RingHom.is_integral_of_mem_closure](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-is-integral-of-mem-closure.md) | 479 | `result-track:d1ac950428c7a0f191e1a78d7251f7bd2c0c07d7a1042a6fc60ea628525f4f2b` |
| 34 | `theorem` | [isIntegral_of_mem_closure](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-mem-closure-source-edition-3.md) | 489 | `result-track:ab22ed5c53e3606c111fb901210a478f1b1a7d5854104006045c3c9b3e21b009` |
| 35 | `theorem` | [RingHom.is_integral_zero](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-is-integral-zero.md) | 494 | `result-track:e2db3e7ca559c976b85474e7267407411368c07b639cfdda1f23b39ac82e6a8c` |
| 36 | `theorem` | [isIntegral_zero](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-zero.md) | 498 | `result-track:6b1735673c3974f2fed89b18dc11ff7e4c2e629c7d1c29f61d6761ddb83c95fa` |
| 37 | `theorem` | [RingHom.is_integral_one](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-is-integral-one.md) | 502 | `result-track:8dcd396c27e8fcb7aa3703f21073e2c81deb4a466eb2e3d525a63f9d82d05645` |
| 38 | `theorem` | [isIntegral_one](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-one.md) | 506 | `result-track:053420c4a18c4a523eccd23f8466483faf80bb08210fbb3b795e1491d48d1b22` |
| 39 | `theorem` | [RingHom.is_integral_add](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-is-integral-add.md) | 510 | `result-track:626109b8d1468d4eba24277883cd3f360042b03f0bd65e72ee2cb158c1441f09` |
| 40 | `theorem` | [isIntegral_add](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-add.md) | 516 | `result-track:64c6a51a42b9aee501f84edbe01bea23c0881a80ed45e62578a1ca08098c91ca` |
| 41 | `theorem` | [RingHom.is_integral_neg](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-is-integral-neg.md) | 521 | `result-track:4e55b56279ff197160395240c8d928181c1bb20a53ded8b13acf923f13f5ff4c` |
| 42 | `theorem` | [isIntegral_neg](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-neg.md) | 525 | `result-track:54b31fc7153e0e502bf48e721170d760f14c112ebbfd436a812825c0bcc958cd` |
| 43 | `theorem` | [RingHom.is_integral_sub](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-is-integral-sub.md) | 529 | `result-track:6cfa1b859f62b2354688306264cb679466e51df1bed638cc60bf15b7e5e83343` |
| 44 | `theorem` | [isIntegral_sub](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-sub.md) | 534 | `result-track:1c3df7532615026295f43bc3d164fe6a465591aaf9807e699081d8d387b5ab91` |
| 45 | `theorem` | [RingHom.is_integral_mul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-is-integral-mul.md) | 539 | `result-track:1479b1564e11650ec188bfeb0efaf918e36593fde32ebfe6131f17a5b365f98e` |
| 46 | `theorem` | [isIntegral_mul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-mul.md) | 545 | `result-track:a840d3db49d0a7394348b29a3ace273105599d396e77195613b6af1dae45611c` |
| 47 | `theorem` | [isIntegral_smul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-smul.md) | 550 | `result-track:2a045f5f66c2e562a0d03c1193d3b9e8973beeff88255b5359627baa86859598` |
| 48 | `theorem` | [isIntegral_of_pow](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-pow.md) | 556 | `result-track:b75844558a637a361c6dfb18634a8bf9c302c9eccf47d8b06f2d125823123244` |
| 49 | `def` | [integralClosure](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/integralclosure.md) | 567 | `declaration-track:32f6c45e3c63b56fc481db4061fdf6499b6e5efe756d42f673b4ec3d871afe48` |
| 50 | `theorem` | [mem_integralClosure_iff_mem_FG](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/mem-integralclosure-iff-mem-fg.md) | 576 | `result-track:8e8ef3318b68c29d690a809d876d6de2bd6b318e5b3c6c929a93690a77265920` |
| 51 | `theorem` | [adjoin_le_integralClosure](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/adjoin-le-integralclosure.md) | 585 | `result-track:c36a3fe102329ed37be05eaeee33bf3c54d92d4c6f4fcaf67b52939d724273cf` |
| 52 | `theorem` | [le_integralClosure_iff_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/le-integralclosure-iff-isintegral.md) | 592 | `result-track:48fa87229ab47a544c4c24653eed53aeff3e57afc81166bc3de128d107a7ade6` |
| 53 | `theorem` | [isIntegral_sup](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-sup.md) | 600 | `result-track:31dbf655e8c69e1f99c4716136d95d7406af2244fdc0292809e8053728745440` |
| 54 | `theorem` | [integralClosure_map_algEquiv](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/integralclosure-map-algequiv.md) | 607 | `result-track:dd23665758e462f17f1c4dc237663623dd07f084012920f93c5e36dcc28c271e` |
| 55 | `theorem` | [integralClosure.isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/integralclosure-isintegral.md) | 619 | `result-track:1aba046761024161233d40e288034aae86378d3037de8238a74a37d416eb12fa` |
| 56 | `theorem` | [RingHom.isIntegral_of_isIntegral_mul_unit](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegral-of-isintegral-mul-unit.md) | 626 | `result-track:df2dfd1fcd7dd49b6b6fbdec80096a752ec81e3ae4d7d7a46b2e733e167ffbdf` |
| 57 | `theorem` | [isIntegral_of_isIntegral_mul_unit](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-isintegral-mul-unit.md) | 634 | `result-track:41feddc3d33458bfc66f764d5fada8e1a592b55e6d1fc955b2d2052e90c06abd` |
| 58 | `theorem` | [isIntegral_of_mem_closure'](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-mem-closure-source-edition-2.md) | 640 | `result-track:970304a908a169d06fd63a866d1f705672fe4d0cc0d631089fc1db1772250f83` |
| 59 | `theorem` | [isIntegral_of_mem_closure''](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-mem-closure.md) | 646 | `result-track:4f0a3297a5926213f488d07af1c47d54d56b61e10dc471832778c0f5fce8120c` |
| 60 | `theorem` | [IsIntegral.pow](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-pow.md) | 651 | `result-track:2d87c01ca4d57ba2b3d3df0efebb7634a2d9e96a673a79b1b40c1bb48738e39c` |
| 61 | `theorem` | [IsIntegral.nsmul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-nsmul.md) | 655 | `result-track:4f69f097d79e834cafc38ee1bbd1d72f8da25a15524169736f5925f44d44302b` |
| 62 | `theorem` | [IsIntegral.zsmul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-zsmul.md) | 659 | `result-track:f84b3d9c7f6ff9abc57afd0704eb8c9575231365eb340ccadc98636dac81b5aa` |
| 63 | `theorem` | [IsIntegral.multiset_prod](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-multiset-prod.md) | 663 | `result-track:441c077cfdff0a38c602d83829367770224d65b24b8c06754352d48723cc0b3d` |
| 64 | `theorem` | [IsIntegral.multiset_sum](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-multiset-sum.md) | 668 | `result-track:a54093d5b071808fe72fc4237d3f19059ae890b7bd16c33873f440b0f8ef5afc` |
| 65 | `theorem` | [IsIntegral.prod](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-prod.md) | 673 | `result-track:84cede8e253c744af2045dae84e5a307744d9c9b169666af97a817f715a86ed0` |
| 66 | `theorem` | [IsIntegral.sum](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-sum.md) | 678 | `result-track:992dc0c90f1f1b75b5a83cb6c5f0f34a63f87bf1840b10cbdafc1fbe47c969c5` |
| 67 | `theorem` | [IsIntegral.det](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-det.md) | 683 | `result-track:5e54d796eb984818581b6bc796619accff1d4566e81b0a029550f50777a437eb` |
| 68 | `theorem` | [IsIntegral.pow_iff](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-pow-iff.md) | 690 | `result-track:e9543288e522c491bbcbd83ea17d730c5071e75449fdb4f9430e84ef05d80304` |
| 69 | `theorem` | [IsIntegral.tmul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-tmul.md) | 698 | `result-track:b9b81e81ef4647921281ac7f632cb8b78bcf48280f917e724f4367525930207b` |
| 70 | `def` | [normalizeScaleRoots](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/normalizescaleroots.md) | 723 | `declaration-track:64f38773d2a2c383ab0624db52d73c22db55d84c50ed0cd64dd0f0033d7584e0` |
| 71 | `theorem` | [normalizeScaleRoots_coeff_mul_leadingCoeff_pow](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/normalizescaleroots-coeff-mul-leadingcoeff-pow.md) | 728 | `result-track:900e0162ed1aa04e3d54438de91096139a4c7d2c6137b4827a2db2615a22b325` |
| 72 | `theorem` | [leadingCoeff_smul_normalizeScaleRoots](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/leadingcoeff-smul-normalizescaleroots.md) | 742 | `result-track:eef393ac1b59fc75e7a67c571096c6945c1572600e93acb1b025d7f7a91a453a` |
| 73 | `theorem` | [normalizeScaleRoots_support](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/normalizescaleroots-support.md) | 759 | `result-track:07937a46bc605fe36a6ae2746c38eb8d6568fc2027fa3f816bca34feffdd663d` |
| 74 | `theorem` | [normalizeScaleRoots_degree](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/normalizescaleroots-degree.md) | 768 | `result-track:57dfd31d0eead1e0da6bcbbe371770773cd296cd61866fee9783167962e89cb3` |
| 75 | `theorem` | [normalizeScaleRoots_eval₂_leadingCoeff_mul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/normalizescaleroots-eval-leadingcoeff-mul.md) | 775 | `result-track:1efeefc273fe411d646a8459d5f57be87263dec46901ec373d2706948f5eeff8` |
| 76 | `theorem` | [normalizeScaleRoots_monic](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/normalizescaleroots-monic.md) | 787 | `result-track:c7b04231bc145b58e7a8b75ef88426295878fa6afb8a60dc41705bebfacf10ea` |
| 77 | `theorem` | [RingHom.isIntegralElem_leadingCoeff_mul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegralelem-leadingcoeff-mul.md) | 796 | `result-track:6638715b1d613be5bd25d0c0d4dd4bb320842174f216fb09c24b29accfbe694a` |
| 78 | `theorem` | [isIntegral_leadingCoeff_smul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-leadingcoeff-smul.md) | 818 | `result-track:78920f62c600414638bd08d2d790c68173bab16453f1e32980b33e831995268d` |
| 79 | `class` | [IsIntegralClosure](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegralclosure.md) | 835 | `declaration-track:1318b1364a11679b252bec05751690f54f86c62a18340d17fe9f20c60466417e` |
| 80 | `instance` | [integralClosure.isIntegralClosure](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/integralclosure-isintegralclosure.md) | 841 | `declaration-track:35ad27d1f98c856c9ccadb621f7a54c135502dea005d92bad796f0db2d2ba653` |
| 81 | `theorem` | [algebraMap_injective](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebramap-injective.md) | 850 | `result-track:e6f1cef898100a4e731c6e4e4d333e773e516587ae4ee7ad5e55a64fb1cbe2dc` |
| 82 | `theorem` | [isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral.md) | 860 | `result-track:97ed4b9a18b5c31f0e797112261bdef8dd5c1790924774cd1e60d65f817c74ae` |
| 83 | `theorem` | [isIntegral_algebra](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-algebra.md) | 865 | `result-track:1c4599a9cc392c6a80a8cc48c4e85c8f448c5154718b12e8723ab640b48ed5e8` |
| 84 | `theorem` | [noZeroSMulDivisors](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/nozerosmuldivisors.md) | 869 | `result-track:cfdff3ddc9478190d4a0e6986cd9a300959ef37a1039d6256b4cfb97d2ce78a6` |
| 85 | `def` | [mk'](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/mk.md) | 880 | `declaration-track:859737cdfca2fded79525d3dfba67294dc50c21210a12e25c5436815b23daba2` |
| 86 | `theorem` | [algebraMap_mk'](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebramap-mk.md) | 885 | `result-track:c772edbf7146668d033f3f77217b3519c2d40f7645894596d52bd5c08cd59858` |
| 87 | `theorem` | [mk'_one](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/mk-one.md) | 890 | `result-track:2cfe97faa09a7bd637e90fed89f9f4a40dca526bb39ca3bf536a38c682e76248` |
| 88 | `theorem` | [mk'_zero](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/mk-zero.md) | 895 | `result-track:b1d465a05df1302bc8293d25983e7d8a5e9c1e80b44f4f871abe2dc0e0951222` |
| 89 | `theorem` | [mk'_add](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/mk-add.md) | 900 | `result-track:089bc3e5e9fc1669731b39788e43e9a166eb1b12e4cfc0f9fc0b57d7a40c252f` |
| 90 | `theorem` | [mk'_mul](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/mk-mul.md) | 906 | `result-track:cb618a393867ee758a8a44b6caea845157369c63502d18c805f5e72c2bf57061` |
| 91 | `theorem` | [mk'_algebraMap](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/mk-algebramap.md) | 912 | `result-track:34f235f0374eb3c6ed9bbd45a64f2830d9069cfb7b3904b251ec89aa5929716d` |
| 92 | `def` | [lift](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/lift.md) | 929 | `declaration-track:1898f2e211141334f6b5471e1d696a6feb7bb0b78faeb550a1f28e9a155d9e07` |
| 93 | `theorem` | [algebraMap_lift](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebramap-lift.md) | 939 | `result-track:eb1ae681519bc017a57506ed3ba955cd6de22ebf4fae7df5e9cef7b608deedf5` |
| 94 | `def` | [equiv](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/equiv.md) | 953 | `declaration-track:a15afdb6b4cd99e8fab96316d668f12725b3269928f3b8a8da3172e4bfaf029b` |
| 95 | `theorem` | [algebraMap_equiv](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebramap-equiv.md) | 966 | `result-track:7a507ace0b2c90b009d475c8473378adc12780d4e194c6f6360ca901e36c0a2e` |
| 96 | `theorem` | [isIntegral_trans_aux](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-trans-aux.md) | 986 | `result-track:d3deddf3b181ef820c2476eee8643b546a524a6a268725e3be181151aebd4675` |
| 97 | `theorem` | [isIntegral_trans](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-trans.md) | 1016 | `result-track:507d06cf3dccfe9e3f2ff87039626c9276ee0087049904b0142fc06dd7dd88d9` |
| 98 | `theorem` | [Algebra.isIntegral_trans](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebra-isintegral-trans.md) | 1033 | `result-track:81d3765f68c9b694bf9f75194ba64e47e09886732635672866c43df58180f70c` |
| 99 | `theorem` | [RingHom.isIntegral_trans](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegral-trans.md) | 1038 | `result-track:aa22efc30a3f16a5a43face16dbb38b64a239d222ee5b9a1b778856c3e04fdbd` |
| 100 | `theorem` | [RingHom.isIntegral_of_surjective](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegral-of-surjective.md) | 1045 | `result-track:76e840bb32a48418162f6627217345766f15012ec1febbb8e722b420b0dd6b26` |
| 101 | `theorem` | [isIntegral_of_surjective](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-of-surjective.md) | 1049 | `result-track:0c3888925ea4a4b1597a9f4967382d1143826c3aba5701db589367aad81f8362` |
| 102 | `theorem` | [isIntegral_tower_bot_of_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-tower-bot-of-isintegral.md) | 1056 | `result-track:c128dbe23105c78ac588df4ed33b4ee7b33ea838abe75bc4c883720c26bed27b` |
| 103 | `theorem` | [RingHom.isIntegral_tower_bot_of_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegral-tower-bot-of-isintegral.md) | 1066 | `result-track:4df05833a14abf6a1a3e0360e88de3d6a675fede0c2b2dec1481be2633d50f54` |
| 104 | `theorem` | [isIntegral_tower_bot_of_isIntegral_field](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-tower-bot-of-isintegral-field.md) | 1074 | `result-track:c40869cbcb6f14d64891bcbd11ffbb424782725056235f26ecfadb6a7014fb2b` |
| 105 | `theorem` | [RingHom.isIntegralElem_of_isIntegralElem_comp](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegralelem-of-isintegralelem-comp.md) | 1080 | `result-track:d35d05888602161384902af28649522b1cb7bb2077cae0e61da5af5979e26f9e` |
| 106 | `theorem` | [RingHom.isIntegral_tower_top_of_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegral-tower-top-of-isintegral.md) | 1087 | `result-track:d9934c108e15b9f3ea7d6cc2e0349c978a39dfd1986790540b8c4ca19bb5e7e5` |
| 107 | `theorem` | [isIntegral_tower_top_of_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-tower-top-of-isintegral.md) | 1093 | `result-track:4e39dcb0214bad0b26cb85e50164e3754bc0adbf73c20eeadc97f649a28f057d` |
| 108 | `theorem` | [RingHom.isIntegral_quotient_of_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/ringhom-isintegral-quotient-of-isintegral.md) | 1100 | `result-track:b9bbba9c316b8b2dc5f0b23c35eaae5bfece155c363e25d35ea9e5ba0eaa96df` |
| 109 | `theorem` | [isIntegral_quotient_of_isIntegral](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-quotient-of-isintegral.md) | 1108 | `result-track:3641650790cdc84fc5f63fe5751ff3129577edbb4997847cef50b0403920f391` |
| 110 | `theorem` | [isIntegral_quotientMap_iff](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isintegral-quotientmap-iff.md) | 1113 | `result-track:64417751ce73b50b83556b572537d182d4341565467ef5fea8ec3d2fe7e6db3d` |
| 111 | `theorem` | [isField_of_isIntegral_of_isField](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isfield-of-isintegral-of-isfield.md) | 1126 | `result-track:12466f44246cc836d1d94afb39952f2950f9eb993de5f6dbd817104eb3ee960f` |
| 112 | `theorem` | [isField_of_isIntegral_of_isField'](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/isfield-of-isintegral-of-isfield-source-edition-2.md) | 1164 | `result-track:2b9df2826862117389182dc28f2c3f943575c8cee2bd10eb68dbcf8679c50e3e` |
| 113 | `theorem` | [Algebra.IsIntegral.isField_iff_isField](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/algebra-isintegral-isfield-iff-isfield.md) | 1181 | `result-track:8372062e4eb70973dcf6e296e81354da81ae7b997954eeabc2ba9d4f0ce3c9a1` |
| 114 | `theorem` | [integralClosure_idem](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/integralclosure-idem.md) | 1189 | `result-track:51b60d66a1af810fc5d0b60ac0cc924251e2899425faf2d80ea2a259d91a85ac` |
| 115 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/instance.md) | 1203 | `declaration-track:8798e717eddb6ccdb8e508909a88fae7bfc4c7025d44106d2f12b07e3768dfb2` |
| 116 | `theorem` | [roots_mem_integralClosure](../../../../CommutativeAlgebra/RingTheoryIntegralClosureIntegralClosure.lean/declarations/roots-mem-integralclosure.md) | 1206 | `result-track:b3e68acce6173a149adccf33b1474c4790ff6b98bb575dc2e6e954ab16670047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1064716bab7be4e028c411b540ad737c0ad1263b7f1bd8bb42ad497adc6afbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean","GRWTSK/_verification/specifications/Algebra/IntegralClosure/Variantad093b5a78313a6e5e4ed94469a0cc7b3587f9e247fab8c9446320ae3cbe42af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

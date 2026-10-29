# Verification target: Algebra Basic Algebra Map Submonoid Powers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Ker` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.RestrictScalars` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CharZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.CharZero` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [_root_.PUnit.algebra](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/root-punit-algebra.md) | 37 | `declaration-track:866f6bd73fd4973ed3edc5c76c0aefd0800d50195742994e27a895114f8c1501` |
| 2 | `theorem` | [algebraMap_pUnit](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-punit.md) | 48 | `result-track:db1fbc329baf10ff0552fcd671990120b443298a9986cfa7be45d2208046f05b` |
| 3 | `instance` | [_root_.ULift.algebra](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/root-ulift-algebra.md) | 55 | `declaration-track:b5e1d60405c5cd9c8f4dbd980435585df1dab23c28f4b11243d93c248d13646f` |
| 4 | `theorem` | [_root_.ULift.algebraMap_eq](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/root-ulift-algebramap-eq.md) | 63 | `result-track:9b87288502fa3e83579a0ad8699833bda14ec257d16e0d583c671dd6a6e57d2c` |
| 5 | `theorem` | [_root_.ULift.down_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/root-ulift-down-algebramap.md) | 68 | `result-track:0d403a87b1a29f426c62f56a8d70270112c68b2818c302de6cd8168a1104cd05` |
| 6 | `instance` | [ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/ofsubsemiring.md) | 74 | `declaration-track:c010ee27847d6f3cd146b47addf518add6c99472c6cb8f6d64aa8c1541a5cf7d` |
| 7 | `theorem` | [algebraMap_ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-ofsubsemiring.md) | 80 | `result-track:58e2393475e2157761a3cdfdbcc926291a7f6422c2156e94db22b85ed22f7b6a` |
| 8 | `theorem` | [coe_algebraMap_ofSubsemiring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/coe-algebramap-ofsubsemiring.md) | 84 | `result-track:04b3c8e79112cd1b90f8d04acaa62737a39280190977908f19ac0e5626d7aa27` |
| 9 | `theorem` | [algebraMap_ofSubsemiring_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-ofsubsemiring-apply.md) | 87 | `result-track:ac40f6cfa126e0675ba10d7f3c6292baf85bd589b6ba8b56dac7875450319735` |
| 10 | `instance` | [ofSubring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/ofsubring.md) | 91 | `declaration-track:c449b592d0a2880f7e7b97e2df07dff9beb5db62934a5580fd6c34dfe0728245` |
| 11 | `theorem` | [algebraMap_ofSubring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-ofsubring.md) | 98 | `result-track:67278c5465d5bff21d515b82cbde1feef1c6d0d4f8bb5a7e13611831f2a2737a` |
| 12 | `theorem` | [coe_algebraMap_ofSubring](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/coe-algebramap-ofsubring.md) | 102 | `result-track:9e72765fe5ea2af825779843cacdc318cf754cb48777e3c187a34ae8c0ecbb08` |
| 13 | `theorem` | [algebraMap_ofSubring_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-ofsubring-apply.md) | 106 | `result-track:e4bc69dad5621944e47cecc1d0ec31d9d89db60cc924fb8b1350d5a9bf7598a0` |
| 14 | `def` | [algebraMapSubmonoid](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramapsubmonoid.md) | 112 | `declaration-track:1f21cdbb6e598baf5e4350b6fa297dc5da40026213efe5bc42f882a731c728d9` |
| 15 | `theorem` | [mem_algebraMapSubmonoid_of_mem](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/mem-algebramapsubmonoid-of-mem.md) | 115 | `result-track:fbadb1b72e8de3b9266f0da5fccc1e43758582fc01219bbb12e5d4b2b5bf6f82` |
| 16 | `lemma` | [algebraMapSubmonoid_powers](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramapsubmonoid-powers.md) | 120 | `result-track:966c112bdc96adfe97c1f580f4d001ebbc203c36a9dee8ae18f96d0b46e73919` |
| 17 | `theorem` | [mul_sub_algebraMap_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/mul-sub-algebramap-commutes.md) | 130 | `result-track:af2d045f81740bde9038582c470e7efeea921741c31f3f82bdfece9e351de5f2` |
| 18 | `theorem` | [mul_sub_algebraMap_pow_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/mul-sub-algebramap-pow-commutes.md) | 133 | `result-track:1d665d858dd81bde194cea84b27a19fbe4b47e112f7f5164d5fe60d49227b833` |
| 19 | `abbrev` | [semiringToRing](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/semiringtoring.md) | 146 | `declaration-track:3498096c6991afdd398dbb24d1d3ab108971799d375de2b745cb86ce5bb98965` |
| 20 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-7.md) | 153 | `declaration-track:ae0d4d4a0562154f864a24c8cb38563e381d892a814af0ec30af5f23aea41d44` |
| 21 | `instance` | [End.instAlgebra](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/end-instalgebra.md) | 175 | `declaration-track:0248f3960c19a5ef9e7ec0af4df358052ac0b2f9bc3c917cfc7303aad67505c3` |
| 22 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/example.md) | 179 | `declaration-track:99c0c569712c5b9ee5c324ea71684d9de5a52bf1f79e7286214351c71072a438` |
| 23 | `theorem` | [algebraMap_end_eq_smul_id](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-end-eq-smul-id.md) | 181 | `result-track:4367cb18ddab8f8116823b9177dcbd151ba02b85af8d975fb8ec0855638577ee` |
| 24 | `theorem` | [algebraMap_end_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-end-apply.md) | 185 | `result-track:802b21b16d7e79c885a2a2ecd103958a3ecb17262d4b6df223079539a324661c` |
| 25 | `theorem` | [ker_algebraMap_end](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/ker-algebramap-end.md) | 189 | `result-track:c682c0c7395f0ae0acbbb7a0d6fb47d5afaad88d2abd7036862ab585b48a8f2a` |
| 26 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/end-algebramap-isunit-inv-apply-eq-iff.md) | 197 | `result-track:8e0528ee401627e358327a6fc018010c4e77f269e8a5262ca0bc678be827aad6` |
| 27 | `theorem` | [End.algebraMap_isUnit_inv_apply_eq_iff'](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/end-algebramap-isunit-inv-apply-eq-iff-source-edition-2.md) | 209 | `result-track:a4c3fe1e40d8272d75c7ad161261ff80f535c0b32a3533c52768ef54900682a2` |
| 28 | `theorem` | [map_algebraMap_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/map-algebramap-mul.md) | 232 | `result-track:e1f4f7b9ae4d76b67a963881eb52092df9ba41eff0cdddf8b0aa8899b18d2f24` |
| 29 | `theorem` | [map_mul_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/map-mul-algebramap.md) | 236 | `result-track:892bac6c1c37ba76d740487e211cb4036591f80398fa0016cd63c8fb5e8cd385` |
| 30 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-5.md) | 250 | `declaration-track:50d54746966d6f87be964c47b6e797b3a5b28f651c2c2951c5015ec18472e48f` |
| 31 | `instance` | [nat_algebra_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/nat-algebra-subsingleton.md) | 255 | `declaration-track:f0ee9d39697790b488b6d048f0a951045c6af835008a527c33425fc4d16e7ec8` |
| 32 | `lemma` | [algebraMap_comp_natCast](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-comp-natcast.md) | 259 | `result-track:adeb4f7cc2792f5dbbd22e1130a9c66ea14798cab35ea5fff72d31fbc7a4dea3` |
| 33 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-8.md) | 273 | `declaration-track:c4e286dfbf12d019b51609b1463eda4614df0a82ca6e7532518ed92bab3c5988` |
| 34 | `theorem` | [algebraMap_int_eq](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-int-eq.md) | 280 | `result-track:d7103d80b306143a2afce1004fddcdd94c20ce96bf1b651f84b7b2b018acafd4` |
| 35 | `instance` | [int_algebra_subsingleton](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/int-algebra-subsingleton.md) | 285 | `declaration-track:f6c4d676c727575b8fde7e7835ea6de3cae0201f85f8d59154dc51d471bf8c81` |
| 36 | `lemma` | [algebraMap_comp_intCast](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-comp-intcast.md) | 289 | `result-track:d9289c5436c38d02c2358675607fa057d5df7cfc776a0c31e555abf93e228a18` |
| 37 | `theorem` | [_root_.NeZero.of_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/root-nezero-of-faithfulsmul.md) | 297 | `result-track:3729f416d4a2d78df727714387578472771cc42becede35446964c656e513432` |
| 38 | `lemma` | [faithfulSMul_iff_algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/faithfulsmul-iff-algebramap-injective.md) | 308 | `result-track:739246648c4348e560e4dc285e4bae163442790ba001862b6a5bcbb1551ae724` |
| 39 | `lemma` | [algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-injective.md) | 315 | `result-track:c313f5e8906202518435396cf45de027d8515863ea214cec2e580194ca25a767` |
| 40 | `lemma` | [algebraMap_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-eq-zero-iff.md) | 322 | `result-track:f8d338019421539a88b7d60c0aa553b2da0a807cfac318de3abcd888b4575c50` |
| 41 | `lemma` | [algebraMap_eq_one_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-eq-one-iff.md) | 329 | `result-track:edc9308b15e2f273ea838469b30facada8e5c134010f09d1576a87d149054211` |
| 42 | `lemma` | [Algebra.charZero_of_charZero](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebra-charzero-of-charzero.md) | 337 | `result-track:5b9dfe496dd90d2bda82882f80613707c1591d20784754e68c765a6806481c32` |
| 43 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-10.md) | 341 | `declaration-track:fca95f1d9c1cdba63635283ecc8c26aa776c9082a6c24d828b3976467e00f00b` |
| 44 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-6.md) | 344 | `declaration-track:7f90e8847b7f40e7c127e74b46821002c755f10eeb6d35620e8739244d1d0bc5` |
| 45 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-3.md) | 352 | `declaration-track:419a0cf1c5af7ee2a493463a27e794f6c8b853ece67210e4188ad65baadfe818` |
| 46 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-2.md) | 363 | `declaration-track:4180c70f697253e0f29a8f3f5a64531cf95dad24946001d080638da4fb69bfe4` |
| 47 | `theorem` | [iff_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/iff-faithfulsmul.md) | 369 | `result-track:c78d17f85df3ae8136c200a0ea6000e4d0108c46d10d2a7c42f3a5b7d085f17a` |
| 48 | `theorem` | [iff_algebraMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/iff-algebramap-injective.md) | 372 | `result-track:1afcef1ec9919a95da31d43a3c6b884810e731ab68520225247144ee9fb4b1cf` |
| 49 | `theorem` | [algebra_compatible_smul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebra-compatible-smul.md) | 385 | `result-track:c73184871a5808e42b4993229aa92265948ce3d7f9c8ba19a02d5df91789bcc5` |
| 50 | `theorem` | [algebraMap_smul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/algebramap-smul.md) | 389 | `result-track:e36a09bb129dc07cf4f177ed5ae064010a6f675979a424ae089e6a2d0f58da56` |
| 51 | `theorem` | [NoZeroSMulDivisors.trans_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/nozerosmuldivisors-trans-faithfulsmul.md) | 393 | `result-track:001f99f0924f9e6e353f59dff443b84039dd86bf5e7f4e5f9dd503ed1991624a` |
| 52 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-4.md) | 408 | `declaration-track:420016a14cbe70e3bd71c2cec478fe7f7734314f59cdf5b019040e351f3fd230` |
| 53 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance-source-edition-9.md) | 415 | `declaration-track:cb52bfe1fb0be984040f41a951b14ab3b487f09e72e4acef40ade6cc626c18c4` |
| 54 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/instance.md) | 419 | `declaration-track:057560b9aadf62a8bd1ad65a400df8b1b3f8d519edc7981a650ff5cc6f5a255f` |
| 55 | `theorem` | [smul_algebra_smul_comm](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/smul-algebra-smul-comm.md) | 423 | `result-track:8ae0417443ae13175010d173be9751302859d350d59a27e88f9c4a87868fd090` |
| 56 | `def` | [ltoFun](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/ltofun.md) | 433 | `declaration-track:6e8d468d55274ad4d7be269b0eb34eb75662e99a2bb547ff73ab1ba2e4b88f00` |
| 57 | `theorem` | [LinearMap.ker_restrictScalars](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/linearmap-ker-restrictscalars.md) | 454 | `result-track:c1e693c2cf9658a1475f7d2581125c0db867d87f133f75fa590e2eb7bd9f7f25` |
| 58 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/example-source-edition-2.md) | 460 | `declaration-track:cd79d155c195bbb51a00df1f2908dad35ccfd852a870d6e40e68338d18e39555` |
| 59 | `abbrev` | [Invertible.algebraMapOfInvertibleAlgebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/invertible-algebramapofinvertiblealgebramap.md) | 471 | `declaration-track:3cc793fa78563b2805e3fa590d0159ebae7c23c1355a7dbcda3e9ad9bccedd70` |
| 60 | `lemma` | [IsUnit.algebraMap_of_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/isunit-algebramap-of-algebramap.md) | 480 | `result-track:6a7584c0343032d1e5f56e26c3c9a9667740b50e0a488f2ced8cd2ceace8af55` |
| 61 | `theorem` | [injective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/injective-algebramap-of-linearmap.md) | 494 | `result-track:98d7d8f732271e58db7d0fbcd3a4b16480b2b2e326a2db67ed4f0cecfcbfacbe` |
| 62 | `theorem` | [surjective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/surjective-algebramap-of-linearmap.md) | 501 | `result-track:84f0579b4c0c7aa96fb29f1e1323a8b53db4732193a02b489bf7bc845ed070ae` |
| 63 | `theorem` | [bijective_algebraMap_of_linearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/bijective-algebramap-of-linearmap.md) | 518 | `result-track:778999874711513ad915b20517a283646c695f14c448fd8ac737914e5dec6779` |
| 64 | `theorem` | [bijective_algebraMap_of_linearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/bijective-algebramap-of-linearequiv.md) | 524 | `result-track:e73c75cd6d20ed43bf588d380ad7b0e3b181657013a500c43c4fa8b8710de424` |
| 65 | `def` | [LinearMap.extendScalarsOfSurjectiveEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/linearmap-extendscalarsofsurjectiveequiv.md) | 537 | `declaration-track:7075fdcc03453f7a75f1dcf5a2a474d4e05e8cad42f0c9f68ba8564c3dd0edc4` |
| 66 | `abbrev` | [LinearMap.extendScalarsOfSurjective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/linearmap-extendscalarsofsurjective.md) | 547 | `declaration-track:a98f133514a4c81d4a228a3b298ca541fc06d2db8632a3802fec4b82cff34347` |
| 67 | `def` | [LinearEquiv.extendScalarsOfSurjective](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/linearequiv-extendscalarsofsurjective.md) | 552 | `declaration-track:991a87c1f1152671d09f0f13cd9cbc8bd8dad971ee3a1adaafc45aafb0994da2` |
| 68 | `lemma` | [LinearMap.extendScalarsOfSurjective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/linearmap-extendscalarsofsurjective-apply.md) | 560 | `result-track:9b327634bcf473ed07a51dc3efbfa68390beed8f532909d3e072bd58315ed06c` |
| 69 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/linearequiv-extendscalarsofsurjective-apply.md) | 564 | `result-track:46ef75aff4a968375158d857f826c73c2faccfe12dc431a93bd568ccf179abff` |
| 70 | `lemma` | [LinearEquiv.extendScalarsOfSurjective_symm](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/linearequiv-extendscalarsofsurjective-symm.md) | 568 | `result-track:2d9fd57e8c47edc9dce7aba336877bdf9080fd17af95c780bd7b6247cc47f5cb` |
| 71 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/coe-prod.md) | 580 | `result-track:904b2fb71c0b3581366224bc5604a24b3473acd374889bac7d99dfb95ff2fe03` |
| 72 | `theorem` | [coe_sum](../../../../AssociativeRingsAndAlgebras/AlgebraBasicAlgebraMapSubmonoidPowers.lean/declarations/coe-sum.md) | 584 | `result-track:7c88c6657afbfd93360d4c088c5d270c75d717a84b0ce061e6d17ed441f4b372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5004813ab2f7385ec67208cf1658246eca14e2d6ff242a31f1a278f03d03e0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

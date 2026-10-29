# Verification target: Homogeneous Ideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8f0ddeafe33157127d0c959f648d67c3a432243",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8f0ddeafe33157127d0c959f648d67c3a432243`.

Source path: `GRWTSK/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Homogeneous.Submodule` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ideal.IsHomogeneous](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous.md) | 60 | `declaration-track:6f575348a0aa6e76900ff4e62ce7fb35b47199e878b40abaa15566ffa09bc613` |
| 2 | `theorem` | [Ideal.IsHomogeneous.mem_iff](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous-mem-iff.md) | 62 | `result-track:e4d9a27f069ef4dbb424d3e91a8788be7887babf61086220eaab736737088617` |
| 3 | `abbrev` | [HomogeneousIdeal](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal.md) | 67 | `declaration-track:3d026ad035c279dfd4a6a83ec69f23547c420dacd858ee49f61a0475807e3cc1` |
| 4 | `abbrev` | [HomogeneousIdeal.toIdeal](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-toideal.md) | 72 | `declaration-track:4936b6d82fdb03346e8dda45c30b35afcac1ec769cb0a56ae6fd5f4bec619418` |
| 5 | `theorem` | [HomogeneousIdeal.isHomogeneous](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-ishomogeneous.md) | 75 | `result-track:31db6ffce39eb06a047b49a6f2320ee7be1e30497a807a41fd5c55daa73ce784` |
| 6 | `theorem` | [HomogeneousIdeal.toIdeal_injective](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-toideal-injective.md) | 78 | `result-track:26650cd327d72ad28a6a0a50e1244a03318a89f438f218419540ca002a504955` |
| 7 | `instance` | [HomogeneousIdeal.setLike](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-setlike.md) | 82 | `declaration-track:caeae103b56d4bc42717db68a7f4446d2bf611d7e7ee6c6899d01a25c2bf8a7c` |
| 8 | `theorem` | [HomogeneousIdeal.ext](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-ext.md) | 86 | `result-track:a6d648553e142f22cd1a8a4d54682067c0397f0c0a59e9e6dba01bcc6788a7fc` |
| 9 | `theorem` | [HomogeneousIdeal.ext'](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-ext-source-edition-2.md) | 89 | `result-track:b77d5be62826a6400614ae8a16f603585ab9d49c817a2ecb2f531ca2a457b960` |
| 10 | `theorem` | [HomogeneousIdeal.mem_iff](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-mem-iff.md) | 93 | `result-track:fe29ac96a8e4290b37ada62c68764b40ae9700b8273de6a58b56a9f9f0633efc` |
| 11 | `def` | [Ideal.homogeneousCore'](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore.md) | 106 | `declaration-track:5a5b12321fdae660d68a331d8fd27ed082a7b71a90637e267f5c1fd4e0ff8b72` |
| 12 | `theorem` | [Ideal.homogeneousCore'_mono](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore-mono-source-edition-2.md) | 109 | `result-track:b59ed67ac87081061d8f9f7e0efd1faced4c45bfba943a830bae71b48cc7c2c7` |
| 13 | `theorem` | [Ideal.homogeneousCore'_le](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore-le.md) | 112 | `result-track:50c5a2562292ff7e1b893449cb1f318d8322938dbca701d769171b9f8b2ccd48` |
| 14 | `theorem` | [Ideal.isHomogeneous_iff_forall_subset](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous-iff-forall-subset.md) | 124 | `result-track:6c50d01bbad00fc3b776a49f498642425d9ba269ea662587957dd032b85ef812` |
| 15 | `theorem` | [Ideal.isHomogeneous_iff_subset_iInter](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous-iff-subset-iinter.md) | 128 | `result-track:ed8173d517d890d323ef1c2511b6fda8f5861c77218aef63ea0846553e65b1b1` |
| 16 | `theorem` | [Ideal.mul_homogeneous_element_mem_of_mem](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-mul-homogeneous-element-mem-of-mem.md) | 132 | `result-track:eff2ac28fe550b3bde0a0db708c66a7baa19cca9dbf5c5a847b4de1fecd0b31b` |
| 17 | `theorem` | [Ideal.homogeneous_span](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneous-span.md) | 147 | `result-track:4fd43c1f320abc2ea72e9d16d022eedf581df5a2d4db66af6198a206ca686bf9` |
| 18 | `def` | [Ideal.homogeneousCore](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore-source-edition-2.md) | 165 | `declaration-track:e6ecd60ad7765405403c0b2bcf47a5d73cc58ca1de4cda45d45fe86beb46d426` |
| 19 | `theorem` | [Ideal.homogeneousCore_mono](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore-mono.md) | 171 | `result-track:3f40f8b254e82953b2a7984d54d263d178d981a8f91ace3c8e4957a611c7ced6` |
| 20 | `theorem` | [Ideal.toIdeal_homogeneousCore_le](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-toideal-homogeneouscore-le.md) | 174 | `result-track:b98ea965ea4f4ce438b21eaa156a816aa07844d77912b7f2cced9d9607ccaf58` |
| 21 | `theorem` | [Ideal.mem_homogeneousCore_of_homogeneous_of_mem](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-mem-homogeneouscore-of-homogeneous-of-mem.md) | 179 | `result-track:46fc86e9115cfcc0ed470020ea83cb966fda487f98bef8475047c19222759868` |
| 22 | `theorem` | [Ideal.IsHomogeneous.toIdeal_homogeneousCore_eq_self](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous-toideal-homogeneouscore-eq-self.md) | 183 | `result-track:2acc0f81d57e05e9b0d4eccd0219f4b70736357bb9fc49c5cf282c8ff59b4f72` |
| 23 | `theorem` | [HomogeneousIdeal.toIdeal_homogeneousCore_eq_self](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-toideal-homogeneouscore-eq-self.md) | 192 | `result-track:a7103f70e5025bf693842fd2ce6d93a95e5c829d768ee92af7261abf5a941740` |
| 24 | `theorem` | [Ideal.IsHomogeneous.iff_eq](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous-iff-eq.md) | 199 | `result-track:3cc19b915b63a864ae318f1599ff261620a54d00d11fb5e896959950076d032c` |
| 25 | `theorem` | [Ideal.IsHomogeneous.iff_exists](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous-iff-exists.md) | 202 | `result-track:b40306c8a22779e017e900d6bfc4dc65d3ca5e6ac83639c5a64e5469eb002b44` |
| 26 | `theorem` | [bot](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/bot.md) | 224 | `result-track:5c8b137060f55db46dc3937f022fec553eea6d31066f7df6186846e691f5bb70` |
| 27 | `theorem` | [top](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/top.md) | 229 | `result-track:1060c0aafc09ae2352366c34f410fcad59b80df11c2592a206fecfd7651b89fa` |
| 28 | `theorem` | [inf](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/inf.md) | 233 | `result-track:634c0d5c06ed2e10919b0d29e0645c47d6bbc88ce29ed86116a83f047e3cb497` |
| 29 | `theorem` | [sup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/sup.md) | 237 | `result-track:7142a55dc3f429c408cea33a9e31b4ad287be207d0bf8f3e8413f86f9c91fc8c` |
| 30 | `theorem` | [iSup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/isup-source-edition-2.md) | 245 | `result-track:cf3e0b906f531a1f321f0e362294fd392ec03860294f3479f3212247ebd0dd03` |
| 31 | `theorem` | [iInf](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/iinf.md) | 254 | `result-track:734f9bdbd36c361044c5f022a5000993aafa9472ea5f794f682020d2538b509b` |
| 32 | `theorem` | [iSup₂](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/isup.md) | 260 | `result-track:2f54382561f72384227eb8a9df1982323357678a7db09d8a083d4230b3d3ad29` |
| 33 | `theorem` | [iInf₂](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/iinf-source-edition-2.md) | 264 | `result-track:fb6919d4eff5dca7c5207c51b981240a1e939cab30f4f4323b6d32a779b2c03e` |
| 34 | `theorem` | [sSup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ssup.md) | 268 | `result-track:ddcfbf43fe5f0980c501643e77ca4cc68045097f3b29070dc3ee1e1b431ba785` |
| 35 | `theorem` | [sInf](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/sinf.md) | 273 | `result-track:634cfc7ba214edbb8ffc65b605691460c7aa7fd4f98209c5299e22d36d9afed1` |
| 36 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-10.md) | 284 | `declaration-track:f7a78638b44881845f24e4fc63b6452723881518e2958f6b63e588c16d12a5d1` |
| 37 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-9.md) | 287 | `declaration-track:e84b83af6baa7d70339781344834a16b7e24486cbc9d7bddfe8189f98a59fb3d` |
| 38 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-2.md) | 290 | `declaration-track:2417039aec91b4aca8216d39ff899a8df4b66519e9ae5c48009dd726dc390ee6` |
| 39 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-7.md) | 293 | `declaration-track:7e3067425d989a4ffd6038a5f37f4bec44e2b0884013e55939b793e42f347d2a` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-4.md) | 296 | `declaration-track:638aa291f6d7a1888e5a055acf4b7a6c763e171f83f8f48ce717e11ad2deb32d` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance.md) | 299 | `declaration-track:1eb639a339bf6724d879f17f199cbfddc5db81fb08886dd2ac52cbece05121fd` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-8.md) | 302 | `declaration-track:b64021f3a162fbd0e68a18c3a308d88c728ecef429a0d36d465af4bdc8658f0e` |
| 43 | `theorem` | [coe_top](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/coe-top.md) | 306 | `result-track:8bc3e3237d3c90e42bbe4c9ae00195f2e97ac61b23e71d9ce110e3d31a9622fe` |
| 44 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/coe-bot.md) | 310 | `result-track:d46af2719fb9c1a194f0c0e81407279362ec58a10491dacc6314689eead73bd7` |
| 45 | `theorem` | [coe_sup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/coe-sup.md) | 314 | `result-track:6c3ec2c98f70b87b5c4f52e1461fdf23b998fcdffbcbed987212843a16638d8f` |
| 46 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/coe-inf.md) | 318 | `result-track:4f14e6f22597cb6fd43e7ec107da12b0cf150e21accba3d86f14366951a8424c` |
| 47 | `theorem` | [toIdeal_top](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-top.md) | 322 | `result-track:2c5df06bd2d848c39616ac7f806196ee1221b1ab9f929df9e56adfb80860ae1d` |
| 48 | `theorem` | [toIdeal_bot](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-bot.md) | 326 | `result-track:de5fc340ad68a5959a199744e7a0ef8356e0f3394bab82548ff61ef8e3b8cf21` |
| 49 | `theorem` | [toIdeal_sup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-sup.md) | 330 | `result-track:87ce502096ed1428e34c01bab668a8ddac21bbea32a51ab92fca85fbedc23aa3` |
| 50 | `theorem` | [toIdeal_inf](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-inf.md) | 334 | `result-track:911c36ba950f38f519e7e23b2adfd570b1318bee0249e263307f84dd25606954` |
| 51 | `theorem` | [toIdeal_sSup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-ssup.md) | 338 | `result-track:aff760998133a2c68c5aaeffc44dc73df8971ba8a808bf7d6331a7ef1e17baca` |
| 52 | `theorem` | [toIdeal_sInf](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-sinf.md) | 342 | `result-track:a4473a74a44f70d7c9bdb2d9aa3e65ccaa7e8cc06aed302664347b89d433b18a` |
| 53 | `theorem` | [toIdeal_iSup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-isup.md) | 346 | `result-track:8a96658f03984144f83fe631fc8bfd076371d81be4361722816045150a5d5be1` |
| 54 | `theorem` | [toIdeal_iInf](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-iinf-source-edition-2.md) | 351 | `result-track:c5db15b435595e20dd6c3045f842bd04b02d93555da2cd11cf52418fae817092` |
| 55 | `theorem` | [toIdeal_iSup₂](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-isup-source-edition-2.md) | 355 | `result-track:bb247f5c4492e31d664aa620e3aad204af622f2f2e50ce83ad02eb26206db278` |
| 56 | `theorem` | [toIdeal_iInf₂](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-iinf.md) | 359 | `result-track:97f9a7d12d9ce64913c4d3f3ab0d00f3032b8581412dc2be2f684c0abbf4cbcf` |
| 57 | `theorem` | [eq_top_iff](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/eq-top-iff.md) | 364 | `result-track:325e102795128934d5fd2dd1542e6c222ceec9dfd95fc78c77b164af540ee77b` |
| 58 | `theorem` | [eq_bot_iff](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/eq-bot-iff.md) | 368 | `result-track:c43ff4bffc4913e912c1b0e68e30765cbd30b40019d08255c757987c8b00ecb8` |
| 59 | `instance` | [completeLattice](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/completelattice.md) | 371 | `declaration-track:e841031b0b0fc4f3699d6a17d161578038e55a3e921712a4cf7f63425bdb7799` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-6.md) | 375 | `declaration-track:74af2890d3fcab12da0a709d235696c51007ed5906cdae96952513d06d077a1d` |
| 61 | `theorem` | [toIdeal_add](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/toideal-add.md) | 379 | `result-track:a51d1d3c9942bbe7cea03f7ce4190c71412f5f1e3304708face821390fa48ab3` |
| 62 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-3.md) | 382 | `declaration-track:59582be111aacfb3598b6c9dbe0be1a27fb1019474b0482bb8e955290b55f4fe` |
| 63 | `theorem` | [Ideal.IsHomogeneous.mul](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous-mul.md) | 395 | `result-track:d510b8bc2a7d7a62ae5beea104fd15d0eb7ea44b56bf259837f72c37eeecc63d` |
| 64 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/instance-source-edition-5.md) | 402 | `declaration-track:719fcaad032be9a7072c1b863519e960ac5d4f5a9f401ac2f832ea73505ba980` |
| 65 | `theorem` | [HomogeneousIdeal.toIdeal_mul](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-toideal-mul.md) | 406 | `result-track:d8500b002087d785ab2e5cfd387cfc5874941b5fa0418d746ae6fcba0b4e896a` |
| 66 | `theorem` | [Ideal.homogeneousCore.gc](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore-gc.md) | 428 | `result-track:9106a39d463b90bc47c173e0fd22a934601514c0206457947e11414c102977a1` |
| 67 | `def` | [Ideal.homogeneousCore.gi](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore-gi.md) | 434 | `declaration-track:fa1890da360e8d3634dbd025f70b0adfa674cca0e61de8c8d076f04260f7f981` |
| 68 | `theorem` | [Ideal.homogeneousCore_eq_sSup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore-eq-ssup.md) | 441 | `result-track:438e02da6cb09e5561b26bc3e5ca809bd070ef89e4f98caa7cb7500b40f5c7cc` |
| 69 | `theorem` | [Ideal.homogeneousCore'_eq_sSup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneouscore-eq-ssup-source-edition-2.md) | 445 | `result-track:70f90ea593220f4d33a65c36f58a4795c5fbf46e39a4b2a53db381c8be7ab258` |
| 70 | `def` | [Ideal.homogeneousHull](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneoushull.md) | 472 | `declaration-track:7c2de95d1b2ca3b35a48d9d122def19690121d046aaf3116abd9d67422e1a9d6` |
| 71 | `theorem` | [Ideal.le_toIdeal_homogeneousHull](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-le-toideal-homogeneoushull.md) | 478 | `result-track:5abdaa639b3975800295fd0aa48afff973d3f29d4cb62e66a4d2c648bd070400` |
| 72 | `theorem` | [Ideal.homogeneousHull_mono](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneoushull-mono.md) | 488 | `result-track:8713cca5f131c31070890349b3920bc1afa4e930bf03d271ecd452c94a17370c` |
| 73 | `theorem` | [Ideal.IsHomogeneous.toIdeal_homogeneousHull_eq_self](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-ishomogeneous-toideal-homogeneoushull-eq-self.md) | 495 | `result-track:71ad01e5a70a003b460d838a5f582d412ad148938334d58c7a6523df0f10c9fc` |
| 74 | `theorem` | [HomogeneousIdeal.homogeneousHull_toIdeal_eq_self](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-homogeneoushull-toideal-eq-self.md) | 503 | `result-track:5e84e83699d9a1e7fc56620d38860f7738c75efc1a31ffa6700fcfd7b88357ab` |
| 75 | `theorem` | [Ideal.toIdeal_homogeneousHull_eq_iSup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-toideal-homogeneoushull-eq-isup.md) | 509 | `result-track:e5634e1d2c4deaa8811c7adb4255db187a039196aaaf30b6abe70dd9bd95f833` |
| 76 | `theorem` | [Ideal.homogeneousHull_eq_iSup](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneoushull-eq-isup.md) | 517 | `result-track:c7a45bb2c892bfbfa919b3ce9ac74df5aec77b5ade0e7cc45717ce8b4244f137` |
| 77 | `theorem` | [Ideal.homogeneousHull.gc](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneoushull-gc.md) | 534 | `result-track:87252d94ada8d4f6dc5d850b715aae6700198e177e438f6ec2df60e7adcad0cc` |
| 78 | `def` | [Ideal.homogeneousHull.gi](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneoushull-gi.md) | 540 | `declaration-track:53c53f42e37b42ab99218133e49040966444f78f90eba34ec5fb067f0847c4e3` |
| 79 | `theorem` | [Ideal.homogeneousHull_eq_sInf](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/ideal-homogeneoushull-eq-sinf.md) | 546 | `result-track:7c109b5ad5b8de148756e01cdbe28075cf8bdb285157206c800a8bbc554ed3a9` |
| 80 | `def` | [HomogeneousIdeal.irrelevant](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-irrelevant.md) | 571 | `declaration-track:51ec775c2fd05f491928ee0627d213876762ad99461e532b1a5d27374ee1204d` |
| 81 | `theorem` | [HomogeneousIdeal.mem_irrelevant_iff](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-mem-irrelevant-iff.md) | 579 | `result-track:148000273148685dfee7c09bec4e7276f1e5f9e6e38e96340a185c686dd09fe5` |
| 82 | `theorem` | [HomogeneousIdeal.toIdeal_irrelevant](../../../../CommutativeAlgebra/HomogeneousIdeal.lean/declarations/homogeneousideal-toideal-irrelevant.md) | 584 | `result-track:802e8863b15bd208f7f6b45d923bad3b97ae52b197ee7a18b266e3e62d5343a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73c837e6ee08aff82a705bde401c856ec7fbdc0525f512595d2b138671b7c6ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean","GRWTSK/_verification/specifications/Algebra/Ideal/Variant25cf60cd387dd2c8a3ebd2212177dcfed8713fe2b1e00af390d37282ffdcf409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

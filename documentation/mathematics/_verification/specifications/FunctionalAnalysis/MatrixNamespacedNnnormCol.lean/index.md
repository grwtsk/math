# Verification target: Matrix Namespaced Nnnorm Col

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e939eb3225c937facc98479120e46462a3e90d0",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e939eb3225c937facc98479120e46462a3e90d0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.PiLp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/macro-rules.md) | 54 | `declaration-track:902e16fc843a0a022b15b9873c09a915366fb2480829b097f59df2c123627c6e` |
| 2 | `def` | [seminormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/seminormedaddcommgroup.md) | 77 | `declaration-track:13f3a8403f18bdc1cd5b35c6e86f5c6e6e175b49ff245a952b00fb3167be84c3` |
| 3 | `theorem` | [norm_def](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-def.md) | 85 | `result-track:26a5991d21c29cfcea87c3315fc47dbc7ff821352ca777a04867d6738612b2f4` |
| 4 | `theorem` | [nnnorm_def](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-def.md) | 88 | `result-track:b2e54908f75deaa5ff6bb1205b77b5c1f564c8a65de1ce22064f158b53203ecd` |
| 5 | `theorem` | [norm_le_iff](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-le-iff.md) | 90 | `result-track:63c65034cc43fe575f71147af3d9531de99fa19904abde54aa31b130f4eff728` |
| 6 | `theorem` | [nnnorm_le_iff](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-le-iff.md) | 94 | `result-track:4ddf040a06659ed8a2a4bf018a5020d9dc055fd363eb544f714483ecb1642c2c` |
| 7 | `theorem` | [norm_lt_iff](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-lt-iff.md) | 98 | `result-track:9ea86fb4c034bd07693468b224a75963f9d796406c98d3804a4f4578dbef7ed6` |
| 8 | `theorem` | [nnnorm_lt_iff](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-lt-iff.md) | 102 | `result-track:6411530987cf21cd576923095636ceebfeea0f6a78c36d83c1ac1da9c4c899a1` |
| 9 | `theorem` | [norm_entry_le_entrywise_sup_norm](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-entry-le-entrywise-sup-norm.md) | 107 | `result-track:8df11a40fc01d401f6bd12fe24c8838b176335e43ec7e5fcf0733ecce05245bc` |
| 10 | `theorem` | [nnnorm_entry_le_entrywise_sup_nnnorm](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-entry-le-entrywise-sup-nnnorm.md) | 111 | `result-track:2b3c4037e252f99daa80fccf260d721f49e84ea33bcb932e0d2d1f899b6c94d0` |
| 11 | `theorem` | [nnnorm_map_eq](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-map-eq.md) | 116 | `result-track:15e56258f8d4bb45d8c600eeb43772fe989e4b280e471ab9c71caa9d7629073d` |
| 12 | `theorem` | [norm_map_eq](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-map-eq.md) | 122 | `result-track:ba70c4256116d1c6639780d41f055f5633f71421f2a2c18ab50c7c50be5e6714` |
| 13 | `theorem` | [nnnorm_transpose](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-transpose.md) | 127 | `result-track:942733431a9947d4fd45409e032758b2971b132c6d601674a6b60093cb56c579` |
| 14 | `theorem` | [norm_transpose](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-transpose.md) | 132 | `result-track:35d9ce65baa59aaada045df14ca117fe1106d4a197343c3aba9f657dfe7be557` |
| 15 | `theorem` | [nnnorm_conjTranspose](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-conjtranspose.md) | 137 | `result-track:3d17269c822a1223eca4bf20bc36f6c0d4c9cd53114cad5441e4791cb841826c` |
| 16 | `theorem` | [norm_conjTranspose](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-conjtranspose.md) | 143 | `result-track:0c3a6ec4ab5e2462ab155641019df450fc1d9e4cb1bc9dce580148ee87151cba` |
| 17 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/instance-source-edition-2.md) | 147 | `declaration-track:f902da0dc5f7fafa6bcef2844ffad9e2c67f4daa10ea186fd55f6bf23c3b2446` |
| 18 | `theorem` | [nnnorm_col](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-col.md) | 151 | `result-track:1a8012269f0653097e979879f6e1706767bfdbb0ed114767501b10fdc4dbbcce` |
| 19 | `theorem` | [norm_col](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-col.md) | 156 | `result-track:788bb4d5838c918825898513533eda331541508c5e0d79bf903722d495c2b313` |
| 20 | `theorem` | [nnnorm_row](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-row.md) | 161 | `result-track:45a4c0e29fb1b82b8f0de9fc79b5572a101e21ba48c91bbbd26d91a39615ccff` |
| 21 | `theorem` | [norm_row](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-row.md) | 166 | `result-track:89b6b19893d2bc924c3d1b8b4832992c6c5f00fb916a1b8897085c05f1af7e53` |
| 22 | `theorem` | [nnnorm_diagonal](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/nnnorm-diagonal.md) | 171 | `result-track:410aa6d7ab5991e62a79d9202f02eb26d66887fed2b3ad96790522538e1b605b` |
| 23 | `theorem` | [norm_diagonal](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/norm-diagonal.md) | 184 | `result-track:ea6f30033c387487fbcd39d6a1d8be236444c2135791878793801cb1a84a331c` |
| 24 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/instance.md) | 190 | `declaration-track:ee681e07ccbbc19b8189bf373425984d35e6d66b989bbcb306c98b69658e6a85` |
| 25 | `def` | [normedAddCommGroup](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/normedaddcommgroup.md) | 198 | `declaration-track:cbd5de39c03a1254e82056b551d6753c0537fc007cd72f5bb3cfe04d16b15895` |
| 26 | `def` | [normedSpace](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/normedspace.md) | 211 | `declaration-track:dff0c35b30ca0823b35a6b88b4b1f5e1abaec9769157d4dc14e6d41817fcdaf2` |
| 27 | `def` | [linftyOpSeminormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linftyopseminormedaddcommgroup.md) | 234 | `declaration-track:f8d58fd892cf2a1d795fe07cf1abefa66a6481ae46de48573d9bc58f93e7695c` |
| 28 | `def` | [linftyOpNormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linftyopnormedaddcommgroup.md) | 243 | `declaration-track:5f8800769554ccef8162ee3080eaf22ebe7d8a71f30cb3539522a95c57fd017f` |
| 29 | `def` | [linftyOpNormedSpace](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linftyopnormedspace.md) | 252 | `declaration-track:51f3a51d8aead75c5e11ace4dd277ab2aee0b0a46d7d1130dff34d19be569d4b` |
| 30 | `theorem` | [linfty_op_norm_def](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-norm-def.md) | 261 | `result-track:641cb9a69350da671d5c4c0a95422aea82a955093cab20d285f55d385dbf35e3` |
| 31 | `theorem` | [linfty_op_nnnorm_def](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-nnnorm-def.md) | 268 | `result-track:d499f9b8bad4894ec430310a65a229240b9f1fb602d5a377b21ff82e32854672` |
| 32 | `theorem` | [linfty_op_nnnorm_col](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-nnnorm-col.md) | 274 | `result-track:32e9498dab4e263fd8de3c591d53e017647c6b6ee9740a8741c9e5c3756266fe` |
| 33 | `theorem` | [linfty_op_norm_col](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-norm-col.md) | 280 | `result-track:bfad6f13eb6c6f2f7c8a63c0c52880e665b81981775d78b5cde50e30d726765b` |
| 34 | `theorem` | [linfty_op_nnnorm_row](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-nnnorm-row.md) | 285 | `result-track:43914ed40dd91828c828ce339abd319185dc7e626b405eef3ef44d5380363993` |
| 35 | `theorem` | [linfty_op_norm_row](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-norm-row.md) | 289 | `result-track:b1f315a019aea4c3b95b700afb59a1562a73a3756c39bc2b7c49da1b10f95293` |
| 36 | `theorem` | [linfty_op_nnnorm_diagonal](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-nnnorm-diagonal.md) | 294 | `result-track:d7fa887cd306e43ae9d81f124795d04730ea69206a294f066b29d72688b36137` |
| 37 | `theorem` | [linfty_op_norm_diagonal](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-norm-diagonal.md) | 303 | `result-track:d8d3ed3823cdac624d6f4e0a4a8ffb8a30928ca4a552713f75cbf2f7ae9b26e5` |
| 38 | `theorem` | [linfty_op_nnnorm_mul](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-nnnorm-mul.md) | 314 | `result-track:b74d2b699876a7a4f16b43226f2db0e70d45b8a436787ee27585b9e43efa2f20` |
| 39 | `theorem` | [linfty_op_norm_mul](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-norm-mul.md) | 332 | `result-track:5bc7d562c4a78492b85d35a667b9519a8edc5964cbdf837d9147d4258df81e4c` |
| 40 | `theorem` | [linfty_op_nnnorm_mulVec](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-nnnorm-mulvec.md) | 336 | `result-track:4225aa1b6aa2f9eafdf55ab5c6164bba21cb5bc05eb1faefb59eacca6e013ece` |
| 41 | `theorem` | [linfty_op_norm_mulVec](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-norm-mulvec.md) | 341 | `result-track:8f302492ce158cacb9b41ea8b84bfccbf271b89bee6782e088a50041b7f69ad4` |
| 42 | `def` | [linftyOpNonUnitalSemiNormedRing](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linftyopnonunitalseminormedring.md) | 351 | `declaration-track:0fef9dddb12cd0052d2346a38b87ee58294bb54a9b84fd6cf2ea34ff895f8ac5` |
| 43 | `instance` | [linfty_op_normOneClass](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linfty-op-normoneclass.md) | 359 | `declaration-track:d0c8045a7b58f8510fe43a4ed1cd406e51712729bef52c9c7aeae59cf443c493` |
| 44 | `def` | [linftyOpSemiNormedRing](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linftyopseminormedring.md) | 367 | `declaration-track:a417702f895313785bcb8f9ad26c2b28c946104f2ae44f45d9ad0985cdf64a5c` |
| 45 | `def` | [linftyOpNonUnitalNormedRing](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linftyopnonunitalnormedring.md) | 376 | `declaration-track:e2cb9fd7812f368527679c4023400d08549f5f98fab5336a6bc1e644ad460f48` |
| 46 | `def` | [linftyOpNormedRing](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linftyopnormedring.md) | 386 | `declaration-track:57931a4849abc3efabd827ea46c27422394fe325166dec37b20d751d1faa9e72` |
| 47 | `def` | [linftyOpNormedAlgebra](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/linftyopnormedalgebra.md) | 395 | `declaration-track:fb6de2912fbb637f2ca68a5cc05cc1e207ec356d48503ddc2703db1490273079` |
| 48 | `def` | [frobeniusSeminormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobeniusseminormedaddcommgroup.md) | 417 | `declaration-track:8ec2ab9990955b3c660e29fba75250d7a9700bd33b1aac4f01a4ea07f9adfdaa` |
| 49 | `def` | [frobeniusNormedAddCommGroup](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobeniusnormedaddcommgroup.md) | 426 | `declaration-track:4530ae10c22f8bab2e6219eb245f5dec3062b185ba68b9cd9e35665ba65f82b5` |
| 50 | `def` | [frobeniusNormedSpace](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobeniusnormedspace.md) | 434 | `declaration-track:5f83d4912c1873bf43892206ac57affc2359e70da4185a940453a0e25e1d91fb` |
| 51 | `theorem` | [frobenius_nnnorm_def](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-def.md) | 443 | `result-track:957d04873af0dc707c75d624bcd215e75032a4862630e52fd1b3f599b9192218` |
| 52 | `theorem` | [frobenius_norm_def](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-norm-def.md) | 451 | `result-track:91cdc744a5d4e2e13b02ac5faac168c2b14d9089f2c0ca5b2cfc8194ca962499` |
| 53 | `theorem` | [frobenius_nnnorm_map_eq](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-map-eq.md) | 457 | `result-track:42f10907707c816cc7fe0fd0ec31f3c10452366753c56fefd48d1a9e5773bcbb` |
| 54 | `theorem` | [frobenius_norm_map_eq](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-norm-map-eq.md) | 462 | `result-track:ccdaa8d800d48a1c18eef8e8a8e0a3c3da3dd085df9490340344a0069cad00d7` |
| 55 | `theorem` | [frobenius_nnnorm_transpose](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-transpose.md) | 468 | `result-track:133537d26115f35a2a7036e80f6e48f4ef7e612bc767dff30fa134f06d10315d` |
| 56 | `theorem` | [frobenius_norm_transpose](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-norm-transpose.md) | 474 | `result-track:ae1595a87a6ae4e3c1b6c888ab2121e92ce99fd37cf2b62f4735f083b7e29c1d` |
| 57 | `theorem` | [frobenius_nnnorm_conjTranspose](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-conjtranspose.md) | 479 | `result-track:9659ad8ef567996d2497941355ca5664fb062affe5c6af5bdd8dd94468b8854f` |
| 58 | `theorem` | [frobenius_norm_conjTranspose](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-norm-conjtranspose.md) | 485 | `result-track:ee48c6f8d1423b4aa1b0259d4537131d9d497986fc063ab801f29bf3975e1fdd` |
| 59 | `instance` | [frobenius_normedStarGroup](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-normedstargroup.md) | 490 | `declaration-track:76014d08eb1258081e95b044f67842558fcb1e0b30d47ccc798a21c3c388fb97` |
| 60 | `theorem` | [frobenius_norm_row](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-norm-row.md) | 496 | `result-track:c66d76fa9e2c736db8fa24d2e22312dd94e102cd5c734c39809a524562e455f0` |
| 61 | `theorem` | [frobenius_nnnorm_row](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-row.md) | 502 | `result-track:d8dfe02f8e42164aa8a0e9de4e86ca5ea92f56bd8081be96edcfbe1026231fbc` |
| 62 | `theorem` | [frobenius_norm_col](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-norm-col.md) | 507 | `result-track:c7a78d8bb8820833b0aa296e549a510e8e6804375fe16bc089f8d40361522647` |
| 63 | `theorem` | [frobenius_nnnorm_col](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-col.md) | 513 | `result-track:72b8494c3eb1c006bf7aad113cd230c431d090ad41a8fbb6162f882051cd1ec1` |
| 64 | `theorem` | [frobenius_nnnorm_diagonal](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-diagonal.md) | 518 | `result-track:e11e3b53a4ac922270b17cc4ed69f9cc42b6386a5ea515b1b138693d4da47cc3` |
| 65 | `theorem` | [frobenius_norm_diagonal](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-norm-diagonal.md) | 533 | `result-track:18d2461e1c8198bce87c08a8f5589fd03d490d2d9cf763314034310967638726` |
| 66 | `theorem` | [frobenius_nnnorm_one](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-one.md) | 540 | `result-track:65c717026589f7dc9c0e42a0fdc6678b3a24a0f0477251ebbde28f2a612af90a` |
| 67 | `theorem` | [frobenius_nnnorm_mul](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-nnnorm-mul.md) | 554 | `result-track:0af5210eb704612e6c6fc35d2590bddade76b535ce33a941ec1d619345b482a9` |
| 68 | `theorem` | [frobenius_norm_mul](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobenius-norm-mul.md) | 570 | `result-track:9a99fc80b7d675c2c93e53951d3dfbd8ba8eb09632bd0b1b5b30b8cb83f9e0dc` |
| 69 | `def` | [frobeniusNormedRing](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobeniusnormedring.md) | 578 | `declaration-track:a9b318b1aaf19e5d79eb0eaa7908880917e47a7355a965a0b2837ff106cb04d5` |
| 70 | `def` | [frobeniusNormedAlgebra](../../../../FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/declarations/frobeniusnormedalgebra.md) | 589 | `declaration-track:4cd6146538b5e750cc7ac48e3c1077875cf9db75bbd032d4615ac74ad017cc92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96a19ecfd648cb835e4a96c723613b7b51238ae60bd2e79ccf7f985c931be5a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

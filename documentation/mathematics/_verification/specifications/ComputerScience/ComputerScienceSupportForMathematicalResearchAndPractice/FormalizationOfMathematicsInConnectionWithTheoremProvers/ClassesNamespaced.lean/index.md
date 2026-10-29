# Verification target: Classes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7fc8f8b560dfe6653aac8f50d2076274c1aab3d",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7fc8f8b560dfe6653aac8f50d2076274c1aab3d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Logic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Ordering.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSymmOp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/issymmop.md) | 79 | `declaration-track:a3eaff95c93f67950a7251f6679ef4000912172fa8471ad5697769907ec310d4` |
| 2 | `class` | [IsCommutative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/iscommutative.md) | 84 | `declaration-track:015aba912e8038a23139e6ccbe003c38d65107a53bcaa11396e797f44442a899` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance-source-edition-8.md) | 88 | `declaration-track:89c956889f87cbfecbee58e5be976068ddf75ed58e24169f0163f82bac860e11` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance-source-edition-4.md) | 91 | `declaration-track:4c44ba20898c630e7a52a08f12cf36d4a5878be6d7b23cff0d8972571f449ebf` |
| 5 | `class` | [IsAssociative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isassociative.md) | 96 | `declaration-track:2a612e0d177fd6ef7c8a0f7ce955d896550a78fec9377494018424efc27b64bf` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance-source-edition-9.md) | 100 | `declaration-track:b5d5c379c133468b0c36c2bfdc7cffc6baea574a9ddec431c45a1acc86c5d8f7` |
| 7 | `class` | [IsLeftId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isleftid.md) | 104 | `declaration-track:150f4eab24ce070a89e827f7fc437e031e6ac08b554e187977825c83bc289051` |
| 8 | `class` | [IsRightId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isrightid.md) | 109 | `declaration-track:eca677bc8ee88bd70c60af9712b2f0e174972a03bebcbcc385ce8393ed188ffa` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance-source-edition-6.md) | 113 | `declaration-track:87743422016b76b85c488427cad47f023634549125a940b4cc1802fad6bb6448` |
| 10 | `class` | [IsLeftCancel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isleftcancel.md) | 125 | `declaration-track:6d7e6767192af8e5346eb8132ef964fde2a02131dea3a467bc9f19406865baf0` |
| 11 | `class` | [IsRightCancel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isrightcancel.md) | 129 | `declaration-track:da601867cd83c6c0197d924ad1b868fc67be4bf623aa66f4cb091e80cd289f81` |
| 12 | `class` | [IsIdempotent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isidempotent.md) | 133 | `declaration-track:028aea1a406d01a2365b8edb97164d23e0935ef1b7c11c271b61de0b4a148c8c` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance-source-edition-3.md) | 137 | `declaration-track:254e1abdb89b376b7da2c19245bbbc5faa142b3523e66f5130d5f711065eb699` |
| 14 | `class` | [IsIrrefl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isirrefl.md) | 184 | `declaration-track:4327fa5c70b32aab7f68c3e2228a68fe58cffcd62039e7a5b28e94e6ff30c086` |
| 15 | `class` | [IsRefl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isrefl.md) | 189 | `declaration-track:a578221c591e377e6292ba0307d9419261388a19e1e7151aced34d31014defee` |
| 16 | `class` | [IsSymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/issymm.md) | 194 | `declaration-track:7dad8cc401e502ae50f247d1f2aecbb0d51d24fcdec977593cf4bb6be5ce13bb` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance-source-edition-5.md) | 199 | `declaration-track:72d84acae3f752f0e1b2d55d472a0c3ce677802a79acf0dc663cd3131a1163ae` |
| 18 | `class` | [IsAsymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isasymm.md) | 205 | `declaration-track:cba4e478a55f0ada0d11494d7f3afbc430589895792455c415cc3fcfd10d4ce2` |
| 19 | `class` | [IsAntisymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isantisymm.md) | 210 | `declaration-track:f8b2835e4470ff5bae7403a4eb0fc83a290f5c7c4b7d78c6f1ee5362197376bd` |
| 20 | `class` | [IsTrans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/istrans.md) | 215 | `declaration-track:912941ecbf012f0a889bbf9fd8434155d1c46ab15f20cafcc16e9d5450c64423` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance.md) | 219 | `declaration-track:0384e8d36aa69c46bb8b6631c2cd31c3fbc032007667ffb09b6fd4393b36d3f9` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance-source-edition-7.md) | 222 | `declaration-track:88d75ec720343c9d08d01b1ee231c89b3c5084548751002b2244b34e36ad688f` |
| 23 | `class` | [IsTotal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/istotal.md) | 227 | `declaration-track:e265a2185868e7dbffdf246cd6b20df41f4d85dc38817fc42d7dc7af248789c5` |
| 24 | `class` | [IsPreorder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/ispreorder.md) | 233 | `declaration-track:367154fe1ee26fef623ddee7a323148af359d0e395e4f66553f3bc3d9c9a9f4f` |
| 25 | `class` | [IsTotalPreorder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/istotalpreorder.md) | 237 | `declaration-track:ef6cb5c6fc64c1d5712f2927dcffa323714ecf0967c2ee5f50d1ac43800ba25e` |
| 26 | `instance` | [isTotalPreorder_isPreorder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/istotalpreorder-ispreorder.md) | 241 | `declaration-track:bd7d9eec544c8cf7b1228e3a942fe09603d92ba325d07d4fcceff265b5d79c2b` |
| 27 | `class` | [IsPartialOrder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/ispartialorder.md) | 249 | `declaration-track:1199dce53bdc722b545b13828f80289e0d803794dd35d6f4cd4c5fc133d91116` |
| 28 | `class` | [IsLinearOrder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/islinearorder.md) | 254 | `declaration-track:3a9c4cc01b1a9ce1c8455a7ecdcff99f641337c0e4d0d8a28f9de3ca7d80c8f2` |
| 29 | `class` | [IsEquiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isequiv-source-edition-2.md) | 259 | `declaration-track:a0d2adaf0ad70a724306ddd470e8f2edec342ec492a95f316d1658f44f57e6d1` |
| 30 | `class` | [IsStrictOrder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isstrictorder.md) | 269 | `declaration-track:857af62eb5fa0592bc4ce292b1799afc4e563b46f2b0735efab7079e814f4b9e` |
| 31 | `class` | [IsIncompTrans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isincomptrans.md) | 274 | `declaration-track:a3de3f6485346d8287f608e74a5fcc9a268bb61d8d064b8151138ac67d02c7f1` |
| 32 | `class` | [IsStrictWeakOrder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isstrictweakorder.md) | 280 | `declaration-track:dca1f01291327a86721628daf8a5556774a7305811143bb8a930c1d740f3534b` |
| 33 | `class` | [IsTrichotomous](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/istrichotomous.md) | 286 | `declaration-track:8681133e9d0b0862ddf459e69cf348b43b7554b8ba68b723f08fe39bbeda4e6c` |
| 34 | `class` | [IsStrictTotalOrder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isstricttotalorder.md) | 292 | `declaration-track:f146315e8eade3019db51af416045846ec1cdc2d5e044c3a9543abdb4b06317f` |
| 35 | `instance` | [eq_isEquiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/eq-isequiv.md) | 297 | `declaration-track:d70bb9259925f9cf7f4e5989f56ffb48f6c06be92bca75c9faff274e4bcc3c24` |
| 36 | `theorem` | [irrefl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/irrefl.md) | 309 | `result-track:ce3ebd8d241accec67ade573879c4c1d82908aa78446d95a253417e2ccaa4a85` |
| 37 | `theorem` | [refl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/refl.md) | 313 | `result-track:d08db1108776ef66ea38aa456f1e181d4ace6831a3f7873e9427bb0951b935c2` |
| 38 | `theorem` | [trans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/trans.md) | 317 | `result-track:a0f629fa7a896edfa1d2f2b931cac59acc494610723bc9c2643ed5aa18f79d18` |
| 39 | `theorem` | [symm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/symm.md) | 321 | `result-track:a314cbbf01dd00ad2bbf107da1254d747dfd7444ec7b9d335f12528ea1ec4d37` |
| 40 | `theorem` | [antisymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/antisymm.md) | 325 | `result-track:ae6d885d011a006a0113210daa551a1d3be8de3dd12f72ddd0a9040aa991a797` |
| 41 | `theorem` | [asymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/asymm.md) | 329 | `result-track:55098634219a37c9dc381d5a37149497088bd58a608501c0ab019d8cdff70983` |
| 42 | `theorem` | [trichotomous](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/trichotomous.md) | 333 | `result-track:e8c2b92055e9b65220c5b8087e22047a9496aae9ba8f0fc498c725317d15df72` |
| 43 | `theorem` | [incomp_trans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/incomp-trans.md) | 337 | `result-track:777e2b36f64a5a1e8f2c4566bb1ed91e27cbb2ab5eb59aa9758a9dd075ef6fea` |
| 44 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/instance-source-edition-2.md) | 342 | `declaration-track:13f50d5b333238163908aa1472ca34f7f2037a94f1943d9bc01a09b3eae78950` |
| 45 | `theorem` | [irrefl_of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/irrefl-of.md) | 352 | `result-track:3676d844435850a4ad926dfa1accb987b714ad8a859568ae8145c8210a21201a` |
| 46 | `theorem` | [refl_of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/refl-of.md) | 357 | `result-track:6d07f86bf3248823c4cd406e149902b82975e1de883fee0a129bc5859bccffdd` |
| 47 | `theorem` | [trans_of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/trans-of.md) | 362 | `result-track:7b212da396dad1aadff9634216061ed0957622d6efb5054b49235b423f190e2f` |
| 48 | `theorem` | [symm_of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/symm-of.md) | 367 | `result-track:f1bd6922400e9a8621be0084c285440e0390afeb39a9f71fab399b96207dfb21` |
| 49 | `theorem` | [asymm_of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/asymm-of.md) | 372 | `result-track:c341b98fcfb66600d45dc3fe49d52781d5facf35d01a0fcd803c4656f60ee046` |
| 50 | `theorem` | [total_of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/total-of.md) | 377 | `result-track:f56cd6d2854fd016528abb5ba3e63bf36df58b423614a232733f42f57ab15816` |
| 51 | `theorem` | [trichotomous_of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/trichotomous-of.md) | 382 | `result-track:37441e02277ec86eeb0e75de909f9ac4f0edd89bb4a9270699dee953b27fce2e` |
| 52 | `theorem` | [incomp_trans_of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/incomp-trans-of.md) | 387 | `result-track:9b2f0f34ca774883135501daf023d1f5b86ffe215ffd49b0dfc72d466fb5896a` |
| 53 | `def` | [Equiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/equiv.md) | 404 | `declaration-track:6fbae30ee1587af7708ecfcc9199fe192d31e59c3ce4f11355509d5537388010` |
| 54 | `theorem` | [erefl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/erefl.md) | 412 | `result-track:4a860e99e1fdefea24038d788e361e5f438506dd8d63da87cb60cf130eefd916` |
| 55 | `theorem` | [esymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/esymm.md) | 416 | `result-track:e511741add322fea6ab21917abf6f1ebece0c34bdfdae883e4f3cc541ba1c357` |
| 56 | `theorem` | [etrans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/etrans.md) | 419 | `result-track:f68c6bd42e2ff737e9699458d9308a0e1f4815ff85c0b652e0fbce2ea2f30239` |
| 57 | `theorem` | [not_lt_of_equiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/not-lt-of-equiv.md) | 423 | `result-track:ead29cef354372fe6bc37c9426422d5ac4ea83f72482cf11aeddf2855fb45b06` |
| 58 | `theorem` | [not_lt_of_equiv'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/not-lt-of-equiv-source-edition-2.md) | 426 | `result-track:f7dcdd1e58f745686d53f73992848d63b185a7004f2af4e0e6b09f6862cc0d50` |
| 59 | `instance` | [isEquiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isequiv.md) | 429 | `declaration-track:49584753dc3215aa5271bf96f6b5c1548f4ae9b1bc01c6c67222aaed27c78407` |
| 60 | `theorem` | [isStrictWeakOrder_of_isTotalPreorder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/isstrictweakorder-of-istotalpreorder.md) | 442 | `result-track:dbc4680a3d80322a1c7606fb60b9ff2dad83b928a10de9d1403445091fa79b24` |
| 61 | `theorem` | [lt_of_lt_of_incomp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/lt-of-lt-of-incomp.md) | 464 | `result-track:47b853e38d8abc103f2f50c7503521acbf0867c01cb86647128212fc99fe9b63` |
| 62 | `theorem` | [lt_of_incomp_of_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/lt-of-incomp-of-lt.md) | 473 | `result-track:2f49556c830c4e8c4ecabf85011c406d44f45906211676f21e871f8255c9792b` |
| 63 | `theorem` | [eq_of_incomp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/eq-of-incomp.md) | 482 | `result-track:eb0b5103917e0659c8546a540c3f825be50c2f1e7a3053afa27eb02f92510dec` |
| 64 | `theorem` | [eq_of_eqv_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/eq-of-eqv-lt.md) | 490 | `result-track:450e5f62e444a6cb9a8c0ab13425781e7244dba62e0425ea5332e8214689fb1d` |
| 65 | `theorem` | [incomp_iff_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/incomp-iff-eq.md) | 495 | `result-track:2f835f7c5c15442a807e9eb90b60750c3852eaa2eef945cb558261d54e5bd541` |
| 66 | `theorem` | [eqv_lt_iff_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/eqv-lt-iff-eq.md) | 500 | `result-track:79a93879fe93bc06af5676ef5207de3b7839c4c7657f60970aa8ab4bb037d198` |
| 67 | `theorem` | [not_lt_of_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClassesNamespaced.lean/declarations/not-lt-of-lt.md) | 505 | `result-track:713fc27f48e805c68db582ce0c71e426ad66df2ed74365541591c59444aa2e21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5793628a6fc97575a218fbf497dd0c557db85934442d0412d290a479f93b1b2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

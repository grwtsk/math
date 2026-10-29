# Verification target: Ring F

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0525035fc672e911877cf60ba982d47c072a8c77",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingF.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingF.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0525035fc672e911877cf60ba982d47c072a8c77`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../CommutativeAlgebra/RingF.lean/declarations/test-sorry.md) | 5 | `declaration-track:877a8c1c9f75f7ae15f014c1807ba5ca7574d5fbd2457f255efa6800d5bba6d0` |
| 2 | `axiom` | [Real](../../../../CommutativeAlgebra/RingF.lean/declarations/real.md) | 9 | `declaration-track:0b4f5b0d6845bf13de1023291796ba53d51bd9e35fbfc3a5410cda323ce0edf6` |
| 3 | `axiom` | [Real.field](../../../../CommutativeAlgebra/RingF.lean/declarations/real-field.md) | 11 | `declaration-track:cd615fdc5c51043902bd05ef10fee99eed0f7fee381c38a3ce63adf0e512e742` |
| 4 | `axiom` | [Real.linearOrder](../../../../CommutativeAlgebra/RingF.lean/declarations/real-linearorder.md) | 12 | `declaration-track:d9bf31b640cd9e32a228402fe4dd121908b096d8065ecb10714c4c3a024b0153` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../CommutativeAlgebra/RingF.lean/declarations/real-isstrictorderedring.md) | 13 | `declaration-track:76e201721f1968d527c517a9ae55250fbd12cf519f0d6fd101f0e60487377301` |
| 6 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-18.md) | 15 | `declaration-track:660cfe04bf16aea2a37ec1af9a8dbd1682d76c7502313911c9db590177947df0` |
| 7 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-56.md) | 16 | `declaration-track:f18134e17782943be201f968a97107025d0a6a211169ff9481befd8991b8a009` |
| 8 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-44.md) | 17 | `declaration-track:b7f5f2d3b75a033972eddbd672aef9e669d4cf0ff9e026be502bc1b2058a3081` |
| 9 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-54.md) | 18 | `declaration-track:eb9403691bf2132953f2dc82e0ee8dc500d5ee960d6a811e44ff3af8527e9077` |
| 10 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-46.md) | 19 | `declaration-track:c5db3d31c268bf42f35baf0aa7e26499593c0bc28c81b1ef0788f8529de08890` |
| 11 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-14.md) | 20 | `declaration-track:4a5f59b59f4c1a0b947e21962dac304aee24cf99aa1f45cdcfbfc821efb9e9ed` |
| 12 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-3.md) | 22 | `declaration-track:05f7db416ecd10ef77af96a0bf1ef59ef27424f2bca686f9d2b8191e8eecdd0d` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-49.md) | 23 | `declaration-track:d2fe20fd32b9f30e0ecd386311cf0f5f7663becdf2f10a68d595c94aef19b9c9` |
| 14 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-45.md) | 24 | `declaration-track:c57fbb2de16bccdda5d7b3fcfd60c6b96908b2f3fda21830b66d84852196096f` |
| 15 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-38.md) | 25 | `declaration-track:99eac33787d1c1ba5f4bfcd41660595860887615f380ed5a1c5b566a42b1cb42` |
| 16 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-42.md) | 26 | `declaration-track:a97459dbe3cd551bca56ed27be41220d37e784da8328c391c002eea518acdf07` |
| 17 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-28.md) | 27 | `declaration-track:769cd202deb9981f8d3dc48088e3bf6f6b7a980754367268cf55aba699753db8` |
| 18 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-2.md) | 28 | `declaration-track:037b984281f8d6f0e71e9d93777c1bfc5b69d8f237fc49f94635da50ffc24083` |
| 19 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-40.md) | 30 | `declaration-track:a000b90a7ac3fb987bdfe921bd62ab922334ec22ac125ec2d45c792420275e03` |
| 20 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-35.md) | 32 | `declaration-track:85d2c1e084c4f30438d296457e73a7637b09b6e37c7ed77cb974b3da405a2290` |
| 21 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-33.md) | 33 | `declaration-track:846f6e9582737e54c5677795220fa09f7f54ae6ba3e29c2fcb19fd563b263d6c` |
| 22 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-57.md) | 34 | `declaration-track:f1d8218b5d3d630589f85220b2e9b6d2684bbd40f27181ff227a6e6505137aa9` |
| 23 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-43.md) | 36 | `declaration-track:b474b5eaad0db15d3d254286f528058cf224e7366ca2de159f024fdda33f49ec` |
| 24 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-21.md) | 38 | `declaration-track:6da31d66982e883807ff2bf03ca2717225f491b20703674a9d912d9ddc698877` |
| 25 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-4.md) | 40 | `declaration-track:06740f86acce10a9ea2e6d9bfa14d29b734e1eb137a25a2d297ff1ce8768c5fb` |
| 26 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-48.md) | 44 | `declaration-track:cc5ce3c92ec9ff61a6899807bcf3e3111c8f7650e9c5ea81ec7557f6630cc2c3` |
| 27 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-11.md) | 46 | `declaration-track:23a965c46a447f766c6be32f07006091263ef8fe8104be68cae12ece0c40ce31` |
| 28 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-22.md) | 52 | `declaration-track:6db4a890dfe0786fd5e004795b8af79f552ab359e883a223d4595d7b930a626d` |
| 29 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-55.md) | 53 | `declaration-track:ef796f480e9b6dc6499b222ec1caa47617879ee361e5f50ce4f73be5a6e16923` |
| 30 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-23.md) | 54 | `declaration-track:6e15ae7b9cffd7c4a54a1cd151d0bfeceadc494ccd4b8094260cf4b788f2fec9` |
| 31 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-15.md) | 55 | `declaration-track:58c9107dd3cad0746c9a09f4d5d3d785af249ba6ec90b2987ff5761034b77400` |
| 32 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-39.md) | 56 | `declaration-track:9ff13f9a02c57fe3bc295b9fa4dda1bb877d30489a3eec2e443061b3620efe47` |
| 33 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-30.md) | 57 | `declaration-track:7d892ea042ecceb184ab72fd45da6773dcaa0ce072123310cdcb93fb5541931e` |
| 34 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-8.md) | 59 | `declaration-track:13edc0aacfd62a8d78b972d83bd09e9e74fc7203171b3b2c2d47c78f343baf6c` |
| 35 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-17.md) | 60 | `declaration-track:65d7956933d4d4da60bafe217cb6e1d4e303e02b7c4d5f8bea12003cb648afeb` |
| 36 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-7.md) | 61 | `declaration-track:0e385ec2ed989c7c7c8db284e6bdfd884c8f75a1ae4b5b1a942d87fceee8d109` |
| 37 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-58.md) | 65 | `declaration-track:fb2915dc97f35d0d2ae2cd76db5b0ec624aad66ebfea21020c0ad09247c759d4` |
| 38 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-50.md) | 66 | `declaration-track:d3227556f45dcd94b286a600567eaebf055529ef659dc9612ae79d92c84febf2` |
| 39 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-37.md) | 70 | `declaration-track:9015762f613840e23c1aac5165fcc30508b6b55d212ad83a849b639f4b2dec43` |
| 40 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-27.md) | 72 | `declaration-track:74b40d13431f214c87d392b447dd793ae7c8b2485fbb5f0e21691e56e200fa30` |
| 41 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-29.md) | 77 | `declaration-track:79810fb35b96cc45a80f08000555f13b0cdd60599d8ebe3cde2da9b2b9e9651c` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-51.md) | 82 | `declaration-track:d6957c155944185fb39a7e61b7489db615e7d29559ca71bfea631343bd6ba158` |
| 43 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-32.md) | 84 | `declaration-track:81a0812bdbecfbd41e838e9b4b4378bcfc034eadb7d2a6705d566062b61ea031` |
| 44 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-10.md) | 91 | `declaration-track:2384c2f14add331c9386775c4a89caf52b1cef3bd22e9565832d6f2d332ccbe9` |
| 45 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-41.md) | 96 | `declaration-track:a7393218fa24cbf7f9142244b8d3eb51dcac64c820a0cb2589556ab22abd3efc` |
| 46 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-36.md) | 98 | `declaration-track:8d4a8d08cd1706d321ca1d22f05b28e6f14ca6a6edad1862c1e504860abd2d8e` |
| 47 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-52.md) | 101 | `declaration-track:d6e4c4670b07f02124c91d577d7cdaba696d45017ad7a18256d396a1d648d07e` |
| 48 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-6.md) | 102 | `declaration-track:0a35b23b0b8488781024e07a2535a37a2856c36527312b0097a7616c8e145750` |
| 49 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-12.md) | 103 | `declaration-track:3078143e70e515a884fa6ded6201ad26443e25dda356f5966711acd243f9eb67` |
| 50 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-34.md) | 106 | `declaration-track:85ba09a733580daa688fffd92d8871bb3e4d837052dfd483551c912e02c27948` |
| 51 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-5.md) | 115 | `declaration-track:09d82292092b01b3d92f486088ae30e96651ce62217d2c1a7e9aa4aff7e84d87` |
| 52 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-26.md) | 120 | `declaration-track:74193fa6c7172b0746cc4ec4a8997d6c8105d45ede33552ee4567db58321e5d8` |
| 53 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-24.md) | 129 | `declaration-track:70db0c4bd601a485125979bb6e6b93966a2ff819c7e263910e4c3f032045f0e4` |
| 54 | `def` | [f](../../../../CommutativeAlgebra/RingF.lean/declarations/f.md) | 135 | `declaration-track:56a876467b5d5e320d1180b849991c7bba58ea0f34e6ce339c7f05e33c859e55` |
| 55 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-60.md) | 137 | `declaration-track:ffb612d5b6a9d32b13a203475c3e548285e3c70ca428b34ef3af68017f8cf438` |
| 56 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-31.md) | 143 | `declaration-track:7f4d9b75c330831723821ff1f702584d902698ae0661b798cfddbfaf79e346f3` |
| 57 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-25.md) | 148 | `declaration-track:7152aba6aa74c9a5320d933841ecb41f5ff5143505b6d4eb4cb619f5496519a7` |
| 58 | `def` | [R](../../../../CommutativeAlgebra/RingF.lean/declarations/r.md) | 151 | `declaration-track:0deebb77c0d49c64da3ec79198f2eda2c91cb287459f63bc1c18773d8c5eba91` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/instance.md) | 152 | `declaration-track:7b7f782578fc7c5eb28eee17873652dec3e40c2236927ce4add08528011bee49` |
| 60 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example.md) | 154 | `declaration-track:01da554a92b4e9f3434e60a79468ca66798981099b781760e5db2b3fe3cfd5b5` |
| 61 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-19.md) | 156 | `declaration-track:6703d989ec6e9291f10e8cbe68cf3146808225d459ec2ba513fbae1694b88fa8` |
| 62 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-53.md) | 160 | `declaration-track:e3920a0054ff2942d1b73c56f4eb5b382d759ceca99f98bcbd609f1eaf608c3e` |
| 63 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-9.md) | 162 | `declaration-track:14c55fa4ea669d54eaffac50e9abe8154d08929d3807b4afb4227085710f1e48` |
| 64 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-47.md) | 166 | `declaration-track:ca3556455f198ba3d14a44b87c47e07f97c6d24b6a2a3a83bce10fd21ca873ca` |
| 65 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-20.md) | 179 | `declaration-track:6a639f4ca0609b00fc2bb159e2c4b236f02edd783ae1a1ef1d900f380743b372` |
| 66 | `abbrev` | [myId](../../../../CommutativeAlgebra/RingF.lean/declarations/myid.md) | 185 | `declaration-track:28fcd5b6f900eefaab6b9cb9a1a3940c79839fd4f6c920f7a5ae2061bd98e77d` |
| 67 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-59.md) | 201 | `declaration-track:fc9b314ad6cd965e608176d602a13337cc2407e09c9c25d67b0b4439aad4b29b` |
| 68 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-13.md) | 211 | `declaration-track:48692076bfc929c060200ee19131465184e4bf6bac3717252a660fdce14b366a` |
| 69 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingF.lean/declarations/example-source-edition-16.md) | 232 | `declaration-track:5fa54ce8ecb0c8ad705dedbcca9af340e241f27c003c34f56099f82e7f3dbb4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a9ebbcb59f9f06e6477a28eaec6f29d6cbde38c06dbdcc582b2edc86ab9be7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Ring/Variant6555b8e07f5cc02b6d737f1cf97920778abd460d1ef05235be4f6ca3f98e9508.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Num Bitwise Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "544ae05a8a3b4a1b630eb333c3d7b08ceb1bd0e6",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant57e637316e7e6ad68c5a4bfaff63f7bd03b3e038efe773f4678b50bbb7ad2578.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `544ae05a8a3b4a1b630eb333c3d7b08ceb1bd0e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant57e637316e7e6ad68c5a4bfaff63f7bd03b3e038efe773f4678b50bbb7ad2578.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant57e637316e7e6ad68c5a4bfaff63f7bd03b3e038efe773f4678b50bbb7ad2578.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/lor.md) | 29 | `declaration-track:51674822dd40f8fccedd5fdded9ff7d94ce7f3760f96b33f9424ddd3514e1720` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-5.md) | 39 | `declaration-track:2419cc04b443a5f033b15fa27ec0db9d1b3dd1017c4d42dba1ec1a561e3cc260` |
| 3 | `lemma` | [lor_eq_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/lor-eq-or-source-edition-2.md) | 41 | `result-track:b7edcc1fa0e28b230137a9bfe9650d1b53c045939363eadf82368cec15035bb6` |
| 4 | `def` | [land](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/land.md) | 44 | `declaration-track:1dabc80f975017b1d4bbb1134f47b24473f53f4ea35ad351170970003dc83f4b` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-18.md) | 54 | `declaration-track:d1d7ab05810c38f26502af1d0fd69c80910eda3929f431403d8f71c225489d2f` |
| 6 | `lemma` | [land_eq_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/land-eq-and-source-edition-2.md) | 56 | `result-track:55ef3e454d75d4dbfcacff67902497ce231d9183ee4d11227dcf46350fbc7a53` |
| 7 | `def` | [ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/ldiff.md) | 66 | `declaration-track:5142aecc0c3e9013716fa34b9aa294edcc208d9d5a334136a9c063cd28493d1b` |
| 8 | `def` | [lxor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/lxor.md) | 77 | `declaration-track:c6baf90181ab193b9f2641ea3d651aab56b7a08d21f97411632568cdd5a6f3be` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-8.md) | 88 | `declaration-track:47018d1081c9562d5900ba82cb8c8b8d2547c35d6782e5a8aebb88e6e7dfc987` |
| 10 | `lemma` | [lxor_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/lxor-eq-xor.md) | 90 | `result-track:75b9dc6589a2ee306cb698653f0c877e6c448667f4a3a5609ea512aa54bc61d2` |
| 11 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/testbit-source-edition-2.md) | 94 | `declaration-track:9ecfab50dfd97ab402b0ae90e7eaf4f6d17305253c5f487910090dbe3ddc3679` |
| 12 | `def` | [oneBits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/onebits-source-edition-2.md) | 103 | `declaration-track:e9b553337cfb5e8113942c5cb8fcba375f5ccb8caef39c49d633226f257488bd` |
| 13 | `def` | [shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftl-source-edition-2.md) | 109 | `declaration-track:7f7f69f5043f49a29caf66e8b6fbebb5c892ed100786ecc66b2c7a69e2b9e67d` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-12.md) | 113 | `declaration-track:8ef260481937bd35130c34ecf184ba47ccbca77f01f7f5c267020d71b590fdbb` |
| 15 | `lemma` | [shiftl_eq_shiftLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftl-eq-shiftleft-source-edition-2.md) | 115 | `result-track:7e29d4dbf45990896faf0939979eba50cf2227dd86a930b1c020467fcd431607` |
| 16 | `theorem` | [shiftl_succ_eq_bit0_shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftl-succ-eq-bit0-shiftl.md) | 119 | `result-track:dfc75b79f5280145b36c9397bc3d0e58addc8f9db17bbdf0828e9f47b0dff832` |
| 17 | `def` | [shiftr](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftr-source-edition-2.md) | 124 | `declaration-track:f483069f00d5e733fbd22d71a3d54dea03db4b9534fbf89dc3bcc3e48136ab26` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-9.md) | 130 | `declaration-track:698d417aa3150d1e6ad35a650646b873a7be9398c1df44ff5ad8dc1c9fbca7d8` |
| 19 | `lemma` | [shiftr_eq_shiftRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftr-eq-shiftright.md) | 132 | `result-track:c6122e3ca57b1061a2e1d99b524c58b832c936bfbbed02d33543917d84eb4762` |
| 20 | `def` | [lor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/lor-source-edition-2.md) | 139 | `declaration-track:bdaa02b838e466067f0c4e1099033e9c13e5b16d1a47dd6a286352c2681f09c8` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-20.md) | 144 | `declaration-track:fe652492348a60021079a6c4fe05564f81af6ee535556717614eeb1fa64bf94f` |
| 22 | `lemma` | [lor_eq_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/lor-eq-or.md) | 146 | `result-track:8783b5800310998f0085bad033fe2aef841c2dee9abf0e2d4f8dab0dced89928` |
| 23 | `def` | [land](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/land-source-edition-2.md) | 149 | `declaration-track:f8545358621349f8a599211eaeb5a3641ddd501cdd918e47df5b226ccd27b0a8` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-4.md) | 154 | `declaration-track:205a4211144019dabad08b11e6b415d4cbc6bfb7b5b4b0d6c4bde58c34573166` |
| 25 | `lemma` | [land_eq_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/land-eq-and.md) | 156 | `result-track:3cad44926b17579a4ee5e78eb5a59c8a9b7efb08e62eb10f34aedcaae04ea1ab` |
| 26 | `def` | [ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/ldiff-source-edition-2.md) | 166 | `declaration-track:73c35dce4c68ec7edd7abb7237372fa537662ba122b30996505e489743515cac` |
| 27 | `def` | [lxor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/lxor-source-edition-2.md) | 172 | `declaration-track:e28d282015a5b480bfd6a9736f5b1c51c3896b3c4094c0b8a241b9bfb073fa6c` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-13.md) | 177 | `declaration-track:c92042f8ed386c97bd2acc5f61078639692732950144057f475f783e42a77dae` |
| 29 | `lemma` | [lxor_eq_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/lxor-eq-xor-source-edition-2.md) | 179 | `result-track:8a9bd0cf40899c11173780a7ce2e39fb816945b2b0f5885b3ca2d8a696519f0e` |
| 30 | `def` | [shiftl](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftl.md) | 182 | `declaration-track:7031b3f18549bb333c4bffae2dc9189b72dc426ecd01f258dd05414fc2b9a05e` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-14.md) | 186 | `declaration-track:cb9b6a13a5d936859ca3177f8e525a7ffd42fc02802b22a0960b81243095bb4c` |
| 32 | `lemma` | [shiftl_eq_shiftLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftl-eq-shiftleft.md) | 188 | `result-track:329e11d9b8d1f245a7ccee6a907d64444dfa90f56ae798cf5fb884e986fc3512` |
| 33 | `def` | [shiftr](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftr.md) | 191 | `declaration-track:03523a9577db2684088eba201991be4b99315eeadd931a9c61d329b52e661475` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-16.md) | 195 | `declaration-track:cca71d976eb22637cc4c5ae57f128d2cac71bc67a87add397ac795f773206469` |
| 35 | `lemma` | [shiftr_eq_shiftRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/shiftr-eq-shiftright-source-edition-2.md) | 197 | `result-track:fec8c226b72f45be5a4116328498fbdf0e431d556166f5969374d616cbc7904c` |
| 36 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/testbit-source-edition-3.md) | 201 | `declaration-track:a7bb499b521340a2efb6ea1b6be9ab500c3594f299ca46123c22098bf568d123` |
| 37 | `def` | [oneBits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/onebits.md) | 206 | `declaration-track:5d4a263ea569fe33f0b8057cbe11164e71c2820c6aa9ee45fe8699b984b0944f` |
| 38 | `inductive` | [NzsNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/nzsnum.md) | 214 | `declaration-track:4e08d7074695a0c5fb2f9bedad3157ec6587e6981b1cbe678f65fa1d69938717` |
| 39 | `inductive` | [SNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/snum.md) | 239 | `declaration-track:778c9107844859fc2080736189e1a22609d96f28285e15c343517ee55a3fe9e7` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-7.md) | 244 | `declaration-track:42aebfff35816da38d948e960fc2c6a23bb9bea4d3d17b012e23beed50c55769` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-11.md) | 247 | `declaration-track:7e21c75e28542d261e2d34de56cd2450fb75053357ec4e7fae18f59850443931` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-10.md) | 250 | `declaration-track:75166ea29a0c01ef278f06d828fd46b776d78f06bb25989a8f6c9231f167e34b` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-2.md) | 253 | `declaration-track:0d29a0762f78fc43925721e6aa9238a885149278d2aa6933f065ba59de07a17f` |
| 44 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-6.md) | 256 | `declaration-track:31b087b77fe38ac13374f1259bd3e1b76897d6655fe1709b6977f8b735ceb726` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance.md) | 259 | `declaration-track:04c38ec872a9c21672969235f93cc9194bf6e49590f5cf99441baee39ee748c1` |
| 46 | `def` | [sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/sign.md) | 274 | `declaration-track:9ee300f266f7aee0b9d8bf133ddde1b7f0ca66514d7ca3d6c6a7c1c90146df30` |
| 47 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/not.md) | 280 | `declaration-track:cb3c4d0949de31337159f091b317b7232133b2ca20c71c1f3f8ce2cf9fb5a616` |
| 48 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/bit0.md) | 288 | `declaration-track:c5f31f7c98f2c92e406ff5969f512f67e7cb587f0ec96e8f4f7627ddc1877df8` |
| 49 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/bit1.md) | 292 | `declaration-track:53f2a325e718144e9d05ef292f10ccd6d6df16e042ac74570c31576d49c70d17` |
| 50 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/head.md) | 296 | `declaration-track:24f26ae85e187223a73b35d2a5678987ac55bf30d4d7a6c720b84c7e27ef5ee5` |
| 51 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/tail-source-edition-2.md) | 302 | `declaration-track:b7c2544b15c7ce041b6f19ec72decdcedd33a91a617825dc4059c9d4e7ed08a4` |
| 52 | `def` | [sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/sign-source-edition-2.md) | 313 | `declaration-track:b446351584b2cdc10360b88be5ad758ffba1d99d2fe5db7be2d16ffa85adce4b` |
| 53 | `def` | [not](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/not-source-edition-2.md) | 319 | `declaration-track:cca45d62b534bd2a249526ec475711865d65bd16559896405182541a01e1d3d9` |
| 54 | `def` | [bit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/bit.md) | 329 | `declaration-track:f7d3991786665c94aac364e0e6932381fbe1100d7845b45740582b4ffb85cc48` |
| 55 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/bit0-source-edition-2.md) | 337 | `declaration-track:e2f4798586c75da32f41cc5be91c89912ee96dfdb4d18f53cb3358f2092d1248` |
| 56 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/bit1-source-edition-2.md) | 341 | `declaration-track:5fd97c65e21fe0a78a458dc735f8fda903aac765768bc69b9a2380a289c0ff90` |
| 57 | `theorem` | [bit_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/bit-zero.md) | 344 | `result-track:1ff19fe4afa8241dc6c15e9baf8d9b498ce1bc59d4d4bae49da9425a4ca5c6b2` |
| 58 | `theorem` | [bit_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/bit-one.md) | 346 | `result-track:0e4e64691b267f59ba8dfa82aa3fc6b3f6452233c5f6012d59339854547edaba` |
| 59 | `def` | [drec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/drec-source-edition-2.md) | 355 | `declaration-track:27e0075e469d24dfa6c0a0e8a452c83ff8a75fb1fb3717a92dbd24df0b8cd5aa` |
| 60 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/head-source-edition-2.md) | 367 | `declaration-track:516deb4d3ee2609a08f792fba41b6f7809addcb68e0a48842083c82054c580d5` |
| 61 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/tail.md) | 373 | `declaration-track:305fac5df192607f39d92af59ef2d0cea187b336eb52e068dc2dd9bc9890e909` |
| 62 | `def` | [drec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/drec.md) | 378 | `declaration-track:06a2d5b6b4b2016bcdc7edd480a5cc1e436f111e57e40f8d805905ace6aa1b67` |
| 63 | `def` | [rec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/rec.md) | 383 | `declaration-track:96f97122f8f532bfcaed89082525035638c3c8bda5862f2806e0065f8b022698` |
| 64 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/testbit.md) | 388 | `declaration-track:03829f3807faed71c26d7997bdc0550ce09f8f9c89b71305b7cce5c804cc0cd7` |
| 65 | `def` | [succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/succ.md) | 393 | `declaration-track:1c0b659cbcbd79f9a672530fe15723242a010718528c3df9f4a5d669da4b2dbb` |
| 66 | `def` | [pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/pred.md) | 397 | `declaration-track:93d936a7b9574edb0fe43d60d7f514dfdcd6574d455da93cf1f9d16ccf0c665b` |
| 67 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/neg.md) | 401 | `declaration-track:106ddb63eb19ee63a199fb9ee46f6bed24f087a2f885fb5dec22013cf915e5cd` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-3.md) | 404 | `declaration-track:16fc26d3364fd284fa80f1b4560ff76c4e09357d97a271696ae129e6044772a8` |
| 69 | `def` | [czAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/czadd.md) | 409 | `declaration-track:e440a8f111ac4e642cf5285a0682bea84dd2f6cae955bdcb91b9fae5558c5b37` |
| 70 | `def` | [bits](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/bits.md) | 420 | `declaration-track:61ff90c7f026bbafb14e0e49149a4c2f537dd9b29b2b7c30644be33700d3d3a4` |
| 71 | `def` | [cAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/cadd.md) | 426 | `declaration-track:c11fdf59f9da69e7cf878686727bf3c2a4238df20afcace11397d0efd018f7d7` |
| 72 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/add.md) | 431 | `declaration-track:25056c076149f5d281b3bf8675abc017f6b7b6b13fe3c7784dd871e1d4c9ae5d` |
| 73 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-17.md) | 434 | `declaration-track:cf96545298ad98563b8e9b9d613c7fdb8e224e4568bce4bb7f66a917869b172d` |
| 74 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/sub.md) | 438 | `declaration-track:6206889e0e01025003fb90089848250cf45d87902d05cd28ca4549708a98c9a4` |
| 75 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-15.md) | 441 | `declaration-track:cbefa33e0ea3b81dc7cad832810f2790cc0f0f9a85f64e9053b61caf22f968de` |
| 76 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/mul.md) | 445 | `declaration-track:00d43f922999e78b1c05fa4942810b7cca8c8184c9e0d418dc0714b0d62ec700` |
| 77 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBitwisePublic.lean/declarations/instance-source-edition-19.md) | 448 | `declaration-track:f9b04e6d62ac509795129b65a75945a781ed714ed796466e5ff8936c862e09d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7874df30c7a8ffefd1e436c35abce1c4f5a71bc99432893d8eb89661fd13931c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant57e637316e7e6ad68c5a4bfaff63f7bd03b3e038efe773f4678b50bbb7ad2578.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant57e637316e7e6ad68c5a4bfaff63f7bd03b3e038efe773f4678b50bbb7ad2578.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

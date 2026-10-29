# Verification target: Basic Basic Public Is Valid Scheme

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15525185ea76bae1bc454d6933f34152962e8929",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante1f35d3c768ccf24a0f30252db1fcf4f541cdcf9ac6f0f7870ec2904f7f35e14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15525185ea76bae1bc454d6933f34152962e8929`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante1f35d3c768ccf24a0f30252db1fcf4f541cdcf9ac6f0f7870ec2904f7f35e14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante1f35d3c768ccf24a0f30252db1fcf4f541cdcf9ac6f0f7870ec2904f7f35e14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ToString` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsValidScheme](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/isvalidscheme.md) | 51 | `declaration-track:2f1ee68948e04a1dc01ce6bd229cbc617998e6b98f3c638dcaa92269cd9f5111` |
| 2 | `abbrev` | [Scheme](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/scheme.md) | 59 | `declaration-track:9e483501d3a6091e3f280334fb16da407efd3b45f30ed14f13bb62aa6185c3c4` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-3.md) | 61 | `declaration-track:38a30b22297270c72b48e83906a569b4662f46ae665eea7e90dd2f4e1d011209` |
| 4 | `def` | [ofString?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/ofstring.md) | 70 | `declaration-track:20ecc8841b72d3d7b22f3a06d6a53e939767734bae506ccb12e0a94e4b1cb6a5` |
| 5 | `def` | [ofString!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/ofstring-source-edition-3.md) | 81 | `declaration-track:e88befb2299d91636a383ca8e2c9ccc3eb283787f8426abd2ffcd65a89518b0b` |
| 6 | `def` | [defaultPort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/defaultport.md) | 89 | `declaration-track:aa6d81ff2fa024d938766b3122f4bb71b7111ed47a5f5fd4869120a99345dc03` |
| 7 | `def` | [ofPort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/ofport.md) | 95 | `declaration-track:387f240d0d17296fa00ac45680c1776def6066f93f009c65110322c3cd50a00c` |
| 8 | `structure` | [UserInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/userinfo.md) | 111 | `declaration-track:c9c61e5ee386fb1e5254527ec8fc06f43dcde093e8eef57a6814bd8bcbba7fd5` |
| 9 | `def` | [ofStrings](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/ofstrings.md) | 129 | `declaration-track:25459923e2ddc5114a8b740b8468bc4f31a2d7e0203ea7e68482f5ad579613e9` |
| 10 | `def` | [username?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/username.md) | 137 | `declaration-track:fc74ad0bf0f8d22441d842947e7f85387da0db6752f1aa7b732ba98518393791` |
| 11 | `def` | [password?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/password.md) | 144 | `declaration-track:7e88fdb29d9089d43e47a03cfbb762a96c08eca15c57f1be601e843f52d2e973` |
| 12 | `def` | [isValidDomainLabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/isvaliddomainlabel.md) | 157 | `declaration-track:32af3662a8a5c9ac9f28094413e4c9a896813026b8fdc4546ec717c6c1cd2b91` |
| 13 | `abbrev` | [IsValidDomainName](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/isvaliddomainname.md) | 168 | `declaration-track:36a695faf419b86c9e423ef34956b9d409cf815cf68fc3ae3d281d889a675d2f` |
| 14 | `abbrev` | [DomainName](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/domainname.md) | 180 | `declaration-track:81fe187837b0d7c4f6805e8a874097f455542cbeba1102629eb669312ca75300` |
| 15 | `def` | [ofString?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/ofstring-source-edition-2.md) | 189 | `declaration-track:84801a895279796829ed61a310aac667cb044eec1a1371b153c25ce0237e7f03` |
| 16 | `inductive` | [Host](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/host.md) | 205 | `declaration-track:62c8eea7f63879a29cc5e6e9e71b9bfb9d57c8cf65ccc2a3d22ae323b4e787a5` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-11.md) | 222 | `declaration-track:deb10fabb57a8c21b66b73ad08ab3d106812e3c17de6209a6dc9e81b3e6c5b2b` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-9.md) | 235 | `declaration-track:c19920db5aa922262450e7425503cc0e421e78674ecfc282e6275d1203ad8cd7` |
| 19 | `inductive` | [Port](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/port.md) | 247 | `declaration-track:c6f5ce3446c4b6961be5df6cb8b9c87247af3c48a2d46de1f11a980d0115d70e` |
| 20 | `structure` | [Authority](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/authority-source-edition-2.md) | 269 | `declaration-track:bbec9d5872fcbef97b258879fa1ea820377816a44835b06902e784d38c666fe5` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-5.md) | 287 | `declaration-track:3ead20ee539c20a670d0de2097c91a12511497e21d9964dd23813b96479835ed` |
| 22 | `structure` | [Path](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/path.md) | 306 | `declaration-track:07b9e4899f625dcae637ca7d5d05d0ebee7f1af9e904b5870da998ed21d52711` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-12.md) | 318 | `declaration-track:ede1bb460ae0b3079b7d6635085dbec196495569e228d9a2b5c68ad55b1d38a7` |
| 24 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/isempty.md) | 328 | `declaration-track:e41cb8e7d4056dc6ff0e2bcddd41b86a688ec1ee70d549aa615ca8b9c626a4b1` |
| 25 | `def` | [parent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/parent.md) | 333 | `declaration-track:e2b82a5615fb444b41fb914077e810d4c8c87e14e49a2b10b9ec03b99a80ce34` |
| 26 | `def` | [join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/join.md) | 341 | `declaration-track:4b7c4003cf17823678bd42f8c6e46e92c76602c23c17606581f385861ec12cb2` |
| 27 | `def` | [append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/append.md) | 348 | `declaration-track:d49521d994a414cf7ac6bdf61c05eb963d1c931d1f7d9e40f0a800bf5df5c124` |
| 28 | `def` | [appendEncoded](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/appendencoded.md) | 354 | `declaration-track:f90b78fdad99bac3ed494d2cc1f8234c8301fc9eef55b74cb823c05e3c0d67d0` |
| 29 | `def` | [normalize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/normalize-source-edition-2.md) | 361 | `declaration-track:67696b36cfbc00a2418ceea35552d37b587b9e49611adef91574cbbd38f6ea48` |
| 30 | `def` | [toDecodedSegments](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/todecodedsegments.md) | 382 | `declaration-track:2728fbb84c5c2bf9c57c3a6108ef759f93b418506c30efdcc3aae148f7441ba9` |
| 31 | `def` | [Query](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/query-source-edition-2.md) | 396 | `declaration-track:ba81addf4d09c8a43592ff02b4edbf2f508a047e2fdc2f5047a64b5cd4cb85af` |
| 32 | `def` | [names](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/names.md) | 405 | `declaration-track:ad09a820fafc42778bca6a96cd7c07d669e8b79ca170ad468a45576e96047ab7` |
| 33 | `def` | [values](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/values.md) | 415 | `declaration-track:d7a07562caa4e1069286af0c23742739fa77596269c36a4afa78af464d70e9a8` |
| 34 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/toarray.md) | 423 | `declaration-track:4df8aeddd5ab5cdd5341b439943d8f9c49413fa0388abf123588d2c1c74a15df` |
| 35 | `def` | [formatQueryParam](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/formatqueryparam.md) | 430 | `declaration-track:60cec983b2a91e8fdeeff2e6d9ecccbbd20928598ae7bb8bd60a07d691aadfa2` |
| 36 | `def` | [findEncoded?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/findencoded.md) | 439 | `declaration-track:c4050f075241cebd3e055eb108d83df64df15b6dca5f0c323ceab5006da302df` |
| 37 | `def` | [find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/find.md) | 447 | `declaration-track:39b014f4bb10086125e3627a61e6d11862a9c9cf2ed95bc99bc0bf30a3ba12c6` |
| 38 | `def` | [findAllEncoded](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/findallencoded.md) | 454 | `declaration-track:5c043a9e9d5e4eb3d13f4b436b1a815e8c0e00cf1a83b3be3ebb64e47138395b` |
| 39 | `def` | [findAll](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/findall.md) | 464 | `declaration-track:aeeb546a5b4b07f0589de612e8aceea80bf6687deca1dd34b06e4be56471052b` |
| 40 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/insert.md) | 470 | `declaration-track:e1f2c3959405db894b983753f8ca624dcc6c9362616a14538b3626b404755903` |
| 41 | `def` | [insertEncoded](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/insertencoded.md) | 478 | `declaration-track:8b6ebfbcaf1806bdf88b70b5faad8129c72455f7a7beee2752ffdc128690d2d6` |
| 42 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/empty.md) | 484 | `declaration-track:14f2f2923dc03021c271598b3eb4277603553d19ec00bb378276414713fbdbd0` |
| 43 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/oflist.md) | 489 | `declaration-track:620fe44a686012d387c947e76cbd1f6ca2968994527ba5fe1d587ca5d7668ea5` |
| 44 | `def` | [containsEncoded](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/containsencoded.md) | 495 | `declaration-track:4aa00ad792567c9ec0016fcbf54efb39e13f98431681674eab7ba60cfbb07b1b` |
| 45 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/contains.md) | 501 | `declaration-track:cb973b5ddd0c0b89bfd0c881279ba53c9fa92dea1c23260f1e9ee4c3796e9dcc` |
| 46 | `def` | [eraseEncoded](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/eraseencoded.md) | 507 | `declaration-track:4039370554aa4966a701149cfd2f4d5f93c64a336543d1c76347d3777596ae59` |
| 47 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/erase.md) | 515 | `declaration-track:c0a31bcb9ce1bcd97b87121316262f8db284d1fb1138a1557f188e47287c1a4b` |
| 48 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/get.md) | 522 | `declaration-track:4c4439fa22b5c16e607399709a8ff0ced2e8afe0b0bdffbce5150e52dcd1f73d` |
| 49 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/getd.md) | 532 | `declaration-track:15ce868c0f51a5e437f9ef80d01b09fab6a55ac6d6251a365c8c50a0be911cbf` |
| 50 | `def` | [set](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/set.md) | 539 | `declaration-track:02a2df2e0b2945734fe063fe9587b2fa6da80198de701443ec310fe3c8b8d14b` |
| 51 | `def` | [toRawString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/torawstring.md) | 546 | `declaration-track:e98eb7fba080cf23cbce3d7e52d4076965531d5878816d4682949ba9ae5b21b6` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-4.md) | 550 | `declaration-track:3e0cd01c53371eb8bd013688307770ae88263647afead9d131e9678a9727d0d1` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-2.md) | 553 | `declaration-track:2dbb410c9c93faf4998745c9a891328ebb3cc06408fe75a677eecb3e6328340b` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-6.md) | 556 | `declaration-track:401f21f62a0e82f85783ca95f45c959b554e381b0052e8e9ff60ea9c519d2621` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance.md) | 559 | `declaration-track:1db2a3ee1058f4b72dc4d252b4ec422be013c266f7f238df54b66efab8588fee` |
| 56 | `structure` | [URI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/uri.md) | 576 | `declaration-track:e8b6b7883bec5f24266d1e77eb3b100c9646c1724e89d93af11c99468cb78991` |
| 57 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-7.md) | 603 | `declaration-track:467ffac15b3fb17448bb0df85fc4ddf817193c99f7f0df14c576bba791e72fb9` |
| 58 | `structure` | [Builder](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/builder.md) | 620 | `declaration-track:b0448b04e4e80b65e26fc14ada538dd47824e660070b71cb673d3e9484f0afc8` |
| 59 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/empty-source-edition-2.md) | 662 | `declaration-track:45569d7c685df4ce3b362bf72cfb93dc871b421ac4797ffa9da7189f9e9ade57` |
| 60 | `def` | [setScheme?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/setscheme.md) | 669 | `declaration-track:7507dcffd00952a48b023f91a547b0afa45a974da900d73f6dc35152d904c67f` |
| 61 | `def` | [setScheme!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/setscheme-source-edition-2.md) | 676 | `declaration-track:a6931cbd8aad422f42ff98a93e7004809007bd9f1c4e4438c2751db0fc2c5779` |
| 62 | `def` | [setUserInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/setuserinfo.md) | 685 | `declaration-track:474f55bb163d370ea1c030bfceecb947c6e6b14bef56dfa09a1f0efadc2196a7` |
| 63 | `def` | [setHost?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/sethost.md) | 695 | `declaration-track:85f88dd1f1c4bb29f1125ef2d60fad50ff4823780e8254ebc8547c5ddd5ed2ad` |
| 64 | `def` | [setHost!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/sethost-source-edition-2.md) | 705 | `declaration-track:ebfa238e854903272132ccee567379439496c1e2ea22fc87aa57a55c51a7124d` |
| 65 | `def` | [setHostIPv4](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/sethostipv4.md) | 713 | `declaration-track:306ec1393d57919e0bea28f2a5da01d28d7bc6e82152ff05be7832dab936c904` |
| 66 | `def` | [setHostIPv6](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/sethostipv6.md) | 719 | `declaration-track:f66795a9db12f06f269877eed48157eac832413a6fd603f492f041929ced12ca` |
| 67 | `def` | [setPort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/setport.md) | 725 | `declaration-track:0b21cce70884595e1227d885d15501243338ea27e2df480d6125abe647f462e0` |
| 68 | `def` | [setPath](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/setpath.md) | 731 | `declaration-track:94a08a1ae9130128e65e555f35cb873f486c80be7f340e5074d59dd77f92d9b2` |
| 69 | `def` | [appendPathSegment](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/appendpathsegment.md) | 737 | `declaration-track:84d083943d910768d914ee9427d29dc767481acb06f5d707d1cd5a16a0c15f56` |
| 70 | `def` | [addQueryParam](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/addqueryparam.md) | 744 | `declaration-track:0e17b9f39697cbfb4d1b276ff290ab2c4c97ad42efd91f0bbb93a27c1ee9632b` |
| 71 | `def` | [addQueryFlag](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/addqueryflag.md) | 751 | `declaration-track:d75466e6dc6de07b0e0fe9717511f039825f0c8d8decb44e10c9a2ee96a54d20` |
| 72 | `def` | [setQuery](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/setquery.md) | 757 | `declaration-track:49f741f9222e170302b83d8c49a870e4829b1bfbbad4739d12680343bd47b551` |
| 73 | `def` | [setFragment](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/setfragment.md) | 763 | `declaration-track:f6253d3a6c65236bb46a56f60ffceda847fb7dd31d7882ff40dfea3cae817878` |
| 74 | `def` | [build](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/build.md) | 770 | `declaration-track:bcd43a4dfbbde67d26ab9781df9421dd4a24f64c9286e0a3e22b9f54ee9540f2` |
| 75 | `def` | [withScheme!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/withscheme.md) | 806 | `declaration-track:dca7d307fcd7cb2402ad52784534b6caa3187ff854af6cdedd118cebdaa9290f` |
| 76 | `def` | [withAuthority](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/withauthority.md) | 812 | `declaration-track:c2acc92d8696388d2cbdc6d006a2da2adef75cbdb73e16a4e8a0d6dabec22e95` |
| 77 | `def` | [withPath](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/withpath.md) | 818 | `declaration-track:d01a072e15a70c5b92be4c8bf49e323e36a94a622566067c8aa97ccc20715cd3` |
| 78 | `def` | [withQuery](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/withquery.md) | 824 | `declaration-track:5ef92b131e1d1e256263ce2c78a91260de45007f8000654a0152fb5029d5208e` |
| 79 | `def` | [withFragment](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/withfragment.md) | 830 | `declaration-track:fe25e6ecd84a068d7ed9300702a7e1eac9c7c0f8ee0741987d03daaf71ca9be2` |
| 80 | `def` | [normalize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/normalize.md) | 841 | `declaration-track:374d3797cc683ee02b3250ef4c550a864cb0af096a70230539588893d1a433d6` |
| 81 | `inductive` | [RequestTarget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/requesttarget.md) | 851 | `declaration-track:ba9c737d39117eee2a166f5071439553031758bd93c2269acceafad3eeead5ff` |
| 82 | `def` | [path](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/path-source-edition-2.md) | 883 | `declaration-track:e23c25d0a3de7a42721c22b1c536e08cd6a3c661ddaa62570093f940619cabd4` |
| 83 | `def` | [query](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/query.md) | 892 | `declaration-track:901c63cbd74ac845d546448cf14a459d56cacc0884657e27bed702ed7c101b38` |
| 84 | `def` | [authority?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/authority.md) | 900 | `declaration-track:6bf580b9d005f9e54b5554450fc8312bb0299083d833e3d0e589b65da42e1222` |
| 85 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-10.md) | 905 | `declaration-track:cab374a0c028b27e023e760b2cfb300026d83c922a8531f6d792eecb0a8e9222` |
| 86 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicIsValidScheme.lean/declarations/instance-source-edition-8.md) | 915 | `declaration-track:82a7c1f69b5c7ec434017c2540e81a35e952eb45d92d4bf21139d15155034167` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce8989a2156f5fb99c5a0c3a1aa64dbaccaf3168557241c31a348d5ec727cafd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante1f35d3c768ccf24a0f30252db1fcf4f541cdcf9ac6f0f7870ec2904f7f35e14.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante1f35d3c768ccf24a0f30252db1fcf4f541cdcf9ac6f0f7870ec2904f7f35e14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.Algebra.FiniteField.GF128.Inv56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83091016eb296a5b567fa1f4a5bc4d5c26f9837f",
  "lexical_observation_count": 385,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Inv56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/Inv56.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/Inv56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83091016eb296a5b567fa1f4a5bc4d5c26f9837f`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Inv56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Inv56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.InverseSteps`](../../../../FieldTheoryAndPolynomials/InverseSteps.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv56_square0](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square0.md) | 6 | `result-track:43a96f946729fb8b2b63f4ddd15681eff05dc683c974258edb71c33a4f535f34` |
| 2 | `theorem` | [inv56_square1](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square1.md) | 7 | `result-track:f6616727fba7b99e62c64a6e958065ae66ca853c877133dd54674dbd6db56282` |
| 3 | `theorem` | [inv56_product1](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product1.md) | 8 | `result-track:cd83304807cbca1d73b5f4156053b401e1014849b797538b89f807a1eb2bdca9` |
| 4 | `theorem` | [inv56_square2](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square2.md) | 9 | `result-track:f0a05b01fe7a9b3f6e2ae46299a1695a92fda39ddfbb6307be06c1def8c9f77f` |
| 5 | `theorem` | [inv56_product2](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product2.md) | 10 | `result-track:af611933f54b6eb4cac35ac5b0ea9a59345a24c38dd2f66ecee6beac5924ed63` |
| 6 | `theorem` | [inv56_square3](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square3.md) | 11 | `result-track:ba871430b34766457fe89f8507598d742698e12b5ee614a04887e61910a75d63` |
| 7 | `theorem` | [inv56_product3](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product3.md) | 12 | `result-track:5813c4019386e26e307bb0a404e1f9e37f5fd09aedb4e562f2dbd223aff52456` |
| 8 | `theorem` | [inv56_square4](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square4.md) | 13 | `result-track:9e0a47a60840c440be425c37a0824c42755307b404d58945cb4071e5c13f703a` |
| 9 | `theorem` | [inv56_product4](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product4.md) | 14 | `result-track:f2a42b22b5dba997d06d5a45b37c5ec409e672addd7f99dfa0ddd31f07d1268e` |
| 10 | `theorem` | [inv56_square5](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square5.md) | 15 | `result-track:bbd77d78943c8739e734d67dba899b7222dfab282cfae928ed15c68955572c85` |
| 11 | `theorem` | [inv56_product5](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product5.md) | 16 | `result-track:0cedc84762fb8f5b110d2c5def08f1a3e7eab15fd36752547508392bbea69965` |
| 12 | `theorem` | [inv56_square6](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square6.md) | 17 | `result-track:aca170ae1eb91260ffd87758bb9a40dfb5b361f351c2fa5c6fc638588924622e` |
| 13 | `theorem` | [inv56_product6](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product6.md) | 18 | `result-track:dc089eee45df3c422b257fb7676d63b58c4c0c8a02c670962479e22d1a3f8d4b` |
| 14 | `theorem` | [inv56_square7](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square7.md) | 19 | `result-track:cf1eac17631e8a41af3841407580678ccd7ce6326b3c7864c545e471a7eb0bab` |
| 15 | `theorem` | [inv56_product7](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product7.md) | 20 | `result-track:a2e51de6286b379d58f84cca527865afc8694df2e64237b00cde744ba68a542f` |
| 16 | `theorem` | [inv56_square8](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square8.md) | 21 | `result-track:41a8adbb8fb3575164feb6e8cdafad692874c5c823852b9d36946d6c908a8638` |
| 17 | `theorem` | [inv56_product8](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product8.md) | 22 | `result-track:1b091ee6e1262f58d4e9468395dc5cdb844466767d77a1e1722b154c169adf81` |
| 18 | `theorem` | [inv56_square9](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square9.md) | 23 | `result-track:95eb16e92238ce539fb91174d59e69667b0bf919e0f0bc6fcd95d930c4ccebca` |
| 19 | `theorem` | [inv56_product9](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product9.md) | 24 | `result-track:3cea979badc455bbef131aff56e0c56881f8bacc5b58c16f423f27837259bed6` |
| 20 | `theorem` | [inv56_square10](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square10.md) | 25 | `result-track:64c9c1cb8010fe04ac377fde832559e027c1e48f5b749442cfefaf8ca5275d7e` |
| 21 | `theorem` | [inv56_product10](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product10.md) | 26 | `result-track:c0698e218553def0e118b61639a8053d98cd8fd37aacb93e22f8e95b6d6ee0db` |
| 22 | `theorem` | [inv56_square11](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square11.md) | 27 | `result-track:a937170306ec8fe7e29e35d4aca2ddf49a859e8989272e4693a1d654340d6258` |
| 23 | `theorem` | [inv56_product11](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product11.md) | 28 | `result-track:c89d6b33ddeae78fd6d8223c8cf0cbd215f9db1f6909c6f083666354efe23c98` |
| 24 | `theorem` | [inv56_square12](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square12.md) | 29 | `result-track:dfb5cd24d1e59f369fe9121c92b25e6fef963972769558eda35503bb010c5fa4` |
| 25 | `theorem` | [inv56_product12](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product12.md) | 30 | `result-track:dd71eac7a4b9c40358d3f96bab0343d97592290a58201dad480760ab3ae7a4d1` |
| 26 | `theorem` | [inv56_square13](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square13.md) | 31 | `result-track:3b16cc48f801188dd2489f3aaa34723fa366f9b4aa59b7f47e5f5515531aba68` |
| 27 | `theorem` | [inv56_product13](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product13.md) | 32 | `result-track:c32212bdd8409b7024ecc3292fd35ebb63122b5b2a1ce515cbb0718c29acf038` |
| 28 | `theorem` | [inv56_square14](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square14.md) | 33 | `result-track:090188e85e1e610b62b01d5ffdbb4a57b01bd437d4f9045a6b7b2b57e071ea33` |
| 29 | `theorem` | [inv56_product14](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product14.md) | 34 | `result-track:30ad6af060471c4d6ca2d45ae2f8bb2360db71e4e4ed822dc75d47568edcc62f` |
| 30 | `theorem` | [inv56_square15](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square15.md) | 35 | `result-track:087db277b31e3839bf341e0ad32cba95dac754f362ba96cca1115d509ebdfda1` |
| 31 | `theorem` | [inv56_product15](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product15.md) | 36 | `result-track:3794cdddddc1c481c73eb86e828a8f269ae55dda3daed9aa3dc3eebe68e04783` |
| 32 | `theorem` | [inv56_square16](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square16.md) | 37 | `result-track:516d3056cb1716556193dfd4a5a3a3f72e6c90bb787cf24b3cdf15c0a0267c82` |
| 33 | `theorem` | [inv56_product16](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product16.md) | 38 | `result-track:b7c3db182d4ec9707761ccf5513e50ecbd00c0a8f52c7bbfb2f399a16af1b452` |
| 34 | `theorem` | [inv56_square17](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square17.md) | 39 | `result-track:b89c6ef56c29a0bef6086f187dfa3f6cb475f83d8bdf5d2d367def905f9b9192` |
| 35 | `theorem` | [inv56_product17](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product17.md) | 40 | `result-track:b2c9f480b85a3e1b57a7467acaf1e9fe64791580d5c5ae5978ac6219acc9bb52` |
| 36 | `theorem` | [inv56_square18](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square18.md) | 41 | `result-track:5f82b17d75ff18d9d7ee0e7684fcc5c147054ca518f00ce62847aa50596cca1d` |
| 37 | `theorem` | [inv56_product18](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product18.md) | 42 | `result-track:c1e726037c617e15bf8fa405e812234d0ca3e061a57b77d1089c2387b1b4f84f` |
| 38 | `theorem` | [inv56_square19](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square19.md) | 43 | `result-track:540c7f5db267739aa849bfbe2481deae31f9edc9a7a666e58ec1e21c268cc8d9` |
| 39 | `theorem` | [inv56_product19](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product19.md) | 44 | `result-track:f9178255531af066eddbb0067f5264a011b004a80992bf882601e9ea516bd2dd` |
| 40 | `theorem` | [inv56_square20](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square20.md) | 45 | `result-track:66f67df6421c7046fecd0a49f34b03592ebb07cd3041e75efd5fba412642144e` |
| 41 | `theorem` | [inv56_product20](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product20.md) | 46 | `result-track:803d1793bad36fae3bae97e83b84a4f7715e6d72ab6562e102d999703bd0adb4` |
| 42 | `theorem` | [inv56_square21](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square21.md) | 47 | `result-track:d0ab0ba6b5627702f0283517e8439e4cd052ed9872195b4a5a36f7ab7d9e8a49` |
| 43 | `theorem` | [inv56_product21](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product21.md) | 48 | `result-track:f12997fdaf900773e0146e09288187fea9e6157e25471295bc13fa000455cdfd` |
| 44 | `theorem` | [inv56_square22](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square22.md) | 49 | `result-track:15d86e2c41ae72fea12e93f26041e33bf2881d42c5add414eb6d2c6dc77cd56f` |
| 45 | `theorem` | [inv56_product22](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product22.md) | 50 | `result-track:f2884454034a7fd6f445eabdded9e17a55a518f0fa78f142a7f4156bf3a656b2` |
| 46 | `theorem` | [inv56_square23](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square23.md) | 51 | `result-track:71eb484f7209908ccb3654aa3f803c0bc236b8620e470f5af2b94bdac3aec7fc` |
| 47 | `theorem` | [inv56_product23](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product23.md) | 52 | `result-track:41a04082ad63ad2a60da741cc9f31ad048c3f63d7e013c77c69892227041341b` |
| 48 | `theorem` | [inv56_square24](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square24.md) | 53 | `result-track:67743b7342a938e09a9082d35a8a24fe496f63b20ad2fc510927ffd3689a827f` |
| 49 | `theorem` | [inv56_product24](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product24.md) | 54 | `result-track:8a4f6662ff598a2a868f32c724b9f2b45d99bbcd4f9d99454eeba93043d86b77` |
| 50 | `theorem` | [inv56_square25](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square25.md) | 55 | `result-track:e2dc10aa6a2cfaf07371e3634630b394caf93650d896ac0d58d5e8cb9837498a` |
| 51 | `theorem` | [inv56_product25](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product25.md) | 56 | `result-track:3081c083d968cf634b0d18ef6a7516efcc41f3f42648ce7e3e444e3ca9a24335` |
| 52 | `theorem` | [inv56_square26](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square26.md) | 57 | `result-track:e907aa2516e2e631d8ea32868111ecbca80e481d7dfa2336e6c9ada2dbd8044d` |
| 53 | `theorem` | [inv56_product26](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product26.md) | 58 | `result-track:c7c5c5e1b08e9a3485d992354d404d7dc3640b2e34d7a4d2adba3229e7e59483` |
| 54 | `theorem` | [inv56_square27](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square27.md) | 59 | `result-track:16405ff257380b7ece57b510c2134d5138bf544b8b31f7a26745701ddbcf28e1` |
| 55 | `theorem` | [inv56_product27](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product27.md) | 60 | `result-track:f19013483a32ad57c442a3828abcbfcace18cfe0beb9e5c1845ec599917ab0e2` |
| 56 | `theorem` | [inv56_square28](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square28.md) | 61 | `result-track:9cc8cba14cd0fbb4f4403a46d24aebc9d532168cbe1243f7265ae00861981865` |
| 57 | `theorem` | [inv56_product28](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product28.md) | 62 | `result-track:ac667f3d95daf4ea69a00c47a5994e1c25baa64d2c506deb825c8f3948810f35` |
| 58 | `theorem` | [inv56_square29](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square29.md) | 63 | `result-track:1164ec87694323a7546411a962a1806b6a38855e9223adc03e894a4cc4095bb6` |
| 59 | `theorem` | [inv56_product29](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product29.md) | 64 | `result-track:cfd9dfd7acc43f15ee73a89f823b811f4a7e9a8c2cf463af03966ec84795281c` |
| 60 | `theorem` | [inv56_square30](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square30.md) | 65 | `result-track:e972a174e41b0f9af065f5d873f117d03be2367652e128c374face2ce82ecb58` |
| 61 | `theorem` | [inv56_product30](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product30.md) | 66 | `result-track:a82def16d035be8b5e88d301118dc9fcb2381527f4e1175aca73f7f9c923f006` |
| 62 | `theorem` | [inv56_square31](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square31.md) | 67 | `result-track:3610c0800054eae879e60ed8975dfca73b458f52bf181b4f31958d2702918bea` |
| 63 | `theorem` | [inv56_product31](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product31.md) | 68 | `result-track:d94c524bd19f0263f78da0ed3598baa0118dddc558e376717a48bb8313478db8` |
| 64 | `theorem` | [inv56_square32](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square32.md) | 69 | `result-track:83832c52d258fcc9d1747195203a36b84d60300fded0308142ca0d36b4ee6484` |
| 65 | `theorem` | [inv56_product32](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product32.md) | 70 | `result-track:d87d0073905dfd6925855878b4cf228ee9162216560e3681e4a07a51b9381b15` |
| 66 | `theorem` | [inv56_square33](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square33.md) | 71 | `result-track:0d66504593d9d57edce817887e602a4dc21c8d9d0d871e5f32fb1f3f929be058` |
| 67 | `theorem` | [inv56_product33](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product33.md) | 72 | `result-track:a3325d8aa23a6a45ab15684cf834cb9d836c9e6837c4988caa3316bfe3ee488d` |
| 68 | `theorem` | [inv56_square34](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square34.md) | 73 | `result-track:572f2a4b9cf2489f5f73b3b5e6fd28f3f97f92c162335f08840ce34de6b386a2` |
| 69 | `theorem` | [inv56_product34](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product34.md) | 74 | `result-track:2fe9a2b61fa6911b3f9eea5c3944cb110a6189c048c03377a1463c7ba0eef75e` |
| 70 | `theorem` | [inv56_square35](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square35.md) | 75 | `result-track:09efe36806d2a27cc8b2a336808a983b81aad67bd3422031e8dfa7103255f9b0` |
| 71 | `theorem` | [inv56_product35](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product35.md) | 76 | `result-track:df6aa1f759d401b5d7a75d4467fa3feafcb3dc7c6489e0e2d008cf52e4868627` |
| 72 | `theorem` | [inv56_square36](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square36.md) | 77 | `result-track:8afeb598c1a4ad91dde6853dccbf6f3fe28190643a28b090af3568c4233e982b` |
| 73 | `theorem` | [inv56_product36](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product36.md) | 78 | `result-track:1cc635b11aaf8f98185058d7e59b5c0987eb21b0e7512f688df156d0adb3a119` |
| 74 | `theorem` | [inv56_square37](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square37.md) | 79 | `result-track:2aa884875c48f2492f0741e333da7cc82f2fb3bbc20733d61fa4324ce2c1071f` |
| 75 | `theorem` | [inv56_product37](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product37.md) | 80 | `result-track:5b68ca6790c43fe7da3c92a84e9f3ddf19ac034b11c8b1d77ef61236cf0e862f` |
| 76 | `theorem` | [inv56_square38](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square38.md) | 81 | `result-track:b3f6e3cd5a07b71f221a3e4805c10d97205096d67fcd04df310c2f2118ff7ad9` |
| 77 | `theorem` | [inv56_product38](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product38.md) | 82 | `result-track:6280d5178b1ab93135fc62491f2a1f65c577286cbfe0719ed551a79752a9c2bd` |
| 78 | `theorem` | [inv56_square39](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square39.md) | 83 | `result-track:00d9b7bf64a2f8c5d43098867a4dbf8536c1436b69ad2a00efc035eb8b9bf3d1` |
| 79 | `theorem` | [inv56_product39](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product39.md) | 84 | `result-track:5f64f2f8e54b9b9ac8db356ef08c571911d47b7760a54127def55c0d5248b13d` |
| 80 | `theorem` | [inv56_square40](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square40.md) | 85 | `result-track:c448a3765fb529da32db28777d7e5d7f65114bae6edb5c915c8eecdf2b5e04fe` |
| 81 | `theorem` | [inv56_product40](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product40.md) | 86 | `result-track:cfd3b24c66062ecc6fcd84d6576d2d7b93f9e781822dff9f6a45c7389d17d62f` |
| 82 | `theorem` | [inv56_square41](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square41.md) | 87 | `result-track:abde6797315a07889ae07907ef6e0aeb671b63f0e10ef89cca40a4c3b0fae44d` |
| 83 | `theorem` | [inv56_product41](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product41.md) | 88 | `result-track:9868993dd4f0a81a77c757ba2dbafd14c1ddb690f68d4281f852148071a63f49` |
| 84 | `theorem` | [inv56_square42](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square42.md) | 89 | `result-track:79358a1c9c77ad8404706e3b75ef3ba244d12fa943ec1e3e94106e94d5ce4ddc` |
| 85 | `theorem` | [inv56_product42](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product42.md) | 90 | `result-track:3cfca8cbc3a9ac234c13a75068228608e7d46bc9cf0a6d55bbe6f209c8091231` |
| 86 | `theorem` | [inv56_square43](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square43.md) | 91 | `result-track:4374f54fffa44fedff149f351ebc3f891e8b1ed11bdfdfab7d9a53f12106021c` |
| 87 | `theorem` | [inv56_product43](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product43.md) | 92 | `result-track:b77d19381b54453855cc46134205be0ed42a9dbd466c35b4fd6a353cfd81323a` |
| 88 | `theorem` | [inv56_square44](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square44.md) | 93 | `result-track:d6aebaedd4664c75f523a680f4415bbf50f226f87e4d3d31d4b148d2b332dd2b` |
| 89 | `theorem` | [inv56_product44](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product44.md) | 94 | `result-track:38e186d99b59ac1cc007fdb01fc93de45483526791318d9598f05d53dbb81821` |
| 90 | `theorem` | [inv56_square45](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square45.md) | 95 | `result-track:dd64baa1f4fc6e1150c838b422df41fc3e6dcdc9b8ab5f8f3a918f7492b46ce5` |
| 91 | `theorem` | [inv56_product45](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product45.md) | 96 | `result-track:78702c43af07faa76ede78fc8a2c94df1316d993bd22758dd960c3e9aaed315f` |
| 92 | `theorem` | [inv56_square46](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square46.md) | 97 | `result-track:ddbc31e034c6c72daf14d31e8eeec9288df3b8108200b21c491dc7287d4c1f45` |
| 93 | `theorem` | [inv56_product46](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product46.md) | 98 | `result-track:572fd691cf65b532af905484d85e9beb1c2efd6157c88c66178126246e55ae3f` |
| 94 | `theorem` | [inv56_square47](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square47.md) | 99 | `result-track:41c48521b30846ec8f1e850a7a2fdeaacfa41fae06dfffa399b40b5416dc941f` |
| 95 | `theorem` | [inv56_product47](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product47.md) | 100 | `result-track:27eca9e730e98fe6239b9c431056927140eac58718abc2fe65fc56a2aa30a7fa` |
| 96 | `theorem` | [inv56_square48](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square48.md) | 101 | `result-track:e45a0c47293498817043300dec5fb49d1a594e84f71144a9b5c7f3f5d78f2560` |
| 97 | `theorem` | [inv56_product48](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product48.md) | 102 | `result-track:6db3dc30cff77959d1bab7f4cb3cd0ba305c69e7667be55a9df4e1e5c658a9c5` |
| 98 | `theorem` | [inv56_square49](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square49.md) | 103 | `result-track:c79d7b99b9bce7f218774d0ee53e59eda7309e00601f2dd979f2695026e47aa3` |
| 99 | `theorem` | [inv56_product49](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product49.md) | 104 | `result-track:6de586ce839c7425fd8fb93049e184b269c3e5cd1d200d510a2b6bebc45f8048` |
| 100 | `theorem` | [inv56_square50](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square50.md) | 105 | `result-track:dfdebb9b08a24830e23ada4688fa757449baa7b1340de14b54dd7e994826ed7e` |
| 101 | `theorem` | [inv56_product50](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product50.md) | 106 | `result-track:28314d8972fd07e11e55be4e8de97b20e0a95c0145e02a95bdd98c231092dff5` |
| 102 | `theorem` | [inv56_square51](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square51.md) | 107 | `result-track:7a035faeeeab43f2a8d1d022e033a421f712f4861cd0a658f10b536486124d87` |
| 103 | `theorem` | [inv56_product51](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product51.md) | 108 | `result-track:1bef799c3bf75b2a26a3a0c3dcd7119e6fe04e3e4081ff436796ec1ae2ad0c10` |
| 104 | `theorem` | [inv56_square52](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square52.md) | 109 | `result-track:ded1a6dd6298c7ff78cf17a595313b27866920799d09e7ec10a2af8038048d79` |
| 105 | `theorem` | [inv56_product52](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product52.md) | 110 | `result-track:1ba443fdc4b5ec735d5adce693ab917912f7d66491b87aad3f0c0af9f45a9485` |
| 106 | `theorem` | [inv56_square53](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square53.md) | 111 | `result-track:152c377c53b6a965b98d858f11ca48f4c79fdc77254f38bb94763d9cc66274f6` |
| 107 | `theorem` | [inv56_product53](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product53.md) | 112 | `result-track:e0209132974641b0789c31e3098542d731467a66ea2da82ede431eb28713a44f` |
| 108 | `theorem` | [inv56_square54](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square54.md) | 113 | `result-track:d3a9e8590192ea3fdcabc80b73ef88eaaca34983bb5f0729b3c7b4d92a907fe1` |
| 109 | `theorem` | [inv56_product54](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product54.md) | 114 | `result-track:f296075f1eabed9a4fc9f086885598d48d8f52f7a596cc04bd8005b436fcf122` |
| 110 | `theorem` | [inv56_square55](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square55.md) | 115 | `result-track:f2663b4722d574ec504d8294dd72296b41d36a9404ea18d6f9b80f0234e8e437` |
| 111 | `theorem` | [inv56_product55](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product55.md) | 116 | `result-track:325b9acd33898d56189d7ba49c8b7559a8aa32f172198f772092da166e664581` |
| 112 | `theorem` | [inv56_square56](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square56.md) | 117 | `result-track:90bbc5d86c10260d26e52d630e0943f4988d35359a0463edddca9652e4b69037` |
| 113 | `theorem` | [inv56_product56](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product56.md) | 118 | `result-track:72ba2d19db5db59f246594a516991d99176a437ccb264d9b907ebd2fa172fcc5` |
| 114 | `theorem` | [inv56_square57](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square57.md) | 119 | `result-track:ce0ddea4249982207646441275976bec3ab9a10ef859d4fe5e38f44a5897552f` |
| 115 | `theorem` | [inv56_product57](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product57.md) | 120 | `result-track:310a28c54f28bebfdd1eae67378bcfa4c9043823f94f4d7469e3dfdc311bf3ac` |
| 116 | `theorem` | [inv56_square58](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square58.md) | 121 | `result-track:15c7cd8d9ba2f1541c6222adf32fb1c7ef4730c86d3488432c1be02280e040f7` |
| 117 | `theorem` | [inv56_product58](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product58.md) | 122 | `result-track:6b7adedb70bfa5af473509e0cd7755f5f63a24536ed0e1186daf3a7bec851eb2` |
| 118 | `theorem` | [inv56_square59](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square59.md) | 123 | `result-track:7676e48e61893bd7d34c059af9aa777bb0a6e3a8701146fe3501cd8a6a8762e6` |
| 119 | `theorem` | [inv56_product59](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product59.md) | 124 | `result-track:259b1fba3a6ead7529956c693b4141da5b4bb971f717c7b4658db0872002f43b` |
| 120 | `theorem` | [inv56_square60](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square60.md) | 125 | `result-track:10e25506a9a5455c99e2a43a537c09808392f9e946f559c21a92c384118b36aa` |
| 121 | `theorem` | [inv56_product60](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product60.md) | 126 | `result-track:8e984e65785a60c156a498b9b43ec00b848f77ed5d815d216cd006bc3651beea` |
| 122 | `theorem` | [inv56_square61](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square61.md) | 127 | `result-track:2dcd2b568ceadfd5f9b26491453c102aa11a1e0def2f21e3edc89a152811b2c2` |
| 123 | `theorem` | [inv56_product61](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product61.md) | 128 | `result-track:167fddad62468e4d34d134f257e4236eedbfc2a4375f1af75dac563b7d144cf9` |
| 124 | `theorem` | [inv56_square62](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square62.md) | 129 | `result-track:613425456bd9ef82d35b75a2d4cb8463552c7c8f0458e33ded8508c44db0c567` |
| 125 | `theorem` | [inv56_product62](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product62.md) | 130 | `result-track:f25eff128c9d40ad742ac5f3f0f269c628f5fda67243813fe48c3b9847ee3c07` |
| 126 | `theorem` | [inv56_square63](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square63.md) | 131 | `result-track:53658e088f56d65eff422abd187c6abfd76a044bff01ec81c0b9b29af88a054a` |
| 127 | `theorem` | [inv56_product63](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product63.md) | 132 | `result-track:68ba0a87e981077f2534b95aa1a7bb5a91cff7e8e0ed4bb23c688acf3cbb89bb` |
| 128 | `theorem` | [inv56_square64](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square64.md) | 133 | `result-track:6bf916f6a07133dd9b478856e24fbde6b94f0ddabd0d3309c58239a0d5d9f0aa` |
| 129 | `theorem` | [inv56_product64](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product64.md) | 134 | `result-track:0b0d3dbf589d1d952a3079990402406442d4ef26812503b5c63005e774793586` |
| 130 | `theorem` | [inv56_square65](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square65.md) | 135 | `result-track:05797aeeee32f4c239c302287f619886af70a9b38dff926f2731204392c60f58` |
| 131 | `theorem` | [inv56_product65](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product65.md) | 136 | `result-track:a256342ddcba79f62b6b9df7a9d737e05e2148d0f0686d158917a78f4825f3d0` |
| 132 | `theorem` | [inv56_square66](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square66.md) | 137 | `result-track:b0df31fa9e336d54211d091115c0ee669bf971b654d0c152c24ec5a8337beab6` |
| 133 | `theorem` | [inv56_product66](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product66.md) | 138 | `result-track:570b06d9b82a34ff4530f22b03fe933c47252628dab30db3ee9ba02526422e1d` |
| 134 | `theorem` | [inv56_square67](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square67.md) | 139 | `result-track:d7dba85b7ae1faa661659bd5c787a7ce9f020d843bf41a3ed16e8919946aaf79` |
| 135 | `theorem` | [inv56_product67](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product67.md) | 140 | `result-track:2e1a1f0572f58911df2e9dd42fa04c45ec40848e8654702cd8b8b207517c2e23` |
| 136 | `theorem` | [inv56_square68](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square68.md) | 141 | `result-track:2ccaa085f70cf70be1ace0e9419535cd2438ccaece56af00e4928c81eddd7ae0` |
| 137 | `theorem` | [inv56_product68](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product68.md) | 142 | `result-track:3577ff2c275994928406386061663d38512847e4ca748db0733832ec1d701053` |
| 138 | `theorem` | [inv56_square69](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square69.md) | 143 | `result-track:80b5d817b552eb12cf79a9e8d89995e10d759302b49ef1100441c645c7570a6e` |
| 139 | `theorem` | [inv56_product69](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product69.md) | 144 | `result-track:052fe660487f57cd5aa79b0a8dd343f95a7d32fb3b46c8547775661f03993e48` |
| 140 | `theorem` | [inv56_square70](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square70.md) | 145 | `result-track:579e764ef7ad23f3c797a218a6425c5b869d080fa342c5679fe914b3899fd9b6` |
| 141 | `theorem` | [inv56_product70](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product70.md) | 146 | `result-track:ee33d79516f90e625e24dcd64fa3b49279401f13869641a3851ec3ee249d5cf0` |
| 142 | `theorem` | [inv56_square71](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square71.md) | 147 | `result-track:f0655498d04623774f5000b98c30ec1aceca979dece60d7e09e07d58ab081170` |
| 143 | `theorem` | [inv56_product71](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product71.md) | 148 | `result-track:b6d2f40dcc078afc4abe96081f3e8bbe95d3ae3a033d3ce109cca423e62db167` |
| 144 | `theorem` | [inv56_square72](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square72.md) | 149 | `result-track:73e2fa8cfee1065a6b038229498aa84750d00b742e0f5b16e6d89744e628a537` |
| 145 | `theorem` | [inv56_product72](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product72.md) | 150 | `result-track:968af9c03c3809f94c2b6c152fcae3e3f3ac6c1c12cccaebf1f0528de42ac86c` |
| 146 | `theorem` | [inv56_square73](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square73.md) | 151 | `result-track:069c71beaee10613f1b7337bd2a0ad1dee6491877a613386107ac44f8e561e9f` |
| 147 | `theorem` | [inv56_product73](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product73.md) | 152 | `result-track:4a78ba668d9000996883d59548a2b724640ae4eff7b8ded492992578121b20a5` |
| 148 | `theorem` | [inv56_square74](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square74.md) | 153 | `result-track:097df9525e73fbd54d2fcd70dafb5795309228d33ff1420cde3d7eb112d5582f` |
| 149 | `theorem` | [inv56_product74](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product74.md) | 154 | `result-track:bada87d9f49afc15aa384474da9cf900f8aed62d5348f1ddb7513ad4fd6d13a6` |
| 150 | `theorem` | [inv56_square75](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square75.md) | 155 | `result-track:555370db6486af1eef6a01ff89ceaa943c628f3f5893a9d27542a1fad9ee14ce` |
| 151 | `theorem` | [inv56_product75](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product75.md) | 156 | `result-track:16056283243b5cf9e6c4dca6c0a51230fe57b1cb1836f09f466f331a6d472b2c` |
| 152 | `theorem` | [inv56_square76](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square76.md) | 157 | `result-track:867b8ff4fa75e9200ffb4488932fd067637a83f272352c230496be886e370380` |
| 153 | `theorem` | [inv56_product76](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product76.md) | 158 | `result-track:ad771546dce24ad7f79d65bdf92bc63ec07e903e02ba060aea2354f62120c620` |
| 154 | `theorem` | [inv56_square77](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square77.md) | 159 | `result-track:9d7fe7c201bfca14e766d73f3b4bd4810d7ea392b29fafa46a7339f463cfc2d1` |
| 155 | `theorem` | [inv56_product77](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product77.md) | 160 | `result-track:b922423ae9a265731e914408b00b6590d648798c26de3c4ee47f558d86a79a92` |
| 156 | `theorem` | [inv56_square78](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square78.md) | 161 | `result-track:2f29457a05c601292bcd0de39d3774d289898a2a9ed0b65bb1ead44122f9813f` |
| 157 | `theorem` | [inv56_product78](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product78.md) | 162 | `result-track:fbd245d50df340f8ad06aa64150aad9736c135d0b34a7dbcf5d20ffd46739a5c` |
| 158 | `theorem` | [inv56_square79](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square79.md) | 163 | `result-track:e2aa62943e654fe7bbba4792a81a978dd938475f1fa5c53c98915b13854619d4` |
| 159 | `theorem` | [inv56_product79](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product79.md) | 164 | `result-track:ea8a579fecb94e51b4ae03f5e0dc0506f25a1319b5586857334bbe7a9f7dba2c` |
| 160 | `theorem` | [inv56_square80](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square80.md) | 165 | `result-track:4be509569329dea9584ada626c27fbf245673ce47e096e94ae256f4071e00041` |
| 161 | `theorem` | [inv56_product80](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product80.md) | 166 | `result-track:cfccbbdeff7498dbdbd0e54ca295180cc0042c9643431c882914f11a213aa15d` |
| 162 | `theorem` | [inv56_square81](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square81.md) | 167 | `result-track:a2d22d9d51dd05caee18da430652ce9f622c67d8d04476eff72d7a2e812dfe65` |
| 163 | `theorem` | [inv56_product81](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product81.md) | 168 | `result-track:d5e9911ae8df62b3ef14b5e57ac825f9690d0b16bf47b222c438c29f23e9e5ba` |
| 164 | `theorem` | [inv56_square82](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square82.md) | 169 | `result-track:a2a2c657811e0c2fdd0e4c42332b46d48b6b0652d6977f0077d8dfda1a3304ac` |
| 165 | `theorem` | [inv56_product82](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product82.md) | 170 | `result-track:b5d0dd4f8a7fd7e905ed78eed972a2053dd26f43496187ab6d02e028f38d0d49` |
| 166 | `theorem` | [inv56_square83](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square83.md) | 171 | `result-track:d008e2862860147cbc9a916c4c1611da1df2168eb4226e4283c857b349f8e1f5` |
| 167 | `theorem` | [inv56_product83](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product83.md) | 172 | `result-track:7494fd63f3a6c4760e7138642e3e6dfdb64bfb2800718d5ab0f34a9be429be0f` |
| 168 | `theorem` | [inv56_square84](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square84.md) | 173 | `result-track:da0f59809d3e8928700c180fae9dac728eecdba6ced034f9373c47e290afee33` |
| 169 | `theorem` | [inv56_product84](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product84.md) | 174 | `result-track:ea522131ff6df5a7008afe66aa4b81d7e8896915811980f7cbe05499d9d2e0ac` |
| 170 | `theorem` | [inv56_square85](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square85.md) | 175 | `result-track:bec1a3aaa24b22f9fa0e28e4fdb80ec55d5d1dade0d33913717630f9c35e9563` |
| 171 | `theorem` | [inv56_product85](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product85.md) | 176 | `result-track:d0f36a3bf6d7f3842ca0ebcbc60a4a28ce58302813215307f65d9506101bdb2a` |
| 172 | `theorem` | [inv56_square86](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square86.md) | 177 | `result-track:9ded70affb31e0310b6388c46c7c0adde332c1292425a6134b36910d44d025bf` |
| 173 | `theorem` | [inv56_product86](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product86.md) | 178 | `result-track:80a6908b05ee3c1555ea8cda9d56b5a5220dd3fd9cac0ed21a953a5e378c799d` |
| 174 | `theorem` | [inv56_square87](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square87.md) | 179 | `result-track:739db69e41df78a013a56fb1fa005f35d813b8ecf50cde8b7b2eac092b5fdae1` |
| 175 | `theorem` | [inv56_product87](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product87.md) | 180 | `result-track:e3492a8cd6e9f4b2933e7c51d1fe4ac48b158fedaa75837d9d854f89ea4e6754` |
| 176 | `theorem` | [inv56_square88](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square88.md) | 181 | `result-track:febcddde37ea1bd2b71dd4c38907724f0a5aab17509863be8464aee592b01a58` |
| 177 | `theorem` | [inv56_product88](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product88.md) | 182 | `result-track:4ba97fc0abd567e90429c584f8c0a228acb09398e0cee452ba08b150d5a9ad51` |
| 178 | `theorem` | [inv56_square89](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square89.md) | 183 | `result-track:60a6d22a9de48acf9a0a79eedc8f34f926c942d72084333f51e1aeb6a85692ec` |
| 179 | `theorem` | [inv56_product89](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product89.md) | 184 | `result-track:6f26be9e690231c8055f6b3ad72afbeb7025024a6b7f63c62596150231fa6b5b` |
| 180 | `theorem` | [inv56_square90](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square90.md) | 185 | `result-track:516f3e9e494e2b05227d6b902d8ed02cab0980d7861a57cf12787f5868f9feb1` |
| 181 | `theorem` | [inv56_product90](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product90.md) | 186 | `result-track:9de050e01ab8d3ba66bb06e031c76cc4dad24b352829219212f16090b3c92f44` |
| 182 | `theorem` | [inv56_square91](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square91.md) | 187 | `result-track:c525b77a81f5081af98748e1d21c0593de82aff43682dc2bc688a103e6d36537` |
| 183 | `theorem` | [inv56_product91](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product91.md) | 188 | `result-track:ad82d79a518a26b09708003d48ff6e1b4814f43752d3b92e13ccae80df7008c5` |
| 184 | `theorem` | [inv56_square92](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square92.md) | 189 | `result-track:efb48d2be907dd7eac60516c8f67959c4d5ef4f35d3059b7b5dade2338799f2f` |
| 185 | `theorem` | [inv56_product92](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product92.md) | 190 | `result-track:6a7da1dbdaab16a4b5a8e6a6747a3bc546503c5bf26ae620b92e0397c665539e` |
| 186 | `theorem` | [inv56_square93](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square93.md) | 191 | `result-track:069b66c1ea9f543aca37cb11405179b168922863ce0ec85412a0d253fcf16ef2` |
| 187 | `theorem` | [inv56_product93](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product93.md) | 192 | `result-track:3dcde1aee5aa2c32aa29905d8ab141244d2404e4cc2a25cdad00235254f14064` |
| 188 | `theorem` | [inv56_square94](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square94.md) | 193 | `result-track:5b39afd5f5af1b3c57283e96c9cc3bc064c83eebb64f6a75d0844771cbecffd8` |
| 189 | `theorem` | [inv56_product94](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product94.md) | 194 | `result-track:103e8518d00d374d170e3948fef36c160a477f90bf613b3f5f25509d640aebdd` |
| 190 | `theorem` | [inv56_square95](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square95.md) | 195 | `result-track:1d8f114ec37a9f6d12e6afe7c879f3c8e61cfe9db5eb31cca9eba8aaa8e95ddc` |
| 191 | `theorem` | [inv56_product95](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product95.md) | 196 | `result-track:06bd990c37d30982dbafc4fb0f4e0535413d6b9a53a74b14ce46459b64a78832` |
| 192 | `theorem` | [inv56_square96](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square96.md) | 197 | `result-track:53f9deb99978c8618efb78367428425f948e5a1608ade381a396d1968f575bc7` |
| 193 | `theorem` | [inv56_product96](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product96.md) | 198 | `result-track:2eb0ca645b2c978727f028184f8bbcbd43c5cf6325dfdadbd46939df2fe6ec2b` |
| 194 | `theorem` | [inv56_square97](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square97.md) | 199 | `result-track:5c98c3c38bd8665c32fb945c0c5f878b0eddcd433b5eb019a7de3c4ffca52241` |
| 195 | `theorem` | [inv56_product97](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product97.md) | 200 | `result-track:989ff328c4df88d3bd92c4dc7747f350c16f8e07f2806b9d1f809e7c4ad5b846` |
| 196 | `theorem` | [inv56_square98](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square98.md) | 201 | `result-track:1761976ffbe978b78b939519770ba12db0263f480203a40eff3c753b832173e0` |
| 197 | `theorem` | [inv56_product98](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product98.md) | 202 | `result-track:6a187ad4ef804cc687924f8c1d305d84c3dfe4daaeabbf7aadfafceaddc67a48` |
| 198 | `theorem` | [inv56_square99](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square99.md) | 203 | `result-track:af3d4a6a1037370b4664b5ddb7cdc60174f824fe5a74590df6efb6e7558d8e9a` |
| 199 | `theorem` | [inv56_product99](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product99.md) | 204 | `result-track:77b2634bdb2ecf1dfd77c9ec680953d655fe0064b0b930576ef2e1c6d958f0bf` |
| 200 | `theorem` | [inv56_square100](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square100.md) | 205 | `result-track:06cbce77d184f3db7a205e7ce6df2ee7686e38a60700aec829c1585af2d7ba02` |
| 201 | `theorem` | [inv56_product100](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product100.md) | 206 | `result-track:e45f4979d6b463631a1be5af3af5ef33e718a47c150817b47a8149a9f3715313` |
| 202 | `theorem` | [inv56_square101](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square101.md) | 207 | `result-track:23dbe6292630de62c8a46a77a528fcd313eaf95679bcfa50df723df2c65fa692` |
| 203 | `theorem` | [inv56_product101](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product101.md) | 208 | `result-track:52e5c33171ad0bc1d33d92cf25fbdb4bcbf50f0817da99549ee0e7f466145e8c` |
| 204 | `theorem` | [inv56_square102](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square102.md) | 209 | `result-track:c4eb2804d00e4cd95dc7511ca2a14ffdb63bb2e641453921a7605fd2d19ef6a1` |
| 205 | `theorem` | [inv56_product102](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product102.md) | 210 | `result-track:7d9073ef3faae1d5db393cd25327e91413570a2b78bf408b6367721322f57b4e` |
| 206 | `theorem` | [inv56_square103](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square103.md) | 211 | `result-track:ebff2ba3046b18e0d59c7270b0823945c21b5006b596b140db02d53fb9acd230` |
| 207 | `theorem` | [inv56_product103](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product103.md) | 212 | `result-track:6ddf43efe1925a7c64bc54e48a2c180c5a03fa3beafbee8002ea54ac92a545d0` |
| 208 | `theorem` | [inv56_square104](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square104.md) | 213 | `result-track:ef5045617eb81bdcb953f798627fe3980e2b162a166d9324a12da2d4b60c102f` |
| 209 | `theorem` | [inv56_product104](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product104.md) | 214 | `result-track:d2101d667cebe0cf748c28b30fef44a90db4350ef8566c4b50fe00f919426aa0` |
| 210 | `theorem` | [inv56_square105](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square105.md) | 215 | `result-track:dff4c8b006f7061bad9d35344eaeaa3a1682a1b7f8ffb763538b6ed34ae8a6ae` |
| 211 | `theorem` | [inv56_product105](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product105.md) | 216 | `result-track:fdf69827b36e577c9557685571351149a97c90903bc47ecc26e61729bc765fa3` |
| 212 | `theorem` | [inv56_square106](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square106.md) | 217 | `result-track:a2f46cdfec26e6fd0b2658dcf0233318d5e9f703aaebea4bb2f69f0c4283f8a3` |
| 213 | `theorem` | [inv56_product106](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product106.md) | 218 | `result-track:65c1243d6c4c40154a3efb45e0a88459a61eaafee2b8a1485dcbfd7d987030ad` |
| 214 | `theorem` | [inv56_square107](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square107.md) | 219 | `result-track:54f6d575fdc4d286d9dcbdd2cd6270e2632317466fc2c82b2b923e1b8adb2d88` |
| 215 | `theorem` | [inv56_product107](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product107.md) | 220 | `result-track:cea52b0f528cdfd2e68db953984fa58283e02ad3c9a1a2b90cba71d5e7ce4b4e` |
| 216 | `theorem` | [inv56_square108](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square108.md) | 221 | `result-track:c2ed937d51275261c09e61316d7df8071d5253d13a059e60c6e5eb35bafe2b57` |
| 217 | `theorem` | [inv56_product108](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product108.md) | 222 | `result-track:177f9309f90131abd81b070091a91f9e51c98e1be4521ad108c038212e7a5e63` |
| 218 | `theorem` | [inv56_square109](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square109.md) | 223 | `result-track:f8e0579b11f67d5a5bc44b121417514a34e042bee8e6647c4c8d6f97710a7113` |
| 219 | `theorem` | [inv56_product109](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product109.md) | 224 | `result-track:2604ece8f39a54bb286485dff7f621c8fd7641c4e249ac31ed3733af8aa039f1` |
| 220 | `theorem` | [inv56_square110](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square110.md) | 225 | `result-track:b922ae7a11a55f3056618f9e136f6487ac234fedf8ef83d1fe4bab19f93fab77` |
| 221 | `theorem` | [inv56_product110](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product110.md) | 226 | `result-track:247b36df98900208740481d63f1a2f67a1ae3bf2b657393e294f17fd6ef2dc33` |
| 222 | `theorem` | [inv56_square111](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square111.md) | 227 | `result-track:64d9af471e272a004b10bb7e312f9d6dd805be04d25fb609421421fbcc2e7300` |
| 223 | `theorem` | [inv56_product111](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product111.md) | 228 | `result-track:3a68c824523dedcb650163773c48d75f3c8f95438a50b8445f1f7b868840714d` |
| 224 | `theorem` | [inv56_square112](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square112.md) | 229 | `result-track:7a0b8c8108e369bcc701e466cd73c1528c12710a44263b08cbc2a092122d6e4f` |
| 225 | `theorem` | [inv56_product112](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product112.md) | 230 | `result-track:63c3c728bb72d965817ac212fa1e87e08aec32dd16a31996b84ce69d49c75e26` |
| 226 | `theorem` | [inv56_square113](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square113.md) | 231 | `result-track:92349ceae25b8b0cc942137c254644ddc62ae8a25ffaa1a4f67e9fa636a35066` |
| 227 | `theorem` | [inv56_product113](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product113.md) | 232 | `result-track:c1ca5af97396d8b21383a69f93dc1c162efa3edd26b31d85867ba1d82c1db0ff` |
| 228 | `theorem` | [inv56_square114](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square114.md) | 233 | `result-track:bc6c50b3284eca3a17dfedae7e0e5f13944442a7d33f69714f2da5fd8aa53f6e` |
| 229 | `theorem` | [inv56_product114](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product114.md) | 234 | `result-track:9432bc14beef63c625e31f6ba056d8ccf71e131626d2cb48d3d1b043e7b541eb` |
| 230 | `theorem` | [inv56_square115](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square115.md) | 235 | `result-track:8a23e9423c776af335909a6919cbf5adf107a647600ea28f129bebdb87d196ea` |
| 231 | `theorem` | [inv56_product115](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product115.md) | 236 | `result-track:b1852f5b0c858ae2493ba7296e5e43d4f78bff5b32f17728838024c141b2e93a` |
| 232 | `theorem` | [inv56_square116](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square116.md) | 237 | `result-track:8a5b82fb8ce78596846beff4b13a65c6804bdfa1c207cb5470b18a12610527e7` |
| 233 | `theorem` | [inv56_product116](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product116.md) | 238 | `result-track:981b10b7f6283c45538aaf549cb0e013f3dc5bde12ecfe96072a61e4542a23e6` |
| 234 | `theorem` | [inv56_square117](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square117.md) | 239 | `result-track:1f11e30c2ba5efc91826c40bc0601cc1fa310c491bf6e5ddd6e2ddcd39bd1811` |
| 235 | `theorem` | [inv56_product117](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product117.md) | 240 | `result-track:081fd02fc5f75b19176d28b016d95c489cc5f93add5528103002278d756fc251` |
| 236 | `theorem` | [inv56_square118](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square118.md) | 241 | `result-track:770746100413603194c97c11f04841b195ed4a0e135a78c13d0ec4a0019dfb66` |
| 237 | `theorem` | [inv56_product118](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product118.md) | 242 | `result-track:5876892152f96407b02596b535eee9131a55c1307d855f92bd23c893491274da` |
| 238 | `theorem` | [inv56_square119](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square119.md) | 243 | `result-track:f41e1ccb3bef83b4bbe6c71a4b2ddfa12b09c6f4994ff34cf40a9fd2a92ab0f6` |
| 239 | `theorem` | [inv56_product119](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product119.md) | 244 | `result-track:bb9bdedcc6661108e91977b6a1deb1c22ef4623c086068f40d617195af374e04` |
| 240 | `theorem` | [inv56_square120](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square120.md) | 245 | `result-track:d453227f6b00697a0024c8363653f31d273c8d1b6826cc30878966d174c22768` |
| 241 | `theorem` | [inv56_product120](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product120.md) | 246 | `result-track:53330b231e38bfce383226b59515e7c57e4bd478000ea13f5f4b81793f5f30c6` |
| 242 | `theorem` | [inv56_square121](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square121.md) | 247 | `result-track:ce10ab6e9702f2565e83471cf9230a068f735b305c62dd9991a40c596038d9bd` |
| 243 | `theorem` | [inv56_product121](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product121.md) | 248 | `result-track:92df18dcafc25355adb60a946c1510c922b55560cb123271bf9590930a375415` |
| 244 | `theorem` | [inv56_square122](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square122.md) | 249 | `result-track:440b4ba459678792cffe390d14c0f842a635173a460fd94607c29bda9565bdb9` |
| 245 | `theorem` | [inv56_product122](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product122.md) | 250 | `result-track:821bea2a955f25cc51524172f2b1f11bf5b539c667a038ba680dbd976917ea13` |
| 246 | `theorem` | [inv56_square123](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square123.md) | 251 | `result-track:3428e3613782065f9391a726ab03edb3ac687cc4850cd08b9bd58e3d4d0c99ca` |
| 247 | `theorem` | [inv56_product123](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product123.md) | 252 | `result-track:016c9da124ee63f11809b51a5f66b342b1e2e6b65fcaa995bec1c76d18e6e854` |
| 248 | `theorem` | [inv56_square124](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square124.md) | 253 | `result-track:d7d0de98514207e560881cfebb1fc0f9598dccb4858dbfa63ad3ebdcb0031d6b` |
| 249 | `theorem` | [inv56_product124](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product124.md) | 254 | `result-track:c017845c998b98b09c1ac87d93c267fc5e4d930a1a22e9bfeac9e59054d93114` |
| 250 | `theorem` | [inv56_square125](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square125.md) | 255 | `result-track:247f597eb1e63d0f175969abf21e1dacff55a82e2f4ddfac7b4b73c6440e5a43` |
| 251 | `theorem` | [inv56_product125](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product125.md) | 256 | `result-track:569486d83f78d293b4f468406cd9f67a7ebd5c39d4fc19602dc19ed05bf0b2a3` |
| 252 | `theorem` | [inv56_square126](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square126.md) | 257 | `result-track:74f1bcb2ea53158985a35b96531d223623d544a07918e58c612e25ff336042e1` |
| 253 | `theorem` | [inv56_product126](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product126.md) | 258 | `result-track:70e5270ce4fb47b11ba1c66977fe5987e48686ac134ca326b23aacd1ca02069f` |
| 254 | `theorem` | [inv56_square127](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-square127.md) | 259 | `result-track:0a19e3bb7d68e674fbc9c80668d319992309de0c76b0654a2a2fd51cd35c5d9e` |
| 255 | `theorem` | [inv56_product127](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-product127.md) | 260 | `result-track:f61d034c139bff68f6fc3df2ea586e474da058b2d9de5663ff87fc33d5e1a452` |
| 256 | `theorem` | [inv56_trace128](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace128.md) | 261 | `result-track:8e9a776f65e4ed5a299525dfc1d7511a6654c66060e9dc50de8df716ac34ac88` |
| 257 | `theorem` | [inv56_trace127](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace127.md) | 262 | `result-track:5ec46063c7cf7bfd35ae9a47e83725928f3f8acdecc8155bbd7fd96fc7bfbd85` |
| 258 | `theorem` | [inv56_trace126](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace126.md) | 264 | `result-track:88d03bfafc02678c8c7171bd4eb4cec2f7c93563e94601a0c893688a582ed813` |
| 259 | `theorem` | [inv56_trace125](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace125.md) | 266 | `result-track:e30120ccd9c9e55aa1bbdf9e2f14e48e266f41e0528528672beafe69b47664e7` |
| 260 | `theorem` | [inv56_trace124](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace124.md) | 268 | `result-track:cf72e20eb2b595bf3e8ac08e159b4797c716b4f373b60e0ca8ee0958742f0290` |
| 261 | `theorem` | [inv56_trace123](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace123.md) | 270 | `result-track:8ce1acedc4eb41cda17e61706f89cee02273614758fd84d699995199b1a7b4fc` |
| 262 | `theorem` | [inv56_trace122](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace122.md) | 272 | `result-track:bce4bba49e2f62761ca785cf3c3f4b4c48078656a8a67492d39c4022fe1c5dae` |
| 263 | `theorem` | [inv56_trace121](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace121.md) | 274 | `result-track:74d543337cc3080e5ca5e3b08e49dcaf73dac121cd6adf5482bfa2573e10a38e` |
| 264 | `theorem` | [inv56_trace120](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace120.md) | 276 | `result-track:23f9768c89f21040a3362df0ca0eb7cd394f1f2919724e94e1e6f44877db05e3` |
| 265 | `theorem` | [inv56_trace119](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace119.md) | 278 | `result-track:672ac4675c6762e2f7d6cf8de8f20316701d49a6095db4d58fb4e018c0d1c163` |
| 266 | `theorem` | [inv56_trace118](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace118.md) | 280 | `result-track:cfb0c8ce0b2ad9a1b5a906271e9940d54d9602b5d5802d579ea4b0952029e7b8` |
| 267 | `theorem` | [inv56_trace117](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace117.md) | 282 | `result-track:e6857e8b15bd1a9a7de23a17239c1196640c756cdf3d4c12cc5083615f73da83` |
| 268 | `theorem` | [inv56_trace116](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace116.md) | 284 | `result-track:eb52427800d6f4a25ca3ecaea0c7208ad0fc14fa18518f7159a9fb208477d585` |
| 269 | `theorem` | [inv56_trace115](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace115.md) | 286 | `result-track:dba6c42cc9419b280d17281f771dae755ddeed73cd7a7d7bd5f4e46b2364aaa5` |
| 270 | `theorem` | [inv56_trace114](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace114.md) | 288 | `result-track:ae06a0693de115dd81d27279cf0a99a3682cebfcd0daf75b9b2378621effe584` |
| 271 | `theorem` | [inv56_trace113](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace113.md) | 290 | `result-track:e2fec5c6ce66be7ae31695d5ee1fe72f0c8d274966b128399aff9625020c0a79` |
| 272 | `theorem` | [inv56_trace112](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace112.md) | 292 | `result-track:0d6ef25e9eef6a435ee8a866a64b0c3baaf1022e05826632c22fc808c2af779f` |
| 273 | `theorem` | [inv56_trace111](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace111.md) | 294 | `result-track:814bfa6eafceed4ad83091dfbc9cc3c0564b799a0f60aeeb84f3496f6fce2d23` |
| 274 | `theorem` | [inv56_trace110](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace110.md) | 296 | `result-track:0365de3afff78ec1d47cdaa2f03ad83c5e112dff992e461814e74011e610e4d9` |
| 275 | `theorem` | [inv56_trace109](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace109.md) | 298 | `result-track:773402dae76371b88639d555358d6fc387d01758e95a44e3418a76f2fb02b921` |
| 276 | `theorem` | [inv56_trace108](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace108.md) | 300 | `result-track:11ff0c16b7b7344e877f6594f7b9b6ce9e4439a891b2d8527a712ee8ea2af83a` |
| 277 | `theorem` | [inv56_trace107](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace107.md) | 302 | `result-track:7090189488232fa642b915114748241025c2d8fc90e995d53c4619693a606dbd` |
| 278 | `theorem` | [inv56_trace106](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace106.md) | 304 | `result-track:db949b92948b694a4063f3b6088ffee783086bf8246ee92456029349824313ef` |
| 279 | `theorem` | [inv56_trace105](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace105.md) | 306 | `result-track:a2fc7a5fcf2219b6f166ed2279b49db3428d6ab0ab409dbc9e6b241bd6d10cbd` |
| 280 | `theorem` | [inv56_trace104](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace104.md) | 308 | `result-track:3ac86a1c137ffbcd37c72c83c4f9777f947bbf03a2d94fe8464936d88625b03f` |
| 281 | `theorem` | [inv56_trace103](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace103.md) | 310 | `result-track:e3287df8da152a62a61f538bded7fea91a4b6bc501a3bb24ee73fc23d36ea2a0` |
| 282 | `theorem` | [inv56_trace102](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace102.md) | 312 | `result-track:fb5c196508dedd55d249426b274580c604ea4eb1b70c8c36f230a485bfe7963a` |
| 283 | `theorem` | [inv56_trace101](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace101.md) | 314 | `result-track:afd6c42d78c57fa6f63c53cde28fe12cb16dd6ad9fa83d78963a514eba58d180` |
| 284 | `theorem` | [inv56_trace100](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace100.md) | 316 | `result-track:01bbde38c6f71b938c28db846f55d9e3e8f6359ddecf2821f9353cb6baa3a5bf` |
| 285 | `theorem` | [inv56_trace99](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace99.md) | 318 | `result-track:ebc408f24f3eae50492409ae2b96ea3a58c58a1332b14d9ef59f1bc8f1518217` |
| 286 | `theorem` | [inv56_trace98](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace98.md) | 320 | `result-track:916ec8d12207e6c1705bda8e71626cebfc6e50d038d1bef02a2aff49272d84d7` |
| 287 | `theorem` | [inv56_trace97](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace97.md) | 322 | `result-track:2839ccf2ebb725addb857a8cecef70da913a0fbf4c2776a8d60a74a602e3b010` |
| 288 | `theorem` | [inv56_trace96](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace96.md) | 324 | `result-track:e8ca33099f3a5c0eb3c8ec6bd344047c70d447a0d09e95d52e4c829fc0edd825` |
| 289 | `theorem` | [inv56_trace95](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace95.md) | 326 | `result-track:41af417c1b19731ad39193d6a987adb376e02bf6c1f59d4d97703d777e70bf12` |
| 290 | `theorem` | [inv56_trace94](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace94.md) | 328 | `result-track:faf243b00414537725630757c04d6fa70d8bc93b2ec0d95c87af63654e9689d9` |
| 291 | `theorem` | [inv56_trace93](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace93.md) | 330 | `result-track:69d12e1a7aa4b4cbcb94b2cc3deaa0e47de1720dc4419011b1c47d5c157df090` |
| 292 | `theorem` | [inv56_trace92](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace92.md) | 332 | `result-track:0309570e65be8c41c40851672bd67bbb895c1a466c85bdf32e85c44011553880` |
| 293 | `theorem` | [inv56_trace91](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace91.md) | 334 | `result-track:ce0857e94ac1b199d7dd356c6e3702f57ce42c02239e5988d43bc7f73cd6a479` |
| 294 | `theorem` | [inv56_trace90](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace90.md) | 336 | `result-track:82d981fae8639964dd4b83b81a08756f45df2091fbfb13c8f74529230ab2235f` |
| 295 | `theorem` | [inv56_trace89](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace89.md) | 338 | `result-track:2a59dd0772087e2c9ee418ee94f43a401103a7ec103b7f778db1495177f116d5` |
| 296 | `theorem` | [inv56_trace88](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace88.md) | 340 | `result-track:c0a521386ab45a45a235b97f0cf40ac388b44ea2dfec1e0f337850ea1c566c6d` |
| 297 | `theorem` | [inv56_trace87](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace87.md) | 342 | `result-track:e29240250b5f971afbe49c175935fe1203599f5d04b63c5c22c74c185f93e14a` |
| 298 | `theorem` | [inv56_trace86](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace86.md) | 344 | `result-track:d76ab7a6ebf0803bb326c5008f7090d9fc2189512a94ba88ff5e52fb9e66be76` |
| 299 | `theorem` | [inv56_trace85](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace85.md) | 346 | `result-track:327d3fce777cc313f3c4df2f9f882a00db94d99617e657f5083a65dad6e50e15` |
| 300 | `theorem` | [inv56_trace84](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace84.md) | 348 | `result-track:55c2cbad0325296abd2f3064f03fb9724e25c4b3560a43377bf654cf5dbe1218` |
| 301 | `theorem` | [inv56_trace83](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace83.md) | 350 | `result-track:2f6f62d3c082a3f5e02a7d0b9325f5a591e311442ae6d6e6a26ede178686776e` |
| 302 | `theorem` | [inv56_trace82](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace82.md) | 352 | `result-track:71fcc6327f24b5c75dbfedbb190a012de0ac5839b3b302086d4f8da3e39bd135` |
| 303 | `theorem` | [inv56_trace81](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace81.md) | 354 | `result-track:21fee1d5948c15a00edde94e374184b1378dff932fe72ceb3d244497dd4da861` |
| 304 | `theorem` | [inv56_trace80](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace80.md) | 356 | `result-track:13a1d5245a9cf304388536cee33025b938fb0f351d9740801555a34fb85a8501` |
| 305 | `theorem` | [inv56_trace79](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace79.md) | 358 | `result-track:63c809a249db6840996cc482774dcf195f31c6b602e5918881f6d6a85d84ed00` |
| 306 | `theorem` | [inv56_trace78](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace78.md) | 360 | `result-track:7c5b8ddf8d9c75c1b27f515fbee50e9bbe26d18fddbf4c237ef156443778160b` |
| 307 | `theorem` | [inv56_trace77](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace77.md) | 362 | `result-track:4b3d01ffe496dd2c9da136a37de808f3c75d1c1ab410e13c6ecac618db6d7d91` |
| 308 | `theorem` | [inv56_trace76](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace76.md) | 364 | `result-track:2092acca67fc0a4e28ba0c06993e37ffd70b0e3eafbb1bb3879e0e834a754d30` |
| 309 | `theorem` | [inv56_trace75](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace75.md) | 366 | `result-track:aa916a3f046963431e54572e21e274501ebde6874b5fb090b1b3e50a7c7f011c` |
| 310 | `theorem` | [inv56_trace74](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace74.md) | 368 | `result-track:ac7a2d618928a1f56ecb0d3a9ffb833c0ee42a4f482091de736b083aaad2146a` |
| 311 | `theorem` | [inv56_trace73](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace73.md) | 370 | `result-track:f6c24dca2741fbf45e6fa54e50168246333c584d3e5e0e606ec5ed7de1815d54` |
| 312 | `theorem` | [inv56_trace72](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace72.md) | 372 | `result-track:c789d65f739bd04a3ef9acc728622f8420d3b8d993da5e7589ac4a410faf507b` |
| 313 | `theorem` | [inv56_trace71](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace71.md) | 374 | `result-track:d7a9dc2c2a60209bb3125b8c7f83e9950f60011578a11804e92ea67e4bfe9cf1` |
| 314 | `theorem` | [inv56_trace70](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace70.md) | 376 | `result-track:1832eb76df1de25440a83f20320bdf89c34cf5bd874022cd3166b2a5d894297f` |
| 315 | `theorem` | [inv56_trace69](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace69.md) | 378 | `result-track:b790e999b795ab5f256d4231ad29e09733138fc74032310f4ef276b84257217e` |
| 316 | `theorem` | [inv56_trace68](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace68.md) | 380 | `result-track:03fbb0ce9c7f356c686bf99076e8b9b8a7c85789fac383f4b2fc34d5f226283f` |
| 317 | `theorem` | [inv56_trace67](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace67.md) | 382 | `result-track:df21a4c8a362844d720491a88321e3d067ec0ccce81bc461867c2b903376d6cf` |
| 318 | `theorem` | [inv56_trace66](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace66.md) | 384 | `result-track:c7a68acf71d63015e2a0351c624a129b503708b8c0071b4c35e221b7e9e45580` |
| 319 | `theorem` | [inv56_trace65](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace65.md) | 386 | `result-track:1bf6f7b74ceb81721cc71a02622452eb3563dd186be07d6d04b29919c2e5bf8e` |
| 320 | `theorem` | [inv56_trace64](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace64.md) | 388 | `result-track:c0642ebbf2c789ae7f2489e9a4f58a19f72dcc1d561ddf1b8bede9da71ffb940` |
| 321 | `theorem` | [inv56_trace63](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace63.md) | 390 | `result-track:2745812783d0b1f49ed85f1efd759877b286d41fa5c91d712ece38b3fc398baf` |
| 322 | `theorem` | [inv56_trace62](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace62.md) | 392 | `result-track:778e46661f00fb06a3a659513d43389a7ea799d2a7fd0558789f0ed42a9419cb` |
| 323 | `theorem` | [inv56_trace61](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace61.md) | 394 | `result-track:b9764a058287051d1b733c8b3ca6c967de123a0aa0e204224d8c0cc292a1453f` |
| 324 | `theorem` | [inv56_trace60](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace60.md) | 396 | `result-track:bc2657df29bab0ae4bbf9ee315af49e2644384fe34f131143195fce0dd670ab5` |
| 325 | `theorem` | [inv56_trace59](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace59.md) | 398 | `result-track:be5f176d4ca1794d4c18a3e61c99f302e499569a41af65f528c8c9acf000112f` |
| 326 | `theorem` | [inv56_trace58](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace58.md) | 400 | `result-track:150ec8d8d379ddbd084aa1a86cb60c05aa0f10feaa93388d283d8fd5d43693b5` |
| 327 | `theorem` | [inv56_trace57](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace57.md) | 402 | `result-track:66d5895eb7ab85924d7db78b50f0ef213ffbfa3d1df916bb56ec43d02a115157` |
| 328 | `theorem` | [inv56_trace56](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace56.md) | 404 | `result-track:1f9d7a15c0e9d5589f1592ad7b6d03a0eeca0547cb4e97ae152f87615d8b9862` |
| 329 | `theorem` | [inv56_trace55](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace55.md) | 406 | `result-track:4ad0a6d907f3081279efc842477f15336a5e1e8dcb79cd924ae6cf103389fa13` |
| 330 | `theorem` | [inv56_trace54](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace54.md) | 408 | `result-track:0104e98b86ec370894c75a75b3a6c4b6d9998384db843a9b01954620577f0213` |
| 331 | `theorem` | [inv56_trace53](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace53.md) | 410 | `result-track:c2486258ac9c7f12ab82c4a364d88861ec747d343074c30e8852e50538920a07` |
| 332 | `theorem` | [inv56_trace52](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace52.md) | 412 | `result-track:0e4b9b54982b5082d3e372b7e8e167690660b14f0ea58185920d23855e26407b` |
| 333 | `theorem` | [inv56_trace51](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace51.md) | 414 | `result-track:25a86cc0d22f0289ab3a340cbcb07422e32c39bc60d415005acc3e73207ae051` |
| 334 | `theorem` | [inv56_trace50](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace50.md) | 416 | `result-track:8ad24fbe5759d1810126e685b7ce48c2e58b52dbf2ab24b5616e89215b0b32cf` |
| 335 | `theorem` | [inv56_trace49](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace49.md) | 418 | `result-track:30a51a032c33ad807b48fb8966b0a98a39e351b2ceae4d4f401ddabdff3d6455` |
| 336 | `theorem` | [inv56_trace48](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace48.md) | 420 | `result-track:0f2d3bfec4f5a426addd41c832a3ce05871df2a3be2fa7eed4e47b7a7df9b5be` |
| 337 | `theorem` | [inv56_trace47](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace47.md) | 422 | `result-track:bca0b4b6cac2293e1819281af49aa4175bcdbc6b7f63c00d124f72883ae49051` |
| 338 | `theorem` | [inv56_trace46](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace46.md) | 424 | `result-track:97ce72eaf93393bf360a7e8461955476b125c410101b53660dfc984e25a43227` |
| 339 | `theorem` | [inv56_trace45](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace45.md) | 426 | `result-track:38ba8e261f63d24e48a31aed91dfa578ea23b0bfbd12f1a14d32fe57f079c2c1` |
| 340 | `theorem` | [inv56_trace44](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace44.md) | 428 | `result-track:1802b853e2dd2265a543c96c77d9597c02be5fd354acbe5b3bd3f6be0cae5586` |
| 341 | `theorem` | [inv56_trace43](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace43.md) | 430 | `result-track:387d2db4ba97818b7e2321de02f0180c2e54a58f1b3d10c9278e8bcf81fa36ce` |
| 342 | `theorem` | [inv56_trace42](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace42.md) | 432 | `result-track:3bf4827aaae2edf09da68d747646035d2d16fcd17331a29de74b7a52a921eb04` |
| 343 | `theorem` | [inv56_trace41](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace41.md) | 434 | `result-track:c1769a15558a79225a8e3687988b200b3e490e4dcc7850a8154fa20db9df9317` |
| 344 | `theorem` | [inv56_trace40](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace40.md) | 436 | `result-track:c174aaa958aaff1132210f9b3baa823355bcc81a6e98493bab12fb35118eba3f` |
| 345 | `theorem` | [inv56_trace39](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace39.md) | 438 | `result-track:33e934b2c1c6fcabc9fd08acf3a5dd91545c7907da567111af5ba880e2dc0a7e` |
| 346 | `theorem` | [inv56_trace38](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace38.md) | 440 | `result-track:115d5f73dd367aabdf1259f6bd14cc8f5fb1b99d8240e251865855bcd1e03b31` |
| 347 | `theorem` | [inv56_trace37](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace37.md) | 442 | `result-track:1927d4ead048228dfa6580f34cd142c937267f738beb341421b4e056aa529e8d` |
| 348 | `theorem` | [inv56_trace36](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace36.md) | 444 | `result-track:0f7bbe0de68ac426e31d18f58ce9e42bc26bd16187057e4f81efda879bf4ba70` |
| 349 | `theorem` | [inv56_trace35](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace35.md) | 446 | `result-track:afff695aaf0b1978874224a728fbd3d50b3176d97304243f0545b6fa21af6143` |
| 350 | `theorem` | [inv56_trace34](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace34.md) | 448 | `result-track:0b56d9039ac374390872caec1cb476b6d2ca825e79cdc0e927328d0f1137bc92` |
| 351 | `theorem` | [inv56_trace33](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace33.md) | 450 | `result-track:eee300be5c6ff94b8d013f3a940c1aefa2ded83b373b8c45c1dfc7a18aab3817` |
| 352 | `theorem` | [inv56_trace32](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace32.md) | 452 | `result-track:8deae1c82223d1799c0c14112b502aecab9c202386cca7b1d51a94427fa41cda` |
| 353 | `theorem` | [inv56_trace31](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace31.md) | 454 | `result-track:0d9004f7edefdd9f6b0d067265749b4435a26d4c9c4fd2716462b116d781773b` |
| 354 | `theorem` | [inv56_trace30](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace30.md) | 456 | `result-track:cfb3c42d8a002f60c8be4a95bda247dd6dc670fdde7b53795cee722cbe1862f5` |
| 355 | `theorem` | [inv56_trace29](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace29.md) | 458 | `result-track:2ef7de121c3cb9f313d115b2bd5883ead5d00b4167bd00590b6620daa2a3c7f4` |
| 356 | `theorem` | [inv56_trace28](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace28.md) | 460 | `result-track:f7d041049b174df5d21d83306d505437efbf428a91b2e2795cd0814440651613` |
| 357 | `theorem` | [inv56_trace27](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace27.md) | 462 | `result-track:93c6ec76544674fb316986233bc99bf9b2ed9ced3d04847f4b598a748562ecae` |
| 358 | `theorem` | [inv56_trace26](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace26.md) | 464 | `result-track:5cf8676726d9a30c6221fbf199a3ff6db7880da457f62673eca1cab3af61ee74` |
| 359 | `theorem` | [inv56_trace25](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace25.md) | 466 | `result-track:d9ae7b87443352793be647bf85000033e92a4b4ad2e05d06003aa2f59cca1b11` |
| 360 | `theorem` | [inv56_trace24](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace24.md) | 468 | `result-track:46d3f98342b5a90935214a1240ba0b075f8b7bfb558819406a5bc297eccf248f` |
| 361 | `theorem` | [inv56_trace23](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace23.md) | 470 | `result-track:6bc365967d2a820a3828b4726555b6f5267e26ce083879860c86661b5482fbf5` |
| 362 | `theorem` | [inv56_trace22](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace22.md) | 472 | `result-track:184886aeebc8e8421d5e34dc745d50890837d914ee5e607deea3ed3550810554` |
| 363 | `theorem` | [inv56_trace21](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace21.md) | 474 | `result-track:59bd8f489457e75f0d073e7c56d5fd8720c953e00c1feeaab984e331d7320cab` |
| 364 | `theorem` | [inv56_trace20](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace20.md) | 476 | `result-track:374711f41616909cafc28c19f8b80c24d3133942ada60693dede3a8fe2656206` |
| 365 | `theorem` | [inv56_trace19](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace19.md) | 478 | `result-track:7d3cd57114e04c3c477a1c1c4c83a25d0315649678a959d9fb009301c884ec90` |
| 366 | `theorem` | [inv56_trace18](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace18.md) | 480 | `result-track:ad8761d7c0fad8cd316df985b7fbfd4c36583dcc30fa968b8f4c0f660526672f` |
| 367 | `theorem` | [inv56_trace17](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace17.md) | 482 | `result-track:85ddd810c4d0f433653d5c736aeb3fc5fb425985b38cf445f2a1b9676c41ef10` |
| 368 | `theorem` | [inv56_trace16](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace16.md) | 484 | `result-track:6e44beef3af1790b71f891577dbdae19c99ada15dfb7d377bcf5a8636f2b0d5b` |
| 369 | `theorem` | [inv56_trace15](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace15.md) | 486 | `result-track:26483b0d3e16be6ea92871324996014770cd2b7796fc33bb3fb551797ba150f8` |
| 370 | `theorem` | [inv56_trace14](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace14.md) | 488 | `result-track:0838d471e43ec2e9ec16438d07203145848323763491c2ffa62057fa79179246` |
| 371 | `theorem` | [inv56_trace13](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace13.md) | 490 | `result-track:afdd73ed05f36e275f6ccafe6f7484ec1d12501fb2c0244769cd86ce85d4caba` |
| 372 | `theorem` | [inv56_trace12](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace12.md) | 492 | `result-track:345e45045c4fed414f6b001b652905a3c1ba1d0cd0d53754f25fcb4e46887b02` |
| 373 | `theorem` | [inv56_trace11](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace11.md) | 494 | `result-track:548563fc388efbff59406ea58d382f3b27ea2034dd6f9a81cc63afafbbc9d1fa` |
| 374 | `theorem` | [inv56_trace10](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace10.md) | 496 | `result-track:e2cd97fd5dda3d87f0ec7e82a442bb6a8a5212a213d4ad2deec9542ab3051019` |
| 375 | `theorem` | [inv56_trace9](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace9.md) | 498 | `result-track:82b85b0236c59aec1563f0c9e7eb3e6e9264ffc1772edeea147618525f82266e` |
| 376 | `theorem` | [inv56_trace8](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace8.md) | 500 | `result-track:3dc17adc460fc0d8a46b8d74712a596669e54a82f672cb9a4681b8b59393c919` |
| 377 | `theorem` | [inv56_trace7](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace7.md) | 502 | `result-track:4c3a9abb507fda4c68637b2eb1b2e1849e7e352b0e508cc47cee7587c8260f90` |
| 378 | `theorem` | [inv56_trace6](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace6.md) | 504 | `result-track:7f8e5ec6936fd5df54967ded3f95fde113145a8a7071a9f8e108e938110c3788` |
| 379 | `theorem` | [inv56_trace5](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace5.md) | 506 | `result-track:f9c7ffb8a35cf7f412021744d7d8a0fd20afd75afc548005896e06662268b76f` |
| 380 | `theorem` | [inv56_trace4](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace4.md) | 508 | `result-track:cd5bb04ea0fea1a7ce0fd3c375c38d79fe528285790fa74049e2e5551d838655` |
| 381 | `theorem` | [inv56_trace3](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace3.md) | 510 | `result-track:9b47d31ba987a9c9c99adc59ee0ec64d8c91534d361c8073dcdf8c99c014e2c4` |
| 382 | `theorem` | [inv56_trace2](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace2.md) | 512 | `result-track:f1c98857de838e49f1cf27f9710671480da20f719303a671a9c12d22aea6674d` |
| 383 | `theorem` | [inv56_trace1](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace1.md) | 514 | `result-track:c777564f6fb78adeb2d74fa8c3025b66e08a2063f9c6c2bbf37700688079cdff` |
| 384 | `theorem` | [inv56_trace0](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-trace0.md) | 516 | `result-track:84ee3bcccacfcca9d0216f5b5b4e8956789a4718b79968d176895722f492ee23` |
| 385 | `theorem` | [inv56_exact](../../../../FieldTheoryAndPolynomials/Inv56.lean/declarations/inv56-exact.md) | 518 | `result-track:1ab602dacd5eb55df74abf91190914f470016578fb033feb4212c3be28010b4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=849b463ff2e49e34ffa66b3734a6b3b981df5143853cde574c4375420e8bdf81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FiniteField/GF128/Inv56.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Inv56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

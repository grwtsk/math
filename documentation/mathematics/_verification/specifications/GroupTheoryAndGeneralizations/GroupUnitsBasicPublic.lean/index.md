# Verification target: Group Units Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76623252655e245a0372bfff3cb34444f0983670",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76623252655e245a0372bfff3cb34444f0983670`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unique_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/unique-one.md) | 42 | `result-track:be182e9a6444825ec527b1c200cd6577728d09d934df6bcbcfbc631e482fa674` |
| 2 | `theorem` | [mul_inv_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-inv-cancel-right.md) | 54 | `result-track:872371f48481991046af5209cac1c434f82a48331d13d7bd2ea0f8145d99846b` |
| 3 | `theorem` | [inv_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-mul-cancel-right-source-edition-2.md) | 58 | `result-track:959fb95d99647aef2c1f1df7fc66c5efb4a95b01306070b56efa4f58e75b7f4c` |
| 4 | `theorem` | [mul_right_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-right-inj.md) | 62 | `result-track:0741fba746e102357a6d355a1dd52e6507e97daf6e32ecf9bf007e9d598cf490` |
| 5 | `theorem` | [mul_left_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-left-inj.md) | 67 | `result-track:af4791c0ca4ed7e5a4e9a6d311d785e25c7d91aee7690a7d9833bbfbb3f92120` |
| 6 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-mul-inv-iff-mul-eq-source-edition-2.md) | 72 | `result-track:7353510d9acdc7f96eb8605338a1e8769c0a16302b095ae9d9674cd59ecde9d4` |
| 7 | `theorem` | [eq_inv_mul_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-inv-mul-iff-mul-eq.md) | 76 | `result-track:3b3ac0464c087e6b83ab92bbb515a3f7bf92a7ffd3c6988840211db45b8c39ef` |
| 8 | `theorem` | [mul_inv_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-inv-eq-iff-eq-mul.md) | 80 | `result-track:34a8d7003ea0f0808dfaa414320a6fe31008c247895c27c49c62bb6ce1f774f3` |
| 9 | `theorem` | [inv_eq_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-eq-of-mul-eq-one-left.md) | 84 | `result-track:244fd61ba3e294d947134b63036129f7163ddcf5154a292bf2843247de61037e` |
| 10 | `theorem` | [inv_eq_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-eq-of-mul-eq-one-right.md) | 90 | `result-track:d0bc6eadea62774fc4cf9b64aebbc808d38ab92989b5306946f77a0465f76d71` |
| 11 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-inv-of-mul-eq-one-left.md) | 96 | `result-track:5555236c6a621ffb97cabf90c8bc9a482ac4ec5ad2e7b7d89f59d52afa6a0f42` |
| 12 | `theorem` | [eq_inv_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-inv-of-mul-eq-one-right.md) | 100 | `result-track:b3281cf4a9528b06d0c14e7af97c73aa5874ea51ea7cb05c720df3feee9db4ad` |
| 13 | `theorem` | [mul_inv_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-inv-eq-one.md) | 104 | `result-track:596817cc1d9de21f7bf8e9869a0ce4f20e64b2b96a209ee2f207acfba887107f` |
| 14 | `theorem` | [inv_mul_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-mul-eq-one.md) | 108 | `result-track:1c82b8de64d0cc257a014596481fed795396128b51ae86f0bb63689707ad6d28` |
| 15 | `theorem` | [mul_eq_one_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-eq-one-iff-eq-inv-source-edition-2.md) | 112 | `result-track:b53020a66c4bc072d6b66f3cdb9644ee3d81dede24dd7a50a9b94ee6d0704a14` |
| 16 | `theorem` | [mul_eq_one_iff_inv_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-eq-one-iff-inv-eq-source-edition-2.md) | 115 | `result-track:82ff2c190631acc27834390f367c3de89aee529850f0f8b54f0115ecd344a4f4` |
| 17 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-unique.md) | 118 | `result-track:896d2a70d986ce7697e4e0a4a24a55f1faae27c541a1e9ba4ccc2b13326ca51f` |
| 18 | `theorem` | [val_inv_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/val-inv-inj.md) | 122 | `result-track:fae89c9f62ab346b9e9fee8666af1c6f33bebc5f9eda40446fc43198d2662a2f` |
| 19 | `theorem` | [mul_inv_eq_mul_inv_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-inv-eq-mul-inv-iff-source-edition-2.md) | 132 | `result-track:419550c5e3ff8ee04d14eb32efc66143cb3cc161c339c00232abd541cb025b1b` |
| 20 | `theorem` | [inv_mul_eq_inv_mul_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-mul-eq-inv-mul-iff.md) | 136 | `result-track:451af86fda1a62cc74faef4a8a46a18449316e6c16ed39f67b5d6404ffd97434` |
| 21 | `theorem` | [divp_left_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/divp-left-inj.md) | 148 | `result-track:3751c22604f918edc46e8715e0947cc65e282219ff9b7dbc0c7a001fa2871707` |
| 22 | `theorem` | [divp_eq_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/divp-eq-iff-mul-eq.md) | 151 | `result-track:e3c88db7dc780c1a8ad3ed678d6c731e0677aeaafa0ef6452ca307c826eef477` |
| 23 | `theorem` | [eq_divp_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-divp-iff-mul-eq.md) | 154 | `result-track:ed8b1b0b7a91abb9d8ba42ea76dcf52ae5d0d7e5c3a2a8e21824c17a736b457e` |
| 24 | `theorem` | [divp_eq_one_iff_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/divp-eq-one-iff-eq.md) | 157 | `result-track:f8708cef12720064fdd1325e43040e923786052a705c89d780c80b04ba6d9196` |
| 25 | `theorem` | [inv_eq_one_divp'](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-eq-one-divp.md) | 160 | `result-track:a1c20487b017190078ed728e69446c68416ccf5c9f81801e243e4a3c3e1330bd` |
| 26 | `theorem` | [eq_one_of_mul_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-one-of-mul-right.md) | 170 | `result-track:2e9762390876ad9763123f0946c2ffbc5bafa04b0a14cfdb2a0afbe374c2d78b` |
| 27 | `theorem` | [eq_one_of_mul_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-one-of-mul-left.md) | 174 | `result-track:d56ef6e8f7b911eed370238e10674286e5dde2aa1d1da60a05e27928ae550fd1` |
| 28 | `theorem` | [mul_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-eq-one.md) | 178 | `result-track:86dc23a0454e599b74517613634aa9309c96164f0ba5c0a814f00168eedc0656` |
| 29 | `theorem` | [mul_ne_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-ne-one.md) | 184 | `result-track:348ef1fe3b4b6870f3c8096125cf67b2826ea03608bd45fd2bb83fcfad14ee52` |
| 30 | `theorem` | [divp_mul_eq_mul_divp](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/divp-mul-eq-mul-divp.md) | 204 | `result-track:e32894b81f2fac59f154db49e864673eb1ad943dabc56bf94c2125383c12e090` |
| 31 | `theorem` | [divp_eq_divp_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/divp-eq-divp-iff.md) | 207 | `result-track:20ece923f3ac6dab185f0b3e112c27b8a731359d3056be5e134969c50b042901` |
| 32 | `theorem` | [divp_mul_divp](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/divp-mul-divp.md) | 210 | `result-track:2575b58057f8dcb2e0d91525d79d6cc1f4205f4374156a419002615711e212f4` |
| 33 | `theorem` | [isUnit_of_subsingleton](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/isunit-of-subsingleton.md) | 225 | `result-track:c19a97b7e6e3d6b12daa490d19586062a01bedc8408a3a30111678a84ce4dadd` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/instance-source-edition-2.md) | 229 | `declaration-track:a9e0e6b5ba372f7e0277fead3db1d93728b0761ffbfc05d65c3207b0874fdc77` |
| 35 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/instance.md) | 234 | `declaration-track:6a6057c16145c970001a6f278c1eadb807d57fd34c20792f72f15fe1af770706` |
| 36 | `theorem` | [mul_left_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-left-inj-source-edition-2.md) | 244 | `result-track:b1864e359e606ca6d8457e4f71a2980a5d7496d0bc6d6f0e5e25b0fddfd31c9d` |
| 37 | `theorem` | [mul_right_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-right-inj-source-edition-2.md) | 249 | `result-track:c5c1cd3eb29f86d3731136b3ba4c8ab90f3dd923873ec51cb467f68e4fe46d89` |
| 38 | `theorem` | [mul_left_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-left-cancel.md) | 254 | `result-track:6a6bbf5785b1acd2b7da3364430bd661446a0e549aa2ac15ef06e1382d11a09e` |
| 39 | `theorem` | [mul_right_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-right-cancel.md) | 258 | `result-track:773de32ff22ac80612c0656c079ee545057736d8eb7f3fef01fa3e277be4f9e9` |
| 40 | `theorem` | [mul_eq_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-eq-right.md) | 262 | `result-track:7085aaec82c59652cdd345b3027e6cf7fb4783d3032725a7a90a62873653ab73` |
| 41 | `theorem` | [mul_eq_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-eq-left.md) | 267 | `result-track:d6e5077ca5e5f3172e96297089d082a60e88157449008b8a7396cbff776a421a` |
| 42 | `theorem` | [mul_right_injective](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-right-injective.md) | 272 | `result-track:3b3ad2b347b66b09b0a8bd00d81a8fdc213864b3f778a423c4963e8412100626` |
| 43 | `theorem` | [mul_left_injective](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-left-injective.md) | 276 | `result-track:235611c9b9a397fc94edf8a95bf4123c03f71071ebcd913c647407ded9e387f4` |
| 44 | `theorem` | [isUnit_iff_mulLeft_bijective](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/isunit-iff-mulleft-bijective.md) | 280 | `result-track:a056957794c9d041c1c864898b75853582335048bb968956651dc27fa14adf2b` |
| 45 | `theorem` | [isUnit_iff_mulRight_bijective](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/isunit-iff-mulright-bijective.md) | 287 | `result-track:c9637cc20b02b092ced4e12b095eb99e3275e9e8d80ddff6a4a6f3296aae84c8` |
| 46 | `lemma` | [mul_inv_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-inv-cancel-right-source-edition-2.md) | 299 | `result-track:af5173244fe52365f1e7bd498bbdfb83c4b75bcd50c5d52a8b85b24da672ba33` |
| 47 | `lemma` | [inv_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-mul-cancel-right.md) | 303 | `result-track:3d06c1ba99d8e2d221d06792bd3a93bf254e3d9685f63d822c340d5b7e78b576` |
| 48 | `lemma` | [eq_mul_inv_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-mul-inv-iff-mul-eq.md) | 307 | `result-track:24e110feb0ad43babb7d3dbfc1e2eed31c708c5918088d5cbb68398361d2d368` |
| 49 | `lemma` | [eq_inv_mul_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-inv-mul-iff-mul-eq-source-edition-2.md) | 311 | `result-track:53c103f71880dbfc74b1f972707e8c815901295bdec70630cfea6c57e47189d3` |
| 50 | `lemma` | [inv_mul_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-mul-eq-iff-eq-mul.md) | 315 | `result-track:8a0ffad582d87dfdef3d8f0c5c3d77d48f3470debed81f406011521345177a04` |
| 51 | `lemma` | [mul_inv_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-inv-eq-iff-eq-mul-source-edition-2.md) | 319 | `result-track:6256c5da4faad91ca2938c9bbcdbf8cf3254ce314eb7e9d67b384c593e6c0c4f` |
| 52 | `lemma` | [mul_inv_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-inv-eq-one-source-edition-2.md) | 323 | `result-track:9d47954d984afa166ee1321cc22482a2d0a6aaf76bf5b37dc8e0ac1dad13afe6` |
| 53 | `lemma` | [inv_mul_eq_one](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-mul-eq-one-source-edition-2.md) | 327 | `result-track:abfcab569f142ef54307c6ae9c5feb3ad13bb21d76b3bbe0f4eb9792d18024bd` |
| 54 | `lemma` | [mul_eq_one_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-eq-one-iff-eq-inv.md) | 331 | `result-track:3f30d08ae5d6a64bfeba8ad2dd09d24728f79e5e64ebedc3dd53d75c14bba466` |
| 55 | `lemma` | [mul_eq_one_iff_inv_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-eq-one-iff-inv-eq.md) | 335 | `result-track:2c789923c7bcd1d9cbcc2036b22210eb054b64ee0a506e85bb8cd43390125c61` |
| 56 | `lemma` | [div_mul_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-mul-cancel.md) | 339 | `result-track:bc2baad5e449f6034d222a2a1b23e0168cf22c86bc10b04aacffbadc1485afb2` |
| 57 | `lemma` | [mul_div_cancel_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-div-cancel-right.md) | 343 | `result-track:12d960e3bbc8539f003f3fa5d9aca895c7cf34af7df2f5f8047c0e478de95708` |
| 58 | `lemma` | [mul_one_div_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-one-div-cancel.md) | 347 | `result-track:bcacbab174d5174179828ea017c4f13362088afa63e9a7b570ee876bc687ca9b` |
| 59 | `lemma` | [one_div_mul_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/one-div-mul-cancel.md) | 350 | `result-track:df685d8051cfe11be88cc1e3a8ed05abd588ec24de70c65c653280315ca55744` |
| 60 | `lemma` | [div_left_inj](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-left-inj.md) | 353 | `result-track:d727dbc0d9172cf8675e4f48a35c772f7f366c1d603f8fae8a5bef6474849d16` |
| 61 | `lemma` | [div_eq_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-eq-iff.md) | 358 | `result-track:09727907a3606004af278f53df536e02a82e1a38f49f27bec8d51be1525060ad` |
| 62 | `lemma` | [eq_div_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-div-iff.md) | 362 | `result-track:6086de5e9509109f84df54279ac2e01b3c488fd785a6b321f870281ea233a6ac` |
| 63 | `lemma` | [div_eq_of_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-eq-of-eq-mul.md) | 366 | `result-track:f4cabb16d703360458b2f4a8b01bca333c1b20682d1534cb25faedd22b817a45` |
| 64 | `lemma` | [eq_div_of_mul_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/eq-div-of-mul-eq.md) | 370 | `result-track:3154ed72f37743d70671000bbd65e1c9ff789f00949bb18602a5ff6bb4993cbd` |
| 65 | `lemma` | [div_eq_one_iff_eq](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-eq-one-iff-eq.md) | 374 | `result-track:60f6dd0389b4606075fb5bd0c801924d21fda4ba25afee66da8a69ad8e16376c` |
| 66 | `lemma` | [div_mul_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-mul-left.md) | 378 | `result-track:7a105be0eaa4b0b702b6b974dea48574b10cecbd5ac7ccff9ac1038bbae17bde` |
| 67 | `lemma` | [mul_mul_div](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-mul-div.md) | 382 | `result-track:389a6acfd8e614290b40e8a8a95bc9440244db2a18d5f745fde02dd0e9c9e686` |
| 68 | `lemma` | [div_mul_right](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-mul-right.md) | 390 | `result-track:79f77f2c967a0ca86733313a1c1a5a7d5a0f23c60dbd064d51089026e7ed6d03` |
| 69 | `lemma` | [mul_div_cancel_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-div-cancel-left.md) | 394 | `result-track:b0810d847889e8e0da9ee6f74b593ee5e33897f1c935f721fe21c2c9dca2d2b6` |
| 70 | `lemma` | [mul_div_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-div-cancel.md) | 398 | `result-track:f78889961271f90720421974dd6cf010c111c264f23937b43de2710baca5b29b` |
| 71 | `lemma` | [mul_eq_mul_of_div_eq_div](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-eq-mul-of-div-eq-div.md) | 402 | `result-track:ad4a310b56c6a5444db3f8bbfe840b39864f0a3dae466451d6408ea940bbe12a` |
| 72 | `lemma` | [div_eq_div_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-eq-div-iff.md) | 407 | `result-track:5a55b17ec94acdce4d2847aa85e0eec317922ce44d258de56c31fa03862cfb18` |
| 73 | `lemma` | [mul_inv_eq_mul_inv_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/mul-inv-eq-mul-inv-iff.md) | 413 | `result-track:232d998cb3cf8b8b81949211559d2a32d695579688d57c3fd631724b5c6534a2` |
| 74 | `lemma` | [inv_mul_eq_inv_mul_iff](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/inv-mul-eq-inv-mul-iff-source-edition-2.md) | 418 | `result-track:5bdb08aea819f3d37574338b3a805d86233c3caff4d594bc3b1782443db1ea77` |
| 75 | `lemma` | [div_div_cancel](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-div-cancel.md) | 423 | `result-track:503e29a35bcafc68e0031c644db20b2072aac137989016caffc535cec9210771` |
| 76 | `lemma` | [div_div_cancel_left](../../../../GroupTheoryAndGeneralizations/GroupUnitsBasicPublic.lean/declarations/div-div-cancel-left.md) | 427 | `result-track:511d0dd8135b3863c6d4942363c8d47b682b759b442325610575e4563d5202e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8aadfacc6978b670d58951019775f6afa888b3fe4799bd6e4ec5865f57169bf2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant6c230b50a819ce94ec59e685a7a8365190fa629ecc0fb53072fa733e5b2e0f4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

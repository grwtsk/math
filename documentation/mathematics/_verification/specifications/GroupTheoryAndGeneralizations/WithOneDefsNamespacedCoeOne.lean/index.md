# Verification target: With One Defs Namespaced Coe One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06337bba5087b716585d0d60823a10c70aa655b1",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06337bba5087b716585d0d60823a10c70aa655b1`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.WithBot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WithOne](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/withone.md) | 45 | `declaration-track:93d6d130fe221f82bf8fa27656c0d934131eba8b76c3d2b2c79dcb0e3b43630a` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/instance-source-edition-3.md) | 52 | `declaration-track:98a89077e59b636957a5825baf62bf290da5ce9226cf6f022427f1173eb1fae0` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:87f09b75264b3fc954615bc66987630d280e8c2aa81e482d74cff22b9c6a364e` |
| 4 | `instance` | [monad](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/monad.md) | 66 | `declaration-track:9c6e078f0fbc9f6896a3802101eb7c0d20eb7773d300530bc5b0846a3eef95cc` |
| 5 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/one.md) | 70 | `declaration-track:67eee958c5287a7fed05afec0ff1bf0bae204dd6fc732e7a99c9709a40b8d989` |
| 6 | `instance` | [mul](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/mul.md) | 76 | `declaration-track:102b604b522ff5142bad075b74d35c22cc86b2d55058b0faa776b1b467b0a684` |
| 7 | `instance` | [inv](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/inv-source-edition-2.md) | 82 | `declaration-track:feddffdb22b1beaa93350cc377365fa5ceb4a321a5b6d610f3911b70f7b38832` |
| 8 | `instance` | [involutiveInv](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/involutiveinv.md) | 88 | `declaration-track:af19c02db1a8b6a08d70b944f96a20714e7a0c9764dfbda1bd84aee1f04e5f79` |
| 9 | `instance` | [invOneClass](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/invoneclass-source-edition-2.md) | 94 | `declaration-track:d91513815d0f015d6c22c75fe25d5db3052a379eb53293a90283c9b93e2c6562` |
| 10 | `instance` | [inhabited](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/inhabited.md) | 98 | `declaration-track:5a938489f555f38a99a36bf61912408e853a13bf6e559fa8d1c35a40c43d05a2` |
| 11 | `instance` | [nontrivial](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/nontrivial.md) | 102 | `declaration-track:e6943a402ceec0d849f73d389d9cd3abc9d60ee3d05eb423d201734b22081fe3` |
| 12 | `def` | [coe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe.md) | 110 | `declaration-track:a4b89cb0e1241840571d5c70d4ef031d9464270de5f1e65b18011f70cfc2af34` |
| 13 | `instance` | [coeTC](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coetc.md) | 114 | `declaration-track:5888e79e88df8acf15088f80c33e528e36de692ec615db93a0f65e1dc27c4d52` |
| 14 | `def` | [recOneCoe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/reconecoe.md) | 120 | `declaration-track:96a04916e7718130cb863cb725a3301836976a18ae4c127ca6689f9bdcbf3134` |
| 15 | `def` | [unone](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/unone.md) | 136 | `declaration-track:80d5e9690bb609e82321ffa5d393b575fd847a649e4bc6975512fd53ac713348` |
| 16 | `theorem` | [unone_coe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/unone-coe.md) | 142 | `result-track:a1efc2ae24e4a09fe9e43f02396d94ecc0a871300ec8500049c287ce31fc5c13` |
| 17 | `theorem` | [coe_unone](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-unone.md) | 148 | `result-track:64fda93085eafa810e135ab0addb9835a5b220cf0c8dbc7616b0657feae159e3` |
| 18 | `theorem` | [coe_ne_one](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-ne-one.md) | 159 | `result-track:4519debeb9cfe96f3feb69ea310666fff1895e70d3a7e9bc77db52d6773a5bce` |
| 19 | `theorem` | [one_ne_coe](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/one-ne-coe.md) | 165 | `result-track:ca3bd269ebbce6d89b1a899946d2b33661c38ccce3ed41bfa64dacfb562b1f92` |
| 20 | `theorem` | [ne_one_iff_exists](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/ne-one-iff-exists.md) | 171 | `result-track:64d6d51bc0516d471b3c9b8fc8eacc39b4c8284326151f4fb0262e9ad3fa4998` |
| 21 | `instance` | [canLift](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/canlift.md) | 177 | `declaration-track:a4ea2a69e3bf5380c61f0de25c47c61abee9ac46018a66e3a96cf8c392ca8e92` |
| 22 | `theorem` | [coe_inj](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-inj.md) | 183 | `result-track:49d1cce39e041cf7934bef2b45bc7ac51572fba2d6e4532372cbe00ba45eae9c` |
| 23 | `theorem` | [cases_on](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/cases-on.md) | 189 | `result-track:25ffde33178b731cf5b136cfb78d0eb5be267ae570a3fc81aeff1a9b510387c3` |
| 24 | `instance` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/muloneclass.md) | 198 | `declaration-track:ff1e3fee19f843f0fc3b42f387407cfc8e2e83d3c1263bcb17d47525597ef85e` |
| 25 | `instance` | [monoid](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/monoid.md) | 205 | `declaration-track:ae47f9f75a6d71199cde0c18d47d31ebc6d910d721fbb1511a5eaf3795aea24d` |
| 26 | `instance` | [commMonoid](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/commmonoid.md) | 209 | `declaration-track:9d6c3e7a071a35a511b1869db667e89d421169b2016c05ee0c4a2089695c1157` |
| 27 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-mul.md) | 213 | `result-track:3ad66a44b9e6e0664899404c7030431fc723c10f9f7c5a4720220410c715814f` |
| 28 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-inv.md) | 219 | `result-track:475daa19582433667b029e59528d15f89ee0e6a8334002faa72722b62d056e31` |
| 29 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/one-source-edition-2.md) | 228 | `declaration-track:6ed5c686e7978b5d11626d297104b58eea0f1947ed01c1dd3da2aa955155ea05` |
| 30 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-one.md) | 232 | `result-track:cbf155d960edbe246791e50ee48331178d5a98afa832154fac6a5afe2ab5fe30` |
| 31 | `instance` | [mulZeroClass](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/mulzeroclass.md) | 236 | `declaration-track:9fbb2ebe2a822b78c02177f1476beb29102a6e4272c32e1bbdc78b020fcd3a72` |
| 32 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-mul-source-edition-2.md) | 243 | `result-track:e13e2d879b6f6b2feb094206ebd105436f9cb1afc4b1f00421fe2fcbf38ebbcc` |
| 33 | `instance` | [noZeroDivisors](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/nozerodivisors.md) | 247 | `declaration-track:e92919865fceb71e52fc9025c97e1a96f75e2efb4fa89e5a3f8bb1d9b74b65a3` |
| 34 | `instance` | [semigroupWithZero](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/semigroupwithzero.md) | 250 | `declaration-track:15b5a73ed5351169114a19a39657ab5cf632ccf5a5462010db9e0589942bb5f9` |
| 35 | `instance` | [commSemigroup](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/commsemigroup.md) | 254 | `declaration-track:79e4ba9b2b045320fdc351aa91837a3e62d90b53136093db3bf0409461bff1f0` |
| 36 | `instance` | [mulZeroOneClass](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/mulzerooneclass.md) | 258 | `declaration-track:e8545bc8da10d17e648eee940a6d4cd7729c9a0d9fe414c56abba1b0ebae5f62` |
| 37 | `instance` | [pow](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/pow.md) | 263 | `declaration-track:c62c506d6e39979c811784349b2a899c77336fb6ef761a929806bfc4703cc311` |
| 38 | `theorem` | [coe_pow](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-pow.md) | 271 | `result-track:00218a897f85395395043ec9a3c9d1bcdee3e75e80ca4689ee6fbcbc17a7d2cb` |
| 39 | `instance` | [monoidWithZero](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/monoidwithzero.md) | 276 | `declaration-track:c4966d158ed3cb38d5d41d8b37d8f34f1136acc82fce477a71df55cb3c4da652` |
| 40 | `instance` | [commMonoidWithZero](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/commmonoidwithzero.md) | 288 | `declaration-track:1875d1ad4c17dfe788d47938bf4c8164873635d1e85c29f82652c4f1a1d19902` |
| 41 | `instance` | [inv](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/inv.md) | 293 | `declaration-track:19f11028544540e674986236907cef5d6f14c9b0f20a9a34a84310a2d5a759ee` |
| 42 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-inv-source-edition-2.md) | 297 | `result-track:cff328d27851b69abb5a412287af6cb8f88cc08d1c35595da8bbe93049f202ce` |
| 43 | `theorem` | [inv_zero](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/inv-zero.md) | 302 | `result-track:1dbb83a080b75f8b9e3f608e0520518e0d5a3881323c4fd6d3e16e591c53b516` |
| 44 | `instance` | [involutiveInv](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/involutiveinv-source-edition-2.md) | 306 | `declaration-track:b2d285ad56a1f49d0c355d98185e12c5c141463ad2c5040e9ee264e8b7d01bad` |
| 45 | `instance` | [invOneClass](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/invoneclass.md) | 311 | `declaration-track:49f13bcf578553b82b20c7068d79861d0081d45bf07eb9f6e8c1bad6230d9aba` |
| 46 | `instance` | [div](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/div.md) | 314 | `declaration-track:1f4b113849e5312afb42ce1ce6597502d9aaa1be76972c49e1c46ede7848767c` |
| 47 | `theorem` | [coe_div](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-div.md) | 318 | `result-track:af863b91d3484e61c0256dc8d7e5cd2acebd768120dc94e22b599198404d3335` |
| 48 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/instance.md) | 322 | `declaration-track:64101d335a829dd7919fd7aa881fa70ca5673dec6128303756218eaf5cb65e5e` |
| 49 | `theorem` | [coe_zpow](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/coe-zpow.md) | 331 | `result-track:b4e84987d7a4ba3f806f7d02f2e6457c83b7e049dca908776e4ebc9f9c4552b8` |
| 50 | `instance` | [divInvMonoid](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/divinvmonoid.md) | 335 | `declaration-track:e10f432e81272bfa4f5de83975f70ede05b07e928b0ada98dba1e9201718d718` |
| 51 | `instance` | [divInvOneMonoid](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/divinvonemonoid.md) | 356 | `declaration-track:dcfc8932b1d219ab2fc7c10f353f1684ebc0599f5f10ce6547e4b9926d41681b` |
| 52 | `instance` | [divisionMonoid](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/divisionmonoid.md) | 359 | `declaration-track:764bc13263324a08bcf52165a53129ed54f7470d056f835eeca6ec457eac2a76` |
| 53 | `instance` | [divisionCommMonoid](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/divisioncommmonoid.md) | 375 | `declaration-track:a57334a6bbef0a523389b49dfae77328eb9679a4702d14e04d43f2af9a232e0e` |
| 54 | `instance` | [groupWithZero](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/groupwithzero.md) | 383 | `declaration-track:1df1b8549eda20b5897c8d2cec914986b047377091201d54ea86c0ce8c14ae0a` |
| 55 | `instance` | [commGroupWithZero](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/commgroupwithzero.md) | 393 | `declaration-track:5c1b62106ab50817e91bda5ecd903e3bc72a137930d3f6d359c2636282295871` |
| 56 | `instance` | [addMonoidWithOne](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/addmonoidwithone.md) | 396 | `declaration-track:f0ba247921f8188309257863e5a42ff99677823b47811859a76736731cb7869a` |
| 57 | `instance` | [semiring](../../../../GroupTheoryAndGeneralizations/WithOneDefsNamespacedCoeOne.lean/declarations/semiring.md) | 408 | `declaration-track:7aee37c59cd1c9bc1085053f5351e3a251280ed8d65872809730269b33e95461` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69ed814d3eb4f9d22b44ee05f1b1c115ba9ceef0bdda6ba04054af65b5a33c91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

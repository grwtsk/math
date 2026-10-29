# Verification target: EReal Inv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf78b8ab2e2b42c8e0d186bb189c53ef1cd1ebc0",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf78b8ab2e2b42c8e0d186bb189c53ef1cd1ebc0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.EReal.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sign` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs.md) | 38 | `declaration-track:d110f49b03224c3395002c58d8e6e8eb88138f5ab58193528891c910c72ba112` |
| 2 | `theorem` | [abs_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-top.md) | 43 | `result-track:12ea519b8d8c693262d3e62668a798ee7aa9227352589d6821c94b28dcfb98b1` |
| 3 | `theorem` | [abs_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-bot.md) | 45 | `result-track:982050bacfbeed4b1560e954ab5f68e565ad300a8288e3dd97a1d7175399124a` |
| 4 | `theorem` | [abs_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-def.md) | 47 | `result-track:c869f1821a432b77402b1de7a2202a9e23880ea4da5cbd182f8f535e80284e26` |
| 5 | `theorem` | [abs_coe_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-coe-lt-top.md) | 49 | `result-track:7640c1b4fa8d08546928898f75c905507301bee8319d3c30f3f708e60e330a34` |
| 6 | `theorem` | [abs_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-eq-zero-iff.md) | 53 | `result-track:3e86c5e6da2f2f86c7f912b6523c95ba50b75f5fea3cabefbccb99156b35e463` |
| 7 | `theorem` | [abs_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-zero.md) | 60 | `result-track:533cc9e9e428ee12acc5aab536054515dad8dc93346b16776c543f7ac24696c3` |
| 8 | `theorem` | [coe_abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/coe-abs.md) | 63 | `result-track:e9c30bfb28ea3bec08d5228c2188b76775ecff8dbe0cef06a743312200df80da` |
| 9 | `theorem` | [abs_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-neg.md) | 67 | `result-track:cf3da1bca1b2dc1eae42ed075c17e56bd7ea5470d46156b2f74e1433da85c12d` |
| 10 | `theorem` | [abs_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-mul.md) | 73 | `result-track:033f7bd006d6543c35a733c1c567d347550ef7414db24862f20798fee496d551` |
| 11 | `theorem` | [sign_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-top.md) | 89 | `result-track:bf0425d0befc9e48f49786221f4acca58e75aaaa0f9ead2c80b4e884654c8d5b` |
| 12 | `theorem` | [sign_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-bot.md) | 91 | `result-track:fe4cb71b174d467de4b7b776330531c56bf70d4d243c1361a41f34f104858199` |
| 13 | `theorem` | [sign_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-coe.md) | 94 | `result-track:559ab6972b0bcca3eac6879fa7fef3c5bca9ffea18458bbeda7001ad8387ebc3` |
| 14 | `theorem` | [coe_coe_sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/coe-coe-sign.md) | 98 | `result-track:08c4f49dc0c5dd23c6603e6e9b3f80eef86e9668ce93e1139cad0dc07f06b302` |
| 15 | `theorem` | [sign_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-neg.md) | 100 | `result-track:f340b4ae85f56fc4fe318856c950f5fda16b9a2bca17eaa5e09a6d22faec562a` |
| 16 | `theorem` | [sign_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-mul.md) | 106 | `result-track:3b8e6f7285b40dc19b7dc7d86126a4c90042011c3a84a4fe3e0f1c15994bb9e6` |
| 17 | `theorem` | [sign_mul_abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-mul-abs.md) | 116 | `result-track:78bdc8604f55d6cee40029d60509707c9b919c1b97f5d1c8b675fcf0a65b6e22` |
| 18 | `theorem` | [abs_mul_sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/abs-mul-sign.md) | 121 | `result-track:c57e9851cac1aab75cdc2f41d610b33d0ad375030ca9e2d9bb1f97ea871c7e33` |
| 19 | `theorem` | [sign_eq_and_abs_eq_iff_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-eq-and-abs-eq-iff-eq.md) | 124 | `result-track:97d116488bc3d31c29e60f7394a8dc7808acb1920bb1bee5ffa53b3f8e3e02ca` |
| 20 | `theorem` | [le_iff_sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/le-iff-sign.md) | 132 | `result-track:dc89803863ab02953c2967c4ebdb408926ec1620d9072aa4ec2618d067ab5b10` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/instance-source-edition-8.md) | 149 | `declaration-track:de11eecd62848e95b0d54c97695f9f1178e9cd055b4ee38fc20fd0e4713e0d1c` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/instance-source-edition-2.md) | 156 | `declaration-track:7c78c587dcf74f9f368f941988adc6ddc3067bbe3378e7a2cab0649e6daeee1b` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/instance-source-edition-4.md) | 162 | `declaration-track:8b6985ad20c9b657c948ed90c4d1242520e984e8523d55de0d571273292aba65` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/instance-source-edition-5.md) | 164 | `declaration-track:95aab39bec5a6c8574bd75e854f153cae284f8050d9942484ff7d3715e2903e1` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/instance-source-edition-6.md) | 166 | `declaration-track:a1d441b3abb571ba24b8991b1bdb6e66698b1431a809e53e5accd049f04fd64a` |
| 26 | `lemma` | [mul_le_mul_of_nonpos_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/mul-le-mul-of-nonpos-right.md) | 168 | `result-track:8010edfd7751df09ea05e833f3e1a959b8b817a8a563607ed2b204dc8619a091` |
| 27 | `theorem` | [coe_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/coe-pow.md) | 174 | `result-track:2f390b649a1a17b88d75422e3e0cf7d56ff8049747bf81bd7379aa094eca72b5` |
| 28 | `theorem` | [coe_ennreal_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/coe-ennreal-pow.md) | 178 | `result-track:1a2fa0d5e6491e44c14dc971c22128ed2441f6280d80d26c0ea77d5da9eac531` |
| 29 | `lemma` | [exists_nat_ge_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/exists-nat-ge-mul.md) | 181 | `result-track:fb0f2bf66fe4f7cf957c9ca06686f20f7b46b39974376d6f8f22fd8e8d6bba0d` |
| 30 | `lemma` | [min_neg_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/min-neg-neg.md) | 193 | `result-track:5dfae45fa5d46aff8b9f8a6e34f63acc3da40e7e97c30cfb9a41b13f05f81c1e` |
| 31 | `lemma` | [max_neg_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/max-neg-neg.md) | 196 | `result-track:3cd206df1ab862657c278820c978ad31c815d201b51bcdfdc263f18a80cab4ae` |
| 32 | `def` | [inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv.md) | 203 | `declaration-track:9d1142f344b47ae5c48068f3f1346af6e8f15a7c1d360f0deb391191062e04eb` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/instance.md) | 208 | `declaration-track:6b548193e6f84b7aea3a495183a29a28f80d72f06fcb6665d8a828ecf1ba09a3` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/instance-source-edition-7.md) | 210 | `declaration-track:d5c06e68db7cc5a9c4e1af4647db74321bb3040af34bca4d80f1a5d888eae892` |
| 35 | `lemma` | [inv_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-bot.md) | 213 | `result-track:4a8e87a6eab57998f9fbd80dbabf11fd28ded94cd7aaf90c192aebc584adf781` |
| 36 | `lemma` | [inv_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-top.md) | 216 | `result-track:79128a3939f12f7c184a49e594ef01088120b8d0d499ec45e75e894b2ea677a5` |
| 37 | `lemma` | [coe_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/coe-inv.md) | 218 | `result-track:a5d6d945308bd885ce646d3981b0f4d1e0f9fa1b7372e068ad49251bcb0b3e02` |
| 38 | `lemma` | [inv_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-zero.md) | 221 | `result-track:a2a9f3d30e796a407422de6241dc1986157a712076cb5766aef33e75d53f01d2` |
| 39 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/instance-source-edition-3.md) | 225 | `declaration-track:86093d11acb4248efe9a525e171a6b2545875f70dadb613f45e78804e0bd0da6` |
| 40 | `lemma` | [inv_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-neg.md) | 228 | `result-track:bd2062e4af618d5acadfb81e3297073665d6f86e9155618ce7a6869850ce34d1` |
| 41 | `lemma` | [inv_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-inv.md) | 235 | `result-track:02a46e7708f6a54db76b07425a4b4270d263c18d0e99926a29f2391ea03e607d` |
| 42 | `lemma` | [mul_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/mul-inv.md) | 238 | `result-track:ae1ea8730b7dcf1457c2f2e9b6e94ac7d32624ac8c52cd4f76e5ab4214c3e343` |
| 43 | `lemma` | [sign_mul_inv_abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-mul-inv-abs.md) | 250 | `result-track:5bb13286559d4c9b738f82182bc54d018027a1b904994f9c5e1f5bf3ee0a800f` |
| 44 | `lemma` | [sign_mul_inv_abs'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/sign-mul-inv-abs-source-edition-2.md) | 263 | `result-track:e1f0184bcf3e4a1573a46a94d954fec3bc14664a5e0293cb984817944f134e28` |
| 45 | `lemma` | [bot_lt_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/bot-lt-inv.md) | 281 | `result-track:f08daa413720e262aab77df339281638fe48a96b1f3592abb3a3357d676e9982` |
| 46 | `lemma` | [inv_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-lt-top.md) | 287 | `result-track:2636257349f459a7143e388f5e191f8b6349cb8927005607b8c35af788cd53f3` |
| 47 | `lemma` | [inv_nonneg_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-nonneg-of-nonneg.md) | 293 | `result-track:f7c842a56615cdf3080b22364b8175381f515d8c77ef18135eb364345276b054` |
| 48 | `lemma` | [inv_nonpos_of_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-nonpos-of-nonpos.md) | 298 | `result-track:0e486d9317477692c8b4f6e6c02336fbfb99a4ea538762ef0523c50c1ce797fd` |
| 49 | `lemma` | [inv_pos_of_pos_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-pos-of-pos-ne-top.md) | 303 | `result-track:1919ab6a6a4417239ff7b0be2fdc962e85460953ce8aff9155159833d98d93a2` |
| 50 | `lemma` | [inv_neg_of_neg_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-neg-of-neg-ne-bot.md) | 307 | `result-track:be2902f4ffac96499e3a88c9971e30362fb7b3eac51ed2949e084d0bd50f543c` |
| 51 | `lemma` | [inv_strictAntiOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/inv-strictantion.md) | 311 | `result-track:7e2b3b5e63e812f5742834bc9e0f1e047fe0c0d1ed25a45910e5ff51a79dff8e` |
| 52 | `lemma` | [div_eq_inv_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-eq-inv-mul.md) | 325 | `result-track:8f4c7c4052f7129c0a8c5228034c2c9649110ade55338d0ca1fbc9bf9145b52e` |
| 53 | `lemma` | [coe_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/coe-div.md) | 327 | `result-track:5214d2c94807701dee838bfe1aa3356d3258db9ffe44ac000f3ca0ab52387556` |
| 54 | `theorem` | [natCast_div_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/natcast-div-le.md) | 329 | `result-track:999c698fc500fac1993506a258ee4985713e6644457f00dffde57c83ba82d9e5` |
| 55 | `lemma` | [div_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-bot.md) | 336 | `result-track:b625ae70d66c8181cc29e8fcd711f8545bbd71372da8b1b447710ef9526d9ab0` |
| 56 | `lemma` | [div_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-top.md) | 339 | `result-track:46638b59f577c4560172f43b45e665882a5b30bb16bdc2ccbba6e7a865415855` |
| 57 | `lemma` | [div_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-zero.md) | 342 | `result-track:d8ce1934f21fe1669b8a85679b02808d036757ad28d46693016124a594f865f1` |
| 58 | `lemma` | [zero_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/zero-div.md) | 347 | `result-track:5c82f8dc248faf3ddfeb9c72273cd2aa5a08adfd51394197ab9b244e0839c2f9` |
| 59 | `lemma` | [top_div_of_pos_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/top-div-of-pos-ne-top.md) | 349 | `result-track:f280b1dba41bde428caeada175162c49eaecaee30b09490304a3b35108034912` |
| 60 | `lemma` | [top_div_of_neg_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/top-div-of-neg-ne-bot.md) | 352 | `result-track:0bd6ee28d8da60fd7aefd2999cc41efebaeb550677fc3c218dc763a689b0efa6` |
| 61 | `lemma` | [bot_div_of_pos_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/bot-div-of-pos-ne-top.md) | 355 | `result-track:92f3192bba4b0cd8e8b9c56a55e15cdea1d58c25f01007bfb4b0696473334be7` |
| 62 | `lemma` | [bot_div_of_neg_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/bot-div-of-neg-ne-bot.md) | 358 | `result-track:907b196f99eb1cca5f7d47c9dd2c64adc6c325a5e6d17c6cf569b20877e53aae` |
| 63 | `lemma` | [div_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-self.md) | 363 | `result-track:98a10b346e60d1c184ae8f150d761eca4f0da471824c5cc83b683a14721897b8` |
| 64 | `lemma` | [mul_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/mul-div.md) | 367 | `result-track:3afd35a155ea6f637acf8e528801b57539291b8821098f826aa9a2439b176168` |
| 65 | `lemma` | [mul_div_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/mul-div-right.md) | 371 | `result-track:4cd6b31f513bba4b5d8ca6ef19eea18d301b973abb3d475e46d4df486c8ba65b` |
| 66 | `lemma` | [mul_div_left_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/mul-div-left-comm.md) | 374 | `result-track:db7a75ebe4b4565ef1de934a1ab18140c5d781b59853c765848a46c3ad245fad` |
| 67 | `lemma` | [div_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-div.md) | 377 | `result-track:cdcb1316244db3638a7793c9eeee918dbead5b6cadc8e87ded15afed1c5483c2` |
| 68 | `lemma` | [div_mul_div_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-mul-div-comm.md) | 381 | `result-track:ebe089124c407a188e7b3fafe722e2d163ab1f06fa4779a50407e3f738f482a5` |
| 69 | `lemma` | [div_mul_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-mul-cancel.md) | 386 | `result-track:9038b176a0b1757ac1e8e782bd0499dd9c4b2aead712c8d1f1b6f617c8eec9d8` |
| 70 | `lemma` | [mul_div_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/mul-div-cancel.md) | 389 | `result-track:cd3088633540ee472c9f4911f9f9b6c775cb4dd5834aa2416cb9f80dfe525cb4` |
| 71 | `lemma` | [mul_div_mul_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/mul-div-mul-cancel.md) | 392 | `result-track:152f7616588fb0c44a656b602e052f0351f7047a1ed7eed1beeacc718b00f4db` |
| 72 | `lemma` | [div_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-eq-iff.md) | 395 | `result-track:3ab63652345df779cd3d1bf275147c2ea76ada5496861416bbe8c262d01d2129` |
| 73 | `lemma` | [monotone_div_right_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/monotone-div-right-of-nonneg.md) | 402 | `result-track:4cc0bfa7ce39bcacbe99cc9b3f0eff6f7fd37dfef94f5fb691dc0b69d0ed5e3a` |
| 74 | `lemma` | [div_le_div_right_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-le-div-right-of-nonneg.md) | 406 | `result-track:eff14d91280f03f351bc2955cec8555610a2b2271047b6de429b6a196b56bbdb` |
| 75 | `lemma` | [strictMono_div_right_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/strictmono-div-right-of-pos.md) | 409 | `result-track:42036ddbf18193f9a8abdc9268a03aa9367f64c69da360a2b14a1ec9a89faa8b` |
| 76 | `lemma` | [div_lt_div_right_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-lt-div-right-of-pos.md) | 418 | `result-track:222675cec4170858e90cd559693213f097cd85b17736cf5db56e6907487d002d` |
| 77 | `lemma` | [antitone_div_right_of_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/antitone-div-right-of-nonpos.md) | 421 | `result-track:38eca86cf20adb755793a64b0fe906ced36e71d7a0c1523fa1cf031c22e44bdb` |
| 78 | `lemma` | [div_le_div_right_of_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-le-div-right-of-nonpos.md) | 429 | `result-track:9e3e23cb6c2650831df997d66758f39eaeb875c79a0d5748b0c3438622f8f922` |
| 79 | `lemma` | [strictAnti_div_right_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/strictanti-div-right-of-neg.md) | 432 | `result-track:9cfb9a3eadc60d5e988d004ee268c7031e58c8ad8a8c81ec5652ce8d35df8585` |
| 80 | `lemma` | [div_lt_div_right_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-lt-div-right-of-neg.md) | 441 | `result-track:a5340823a66089c3c2fc6bf9a4df6c8dcdc074a02338e8e8caa151b0af4ebd3e` |
| 81 | `lemma` | [le_div_iff_mul_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/le-div-iff-mul-le.md) | 444 | `result-track:6feeef3651ee3d8d91653c091239c6fec208d7f7259ce252a5e5dd366bead08e` |
| 82 | `lemma` | [div_le_iff_le_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-le-iff-le-mul.md) | 449 | `result-track:7673cee504397612b7ce11625a6cdeee63407a73220e6b3c4c441088b155f7c7` |
| 83 | `lemma` | [lt_div_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/lt-div-iff.md) | 454 | `result-track:0a5877b6dd0a9d1e7fe23fe290d145783177a866987f9b44ad600d92b8f17447` |
| 84 | `lemma` | [div_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-lt-iff.md) | 459 | `result-track:6ab059f4320ec48de2824d006a0b7d9b68c43c58995a886899f8d4e148ad3491` |
| 85 | `lemma` | [div_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-nonneg.md) | 464 | `result-track:0b2efeb90e714af4736a684a06f4adff087b8d03c1a11b34311459dae4142b61` |
| 86 | `lemma` | [div_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-pos.md) | 467 | `result-track:bf358d9dc6ba14da9b7ff0c924d4afacce8177b0d6b870d92f2672a5630e6064` |
| 87 | `lemma` | [div_nonpos_of_nonpos_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-nonpos-of-nonpos-of-nonneg.md) | 470 | `result-track:2f9b191d0d9826d0a92bbd513396a11cc6459c04832c570034cfa794ecfdccd8` |
| 88 | `lemma` | [div_nonpos_of_nonneg_of_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-nonpos-of-nonneg-of-nonpos.md) | 473 | `result-track:ad7fdedc09f2cd772e265ad36870f9e9410dbce7e1c0f0437e59dc4ea1d4f845` |
| 89 | `lemma` | [div_nonneg_of_nonpos_of_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-nonneg-of-nonpos-of-nonpos.md) | 476 | `result-track:41a81af7fba4c81438e8f19b443b5a1aabff3f658069569f1c705a30787fde89` |
| 90 | `lemma` | [exists_lt_mul_left_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/exists-lt-mul-left-of-nonneg.md) | 479 | `result-track:7f78331bfe1d45f78cf68a19f5e5e11e2f0d2e8d0e762b4b32158e2692698155` |
| 91 | `lemma` | [exists_lt_mul_right_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/exists-lt-mul-right-of-nonneg.md) | 493 | `result-track:fcf1867293dd8c3736619a3d88fe1a003efbb3e81a39efd57564fd9443ffa2e2` |
| 92 | `lemma` | [exists_mul_left_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/exists-mul-left-lt.md) | 499 | `result-track:637a0700c7c867da80f9bde42da647bbdd137c4b0c683893e745b749dc067724` |
| 93 | `lemma` | [exists_mul_right_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/exists-mul-right-lt.md) | 516 | `result-track:8b5851ea4708c57868570f3ef5998a58d8902442d30e06ee9162cc8b77db7528` |
| 94 | `lemma` | [le_mul_of_forall_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/le-mul-of-forall-lt.md) | 521 | `result-track:4351f633d2ea1fe60006e5af1f45821a7cf542e8c94c6ab28e5ef761e6c92728` |
| 95 | `lemma` | [mul_le_of_forall_lt_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/mul-le-of-forall-lt-of-nonneg.md) | 530 | `result-track:f3911f00162513f73700d8de8fdd98c68c5d9f3b84134500c9d59bae8a292494` |
| 96 | `lemma` | [div_right_distrib_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/div-right-distrib-of-nonneg.md) | 541 | `result-track:4736c9ec857ce14f92a71f821e455be1816c54092913f96232410582295f2783` |
| 97 | `lemma` | [add_div_of_nonneg_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/add-div-of-nonneg-right.md) | 545 | `result-track:364b9fa3fcf8e3edb63d359f8de23f542dfebe612f936ac7dd9e5e89ed0a15ba` |
| 98 | `def` | [evalERealInv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/evalerealinv.md) | 557 | `declaration-track:d20ccffbefb4af3ff092ddbcc19f00e07cf653d2dd8d336f4e9c9b05b14b53bc` |
| 99 | `def` | [evalERealDiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealInvNamespaced.lean/declarations/evalerealdiv.md) | 568 | `declaration-track:3dc7186ff10da72d4a2b8c72fceca3001e0034a43c05be172692a14f7a5ca6f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f784a9ff14e21b802a89f09d69180bdcdfdc4e5a4f1569e95383a292f8e785b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

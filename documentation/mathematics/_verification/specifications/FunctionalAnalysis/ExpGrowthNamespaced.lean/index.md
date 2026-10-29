# Verification target: Exp Growth Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd5cf53041c29e332b01bfc2b89c76c8556cadd1",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd5cf53041c29e332b01bfc2b89c76c8556cadd1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.LinearGrowth` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.ENNRealLogExp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expGrowthInf](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf.md) | 42 | `declaration-track:56937a0b46bfcad22907750e20d73c4f233769d45e6e599c014b2367523b8884` |
| 2 | `def` | [expGrowthSup](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup.md) | 45 | `declaration-track:beb215dd8015b72dabf103af95038959f0e127608f14b5602a7d10a8facd0551` |
| 3 | `lemma` | [expGrowthInf_def](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-def.md) | 47 | `result-track:9c81e344f02a48bee45b8b97eea9a2e522c6641ec799b6391f51af16dfecb148` |
| 4 | `lemma` | [expGrowthSup_def](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-def.md) | 51 | `result-track:4627a37e2e386f8b3b56b3ff24e2d218040ad8aa2fadca98f506379455f56cc5` |
| 5 | `lemma` | [expGrowthInf_congr](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-congr.md) | 61 | `result-track:3a55c48d943aa02722d0dd63135c856fb042aad32e24b0e0f4b0054e02dd2531` |
| 6 | `lemma` | [expGrowthSup_congr](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-congr.md) | 65 | `result-track:24db73526d70c55182a70bff8824272f170fc3eaf05685f764cbf821086aa8f5` |
| 7 | `lemma` | [expGrowthInf_eventually_monotone](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-eventually-monotone.md) | 69 | `result-track:d6d063e8f77b47d3caffeb99b27856e5aebb46a1fde19d0ed69cd9b006d0fa74` |
| 8 | `lemma` | [expGrowthInf_monotone](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-monotone.md) | 73 | `result-track:198f31f00ffb6cbc5d3a58d0c713412c6d1b9e631d541fa1d03d151e232df734` |
| 9 | `lemma` | [expGrowthSup_eventually_monotone](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-eventually-monotone.md) | 76 | `result-track:31dfacf6545a7b87c3841a34fe92b7764cd3fbacdaf948474f03bcb8b79c91d0` |
| 10 | `lemma` | [expGrowthSup_monotone](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-monotone.md) | 80 | `result-track:8c46bdde5f22682e8fc9e44e850775d70de5f5b727e08cca04dd40f04f4069f9` |
| 11 | `lemma` | [expGrowthInf_le_expGrowthSup](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-le-expgrowthsup.md) | 83 | `result-track:fdf679c04a6d8a460899a04b000d74b441d7c2f29b3edea04af9360a993f672f` |
| 12 | `lemma` | [expGrowthInf_le_expGrowthSup_of_frequently_le](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-le-expgrowthsup-of-frequently-le.md) | 85 | `result-track:1a899f85583c6f0cf838c3a14cfa11d7d7317b8de745d87c6ca8f23c28e2aab1` |
| 13 | `lemma` | [expGrowthInf_le_iff](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-le-iff.md) | 89 | `result-track:c2fd64087fc620510e0dccc855fddb519ec84fa4b3cd325c3ac3b9b0425e81ba` |
| 14 | `lemma` | [le_expGrowthInf_iff](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthinf-iff.md) | 96 | `result-track:2145489c7d1b9df2602a3e5b958cfa251ced605167bf07c90555b7131b8faebe` |
| 15 | `lemma` | [expGrowthSup_le_iff](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-le-iff.md) | 103 | `result-track:e1b3d2af7f2e33f97721eea9a853c6a5d85e27acf47e905d726dc0ec717f042d` |
| 16 | `lemma` | [le_expGrowthSup_iff](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthsup-iff.md) | 110 | `result-track:0fb1f6c6e3323b9c30fec06c3463b9b348d7089aa4f007dbb158730ad5f1bfad` |
| 17 | `lemma` | [frequently_le_exp](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/frequently-le-exp.md) | 118 | `result-track:aed6e61c85c5451ec8e8b44d3e23b06dfb4405bd7b4567dab0f0ed82839ecd7a` |
| 18 | `lemma` | [eventually_exp_le](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/eventually-exp-le.md) | 123 | `result-track:623b4f3df494f7734b37c81ea86e813dcb197b4fcfb206db18adbbaaf3422c5e` |
| 19 | `lemma` | [eventually_le_exp](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/eventually-le-exp.md) | 128 | `result-track:cc92e815a932280a2f42287955deae7f524cc8eac44946ac028b1fbd6481cde2` |
| 20 | `lemma` | [frequently_exp_le](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/frequently-exp-le.md) | 133 | `result-track:2653d86192a937ad9aa1b7cb3f910faf1f5afa4b87d33112654a5850aef54480` |
| 21 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-le.md) | 137 | `result-track:68ed397bde525ee03c22f537517e377dcad7435215f96f6f42c922f0fc662489` |
| 22 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthinf.md) | 142 | `result-track:4e4d6f68c47fc666a48753436a0b8ee2a4f4a3ced9f87fc65192991af80f696c` |
| 23 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-le.md) | 146 | `result-track:971c3079dda9f404c74cb1f449e8b212c4744123f7b18d7cb5edaadf5fa12441` |
| 24 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthsup.md) | 150 | `result-track:bd279f51ea856e1e74015a7f5f3b1959650e67719b12fbcf01444aa1ff4d7664` |
| 25 | `lemma` | [expGrowthSup_zero](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-zero.md) | 156 | `result-track:2b6ace504c78d62ef24305c5f0094b7112f01b9e49bdb6a52ec9a1e50722d364` |
| 26 | `lemma` | [expGrowthInf_zero](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-zero.md) | 162 | `result-track:395e97cb8d343fd5132952fba03f334908c60bc3224880f5e6472127b5a4993b` |
| 27 | `lemma` | [expGrowthInf_top](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-top.md) | 167 | `result-track:83061de2eb86a7ff6a6c215721e43ce80f31c7f989e0f03a731f4ed7876b14d0` |
| 28 | `lemma` | [expGrowthSup_top](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-top.md) | 171 | `result-track:e9c0ae5bd5f4568b794fa2a4210b0eb8756063d37190ae9221fca77bf62d492a` |
| 29 | `lemma` | [expGrowthInf_const](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-const.md) | 176 | `result-track:7aecd5c5c0fd4e05c69d5c7fea0e29654d20dc995263b793630a018fc36d8f0c` |
| 30 | `lemma` | [expGrowthSup_const](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-const.md) | 180 | `result-track:0816e7f5e605878cfca86b7ef18574e0591279c7397c04edaf533eb7af2ce92c` |
| 31 | `lemma` | [expGrowthInf_pow](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-pow.md) | 184 | `result-track:cc6e2683b30001a7f7c654802f4f64a9b0c0ec0bebcb1cc94af6c617bcfb5279` |
| 32 | `lemma` | [expGrowthSup_pow](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-pow.md) | 190 | `result-track:c7d838cb6dbe3e681d4c68c1470078e1a3dae7c0e069768241e561e392feda18` |
| 33 | `lemma` | [expGrowthInf_exp](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-exp.md) | 196 | `result-track:b949930275c37706272a1095823445d97b60567c6e3bccd2eac2a95a17aab94d` |
| 34 | `lemma` | [expGrowthSup_exp](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-exp.md) | 200 | `result-track:9f146980a2d68f9ec6d2bd0fe4d3e1560862bedfdea3c6a6a34fb8425481e7bf` |
| 35 | `lemma` | [le_expGrowthInf_mul](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthinf-mul.md) | 206 | `result-track:22140e24a35760c399079865000b3eac17197e97d3f437c8cbe40bc9cbbb2998` |
| 36 | `lemma` | [expGrowthInf_mul_le](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-mul-le-source-edition-2.md) | 212 | `result-track:f8f06202c549a3d250cd8805ad359040abf32d6d098eefa7a357fe7085df11fc` |
| 37 | `lemma` | [expGrowthInf_mul_le'](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-mul-le.md) | 219 | `result-track:9eea1fb1edd13fba79e4966aad3d4053722740c4153f9eb259fc08ed64c8aa60` |
| 38 | `lemma` | [le_expGrowthSup_mul](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthsup-mul-source-edition-2.md) | 226 | `result-track:db62155975062495093339c7986108c4c231bc2d754c0e8d3f081055d356e507` |
| 39 | `lemma` | [le_expGrowthSup_mul'](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthsup-mul.md) | 231 | `result-track:d0540cea7b0fcb0c3ffec849d564e4d01eec05ef81ef9f0f90e1b773dc8ef592` |
| 40 | `lemma` | [expGrowthSup_mul_le](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-mul-le.md) | 235 | `result-track:adc141e303b1c289349b978b615939edcc889247ac6b32c36c696672ae88a2fb` |
| 41 | `lemma` | [expGrowthInf_inv](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-inv.md) | 241 | `result-track:c5b7a7b9b9e3d29365f1baf4c5ea022effecc3fe8f74eeed14ead6d136011ebe` |
| 42 | `lemma` | [expGrowthSup_inv](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-inv.md) | 246 | `result-track:baabcbfc77593b59264dbe6ddbc3a6d139f60b24a84b35cf4937f690aec13eaa` |
| 43 | `lemma` | [expGrowthInf_le_of_eventually_le](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-le-of-eventually-le.md) | 255 | `result-track:d9731173c8e4a7b5a8f1cddf7529687426388ffee9fd974335f8c2ded78755b0` |
| 44 | `lemma` | [expGrowthSup_le_of_eventually_le](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-le-of-eventually-le.md) | 267 | `result-track:93ec0d9bc8fe22f84450a4c5e2b1974cdc7d8c0955a16c6f935d2e515708133d` |
| 45 | `lemma` | [expGrowthInf_of_eventually_ge](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-of-eventually-ge.md) | 277 | `result-track:653bdec3e79fd630730f068e664628c6ac2f4aa23dc1cd09bd87671a2176c47a` |
| 46 | `lemma` | [expGrowthSup_of_eventually_ge](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-of-eventually-ge.md) | 285 | `result-track:73cb9f7e47961e99ed2baa99a5c5ca0ec1900460e43c5761c227b99a6505cddf` |
| 47 | `lemma` | [expGrowthInf_inf](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-inf.md) | 294 | `result-track:a595e91b83f910a34ec2c09fd30519e7d24cac034212643676a85b3df37ca829` |
| 48 | `def` | [expGrowthInfTopHom](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinftophom.md) | 301 | `declaration-track:b6e2e745b3c87f05f0b03b0a5e53c09e189a743c2b2bf5a6514c2480b0b6931e` |
| 49 | `lemma` | [expGrowthInf_biInf](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-biinf.md) | 306 | `result-track:f915621a4db041a6087ea32a07ea772dd8d38ce38ed3e796aad8075ef473ae51` |
| 50 | `lemma` | [expGrowthInf_iInf](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-iinf.md) | 312 | `result-track:c0c6bd341c6a12681c22d6e55bb3e97ab2555fd69ca5efad10916ee5787f75c3` |
| 51 | `lemma` | [expGrowthSup_sup](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-sup.md) | 316 | `result-track:0c0bf2db5a8e4358ce8103652f7a3cdf76275c25d39329c463344f049053b453` |
| 52 | `def` | [expGrowthSupBotHom](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsupbothom.md) | 323 | `declaration-track:66ff52e118041e8f3a78c48e7e96f0b88956f518d364be3cfc10bbc7ef1adbc4` |
| 53 | `lemma` | [expGrowthSup_biSup](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-bisup.md) | 328 | `result-track:8b85860c9288fd15791fe8b6471198c73ca2c01a0fb005bacb5d70a4c3a79498` |
| 54 | `lemma` | [expGrowthSup_iSup](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-isup.md) | 334 | `result-track:fa9d2d504fa3f626e6e943a6f66e071f8462f17fa529f1d5327fd0e4ea48ac31` |
| 55 | `lemma` | [le_expGrowthInf_add](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthinf-add.md) | 340 | `result-track:31c6fddfd3c16df9de260699da0f23eb70c75226b2b126a5d4b4300c08d291d4` |
| 56 | `lemma` | [expGrowthSup_add](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-add.md) | 343 | `result-track:4bd08423c98f66a5cd8d676fe4fd6c7a5d083e13cd8b2804126b52edb327e4eb` |
| 57 | `lemma` | [expGrowthSup_sum](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-sum.md) | 355 | `result-track:640ec0df277adb25dc596c066b52ac07aad8984144410ff9bd3ec3dabe98b94c` |
| 58 | `lemma` | [le_expGrowthInf_comp](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthinf-comp.md) | 372 | `result-track:ba5c883462b58bb9281184379d60af6a9245808ba5543f006db651defdad771e` |
| 59 | `lemma` | [expGrowthSup_comp_le](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-comp-le.md) | 378 | `result-track:880e1162547985f7a2cf1951bafe2b2b2a14dd130f1e6d9b75438e2193c6b148` |
| 60 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-nonneg.md) | 387 | `result-track:f4d2b3a44d0d30a8faf5c5ce88b52fe12536b94fec9861a3565e3216f83c690b` |
| 61 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-nonneg.md) | 393 | `result-track:f81e303256652d0a86a86257212a3e051ec9e174b4682db7d8d477ab8e0fdaa7` |
| 62 | `lemma` | [expGrowthInf_comp_nonneg](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-comp-nonneg.md) | 397 | `result-track:8397c9fdb8ec610761485438791e2232629f9aa88d4580e0952c3a4dedb3052a` |
| 63 | `lemma` | [expGrowthSup_comp_nonneg](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-comp-nonneg.md) | 403 | `result-track:1ffa89e7d9e1dc9aaf045b51a3f76b30dbf942445b27723e1dfb6a41431578c8` |
| 64 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-comp-le.md) | 407 | `result-track:3d0aec3c52d2327b65a2b2cf7a36bc129a1a6c3325388bdc8b917564688a364a` |
| 65 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/le-expgrowthsup-comp.md) | 413 | `result-track:38b33558ede88ca996eb1049575e4885ab825eb679fa296299580204289a14b6` |
| 66 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-comp.md) | 418 | `result-track:023e0c33e35fb38835baa5aa96900c94bb08cc0d74dece07f5a0c30a2754f15b` |
| 67 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-comp.md) | 423 | `result-track:97cf45adc5492f769d231533b98a7500d1f88df99dd0930798d930e059acaa36` |
| 68 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthinf-comp-mul.md) | 428 | `result-track:8d3218fab3d0e636a7a7d13e62a26ac0d0cf583c5e3637c5eb12553dea30a967` |
| 69 | `lemma` | [Exp Growth Namespaced](../../../../FunctionalAnalysis/ExpGrowthNamespaced.lean/declarations/expgrowthsup-comp-mul.md) | 432 | `result-track:5127fd60cf1528b9f4347f305f03c56facdee745ee082d72b0380015a4b1c6da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1e795ef9b286b9af097ee67ad871eb6c428a7cd5eca75173330b1cd1fb6b872 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variant32ad0460a8f198aacd288ef80eeab0199eaa00a470d35cf3d9905aea2ccc7f36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

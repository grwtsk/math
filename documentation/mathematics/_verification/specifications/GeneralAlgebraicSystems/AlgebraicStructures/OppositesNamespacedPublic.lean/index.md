# Verification target: Opposites Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08070225015c9584734c4a7d26e456997ce0d38f",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant1f98495267849933ab09e597241bf2f7dcaabd47f3aa4ccf88280724084fd5a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08070225015c9584734c4a7d26e456997ce0d38f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant1f98495267849933ab09e597241bf2f7dcaabd47f3aa4ccf88280724084fd5a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant1f98495267849933ab09e597241bf2f7dcaabd47f3aa4ccf88280724084fd5a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PreOpposite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/preopposite.md) | 64 | `declaration-track:261fa75441084ed16f375b91eb9b2c89d6f792b4e4b917dcccf0ca17d79f9641` |
| 2 | `def` | [MulOpposite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/mulopposite.md) | 73 | `declaration-track:85457108e87ead84c13dc9a70823b89267e35ca8b38cbb50069c15237ba6afe0` |
| 3 | `def` | [op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op.md) | 86 | `declaration-track:ec369f88ed1e49a7f1b7b64bdd862c9cf17e5b1733afaec1507223016c0db613` |
| 4 | `def` | [unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop.md) | 92 | `declaration-track:238a35f8d1d5b8677aae34a9f5cbc931a36c8585dd22340b6c46ee5e8ce5d09b` |
| 5 | `theorem` | [unop_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-op.md) | 96 | `result-track:0169980de5ff2d9303b2a15f859425e8bd2fcf17dd0ca7e40c5a41ae4ff3422a` |
| 6 | `theorem` | [op_unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-unop.md) | 99 | `result-track:4083ade02ea4f2dc240310bde13063e709c69af138705237994b2c73e3a8e48d` |
| 7 | `theorem` | [op_comp_unop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-comp-unop.md) | 103 | `result-track:00af37b7aecd7c7a526b0d9e66d98d5db4075fa57eefc1ba57bed9c75b106537` |
| 8 | `theorem` | [unop_comp_op](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-comp-op.md) | 107 | `result-track:8ab2db9839643bcf6b1262d5cd5d0c46bf8884ba902e91e250b0f44071d5aade` |
| 9 | `def` | [rec'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/rec.md) | 113 | `declaration-track:432c0ef1f1b0f65f3db581195ae92493e672683fa7759d75e6a296358983eb8c` |
| 10 | `def` | [opEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/opequiv.md) | 118 | `declaration-track:24c37d31e7b537fe40a18ed395c42ed20658617a7a3408a18f56a636f314d803` |
| 11 | `theorem` | [op_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-bijective.md) | 122 | `result-track:bdfd7a890beeaca2f3a1223d1e5b8ed1879fe5ea076d0112a7dcf3b9915743de` |
| 12 | `theorem` | [unop_bijective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-bijective.md) | 126 | `result-track:46be91da815f60cc8f7f70e16b078367eba1e96a5ee163491b063600314ee45a` |
| 13 | `theorem` | [op_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-injective.md) | 130 | `result-track:875bf07257f49265277f8d5cf58011277e0c4c5cf6eeaf8a548b3d85ae1d725c` |
| 14 | `theorem` | [op_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-surjective.md) | 134 | `result-track:946e59aa16236fec194dff2e24a1d3afe8cc10131fdb0e090e26f3ceec524445` |
| 15 | `theorem` | [unop_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-injective.md) | 138 | `result-track:c90a7e8366724f31ffbbc8f1fdde5921d9bca91fd29aa17d94b92b447e114811` |
| 16 | `theorem` | [unop_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-surjective.md) | 142 | `result-track:15c3623fb02d801d94db6306e435017dd7471754362dad3811f78da5b932363d` |
| 17 | `theorem` | [op_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-inj.md) | 146 | `result-track:64bbb1bead84e40b9a394687bcee872a7de458041b65dc97937b76c3e9dd2b61` |
| 18 | `theorem` | [unop_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-inj.md) | 149 | `result-track:fc6011a2a36b6425656ad7fd8e6c1b79e4086895a5aa9ecf9902f2b5928e0adf` |
| 19 | `lemma` | [«forall»](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/forall.md) | 154 | `result-track:286cfe450e1c465335283efdac7b939b850911bfe300a7bb587276161ae13a45` |
| 20 | `lemma` | [«exists»](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/exists.md) | 157 | `result-track:a346f80888bf4be9069bc02aa7875680d9275b10ce3d82203f8613ed4c5e5a03` |
| 21 | `instance` | [instNontrivial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instnontrivial.md) | 160 | `declaration-track:93a67a86580a40857d50edb1fc3301d0023e21d0e57290e80f511eac458a63ce` |
| 22 | `instance` | [instInhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instinhabited.md) | 162 | `declaration-track:be594def05738c3035c6c8c2d800ad143ab07f58c4cd02ebfb36d8f342d3c6c7` |
| 23 | `instance` | [instSubsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instsubsingleton.md) | 165 | `declaration-track:b33f0db87b6b8af165c8e85f13957087cca82a5f6f1f09d730c9af69f73eaea3` |
| 24 | `instance` | [instUnique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instunique.md) | 167 | `declaration-track:a278a42ae0ddb3e3dba3b89445dbf759344a3e8c6eb9793cef67bf47cd9a9fb0` |
| 25 | `instance` | [instIsEmpty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instisempty.md) | 169 | `declaration-track:48c6408690c7b1459787c4883398034b3f75692ca2a220c923eeeb28e7260bc6` |
| 26 | `instance` | [instDecidableEq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instdecidableeq.md) | 172 | `declaration-track:1f2b9570e41ad98227df9ee479fb72a259c85fa2a4d1c036bb38bc0348ae898a` |
| 27 | `instance` | [instZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instzero.md) | 174 | `declaration-track:c8865a8444fa1e0e2a1cc51130c966af546e327124bd33e04baf7d90c70eb8f7` |
| 28 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instone-source-edition-2.md) | 176 | `declaration-track:9a07d1260c44fc167434ad4ed2c8b2d8b8fee66e229d73f735877d1d952f961a` |
| 29 | `instance` | [instAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instadd.md) | 178 | `declaration-track:70d4421cb3fce54dcc7477a0f601ab4d2a27b0e17d9645d82f9d4275142f08ea` |
| 30 | `instance` | [instSub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instsub.md) | 179 | `declaration-track:0931c518e59eba1420e11ec0b3c8446b616ae42a9c2b73fffad77f79aad5f21d` |
| 31 | `instance` | [instNeg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instneg.md) | 180 | `declaration-track:b86f8d4bb5b142cf39a01a405d767dee8578190a8e03902e27ef73abd7e0ad69` |
| 32 | `instance` | [instInvolutiveNeg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instinvolutiveneg.md) | 182 | `declaration-track:5c7e9b442e15608c8e513b71bef4af86fdd46ba5a08fc84005f86cd8e10af1fb` |
| 33 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instmul-source-edition-2.md) | 185 | `declaration-track:a457a3c8dcc94378bc6038d4b5c0555b62ec062c310e7c710c0e0bf90248326c` |
| 34 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instinv.md) | 186 | `declaration-track:75075ac256e590a41765320d750bd07d123ef99d77e90b9e78674fa286f165a2` |
| 35 | `instance` | [instInvolutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instinvolutiveinv.md) | 189 | `declaration-track:1318bd544627770828db93e4e33a1e924e84681dc9b070e2b36cd52170641739` |
| 36 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 192 | `declaration-track:88629750f838f67f9a15ac39cd5d2bc4857a50ee1676708867ad6641c686f218` |
| 37 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 195 | `declaration-track:4e561d7444cd59b167fdd13b1f4ebfdf9ed52d4bfc42fb443d260a3c4c3e8d05` |
| 38 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instance.md) | 198 | `declaration-track:3acad3cc248a1b5c1efc6e5c80cf848a2d921a517dc10b3d73874f5e54237ad5` |
| 39 | `theorem` | [isLeftCancelAdd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/isleftcanceladd-iff.md) | 200 | `result-track:51f3dce2e357c1f903b6f1be701e5cb529e0f45150d75596c49dcea78ca49f80` |
| 40 | `theorem` | [isRightCancelAdd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/isrightcanceladd-iff.md) | 204 | `result-track:e32f1df0f04ad5bb03dff77352a4d0d182b7ae259f326aa8ecd2a21a97e5679a` |
| 41 | `theorem` | [isCancelAdd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/iscanceladd-iff.md) | 208 | `result-track:18027f5a90d2452719a90445c14245ec1ffcc4f2482ed6568cc8bd14d81e560b` |
| 42 | `instance` | [instSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instsmul.md) | 211 | `declaration-track:180502ccb73f603fd153bd1d0619b7b30893a0e07908f9923497d2641580eb86` |
| 43 | `lemma` | [op_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-zero.md) | 213 | `result-track:77eff7923edbd6efb48ff72f5322b70e0f01432fc58344ba75d749515841d843` |
| 44 | `lemma` | [unop_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-zero.md) | 215 | `result-track:9d10cd266e9d3edf42b09b301026109620a268e02e82c0772d9b06c74912e136` |
| 45 | `lemma` | [op_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-one.md) | 217 | `result-track:14b496490875d858d98c32098d811c3c43d5292ae3e98012e3293491009de87a` |
| 46 | `lemma` | [unop_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-one-source-edition-2.md) | 219 | `result-track:39d092ba8da39da47478a8054528c3d76512621f8428b6303568ed2808368863` |
| 47 | `lemma` | [op_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-add.md) | 221 | `result-track:0bc011b3abbcb787a4a90b90bd117e995518a6bba9a5b613da8d2b1bb4ccbaa0` |
| 48 | `lemma` | [unop_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-add.md) | 223 | `result-track:5c851ff78855b36d3f22c1b037fac7389450597ec9eae9a82eb588d38cb9018a` |
| 49 | `lemma` | [op_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-neg.md) | 225 | `result-track:cbe373b5749dac4b7b34be7759b1159e7d6093c673cde90671872205fe588999` |
| 50 | `lemma` | [unop_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-neg.md) | 227 | `result-track:7da675ba5e4c2bdaa428452447512b9aaa801920c7dafaf3ed49f1db900340da` |
| 51 | `lemma` | [op_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-mul.md) | 229 | `result-track:775568f4c1874cb2762ccf6cdd02a9d5faf5215f92cf31fdff3e1e7f9c45d3d4` |
| 52 | `lemma` | [unop_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-mul-source-edition-2.md) | 232 | `result-track:cb1a448fd9bebb94036d802b611f15279e5af3b67aa94f9d3febbf25e21b630e` |
| 53 | `lemma` | [op_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-inv.md) | 234 | `result-track:0e818ab115e8180d62b6cccec6de5480ca9e9abec4fd285b4ed2c1be6b859317` |
| 54 | `lemma` | [unop_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-inv.md) | 236 | `result-track:376a0df9cc2688babc395613a1f50852aa5203d91906a42444c0e4f2c96e18a7` |
| 55 | `lemma` | [op_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-sub.md) | 238 | `result-track:1f194454487fcad159ad3f1b9bb0244fb8b638daa0a83fe316bf11ba287d2c7d` |
| 56 | `lemma` | [unop_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-sub.md) | 240 | `result-track:e2ff66b78c27428fd2d71700d71222bcc4a84118d5e386eea28e2405dfca4431` |
| 57 | `lemma` | [op_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-smul.md) | 243 | `result-track:1fa212249fbb3278776ed994da5816505874e4c832479eb4778efec5e35d5eb7` |
| 58 | `lemma` | [unop_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-smul.md) | 246 | `result-track:8f952eaba8296939e64969bffb1a76aedd5eb7eca8f92a823af237679b5aa709` |
| 59 | `theorem` | [unop_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-eq-zero-iff.md) | 249 | `result-track:a70eda15b3eaa9c0cb825897e29f9d6d3316ce0c7b718a28716b5a91e225e656` |
| 60 | `theorem` | [op_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-eq-zero-iff.md) | 253 | `result-track:548f8e31ab5143cc7d8d06bdca4f2976995726f4a418b0eac6cef3e18ee6c23c` |
| 61 | `theorem` | [unop_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-ne-zero-iff.md) | 256 | `result-track:4879dd7a7aa4ecbe2f14f65eead45f5bb11e0d4380007cc8e032fd5e2aa4a43e` |
| 62 | `theorem` | [op_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-ne-zero-iff.md) | 259 | `result-track:c88d17daa08f9966aa75b47b0f2c73e7a3213b9278403e564fb5b53f6620a565` |
| 63 | `theorem` | [unop_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-eq-one-iff.md) | 263 | `result-track:95254db383b7ce50b4935271ba3eef9d08ed7afde95caaab451077d749c0631a` |
| 64 | `lemma` | [op_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-eq-one-iff-source-edition-2.md) | 269 | `result-track:ad6c713b94865812e49268dd7b35456f356cd60633bd8317391e71c55ad5251f` |
| 65 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instone.md) | 275 | `declaration-track:1a755aa3543d9b504d8b507eaae7eccd5f38de4191eaa49b5c12102d13b2c0df` |
| 66 | `lemma` | [op_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-one-source-edition-2.md) | 277 | `result-track:ecd9a68c08d6647401180d4ed2f22b3fc6586e8d449d077ad6063e28acb59028` |
| 67 | `lemma` | [unop_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-one.md) | 279 | `result-track:0ba39b8350b2627478d79a60590b84b8978642e9c1be9a5eb460d314914181b9` |
| 68 | `lemma` | [op_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-eq-one-iff.md) | 281 | `result-track:40291e58080877f2102cc2764b0eb32dd011673d37d2bbd73b2ed94d7277edde` |
| 69 | `lemma` | [unop_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-eq-one-iff-source-edition-2.md) | 283 | `result-track:c6efefa44cae432c11a6c0ccf6423610146360b286639845ecf02acc0f11a27a` |
| 70 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instmul.md) | 287 | `declaration-track:37018d8bb1296d6c9556a29bfd37b30eb2855b9a8c8f24e33a3f5135b7b028a9` |
| 71 | `lemma` | [op_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-mul-source-edition-2.md) | 289 | `result-track:d8daf5e16434bc25b73fd259156e6d817bbeab609583233567fa281f6d55e4ef` |
| 72 | `lemma` | [unop_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-mul.md) | 291 | `result-track:a2fc9c116b5c77315ca149453d208015312c40b127588e7e5c930daf81faf0ed` |
| 73 | `instance` | [instInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instinv-source-edition-2.md) | 293 | `declaration-track:e1630f6d42c64fb801ff9989c986f23a8f10bde4cb9910ec2cbde02f35b02c52` |
| 74 | `instance` | [instInvolutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instinvolutiveinv-source-edition-2.md) | 295 | `declaration-track:aae9599fdbf8a95e1b6a4523568aa24208a251f6b497403e105543ab66ec9a57` |
| 75 | `lemma` | [op_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-inv-source-edition-2.md) | 298 | `result-track:b9045fa39ea9098faaf8e1490acd9695101aa756c5b7102cc20a4ea1c83ce83b` |
| 76 | `lemma` | [unop_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-inv-source-edition-2.md) | 300 | `result-track:c40b9b05ea4c369e4622e7a54c6b206890e2914b8ca8a42ae2e4262031261d23` |
| 77 | `instance` | [instDiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/instdiv.md) | 302 | `declaration-track:5c477db1740f270e385271791de86dbc8ac14c96677c84d180dfc6719b7687a7` |
| 78 | `lemma` | [op_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/op-div.md) | 304 | `result-track:ee91a573d4d9bb99d0440b621b430fffc14f8fbb52dd085537f169f7aa1445b3` |
| 79 | `lemma` | [unop_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/OppositesNamespacedPublic.lean/declarations/unop-div.md) | 306 | `result-track:d7026381564a85fc18aedb27d6acc829e947e075b4e36336fea9583060d8e3b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94078c3b829795e2a9678d323d96268cee5c20be4a51b29c3e82afae48aa9119 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant1f98495267849933ab09e597241bf2f7dcaabd47f3aa4ccf88280724084fd5a2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposites/Variant1f98495267849933ab09e597241bf2f7dcaabd47f3aa4ccf88280724084fd5a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

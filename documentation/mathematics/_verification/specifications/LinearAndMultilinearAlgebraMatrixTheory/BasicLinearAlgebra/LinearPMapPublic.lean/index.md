# Verification target: Linear PMap Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8",
  "lexical_observation_count": 152,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean.json)

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
| 1 | `structure` | [LinearPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/linearpmap.md) | 41 | `declaration-track:f7da4fe39708a02bd63116ea4cc3e397b434fb3846dfde109fe49d16e47327fe` |
| 2 | `def` | [toFun'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/tofun.md) | 63 | `declaration-track:9d6632c1945ac0cc47eab4a8f0b36e544fe1e13040a0bbfe8a9e249a64f2c693` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instance.md) | 65 | `declaration-track:d14d4980538f0de56825077781a2ca48317fca1b1ce6690381a0b53e32366f23` |
| 4 | `theorem` | [coe_toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/coe-tofun-eq-coe.md) | 69 | `result-track:aae15c7a11778de5b8426aeb60e043db406f34fcb944306f7665c2161662cfd2` |
| 5 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/tofun-eq-coe.md) | 73 | `result-track:148eaad194b9f4bd4ab66dbbad07c3c5ce49782549c62daede0f883a08e7ac1c` |
| 6 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ext-source-edition-2.md) | 77 | `result-track:b8a9a163b79e42dcb46afbc03a754e37acfb5aa22c37e8fe126ac8f7a98d798f` |
| 7 | `theorem` | [dExt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/dext.md) | 88 | `result-track:afa05671684f7ac9ef9ff0219e7d0480150465606c80a35af9774e899a645df6` |
| 8 | `theorem` | [map_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/map-zero.md) | 93 | `result-track:dddae664c40cf6a4be143a3b3f8a685fe28f0caf1480fb1c62f0a0a6fb90c479` |
| 9 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ext-iff.md) | 96 | `result-track:1c9723d31accf3b16ec0d752378b5b4eacd8ab661e344104d4cdb6ff5b513d11` |
| 10 | `theorem` | [dExt_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/dext-iff.md) | 102 | `result-track:312e63f0b778c66af74e96ea0b3d6250b5353a0627665965ddc707a81613dc70` |
| 11 | `theorem` | [ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ext.md) | 113 | `result-track:1c6caa5498dec47a779f486b0f908f0575583ba0e1395da4b0d43a79cd2f8e1a` |
| 12 | `theorem` | [map_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/map-add.md) | 116 | `result-track:cc367f501bee8db46ad1bc77ab97acceb6a18fc2bf81c1ebe6327d5d6988597a` |
| 13 | `theorem` | [map_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/map-neg.md) | 119 | `result-track:dec9f64bb6e73ad2c7952ac4692d56878deec440050530b2f53eb5bf92ba2354` |
| 14 | `theorem` | [map_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/map-sub.md) | 122 | `result-track:5f36734329853a0dc6b5b44e8900dab1b6601d12c70714ce4a3c7c857615e243` |
| 15 | `theorem` | [map_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/map-smul.md) | 125 | `result-track:80edbb916bbcee3de6d420b2d12f6a3163c9ad4bcbdcc064ea0b140c474b6347` |
| 16 | `theorem` | [map_smulₛₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/map-smul-source-edition-2.md) | 128 | `result-track:ce13bf6fb9f2a15d0121057f8d1baacd78f9cce1b75ee63b0477e31a240731a8` |
| 17 | `theorem` | [mk_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mk-apply.md) | 132 | `result-track:98b8fda75d1cfec17dedfee62d19cb51ce8d73ac902e47adda87ec392a16447b` |
| 18 | `def` | [ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ker.md) | 137 | `declaration-track:c99570e4051e7463366cac22068457d0045bdac5e6ee03d0b6722404188e4238` |
| 19 | `theorem` | [ker_eq_bot'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ker-eq-bot.md) | 141 | `result-track:37ec6e0d54cd77cccec6f67ed253194c930e9584938b984e2f625694eae435a2` |
| 20 | `theorem` | [ker_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ker-eq-bot-source-edition-2.md) | 144 | `result-track:ba146c1a0af4b537a1427f1f1aaa611c6e6425fee1f780a89d3c4d017f825c62` |
| 21 | `theorem` | [mem_ker_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-ker-iff.md) | 147 | `result-track:f48a3a9df493a3bb5ff6bbc1d9d0dd26e4c888f3c334a69073d4b49d12467836` |
| 22 | `theorem` | [coe_mem_ker_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/coe-mem-ker-iff.md) | 150 | `result-track:8d027ae14d00003adbc502ef661bfea2d3c458ddd4b420f7f3d87afe1a94a8ff` |
| 23 | `theorem` | [sub_mem_ker_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/sub-mem-ker-iff.md) | 153 | `result-track:75ee261e75c8807791161cd62107d889d6f533e3efee212037bd823d60c95a84` |
| 24 | `theorem` | [ker_le_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ker-le-domain.md) | 156 | `result-track:163c0f692518a1d26cec9041b437f7e6d57d53bbe7ae81cfd4c07e6cd2dfc9d1` |
| 25 | `def` | [mkSpanSingleton'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mkspansingleton.md) | 163 | `declaration-track:8cc9c3b0675d204d2f118717b77017a16963de6f0591b1c7870bb2165b20d2b9` |
| 26 | `theorem` | [domain_mkSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domain-mkspansingleton.md) | 184 | `result-track:217f67f1d4825221609c7e09b91c3e6aa5e1d43168a1f93546ef2ffe58bbf607` |
| 27 | `theorem` | [mkSpanSingleton'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mkspansingleton-apply.md) | 189 | `result-track:08dfd1271d29f9542ca8bc26b4f0d1f8854836b50082be14ce460736ba25228c` |
| 28 | `theorem` | [mkSpanSingleton'_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mkspansingleton-apply-self.md) | 198 | `result-track:e823167b94fdb327f41f9e9444442294d6dad5c11dd80f5202e01a65a22a5377` |
| 29 | `abbrev` | [mkSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mkspansingleton-source-edition-2.md) | 208 | `declaration-track:e37cbb0e1ee72305ffa35af6c071c478c6935b9948991b6e25e6d4d1b5554d52` |
| 30 | `theorem` | [mkSpanSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mkspansingleton-apply-source-edition-2.md) | 215 | `result-track:ea1f9c21c1818d6d8102755c66b88173199081c4a3ad6d99a6ae6ba0f9014247` |
| 31 | `def` | [fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/fst.md) | 223 | `declaration-track:9b10c93363689a571d3069192cd887502b1a71b859d0e4bfd6cc2fce828ee5d8` |
| 32 | `theorem` | [fst_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/fst-apply.md) | 228 | `result-track:a041e0d69efe3c9529a23bc76cb6f961c9eaef791fe8d818de32d9aa098856b8` |
| 33 | `def` | [snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/snd.md) | 233 | `declaration-track:28aaa50017b0a474331ec29a078faa04c4b3058bde542fdf70fdd216da519f4f` |
| 34 | `theorem` | [snd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/snd-apply.md) | 238 | `result-track:d7d2d2f34f16c4b29dbce02385ce612cb9ec34235ac803e58e5538e6e6b1f2b3` |
| 35 | `instance` | [le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/le.md) | 242 | `declaration-track:23e4bc3ff2531707b2e2e2ed8746e3cb8c21a9c2637ea8734dfd68efe943e25e` |
| 36 | `theorem` | [apply_comp_inclusion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/apply-comp-inclusion.md) | 245 | `result-track:6248014227f196f8033c0108e4b17a72affcec53c043eee8ee916abbc403a562` |
| 37 | `theorem` | [exists_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/exists-of-le.md) | 249 | `result-track:fe0be9cad81c71f2b39e99180abfacaeb907aec3289c4d14aac9fd1082e72513` |
| 38 | `theorem` | [eq_of_le_of_domain_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/eq-of-le-of-domain-eq.md) | 253 | `result-track:4a2ac5bc34bc87b65b46a3b145f790470109bf0f993ceecdde64e4399868c966` |
| 39 | `def` | [eqLocus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/eqlocus.md) | 259 | `declaration-track:6c0eb0be9c84d6fad601dd2a986329716821ed24738693bfc1de87ba2ecd0b97` |
| 40 | `instance` | [bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/bot.md) | 271 | `declaration-track:64a69f633edb26cce7d90e842e5a53808f236dfd37f8ccbc920eb874a4bab90a` |
| 41 | `instance` | [inhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/inhabited.md) | 274 | `declaration-track:b4d0927c7a024f10312a2f4d8930082ddc8ac52f7a85c296ee93f77d0f9581e6` |
| 42 | `instance` | [semilatticeInf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/semilatticeinf.md) | 277 | `declaration-track:f470397ec90ecbc5dc08b6833aae57b7d1968bfc72a3385e133d507201f5e597` |
| 43 | `instance` | [orderBot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/orderbot.md) | 295 | `declaration-track:7c34dfc35cc86bd68203ee9eb44334656035171973e9f7e1d76a5f8567934a04` |
| 44 | `theorem` | [le_of_eqLocus_ge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/le-of-eqlocus-ge.md) | 302 | `result-track:945d1f3d05f9a3fcbf7855ea14af1e3e246278645db2870fc7cc8d500eaf807f` |
| 45 | `theorem` | [domain_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domain-mono.md) | 306 | `result-track:22111bbaab30fa9cc705aac71d3cc83a34a0df0d3530651289df3cdf06e3679f` |
| 46 | `theorem` | [sup_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/sup-aux.md) | 311 | `result-track:3feec8afe12526d3a3ab65c37368ec78cb35d40b525d7614cd503ae8bb63a542` |
| 47 | `def` | [sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/sup.md) | 344 | `declaration-track:4c5a441a69a5c810c5256c3250f4fce16bfcc1db1d34a2ae760e53fb259ca5af` |
| 48 | `theorem` | [domain_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domain-sup.md) | 349 | `result-track:5df6a7cb3d4062c18756ba109e1feb5c01157c7dac8f064cab086f4179129011` |
| 49 | `theorem` | [sup_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/sup-apply.md) | 354 | `result-track:bc91e304e454ef9d438e966104f3fb376598447373e3d8d598f2f28968e401d3` |
| 50 | `theorem` | [left_le_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/left-le-sup.md) | 359 | `result-track:3166a242e6fdee9b94a4eeee8262e91b47c9575c510eab8e5be9efd6407cd6d1` |
| 51 | `theorem` | [right_le_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/right-le-sup.md) | 366 | `result-track:01cd824bd4389726657a8bef26e5bf501e00dad355a73ccad2a439482405e139` |
| 52 | `theorem` | [sup_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/sup-le.md) | 373 | `result-track:efafc21d953a2cc99a3709da2cda9f8eea585e2d2a0bbdff02432122badb4dd4` |
| 53 | `theorem` | [sup_h_of_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/sup-h-of-disjoint.md) | 381 | `result-track:f8da00ddf3d3c64903b7311034024ad88481b91adfda84230ac7b396940a3bc3` |
| 54 | `instance` | [instZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instzero.md) | 393 | `declaration-track:a02e42554fd0c3acda5cc000bab6a9bf19515830376a1ff6683d6b42292234da` |
| 55 | `theorem` | [zero_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/zero-domain.md) | 396 | `result-track:12b60d7f805cfb01ff1aa96e384e5878fe2d387e725c4dc3878ca7dd52f537ba` |
| 56 | `theorem` | [zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/zero-apply.md) | 399 | `result-track:97b31d9f38515f02b0b358d9621e37f0d9a987c9c6f2ccdf188e99730e4fca38` |
| 57 | `theorem` | [ker_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ker-zero.md) | 402 | `result-track:4000e3c899ca7c8ce45822a754b336fd37cd40f3bc9872d34026c8e04dac71c4` |
| 58 | `theorem` | [ker_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ker-eq-top.md) | 407 | `result-track:fc5007027981ac87780ad1d2c4112bfc979ef6e4fd78c8b2c7d0e5072a7b146a` |
| 59 | `theorem` | [eqLocus_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/eqlocus-zero.md) | 412 | `result-track:bdab27753909d6aaa300c848be50bb707c85fcb6665687f461149c2f8d23c850` |
| 60 | `instance` | [instSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instsmul.md) | 423 | `declaration-track:bfa38acda7be76d0fec7477da0a6c1d0be45408022568e1f49260ff448fb17ac` |
| 61 | `theorem` | [smul_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/smul-domain.md) | 429 | `result-track:f604fa9029c5a0011dc5f6799d9c426f3a01f91461232760a98bf1250d3c5876` |
| 62 | `theorem` | [smul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/smul-apply.md) | 432 | `result-track:caaa45eb88b7aeea5a6d5e12047d5062de08abb0331d025131375236ac23dbc4` |
| 63 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/coe-smul.md) | 436 | `result-track:f9159285df83fe12011ed8fcea2c72b88d6ccc075a8dbf45887ead342c93defa` |
| 64 | `instance` | [instSMulCommClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instsmulcommclass.md) | 439 | `declaration-track:a858785283342159ab8d88a839bd6389e9ef0990b785669c6318f294922579d0` |
| 65 | `instance` | [instIsScalarTower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instisscalartower.md) | 442 | `declaration-track:d09dd60f5f0afe4630a14f4993f8a674e0107b8fafb9ea792a87aa54bb629278` |
| 66 | `instance` | [instMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instmulaction.md) | 445 | `declaration-track:f72a9772b675747d99540fce6b68d835764892509a717e79083227b031193c67` |
| 67 | `instance` | [instNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instneg.md) | 451 | `declaration-track:654b764936dd706571479352c9f622d04987b27d5aee9d6063a505f4ec891797` |
| 68 | `theorem` | [neg_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/neg-domain.md) | 455 | `result-track:9002f7a4772cdb80b935e80302346e3d0ffa21af647771daadc13101096831d6` |
| 69 | `theorem` | [neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/neg-apply.md) | 458 | `result-track:f3e8917afe78f368a26a7369fc104a1dfc815bd45d17eee56716cf1995b01734` |
| 70 | `theorem` | [ker_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ker-neg.md) | 462 | `result-track:1a4c6cc2aac1a0a589303452a191c328361d3ee43a54a9ad39912c0beb101348` |
| 71 | `instance` | [instInvolutiveNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instinvolutiveneg.md) | 466 | `declaration-track:a657de1cd58407b6dec634b423502ab3afc10d65a77e586109763203003b1715` |
| 72 | `instance` | [instAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instadd.md) | 474 | `declaration-track:0263e78fc9868a09c56165a0412d16240ec59e2624fa02f4f221935bd5777e95` |
| 73 | `theorem` | [add_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/add-domain.md) | 480 | `result-track:6baad1adbb05b2db6fc7329aa462cf57d0b493779fd91fd669ca89e1bfeb71ab` |
| 74 | `theorem` | [add_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/add-apply.md) | 482 | `result-track:2095c9909db3537fc0a51b8287ef73ab0e593c6b90db9abaaaa6ad6a60aa5b70` |
| 75 | `instance` | [instAddSemigroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instaddsemigroup.md) | 485 | `declaration-track:34c1694f46ebb049ae8110349a90e6d0f8769f7a16857a7a039562a4501a2dc3` |
| 76 | `instance` | [instAddZeroClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instaddzeroclass.md) | 491 | `declaration-track:8e833039ce8f73b24192844565a9f574b2fe17e820d73f2ed8d7ad712f00acd7` |
| 77 | `instance` | [instAddMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instaddmonoid.md) | 501 | `declaration-track:e333712420eab12b3b605e2419c43dc7988de84440137d0bddeeb5e51fdfa3bf` |
| 78 | `instance` | [instAddCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instaddcommmonoid.md) | 508 | `declaration-track:5ca86ad1da45f66b079270078735110937a62eeabcaf895f337e87821c0ea842` |
| 79 | `instance` | [instVAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instvadd.md) | 518 | `declaration-track:f9a521d1c49d32eba2a8cdb0a5a5d42effaba59f74f59e9fc6815aba8db5de7f` |
| 80 | `theorem` | [vadd_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/vadd-domain.md) | 524 | `result-track:a4271775df3f3c2bbff2c7b7e9f9d56b21932c9a5e2eee41a1b9cb51c05dfcc0` |
| 81 | `theorem` | [vadd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/vadd-apply.md) | 527 | `result-track:603443688a9120ce4041d6cf8e8eede82e7e11a2c1ed8da5c1e40a8cd43ddd66` |
| 82 | `theorem` | [coe_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/coe-vadd.md) | 532 | `result-track:86961ba668430e0ece60c64291a2ea4147577a308d4a05b0e5c253575d76b76e` |
| 83 | `instance` | [instAddAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instaddaction.md) | 535 | `declaration-track:5b05453229fd9834c5ec53a76ddaf361aec2182e5a0824da9f288da47698f416` |
| 84 | `instance` | [instSub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instsub.md) | 544 | `declaration-track:b59a94378bd1d5532e99e46fd5ff0e153682b56bf368f4388c667dd80c3bc2c8` |
| 85 | `theorem` | [sub_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/sub-domain.md) | 550 | `result-track:bc7d9aec26eba273aa7f12f9917ff5ecb1c4cbb8e64fda7f9e8ba7de34fccab6` |
| 86 | `theorem` | [sub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/sub-apply.md) | 552 | `result-track:64e936a09c8f0656017cdb5ee461ba19a488d7df6ddb539c75a492bc265755cd` |
| 87 | `instance` | [instSubtractionCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/instsubtractioncommmonoid.md) | 555 | `declaration-track:bd6550f04df20499fa18ffea460fa67b2af88e86c8a03a60910ed0db3bb09d0f` |
| 88 | `def` | [supSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/supspansingleton.md) | 586 | `declaration-track:51849367a3506ad31162ea7b59ac66d8c547755c147869bb829c1ad51cf138e3` |
| 89 | `theorem` | [domain_supSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domain-supspansingleton.md) | 592 | `result-track:679a0d6217d2b8edd0bde72be2d6c642954ab0314f0eee1cad93b0a6878192d4` |
| 90 | `theorem` | [supSpanSingleton_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/supspansingleton-apply-mk.md) | 598 | `result-track:cb2c8d39ac355387b75b329a2297bba909b241bfcc6d8a553e6edbf62796e390` |
| 91 | `theorem` | [supSpanSingleton_apply_smul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/supspansingleton-apply-smul-self.md) | 609 | `result-track:f040c6d1cce1e1fc7f6c2b084a703f543a3a75f43eaae0a14e275e3e2bf5e621` |
| 92 | `theorem` | [supSpanSingleton_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/supspansingleton-apply-self.md) | 616 | `result-track:f84ed9f7696b09f0d791d10a57429158c68ee83b506a01d32833e5f6c7dbdfde` |
| 93 | `theorem` | [supSpanSingleton_apply_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/supspansingleton-apply-of-mem.md) | 621 | `result-track:92f88c9f085ff63ea2eaebfb17f64f0e20f2c967f811bcbe4202d0616281c4ba` |
| 94 | `theorem` | [supSpanSingleton_apply_mk_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/supspansingleton-apply-mk-of-mem.md) | 626 | `result-track:ffac469ef2898cb922fbc701f0f1ab6ee259ad009660e2992041d09d97ad4f4b` |
| 95 | `theorem` | [sSup_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ssup-aux.md) | 634 | `result-track:d5d1c46399c392c428128f822b233717b12d6a7716878d165f6b1da665c18ba1` |
| 96 | `def` | [sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ssup.md) | 669 | `declaration-track:823eda98e09973af350d252631d9b04a167ad6040acb4f8365b9bf5d65f9f348` |
| 97 | `theorem` | [domain_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domain-ssup.md) | 673 | `result-track:391a014962324e81434e0722ca40e2cb4b2684d64fb46d2032d55e7a4e5ea747` |
| 98 | `theorem` | [mem_domain_sSup_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-domain-ssup-iff.md) | 676 | `result-track:55685eb99f669ebff088d08b490ccb89a30bf30ae8a313fa8d9d1c6ec27b45d9` |
| 99 | `theorem` | [le_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/le-ssup.md) | 683 | `result-track:9f2e2d12dc604dfe15b90170f522ba8e698bef7a13a7f7435b7b3da0f03a04c6` |
| 100 | `theorem` | [sSup_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ssup-le.md) | 687 | `result-track:28e6f8cab8ed4fba9b8f535ab1d5b82c56d6455da2122e563ebe60bfcfd6b01a` |
| 101 | `theorem` | [sSup_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/ssup-apply.md) | 695 | `result-track:3e94667cdec53651a133ec70a54dd92ee9b7cc3942f6004e2d7250e230dbfdc5` |
| 102 | `def` | [toPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/topmap.md) | 707 | `declaration-track:8758f616acd69c7672f0d1cd0a1b97945d4747951f7de40bead294e0d29fe077` |
| 103 | `theorem` | [toPMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/topmap-apply.md) | 711 | `result-track:ad6200f4eb28a5e194dbd9c7a3aa06379f7fbb3205ca1d4efa7ed6db8647115c` |
| 104 | `theorem` | [toPMap_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/topmap-domain.md) | 715 | `result-track:d21837f1dd456c9815ffe1ba5ff599785403a4f6962b3ce28cc58b3fa36bf73b` |
| 105 | `theorem` | [toPMap_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/topmap-ker.md) | 719 | `result-track:8b61e9901d082089040ccf95995b01e7f2d417d3c69bc13e7b044f77c850fccf` |
| 106 | `def` | [compPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/comppmap.md) | 724 | `declaration-track:d1ad06b187d8dda413ce587f0d4723ee3ed812059bcfd85158dfc5c479f8bd7d` |
| 107 | `theorem` | [compPMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/comppmap-apply.md) | 730 | `result-track:f60e6ceb4c2d3f881ad38004c65e7fe2a07b964e7fa9a9cc302b615ff57f2559` |
| 108 | `def` | [codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/codrestrict.md) | 740 | `declaration-track:59456c618fc70ea0c6fcce457b60c0350571974054d91b6ca4bebd54fe9d9a50` |
| 109 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/comp.md) | 745 | `declaration-track:68f7d4c39984537b6afc47cf9388bf6b06054fff327e3af10be21b2957d4a438` |
| 110 | `def` | [coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/coprod.md) | 751 | `declaration-track:a369af3bab3b52a95d5109709f11184e6782adbdb3d21c7570cc55e5dd222561` |
| 111 | `theorem` | [coprod_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/coprod-apply.md) | 761 | `result-track:b27a5eacfb6844fca7bf7e23266ad1da0bacdca804460cf9b6826109de366565` |
| 112 | `def` | [domRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domrestrict.md) | 766 | `declaration-track:f52fe252e23218c4f241646d2c1c40a08facb623544c34ca8eafb13b2e428382` |
| 113 | `theorem` | [domRestrict_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domrestrict-domain.md) | 770 | `result-track:f4bc814d0b9905fff3555f6a1acbd87db4601c0e006260eb33ffb4eb2399e86f` |
| 114 | `theorem` | [domRestrict_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domrestrict-apply.md) | 774 | `result-track:6a031bf703bbcb9d977dd6e220e968a8ad724dfee374092d556db4629104716b` |
| 115 | `theorem` | [domRestrict_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/domrestrict-le.md) | 782 | `result-track:507759e83f55396ae1b56a0e29ae3cbddee9f8d6e41e0fb7d3970f63622e7b93` |
| 116 | `def` | [graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/graph.md) | 791 | `declaration-track:3efb69e36a5b5af563bfc2746b9f7983b6ee0a46900a6393a640f4b001cc0603` |
| 117 | `theorem` | [mem_graph_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-graph-iff.md) | 794 | `result-track:1855bbfca5016acba5c7763eb70bdbbd95cbda7ed219b6d9b4946f156bf21b45` |
| 118 | `theorem` | [mem_graph_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-graph-iff-source-edition-2.md) | 798 | `result-track:2921d6c5c0df34dd6e84ae6afcdd55a8605a4cc7a8cae1b6e254a8a217320074` |
| 119 | `theorem` | [mem_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-graph.md) | 804 | `result-track:78c9e3009e1aa1aa4e887cd36b6a63321f44cfeb5382e5c6892dea6e63c23022` |
| 120 | `theorem` | [graph_map_fst_eq_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/graph-map-fst-eq-domain.md) | 806 | `result-track:b1d7a5effec686f9d06d0079cf9378dd35169ab078e8710698d596aabcd0b685` |
| 121 | `theorem` | [graph_map_snd_eq_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/graph-map-snd-eq-range.md) | 817 | `result-track:8008412dabb8c6dae48f58b468dd15e0f74028ca83a1a484a5e2baa7fdac5ae7` |
| 122 | `theorem` | [smul_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/smul-graph.md) | 823 | `result-track:0fa7ba701e673a472d7c27fd3c35232a1e581620b48f7d6eef36215ece5a8b1b` |
| 123 | `theorem` | [neg_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/neg-graph.md) | 847 | `result-track:fdf915ef8586325e024e5b48c623aa318795fda05207c9609eb2da76d4c282ae` |
| 124 | `theorem` | [mem_graph_snd_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-graph-snd-inj-source-edition-2.md) | 870 | `result-track:d479fbb004cc32b5a3d0b91a49fac74f70a9938b2e7225b0ec121c81d5a81d5d` |
| 125 | `theorem` | [mem_graph_snd_inj'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-graph-snd-inj.md) | 874 | `result-track:3b807a5558f3e43634ba998fd1d4ffde24189544fb177a215569755dab86224c` |
| 126 | `theorem` | [graph_fst_eq_zero_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/graph-fst-eq-zero-snd.md) | 879 | `result-track:febc1156c9c925839668a09b30e791ab104b28cb48dd65652c355965f365415a` |
| 127 | `theorem` | [mem_domain_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-domain-iff.md) | 883 | `result-track:0923ef9996586050614a626314c62d996eb8458b98bdb0480ef1c46a816a3348` |
| 128 | `theorem` | [mem_domain_of_mem_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-domain-of-mem-graph.md) | 889 | `result-track:509e8848f09fb6f49780f78479b966e67496a8099f065d2799fdacc2e97bf617` |
| 129 | `theorem` | [image_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/image-iff.md) | 894 | `result-track:c33352cd6389661adbb4f5c0cc54556b2c13de368a164e1d418cab7a1cc06048` |
| 130 | `theorem` | [mem_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-range-iff.md) | 898 | `result-track:6e5f0a253ef8047553067f1328e2732a533163d91e34aa47bedb7bced5dc34e9` |
| 131 | `theorem` | [mem_domain_iff_of_eq_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-domain-iff-of-eq-graph.md) | 901 | `result-track:416d9360258159aca7e71f84220d569353ecbb159d667209b1c276f2b0e8da8b` |
| 132 | `theorem` | [le_of_le_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/le-of-le-graph.md) | 904 | `result-track:295439569a4961f309111aaf6f92355dc021110251eae76a5a10acc28da66be5` |
| 133 | `theorem` | [le_graph_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/le-graph-of-le.md) | 919 | `result-track:927538281a59cf6b83897dac470f55c1be71502a8f6a2386d01fd0792c7acf00` |
| 134 | `theorem` | [le_graph_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/le-graph-iff.md) | 929 | `result-track:31dd63c6fef3f0b2d4083c103925f17afa8753635a84aa73a87d6a8bdb512d04` |
| 135 | `theorem` | [eq_of_eq_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/eq-of-eq-graph.md) | 932 | `result-track:74729f4d623a8c6832a361e10014fd94d1634989273c6b5445d2790a340fd72d` |
| 136 | `theorem` | [existsUnique_from_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/existsunique-from-graph.md) | 948 | `result-track:ba03f52098a857d410f5a56d6078237c8f3579b322e3a13d2d5dfb096f77856a` |
| 137 | `def` | [valFromGraph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/valfromgraph.md) | 961 | `declaration-track:bca3d6b6a95eebe1eebb95cead251bcdca9b74a39be35d73290390cd1741ab95` |
| 138 | `theorem` | [valFromGraph_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/valfromgraph-mem.md) | 966 | `result-track:f02f1c6bcb651d4573a24def8b1a7934da8de2db1e8751babcd5cd5c0539f2f9` |
| 139 | `def` | [toLinearPMapAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/tolinearpmapaux.md) | 974 | `declaration-track:3a90acf51088cd010e847747a295ac398e2b943d84ca50804305d3a08ae28374` |
| 140 | `def` | [toLinearPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/tolinearpmap.md) | 996 | `declaration-track:cbe9e62bd1fe4f07845d3c57d95a3ebd26f14b111dd827536ae3aea6166c142a` |
| 141 | `theorem` | [toLinearPMap_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/tolinearpmap-domain.md) | 1001 | `result-track:42b337f9f98d86ca4ffb596112262eec74a1b0271932a3242f00784dc1d64c9e` |
| 142 | `theorem` | [toLinearPMap_apply_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/tolinearpmap-apply-aux.md) | 1004 | `result-track:6da43adb70dd7a538a641a3af5b8d1723706c12dd4fc7eb621ca828b14da8869` |
| 143 | `theorem` | [mem_graph_toLinearPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-graph-tolinearpmap.md) | 1014 | `result-track:60fc945b0f47f7957c1a361144b7c83709dc9a86fb16683fbe5ea64a34fceb43` |
| 144 | `theorem` | [toLinearPMap_graph_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/tolinearpmap-graph-eq.md) | 1022 | `result-track:b1ed04babd2f259e968971db5b0c9d1bf14c2f8e31fe33e99c83394eb3dc1a95` |
| 145 | `theorem` | [toLinearPMap_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/tolinearpmap-range.md) | 1039 | `result-track:8cc674cb0c31dbafd8820373390f7c19b29d819ad2b4a2e6375b841370475713` |
| 146 | `def` | [inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/inverse.md) | 1055 | `declaration-track:e7e9815d81cdba06e98e3a2cc4c6bb91c5ff3b03cc5df06db850764b31ea449f` |
| 147 | `theorem` | [inverse_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/inverse-domain.md) | 1060 | `result-track:e16c6383ae2e250fe8dcae2ae87056f0d8ed5d4ec887b349799cc3ce7f7ff1ae` |
| 148 | `theorem` | [mem_inverse_graph_snd_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-inverse-graph-snd-eq-zero.md) | 1067 | `result-track:a2661a377fd6eda52b62decb7a517205c2788cbb0f99f4920a6f77fecaaa3621` |
| 149 | `theorem` | [inverse_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/inverse-graph.md) | 1078 | `result-track:2df9d0672b1ee9cf3d708981b908b9833bac3a7d0573df91b8310800c50e0c90` |
| 150 | `theorem` | [inverse_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/inverse-range.md) | 1082 | `result-track:4856ee51fc173bde7d068f97b6dad30366d94c34ff59f5930db5e1587d2328b1` |
| 151 | `theorem` | [mem_inverse_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/mem-inverse-graph.md) | 1086 | `result-track:34840367cad912d61df718611407b88559d7590c8ee43d7c28c021c51dcde40a` |
| 152 | `theorem` | [inverse_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapPublic.lean/declarations/inverse-apply-eq.md) | 1089 | `result-track:5476351196d1227c5d650870dd842f922d9af0a8234d27b482b608318dd22218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14185e09fe768e353e9227d0de71da1cd2bf2ad74d15e133799e12509d82352a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Model Theory Definability Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de18ffceeeb8a10b77296d3637bf698f6222ad66",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de18ffceeeb8a10b77296d3637bf698f6222ad66`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean.json)

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
| 1 | `def` | [Definable](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-source-edition-3.md) | 56 | `declaration-track:e8c78c03888f368e1330e1c772fc7019388e850687ebfd9a7779e9b87476af2c` |
| 2 | `theorem` | [Definable.map_expansion](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-map-expansion.md) | 61 | `result-track:5cf53cedddcbc93e08f493a0b9af46fc56e9f51966752b508be91c8bc903053d` |
| 3 | `theorem` | [definable_iff_exists_formula_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-iff-exists-formula-sum.md) | 68 | `result-track:b3f0833b3c6e40f84d8368dcd5f6213145951b2c022067506c585095c301e7ae` |
| 4 | `theorem` | [empty_definable_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/empty-definable-iff.md) | 83 | `result-track:5ac60e8875756cfc51b35049b7667e9c338ff47ad34fa4dc113336b153083e18` |
| 5 | `theorem` | [definable_iff_empty_definable_with_params](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-iff-empty-definable-with-params.md) | 88 | `result-track:860968bf5156a0151ed206d8daadb132bf53e32f015fdc580eeaa0ed375de1cb` |
| 6 | `theorem` | [Definable.mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-mono.md) | 92 | `result-track:4ef6359cd133c3a29b5295186972801f85218bc57da4f41246cd83db1e84a5c6` |
| 7 | `theorem` | [definable_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-empty.md) | 97 | `result-track:66c1fd5c0c691f8db53f1906f98b4fc9b715e1c38c32c381b62a484dfa83ea8b` |
| 8 | `theorem` | [definable_univ](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-univ.md) | 103 | `result-track:cdf6ad7c3de1354bf4ebe92ff9b34ac28cd5525fc1fddda29d6bd09105625b78` |
| 9 | `theorem` | [Definable.inter](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-inter.md) | 109 | `result-track:6ecb30583cd1626c1f0e79d5c61a2cf6bf2423f5cc18c467ec387a11e889f210` |
| 10 | `theorem` | [Definable.union](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-union.md) | 118 | `result-track:b549f4029730f5e48adfadb8f89bf7789fa4b1d9caffeeb8896735e4ffad6500` |
| 11 | `theorem` | [definable_finset_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-finset-inf.md) | 126 | `result-track:a565b43d6e7035d43034feff78df9d8727365a2f6273dc99423ee3a769a8f494` |
| 12 | `theorem` | [definable_finset_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-finset-sup.md) | 133 | `result-track:5a1cfe364395f7bc8f50afbb007b9af274ab1981ed02e330d8379627dd2beac2` |
| 13 | `theorem` | [definable_biInter_finset](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-biinter-finset.md) | 140 | `result-track:281e4da97775092069cb4da56a5ac09ac554018c0e86f60f3b545f5a4c45bdb6` |
| 14 | `theorem` | [definable_biUnion_finset](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-biunion-finset.md) | 145 | `result-track:9c3055e691ca8c2a69819e958cf9b2eea3ec249e57f9cbadaf158801854615a1` |
| 15 | `theorem` | [definable_iInter_of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-iinter-of-finite.md) | 150 | `result-track:3d8f311e337ea5ca9b33fabb71620962f4b9d64dd671e7883b9afc9c9b01665a` |
| 16 | `theorem` | [definable_iUnion_of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-iunion-of-finite.md) | 156 | `result-track:055a7a3a527f108291989ce837d5054211ab8e7b1be0c196b47388e249a0f73d` |
| 17 | `theorem` | [Definable.compl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-compl.md) | 163 | `result-track:72dc9b065dbf85eb6d08e532852bc1213d7323be72ea5a70f37452bcb779c2fb` |
| 18 | `theorem` | [Definable.sdiff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-sdiff.md) | 170 | `result-track:899fb8c5646bb0afee8291a4e98820531c5da99e220ba8d3cf036ca43638752a` |
| 19 | `lemma` | [Definable.himp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-himp.md) | 174 | `result-track:aa8342c2d0bace0f8a11981825226b3a7fbefb726829139faa3c9e7b157a0d42` |
| 20 | `theorem` | [Definable.preimage_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-preimage-comp.md) | 177 | `result-track:9e21238814292322d986722a5b9e2cb1e5ac09a2c18ae82ed3dd2f0fad6fb90e` |
| 21 | `theorem` | [Definable.image_comp_equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-image-comp-equiv.md) | 184 | `result-track:67db5b263c755e7a0914f28a5e5f1dbefd98f1188bb83724608364fb860e541a` |
| 22 | `theorem` | [definable_iff_finitely_definable](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-iff-finitely-definable.md) | 195 | `result-track:52705e9f537a38e625c15c808a42ca7441b257edb4c7aaec024d07789444a7fe` |
| 23 | `theorem` | [Definable.image_comp_sumInl_fin](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-image-comp-suminl-fin.md) | 212 | `result-track:166b803128bb26c4749f253c31a0f7509ec99c10746f3e09414fa76ab6705481` |
| 24 | `theorem` | [Definable.image_comp_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-image-comp-embedding.md) | 227 | `result-track:103432258c2c35bb3a4b5d6e001f8e79cb0cd4dae9aa42b030745a1687d536ab` |
| 25 | `theorem` | [Definable.image_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-image-comp.md) | 242 | `result-track:a35beba591cd7bc078d22c1bedc01ec8eb24e0c6d5eeb1abbc3c29b9fc8bcd49` |
| 26 | `lemma` | [Definable.exists_of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-exists-of-finite.md) | 278 | `result-track:7dee41b5469e0826cb72359081199583d0aafdf6a1467b065048fb5e518b25cf` |
| 27 | `lemma` | [Definable.forall_of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-forall-of-finite.md) | 287 | `result-track:cbc5fccdc05c215aaa490b95bab4d65861813cbffd1e541dcec3d0b8907a33d3` |
| 28 | `def` | [Definable₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-source-edition-2.md) | 298 | `declaration-track:698f2a22170c5362807b061e096b222000e0241d5f687a3ba62391206808f295` |
| 29 | `def` | [Definable₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable.md) | 302 | `declaration-track:47d91d3ab48874aa301e6fbf65800d9fcf1d98824f63594bc197a0b935b8fe82` |
| 30 | `theorem` | [Definable.singleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-singleton.md) | 306 | `result-track:e6a4cebe18886bce364f888bbd4f404fa488c5f62e2761fbafc60b9f97b19ae2` |
| 31 | `theorem` | [Definable.singleton_of_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-singleton-of-mem.md) | 311 | `result-track:49d9bc065153f7fdeee32c80cf96747f8aee808afaa05aba0b04da8ffa32f928` |
| 32 | `theorem` | [Definable.diagonal](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definable-diagonal.md) | 316 | `result-track:40ff9e3330f16101f5f9dc337e314806b5904b8f99861e8ad47040a2d2b8859b` |
| 33 | `def` | [DefinableSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definableset.md) | 332 | `declaration-track:a88e390a910079850d188780b3753d375c664772bf570cbfc474c8fc593cd2cd` |
| 34 | `instance` | [instSetLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instsetlike.md) | 340 | `declaration-track:58dbf9e57be0ad556fb2c8537950244d0a3bc91da2f62e8dd11192645d5c6c9f` |
| 35 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instance.md) | 344 | `declaration-track:6a642f768e36f07134e13e5345561c6832739191a0c19b95a4474a353d359fe9` |
| 36 | `instance` | [instTop](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/insttop.md) | 346 | `declaration-track:916cd7d7ad803baeba0215b0fe44d89dd72c63418088e34c3db7beaf4c0f43b2` |
| 37 | `instance` | [instBot](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instbot.md) | 349 | `declaration-track:95abb42e34292ebbaa12f86a1debec005aae36774f9f3673b0515320af183f25` |
| 38 | `instance` | [instSup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instsup.md) | 352 | `declaration-track:a83218389be2e7fae601c5f0a802e7e1f36f3a5a904c9ad7b24ede11035a9a60` |
| 39 | `instance` | [instInf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instinf.md) | 355 | `declaration-track:926188ad4f13464b0193b759a3ecb747e64b22c75b6cc04480c534feeac21e2c` |
| 40 | `instance` | [instCompl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instcompl.md) | 358 | `declaration-track:7e2fc12e5f63ea36e81b8e6725d04e14cd762e4706ec948f3d47bb32ec4ee2d4` |
| 41 | `instance` | [instSDiff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instsdiff.md) | 361 | `declaration-track:55ee7303fd12cf30efad7593ef3705d73d4d4f18f76b16b3a0daf7edea1e72a9` |
| 42 | `instance` | [instHImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/insthimp.md) | 365 | `declaration-track:618220a1f1c73d0954a46bf8c03633b0bd36c31bc02a05e7bc193eb67c83432a` |
| 43 | `instance` | [instInhabited](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instinhabited.md) | 368 | `declaration-track:8482f1cd3b065525da5901816ec0dcd805b6fa679a4a956a2cc8d548ce8dfbb9` |
| 44 | `theorem` | [le_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/le-iff.md) | 371 | `result-track:f4f909856e8db5e32dd12db2754a60f1b79e79b3a0713c4359d1ede0c508a994` |
| 45 | `theorem` | [mem_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/mem-top.md) | 375 | `result-track:667393a655f411e137a13549cfd2b1a4681a7efc863ae0cc7798a45a9841db58` |
| 46 | `theorem` | [notMem_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/notmem-bot.md) | 379 | `result-track:dd6ab20c104bf0385562fe33d0985678133bb760cc8453f37d07298a6d3d7ca4` |
| 47 | `theorem` | [mem_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/mem-sup.md) | 383 | `result-track:9b13809f5a2f821b9e946c86614e6787187299cd39e4fdf429dae009a5d7b267` |
| 48 | `theorem` | [mem_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/mem-inf.md) | 387 | `result-track:75a214e8558c6cdb1d797f93271e56eb3ff886e70d89f884b4880eee1e0f6fb2` |
| 49 | `theorem` | [mem_compl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/mem-compl.md) | 391 | `result-track:c10326a4cad52d6aad9eb2f61e0859773894b6339a97bcea86f56c654951aa1a` |
| 50 | `theorem` | [mem_sdiff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/mem-sdiff.md) | 395 | `result-track:f369a7ca0e57c726a57446c076890a65b1a6bc20b4734352811a3991bee99dfc` |
| 51 | `theorem` | [coe_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/coe-top.md) | 399 | `result-track:8af41c1c41fbb6339c52608a29efec603ed0e5741def55780c82dcb8971449c9` |
| 52 | `theorem` | [coe_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/coe-bot.md) | 403 | `result-track:0f6d4f4ceb57e7954eb142d7d5de88a5bf20e306b8fdfb94ea7e3077d0a7580b` |
| 53 | `theorem` | [coe_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/coe-sup.md) | 407 | `result-track:605b295867f0542a19b976af5aa6187942b4eb25d05d74391509c3e5cda8f0a1` |
| 54 | `theorem` | [coe_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/coe-inf.md) | 412 | `result-track:751cdb2420e6a3ba6672f7d52e7bfe018d5dbed2d44c6f8f1ed561b67a639cc6` |
| 55 | `theorem` | [coe_compl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/coe-compl.md) | 417 | `result-track:6eab127a229f6f9923f5ebff363730b0be5068f0ace41408e835a92d520af28f` |
| 56 | `theorem` | [coe_sdiff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/coe-sdiff.md) | 422 | `result-track:c70fca78083ce58d80eb9d07046c0ecb8acf8dd9d67d4694e6fd3c63505b269b` |
| 57 | `lemma` | [coe_himp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/coe-himp.md) | 427 | `result-track:2ccea3853ff74a9ba310ff72766b022b7c5fbe422b6ae4722d50aeb8441ace78` |
| 58 | `instance` | [instBooleanAlgebra](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/instbooleanalgebra.md) | 429 | `declaration-track:fda99522fcee880eebaac970dccf51cfa49872a9aaa07e67e0db56b52cf75489` |
| 59 | `def` | [DefinableFun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun.md) | 450 | `declaration-track:454191b11777c8128b2a80b8ea109593450fc36c274a9533730da5a7da71da79` |
| 60 | `def` | [DefinableMap](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablemap.md) | 454 | `declaration-track:0deddde93ea14eacca01935e103b148d6175b5412859b22566a56094b1b22e64` |
| 61 | `theorem` | [DefinableFun.mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-mono.md) | 460 | `result-track:e5d802a0d321dcd268cad97079afcb5b5d555e5eb724814bbb52e84ea3ac3fd7` |
| 62 | `theorem` | [DefinableFun.of_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-of-empty.md) | 465 | `result-track:f7d559234a4e55d6f790780a824dd8a85c4f2a75a7d4c7f199d7569f2067ea49` |
| 63 | `theorem` | [empty_definableFun_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/empty-definablefun-iff.md) | 468 | `result-track:53aea010d1a526f0c8da04607bab59f0a7c0d2a34efc1578b2567350ff66edc0` |
| 64 | `theorem` | [definableFun_iff_empty_definableFun_with_params](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-iff-empty-definablefun-with-params.md) | 473 | `result-track:0737e977867c6b54a37d6c1c85ebdc36a28d85d18e55385c4ee36ce4b85f7219` |
| 65 | `theorem` | [_root_.FirstOrder.Language.Term.definableFun_realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/root-firstorder-language-term-definablefun-realize.md) | 479 | `result-track:202f4bfda121cf14ef5c74137ac67984560c954237f818ec6c06bf997dc9f8de` |
| 66 | `theorem` | [DefinableFun.fun_symbol](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-fun-symbol.md) | 488 | `result-track:cb64fca63d34d53cc261c8bf6fbab01aafb1958df3c97bcb4de1b0a834094d62` |
| 67 | `theorem` | [_root_.FirstOrder.Language.definableFun_var](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/root-firstorder-language-definablefun-var.md) | 496 | `result-track:f66b6fe032a9ee4d1afd164788688623f09a3f7d6d659e5116fbe93d20b4e6f8` |
| 68 | `theorem` | [DefinableFun.proj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-proj.md) | 501 | `result-track:52b35a1d5ea4eba98aec04965facc005f8d3dfd29523969de99d497dde5f9f29` |
| 69 | `theorem` | [_root_.FirstOrder.Language.definableFun_const](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/root-firstorder-language-definablefun-const.md) | 506 | `result-track:f827ba4ea45a151257a2ce70ddef855a1e9b9b0caa2c30fcbe527cd2da5d962f` |
| 70 | `lemma` | [_root_.Set.Definable.preimage_map](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/root-set-definable-preimage-map.md) | 515 | `result-track:1ecf30656b065dba06c0ff20d2d00739d59ab1310c42335c953b6657227e1085` |
| 71 | `theorem` | [DefinableFun.comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-comp.md) | 531 | `result-track:9f993aefdc732e5172169767da96fe9c78e90049ae16a02863db8da3b5620935` |
| 72 | `theorem` | [DefinableFun.ite](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-ite.md) | 548 | `result-track:cc8af30ee5ee981e9a7a8145cfcf9b717f27f65ea91d23b3846ad4398cd9963c` |
| 73 | `lemma` | [DefinableFun.ofPred_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-ofpred-eq.md) | 559 | `result-track:2da00ab42dccce9963f0eb87d8f6e946456281da6d989aee2e0f82d25481d3d0` |
| 74 | `lemma` | [DefinableFun.ofPred_eq_const](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/definablefun-ofpred-eq-const.md) | 570 | `result-track:134bb5d8f1251a1ac65e69dac295f1e69c84d4352b671d06663a4f1d193634d3` |
| 75 | `def` | [TermDefinable](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-source-edition-2.md) | 594 | `declaration-track:c9ee3ff75eb3ab62e4387ea182d575f6fa939fb4c3d1e4cb2849dff5aef0c9e7` |
| 76 | `theorem` | [TermDefinable.definable_tupleGraph](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-definable-tuplegraph.md) | 598 | `result-track:26f799117d125a7eefb661c4f5bc0c4dc86d1dd336f70d6a7d760177ba47baa0` |
| 77 | `theorem` | [TermDefinable.map_expansion](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-map-expansion.md) | 608 | `result-track:17aaca7687f37c52e25892dea6928a490c5d1bd4334645414f2c68d1a78adbc5` |
| 78 | `theorem` | [termDefinable_empty_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-empty-iff.md) | 615 | `result-track:2af2dd34b521f31e4d29ccdefc4d5cb8793e2aced0e1dd7afd771624e66a8c6d` |
| 79 | `theorem` | [termDefinable_empty_withConstants_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-empty-withconstants-iff.md) | 620 | `result-track:5172f34aeb3f8af6baf587a63fd0aa309ebf30b6517aa90982fb4feaa3b0566e` |
| 80 | `theorem` | [TermDefinable.mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-mono.md) | 625 | `result-track:a3c23eee0ef12ac467f4e32ad6b92de6edd2d45eb0c64b870d32623f5b820a9b` |
| 81 | `theorem` | [TermDefinable.trans](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-trans.md) | 634 | `result-track:0fcff441ef71ba07854ff1fb03b612279865d1aecf4edc76b8420aaec88c1dd5` |
| 82 | `def` | [TermDefinable₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable.md) | 648 | `declaration-track:c4d80f1b1efb73f60e4f6c2425c3ce3270fb7d23e6c3f14b9cbcf154d7d9a1ec` |
| 83 | `theorem` | [termDefinable₁_iff_termDefinable](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-iff-termdefinable.md) | 652 | `result-track:f5e304752f60eee065f7baf11aabe0ceaef4b0b8bdbd7d837319e2d372db3bc6` |
| 84 | `theorem` | [termDefinable₁_iff_exists_term](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-iff-exists-term.md) | 661 | `result-track:e1b31a87575d6829ac3ede78f1af44374f451337b7303921c55f0d197cb3af9b` |
| 85 | `theorem` | [TermDefinable₁.definable₂_graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-definable-graph.md) | 669 | `result-track:1842f6282c8cbbe176cdaf1cb77426cb120b886f58389b4b39bcb277d35ada11` |
| 86 | `theorem` | [TermDefinable₁.id](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-id.md) | 679 | `result-track:bc6105b1086a8c70208959ffc8847f6f92d4e0187b509222f3d2f7d37d34bd30` |
| 87 | `theorem` | [TermDefinable.const](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-const.md) | 684 | `result-track:31687297d86477b13f25125b9464ea7e5a4a481edb1e40c88e0605c6593045a4` |
| 88 | `theorem` | [TermDefinable₁.const](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-const-source-edition-2.md) | 689 | `result-track:aaf1d488686fdcb3f3b06271b5f80d45a35630f075b24bce161d32ddc8638f59` |
| 89 | `theorem` | [TermDefinable.comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-comp-source-edition-2.md) | 693 | `result-track:1aeee39d32562c48b112aeaa1c78ebe08a7b16a0d9e184686c8bb5d4cbc8231e` |
| 90 | `theorem` | [TermDefinable₁.comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-comp.md) | 702 | `result-track:149a2f60fe506f42e2bd11b2ff4302041e7e3346b5abacf938d27cb9e7af84d8` |
| 91 | `theorem` | [TermDefinable₁.comp_termDefinable](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityPublic.lean/declarations/termdefinable-comp-termdefinable.md) | 708 | `result-track:3afcae3c571d6a5a06a4572a9c3a68f48093642e374800c496a7c2000bb755a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d00e4dca96e3977e3c87f27b31db3451303cfb4ca242fbadf5641b303a80085 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

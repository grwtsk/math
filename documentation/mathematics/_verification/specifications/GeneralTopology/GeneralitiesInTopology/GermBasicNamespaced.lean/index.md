# Verification target: Germ Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "115de22680d360ac3c5da8c3ef221ae7a9d326a7",
  "lexical_observation_count": 151,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `115de22680d360ac3c5da8c3ef221ae7a9d326a7`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [const_eventuallyEq'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-eventuallyeq.md) | 69 | `result-track:0d1181efcb5eef8d204106e7b014cdc2de1641d76c526f1b0a9812a48c168fe4` |
| 2 | `theorem` | [const_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-eventuallyeq-source-edition-2.md) | 72 | `result-track:6b92f6d7ce8c636c3ea739c62cc5cbfc40f96085df4e1b7d3a764062ec9c2ea3` |
| 3 | `def` | [germSetoid](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/germsetoid.md) | 76 | `declaration-track:5ac936c84aaac3c96a2ad83da20b42ade7cf0526f7047b9c76f9beb20b561ddd` |
| 4 | `def` | [Germ](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/germ.md) | 81 | `declaration-track:eef5288c361a3aae271f4f07b587e536f899432477f81db13031a1da42e15ba7` |
| 5 | `def` | [productSetoid](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/productsetoid.md) | 86 | `declaration-track:0f07ad7e27cc0c3a1b7577cf48366f147739f0e2cf812d63ded7c8e77a2474ca` |
| 6 | `def` | [Product](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/product.md) | 94 | `declaration-track:71a829675ef30597da1e63eff7ded4cf00ef9afb94ab992d83bd779b1d5d3cbe` |
| 7 | `instance` | [coeTC](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coetc-source-edition-2.md) | 101 | `declaration-track:b97edf13804604168f12ca86ba93e4ed96cdc879ab8b34f972b799f9b2e7d8b9` |
| 8 | `instance` | [instInhabited](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instinhabited-source-edition-2.md) | 104 | `declaration-track:687e4dc9bb41acd02badf1560e22f107b88697c14179e0e908aafd777992e25d` |
| 9 | `def` | [ofFun](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/offun.md) | 112 | `declaration-track:f6e85e13a95124483815e84c3332cdc803f7bbdf1bb6b4ea714571752b55f919` |
| 10 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instance.md) | 114 | `declaration-track:078eec91d6d62fb0f5465de3450cb873f35af7b0441564e6a1c161f1a79120e8` |
| 11 | `def` | [const](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const.md) | 118 | `declaration-track:1d15b4972528c84eb643a05a4758646c5be8ec34a9eb2b8f7ad392e91ce6db8c` |
| 12 | `instance` | [coeTC](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coetc.md) | 120 | `declaration-track:69674e90f45612f13be43f854accdc9c20e3bf2385fa626a347268f0df8dd163` |
| 13 | `def` | [IsConstant](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/isconstant.md) | 124 | `declaration-track:df9ac3e8f34035aefa0d01a476e978b3bcf011de59bfdfc4060bd5f69cf98ed3` |
| 14 | `theorem` | [isConstant_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/isconstant-coe.md) | 130 | `result-track:c4940cd8bc2b95601d910a5bb0108b34bfdc36cd9e6a158b74dfdbe978864b9a` |
| 15 | `theorem` | [isConstant_coe_const](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/isconstant-coe-const.md) | 134 | `result-track:23372ef58eb6f4a46b080c0e5fd6ffbaa812db29d70aafca23bd4f367efca42d` |
| 16 | `lemma` | [isConstant_comp](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/isconstant-comp.md) | 138 | `result-track:3b24d9a0fac8555fe2da86861606119d196e15a34bd544389a592c7c7d3a9b90` |
| 17 | `theorem` | [quot_mk_eq_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/quot-mk-eq-coe.md) | 144 | `result-track:4ab43afdacda33765157b93e8b615f5611f8eca7eff47b4d4769b687ad0865b6` |
| 18 | `theorem` | [mk'_eq_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/mk-eq-coe.md) | 148 | `result-track:df54f10bbbee2c98e515020f44ce1dfb2fa790d0beee1bd91d5878d54054e606` |
| 19 | `theorem` | [inductionOn](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/inductionon.md) | 153 | `result-track:2160af551f198e0f24f70fa90afd48e663684547e7e64e6c90691c6b0f8debd1` |
| 20 | `theorem` | [inductionOn₂](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/inductionon-source-edition-3.md) | 157 | `result-track:dac688460ab8f4ae2c5ff38f1b83273740e14ab546fcd60c83c222cd5b800670` |
| 21 | `theorem` | [inductionOn₃](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/inductionon-source-edition-2.md) | 162 | `result-track:96be3a618006395ce8eeeac6d13527f65f66a5904f189551f2caebaed637e3ff` |
| 22 | `def` | [map'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map.md) | 169 | `declaration-track:9a461160ecd68dc54b97de773e6ddc496e1dbc32c4f62c3620564141ffb89378` |
| 23 | `def` | [liftOn](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/lifton.md) | 175 | `declaration-track:72af51abe634a902620d86f8a44a0ec4cffd09ad19985050cdd7a9fe108a91de` |
| 24 | `theorem` | [map'_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-coe-source-edition-3.md) | 180 | `result-track:f7fdd15a05229de01293c868cfe3def75754c9ccfa8ef297cb21eff36419e6b7` |
| 25 | `theorem` | [coe_eq](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-eq.md) | 185 | `result-track:85f9e82e0fa8f94abc48153a7bbf16dfc758a5a0e688e1a67f6082526fec58ad` |
| 26 | `def` | [map](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-source-edition-3.md) | 191 | `declaration-track:dd6218a3935ecc83986abf46d047509d3b23c7d3b552be6bd66034ce2c8b2684` |
| 27 | `theorem` | [map_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-coe-source-edition-2.md) | 195 | `result-track:3d419c11be73f3ac19e5e41cb78f679a2c5402fee9c2fdb870057b2277911f73` |
| 28 | `theorem` | [map_id](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-id.md) | 199 | `result-track:51e61f1088d5465c1f006f8012560a83ff921c7ac91348b7dc3404de2d0ed1db` |
| 29 | `theorem` | [map_map](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-map.md) | 203 | `result-track:9d405351a8d5ca2312ae1d4a5ae42b33c237f633f89d4a1fbaa5a23aec4ca385` |
| 30 | `def` | [map₂](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-source-edition-2.md) | 208 | `declaration-track:cffc274963e3535427a729131fb159558a6d4ec2dbbf1af4cfd5f770ed2df942` |
| 31 | `theorem` | [map₂_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-coe.md) | 213 | `result-track:001290c02ac744fd3de85e60adcd32acc6df66c84e868941636831d5303651c8` |
| 32 | `def` | [Tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/tendsto.md) | 219 | `declaration-track:862b7b2d639f55b3255f322099a8f24b4be40b7558590387d38166ba82d5412d` |
| 33 | `theorem` | [coe_tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-tendsto.md) | 223 | `result-track:2927cc2e682ff1651506ee1886e530183b2f8ce5c7d5b303548e15f1af5b64e9` |
| 34 | `def` | [compTendsto'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/comptendsto-source-edition-2.md) | 230 | `declaration-track:b1ae748dd19927da9792aa1db3c07cc99fa251758549092141f658bc2c33c81d` |
| 35 | `theorem` | [coe_compTendsto'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-comptendsto-source-edition-2.md) | 235 | `result-track:bf6b7f6a4a1bdd7e28042eae4431e4f4d9281a4ca2875e624b74e2c9502a668a` |
| 36 | `def` | [compTendsto](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/comptendsto.md) | 241 | `declaration-track:8d8c0fe58c22332132f240a71bb86c7d281229a1c70de9173589f237b82ede49` |
| 37 | `theorem` | [coe_compTendsto](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-comptendsto.md) | 245 | `result-track:59604ca37ed26f2a99b56dcba6c77d3db52f69a34bb2b48f25bb015ac1e26236` |
| 38 | `theorem` | [compTendsto'_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/comptendsto-coe.md) | 253 | `result-track:7b1c5d70610d2732425eb4b56b24b5a87ebe896b8c856bd5b64474e63ee2c97f` |
| 39 | `theorem` | [Filter.Tendsto.congr_germ](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/filter-tendsto-congr-germ.md) | 257 | `result-track:a3d167a415fa86e1082cdc73c77ca58827d7d88f481b26458dc51b38d8db9f82` |
| 40 | `lemma` | [isConstant_comp_tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/isconstant-comp-tendsto.md) | 261 | `result-track:19ca787916d2b7523c814c5767571b6f204aa5836089001610ec5ead72cfd424` |
| 41 | `lemma` | [isConstant_compTendsto](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/isconstant-comptendsto.md) | 269 | `result-track:999dc00639b602703f90d21118623d435d99d1a8d60bd6884ca5eb95dcea7d3b` |
| 42 | `theorem` | [const_inj](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-inj.md) | 275 | `result-track:0c7f3e946d69cf371adb935a99153b03eadd64615cef8e51ea036dfd9dab0df7` |
| 43 | `theorem` | [map_const](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-const.md) | 279 | `result-track:475f21343cd1cf79f87a448f04355a3412ce03818a2431e0a7592cc152d0be44` |
| 44 | `theorem` | [map₂_const](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/map-const-source-edition-2.md) | 283 | `result-track:ac6ad73fd4af6bbbd13bfef894540eaa0a0abe528b285b54ddfbae99da12cceb` |
| 45 | `theorem` | [const_compTendsto](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-comptendsto-source-edition-2.md) | 288 | `result-track:b957a2f39b1b431247ecbd57c5b4755c030b833eccd7847245584fa0688c86b2` |
| 46 | `theorem` | [const_compTendsto'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-comptendsto.md) | 293 | `result-track:73cbe9efb4886d20d641c30b6770c02a555bd3d73839b2baafabfcfa05d476c9` |
| 47 | `def` | [LiftPred](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/liftpred.md) | 298 | `declaration-track:f4aab3e1d75da1afbc246ccefe41a68c5b862a31260adecf1841c774ef6fd64a` |
| 48 | `theorem` | [liftPred_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/liftpred-coe.md) | 303 | `result-track:86c4ca512d7ac81381f626df9d9fc557a47aa2c55319e42cc279963ea9e82be4` |
| 49 | `theorem` | [liftPred_const](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/liftpred-const.md) | 306 | `result-track:68122135e37682909518659fef749725abf412e0318dcd1bfd7bac33ef754329` |
| 50 | `theorem` | [liftPred_const_iff](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/liftpred-const-iff.md) | 310 | `result-track:6d216b038aefbae730e5f2b0db816273c0c493312225d40cb1d549bf95e556df` |
| 51 | `def` | [LiftRel](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/liftrel.md) | 314 | `declaration-track:0b172b1a690bf252d7ad29a6af70494c88d034d565371c10b199dc7016422cc9` |
| 52 | `theorem` | [liftRel_coe](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/liftrel-coe.md) | 319 | `result-track:c7939728da5754d839d930e344440ddb735128b486483f5978669a992600d2c0` |
| 53 | `theorem` | [liftRel_const](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/liftrel-const.md) | 323 | `result-track:6d92ada1146205d522cb5811a651cbd19502ce059cacbb71bcac2ad18703178c` |
| 54 | `theorem` | [liftRel_const_iff](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/liftrel-const-iff.md) | 328 | `result-track:aa9973f5535f893d20f7b3db95ee47d2b9bccb20628a7f814f5837048057f152` |
| 55 | `instance` | [instInhabited](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instinhabited.md) | 332 | `declaration-track:2f09565f13a282e5fd434898b9ffe305f75048a8782af2ceac4e8d93245a4950` |
| 56 | `instance` | [instMul](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmul.md) | 338 | `declaration-track:d6419ad5ab7ba3ad9d5e89ecbfb3553319d4d3abceb0c657691419a05b9c47a2` |
| 57 | `theorem` | [coe_mul](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-mul.md) | 341 | `result-track:462cd759763d9f662ec478dbfff29e14b8c135711f362279e5b002db71526965` |
| 58 | `instance` | [instOne](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instone.md) | 344 | `declaration-track:daac0efe387c349187fa1eee777863b03481fcea4d31fcadea27d7820ac42105` |
| 59 | `theorem` | [coe_one](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-one.md) | 347 | `result-track:23f879fac9efc25bb1262a6bdce2e6e17a4429fd66b7fd35bb34644f27d8b4f2` |
| 60 | `instance` | [instSemigroup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instsemigroup.md) | 351 | `declaration-track:398e4aa472b0a664f23f3a87d2111e2358da09368003f1e5898910bc046ef175` |
| 61 | `instance` | [instCommSemigroup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instcommsemigroup.md) | 356 | `declaration-track:90f330fa3133cf5e30ef5e8113246cfb0b25bbcdb154fed8fa789f85518b2512` |
| 62 | `instance` | [instIsLeftCancelMul](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instisleftcancelmul.md) | 360 | `declaration-track:b0275b9d89e696d1a58d690114c88f6d7e10e67efc26be6626106c636e3e73a0` |
| 63 | `instance` | [instIsRightCancelMul](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instisrightcancelmul.md) | 366 | `declaration-track:cf3e9851d1b6bc2fe5a746b3c3e484433eb607d767e0e827478a139afdc17a45` |
| 64 | `instance` | [instIsCancelMul](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instiscancelmul.md) | 372 | `declaration-track:a56ea2cf621f66c71c34f9b1d12b6a3e00b8564c935d209f582d4227f08812f4` |
| 65 | `instance` | [instLeftCancelSemigroup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instleftcancelsemigroup.md) | 375 | `declaration-track:a61148ed14c8c35516641cb2b27b0ddd1322b179e0b054f8f2025016b6bd4862` |
| 66 | `instance` | [instRightCancelSemigroup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instrightcancelsemigroup.md) | 379 | `declaration-track:ef173d6bec8c610c61bf5f81a8e1afabd7c42703b654684cfc5eabe051e33bf6` |
| 67 | `instance` | [instMulOneClass](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmuloneclass.md) | 383 | `declaration-track:d9eba102176aaa08ed58acdbc98327f230ead6d905f54b57a876ffcdba03725c` |
| 68 | `instance` | [instSMul](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instsmul.md) | 388 | `declaration-track:2cb6eef4a8989a92becbd33aa12a99e5c2928ec4d5c5e8bf9bce73a5ae79af17` |
| 69 | `instance` | [instPow](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instpow.md) | 391 | `declaration-track:a30f89eeaa68742ea3802d8da0e2f9ac8b6571aa20c85214b45fddacfe95257d` |
| 70 | `theorem` | [coe_smul](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-smul-source-edition-2.md) | 394 | `result-track:a0c658658112ee6bb3dd258124ed626df5c565b9d706e36f110c68b40dd7ff27` |
| 71 | `theorem` | [const_smul](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-smul.md) | 398 | `result-track:8e25acfbff5588a56fb8f02c4ca02e2cff0797a71da6c0505d0aea9d6acaccb4` |
| 72 | `theorem` | [coe_pow](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-pow.md) | 402 | `result-track:1dcd55ccb12720c3ec3f7bffe00086ee99958776716f5741082ab0ba50af6cff` |
| 73 | `theorem` | [const_pow](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-pow.md) | 406 | `result-track:0730059e3413992ec7f6d8a25d41a363b92899d760a55fe6d30e262df3832e0d` |
| 74 | `instance` | [instMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmonoid.md) | 411 | `declaration-track:7bee107b5e1c9d489b1fa4ea295b387d4afde972812c2fe5d13f701e88377e82` |
| 75 | `def` | [coeMulHom](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coemulhom.md) | 420 | `declaration-track:4b8b1b38300edbed37702915b11307245ae169fd9e98d94a25ffe6283e8f5749` |
| 76 | `theorem` | [coe_coeMulHom](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-coemulhom.md) | 424 | `result-track:86b6c4d93a23819f02cbf4fc9a1bd601ddbd25acaf511938e4c328389069d7cd` |
| 77 | `instance` | [instCommMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instcommmonoid.md) | 428 | `declaration-track:6df8753d778c4b04831146b4894b13d45e6a52646a5b0ef3c5aaa13802f8d2e4` |
| 78 | `instance` | [instNatCast](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnatcast.md) | 431 | `declaration-track:40cfcb2778cbef65bda1786d97d7cf984acf67da04f101208175f103792917d8` |
| 79 | `theorem` | [natCast_def](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/natcast-def.md) | 434 | `result-track:50365d625fc896af32e9cddbc74cc0570d2f52a4bbb29619c1ceb3e6be2fca19` |
| 80 | `theorem` | [const_nat](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-nat.md) | 437 | `result-track:fc0c5377ffc535bc9e89a29a9d761673bb75ef5c59cb40fea01d36aab086533c` |
| 81 | `theorem` | [coe_ofNat](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-ofnat.md) | 440 | `result-track:d50ddaa5998060171a18064c4dc214100de0ee5f3741e96080024dac569eb848` |
| 82 | `theorem` | [const_ofNat](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-ofnat.md) | 445 | `result-track:dd413c4e90653a66a7f89b967e2de3ec4366771c6a9ffcc2c1f7aaf48464cafb` |
| 83 | `instance` | [instIntCast](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instintcast.md) | 449 | `declaration-track:56336215eb2b9ae4d9b2ff8d3bfa6a9cbe2348a978f32e7a0945d7bb6eeba919` |
| 84 | `theorem` | [intCast_def](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/intcast-def.md) | 452 | `result-track:85b2a127d0fb61ea4436b00c5b26821b4190372e5bc9c4921aa5793df058bcaa` |
| 85 | `instance` | [instAddMonoidWithOne](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instaddmonoidwithone.md) | 454 | `declaration-track:ffff4f1ede1d7407620bc74f696197f0f18deb278ba158c5d6e25cca894971b1` |
| 86 | `instance` | [instAddCommMonoidWithOne](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instaddcommmonoidwithone.md) | 458 | `declaration-track:dc7d1c07d0720035f07670dbf483b47783a44e0ac37b2fd7a667c6fe70a67bc9` |
| 87 | `instance` | [instInv](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instinv.md) | 461 | `declaration-track:dc7cb8a6fbeedcd9db9305aeac52fd4c9e78766a81c49f1ff4be796dddaeffcf` |
| 88 | `theorem` | [coe_inv](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-inv.md) | 464 | `result-track:906286063f0d2e3c306e7be482ff7f35d8ec1c94f0510cd4af96459eb4fa62c1` |
| 89 | `theorem` | [const_inv](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-inv.md) | 468 | `result-track:24c75befd83a77b233a20efedb8716718d0470fcaea42ddbecb6a49e7fc8861c` |
| 90 | `instance` | [instDiv](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instdiv.md) | 471 | `declaration-track:bbb223385983d1a1882ba28cdfe0a433fe997a05dde9402a8d23c03ad36f2e4a` |
| 91 | `theorem` | [coe_div](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-div.md) | 474 | `result-track:c0a2d306519a83b1e459cfe1d105d8188eb93e4a4d282fb0aed1a79a373c1f85` |
| 92 | `theorem` | [const_div](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-div.md) | 478 | `result-track:4d857e19fc5caf9a89493fb93d0e9b6a314360dd8ea4668c37997a06dfed700d` |
| 93 | `instance` | [instInvolutiveInv](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instinvolutiveinv.md) | 482 | `declaration-track:93f31b2922a91cfe5e92fbdb8339715c6f7d6c7724cd2995e2fd12a6b2a9d4c3` |
| 94 | `instance` | [instHasDistribNeg](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/insthasdistribneg.md) | 485 | `declaration-track:281e56dbc5746a98f499d0c77a36da8da3be0089ec5573c79f4aa26b26fd494f` |
| 95 | `instance` | [instInvOneClass](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instinvoneclass.md) | 490 | `declaration-track:be206245bedf48e6c8332025cd5d04de7efd0bf79e9f6fa8ada237e5e95c7a5c` |
| 96 | `instance` | [instDivInvMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instdivinvmonoid.md) | 494 | `declaration-track:6ef1a8dcaab652d89f927f0318de050bc28155e830c90de1a8d43afd75ce59f0` |
| 97 | `instance` | [instDivisionMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instdivisionmonoid.md) | 505 | `declaration-track:7135f485525c2ef1861c2ceb96326dca0903837095e455ba4a6acedc4cbc8752` |
| 98 | `instance` | [instGroup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instgroup.md) | 512 | `declaration-track:09a01a3fec4b37253aa1e8d2b9cd2cb872103eeb319ff0bb22793bdc865c252a` |
| 99 | `instance` | [instCommGroup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instcommgroup.md) | 516 | `declaration-track:6f98fe0c02f0afdae115e94ff66f08e74d354c981d5b292762944493dc69e8d0` |
| 100 | `instance` | [instAddGroupWithOne](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instaddgroupwithone.md) | 519 | `declaration-track:3200e67fd9de607cdb6e2dc2f90fc6c0bfbb614d350889be0347931a01c84524` |
| 101 | `instance` | [instNontrivial](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnontrivial.md) | 531 | `declaration-track:15f5070aa0d81bc554bc30266389abec25ac95cdb3819e00c09a7dc313cf3d58` |
| 102 | `instance` | [instMulZeroClass](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmulzeroclass.md) | 535 | `declaration-track:f8a083c8a1a841d37db1bbebf2b978172ed7640d35c11d2f348ca8687742cc9c` |
| 103 | `instance` | [instMulZeroOneClass](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmulzerooneclass.md) | 539 | `declaration-track:790faa42fa8223ab95db435155d9ce385c483d1b086e0a3cf9a48d3121996482` |
| 104 | `instance` | [instMonoidWithZero](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmonoidwithzero.md) | 543 | `declaration-track:efe37c09646e4a968de5a5f46c27d634e9cc9fe225d5cbeff4561d82ea2f5736` |
| 105 | `instance` | [instDistrib](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instdistrib.md) | 547 | `declaration-track:a4cd1f122dfb64ef5b1f880b47c2794c7c3f09884cf880ed9b10810037afb986` |
| 106 | `instance` | [instNonUnitalNonAssocSemiring](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnonunitalnonassocsemiring.md) | 551 | `declaration-track:0ecbeaf3693ab445f25d42f48f02d102a12d5ec7257037bc52fec11cd55ad5f0` |
| 107 | `instance` | [instNonUnitalSemiring](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnonunitalsemiring.md) | 557 | `declaration-track:804d8f535c9d0cc99ea6c49eeaece53ac2ae953004da9dd1cbfd2ea0a2777bc2` |
| 108 | `instance` | [instNonAssocSemiring](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnonassocsemiring.md) | 560 | `declaration-track:c19db3a6b6c24f4d920f674bb50bbdee77489938c37515e5bb33ea58853cac9c` |
| 109 | `instance` | [instNonUnitalNonAssocRing](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnonunitalnonassocring.md) | 565 | `declaration-track:294a1672bd91b56c5793e97759f5b90d163e267b1258ecadc5ccffa91aaf69e3` |
| 110 | `instance` | [instNonUnitalRing](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnonunitalring.md) | 570 | `declaration-track:f84e73cc21ff3909c93f8559d857339578c62cac774b57ac8a532727d2c9ec67` |
| 111 | `instance` | [instNonAssocRing](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnonassocring.md) | 573 | `declaration-track:5af8a441eb39c29ebc14763c64524152c085dfecb2527066c61c12d75c5b3ffc` |
| 112 | `instance` | [instSemiring](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instsemiring.md) | 578 | `declaration-track:44d99f5e040298dc0f9d743af7f81da349a017a4d429610b0538d166ef2ac38a` |
| 113 | `instance` | [instRing](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instring.md) | 583 | `declaration-track:e3e7bb6286767d1dfe867700fa965ba0b63ee55dad25e6d3d01d3d1eccf4822a` |
| 114 | `instance` | [instNonUnitalCommSemiring](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnonunitalcommsemiring.md) | 588 | `declaration-track:3c2facf39707314ae58410a21664274585dd1f4a284f203781fbdfa4ae6cf734` |
| 115 | `instance` | [instCommSemiring](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instcommsemiring.md) | 592 | `declaration-track:7eaad941ba794578bfcbcb225f62f64f59e4d49c7d34ec7602fd0249ac05563e` |
| 116 | `instance` | [instNonUnitalCommRing](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instnonunitalcommring.md) | 595 | `declaration-track:42c42e9d5f4a2c06333e336e28972b41ba44977a2de78faca131f6a8e2a4f70c` |
| 117 | `instance` | [instCommRing](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instcommring.md) | 599 | `declaration-track:015efe1f3677e00ee2a9d8d4379205bdf8d7b812436128b439117a2fa63449c7` |
| 118 | `def` | [coeRingHom](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coeringhom.md) | 603 | `declaration-track:6a2add3b4b1d81ef650ff3bc800492b5d8bedf3331323338d83665d461bd4192` |
| 119 | `theorem` | [coe_coeRingHom](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-coeringhom.md) | 607 | `result-track:61ab304e37697ec361dab1f54ae5d69adefb5fdc0c43bcc9c7b3a7e7a2ab8fa4` |
| 120 | `instance` | [instSMul'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instsmul-source-edition-2.md) | 617 | `declaration-track:bb28d8e1b28def58cc4186b1549b5d9e01d1c450315a5ca7b14ca9c8f934c852` |
| 121 | `theorem` | [coe_smul'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-smul.md) | 621 | `result-track:7a560d7c028fe0d1e9a93ead12032c0e33c50d7bff218d6c9df6d29688089889` |
| 122 | `instance` | [instMulAction](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmulaction-source-edition-2.md) | 625 | `declaration-track:533064807811739b11143297a6b7941bc230983a121fd47855eb7ed895d75225` |
| 123 | `instance` | [instMulAction'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmulaction.md) | 636 | `declaration-track:0ed0fa880cdbe4eb2a443a2fc0a9b654658f4da47e79bc771f2dd580242535dc` |
| 124 | `instance` | [instDistribMulAction](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instdistribmulaction.md) | 643 | `declaration-track:233b821c7a4d5129cefeaa94180f473a2786aa48fe1cffcbead12d182cc5936e` |
| 125 | `instance` | [instDistribMulAction'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instdistribmulaction-source-edition-2.md) | 651 | `declaration-track:de25beb5f14826d6f60ef322cd07b79d6b4b7207eab41be63cef877c55943dd2` |
| 126 | `instance` | [instModule](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmodule-source-edition-2.md) | 659 | `declaration-track:37f4033d7e6a8c56c8ac929cca7306328c9e74972dd10cb4cf7d3ffcade91078` |
| 127 | `instance` | [instModule'](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instmodule.md) | 669 | `declaration-track:27fa0e35d1104540023b454fe7e527f8e47e7428422dd91c37c9936e750f6888` |
| 128 | `instance` | [instLE](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instle.md) | 679 | `declaration-track:d1b13e0b4f354e69f38d69e7d9115fe23a6ceed8d9fdc8ab4cb2417836ec5cb4` |
| 129 | `theorem` | [le_def](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/le-def.md) | 681 | `result-track:ef54736e95166e2242a9a38d8b4007459db6be5929973c70916652b7996d36a8` |
| 130 | `theorem` | [coe_le](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-le.md) | 685 | `result-track:4c3b9d7d9ff7fc2e9bca51d78fcc0394277c0cfbe961ec70c1cbc04dc3ff6f7a` |
| 131 | `theorem` | [coe_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/coe-nonneg.md) | 688 | `result-track:a1f793d76eda1cdfd8756c0d71972e0841e6ef7a59118d155443c4c41cec2841` |
| 132 | `theorem` | [const_le](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-le.md) | 691 | `result-track:a8b8185f7c212d3f5b60cec623fa26d4446c7a0ddc55ad97d12ffd808d2c0882` |
| 133 | `theorem` | [const_le_iff](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-le-iff.md) | 695 | `result-track:2534e18ef07443afe564303a2213f2a57535b08d689a2e1dd0ff161a5c007bc7` |
| 134 | `instance` | [instPreorder](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instpreorder.md) | 698 | `declaration-track:c8e42c9ca1fdd202e01e5da271c3b992ddae46fdd0e0b109aead284f19d9302e` |
| 135 | `instance` | [instPartialOrder](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instpartialorder.md) | 703 | `declaration-track:a3e4574444ad023d2e280fd2bd33a13acb297341933313cacd4d0ff51714d363` |
| 136 | `instance` | [instBot](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instbot.md) | 706 | `declaration-track:bc0ed57bec45604e73c8cca0f31a2aefa88fded3d05226820c7a8ff9c067f61c` |
| 137 | `instance` | [instTop](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/insttop.md) | 707 | `declaration-track:4605ec6d3963801b9c7248b1a342ce8e85c7d3ce47764a0c6dc1c2d8a0352c2c` |
| 138 | `theorem` | [const_bot](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-bot.md) | 710 | `result-track:47e8e3dbc0a3dd1cb3492182ae0f10d9570f9569e3e1350645f72ba907d74c71` |
| 139 | `theorem` | [const_top](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-top.md) | 714 | `result-track:bd1f10d3679445bf13e432d5af376a6c77a5002a164a95705dd779c0702b541c` |
| 140 | `instance` | [instOrderBot](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instorderbot.md) | 717 | `declaration-track:241db387a5ac361c120d54ad692f2da9012aa4769cee0ed27187104d0dc9b69a` |
| 141 | `instance` | [instOrderTop](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instordertop.md) | 720 | `declaration-track:fd748a3f57b7477cb1a8b6a8608c84eebffa61df5e3a058db54e0433a5ac966f` |
| 142 | `instance` | [instBoundedOrder](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instboundedorder.md) | 723 | `declaration-track:d16842972758faace675357a05576a47fb48c29c8189dedb93b0628c28a58e9e` |
| 143 | `instance` | [instSup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instsup.md) | 727 | `declaration-track:7474f134633430ffd17ced8db756a5b66fe7b213105ca609ee9819beb17b21c9` |
| 144 | `instance` | [instInf](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instinf.md) | 728 | `declaration-track:7299a2a3882dedb2283658fb3388cdd0ab04ea9e829d6e1a37a2b2482dd50eeb` |
| 145 | `theorem` | [const_sup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-sup.md) | 731 | `result-track:d823697059675707f7badac931adc80b2e729b639f6b787834111a0bdf4951a8` |
| 146 | `theorem` | [const_inf](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/const-inf.md) | 735 | `result-track:398fea0c8c212206489291c017ea212e8f568ee9d5934a2973dada41fa8eb566` |
| 147 | `instance` | [instSemilatticeSup](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instsemilatticesup.md) | 738 | `declaration-track:d0b9d51597f7dc688a6cf1ffd23a2b1800f99012ed07370c8447739c3d8608ce` |
| 148 | `instance` | [instSemilatticeInf](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instsemilatticeinf.md) | 744 | `declaration-track:2ddb4f84ae94feeb90143d6e8f4805696c73587d84bce0805ce50cd592b0da29` |
| 149 | `instance` | [instLattice](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instlattice.md) | 750 | `declaration-track:29a19b509372506d809e3611585f7757682594260d2a7245c0a4ab615a7304f6` |
| 150 | `instance` | [instDistribLattice](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instdistriblattice.md) | 754 | `declaration-track:be1ab16eab7acbebf556dc67e956e2c90067e266678b2c98e713ff186307feb0` |
| 151 | `instance` | [instExistsMulOfLE](../../../../../GeneralTopology/GeneralitiesInTopology/GermBasicNamespaced.lean/declarations/instexistsmulofle.md) | 758 | `declaration-track:6216278c1375a8a40234cddffd2272ac1a7dfe1f965252d409fdfde04daa2e8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70ef06ea4d9b5893c43dadb06acef1d82f4ee40160eb0e803a897574c7846991 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant552ff6f039f7f2c8f08f29fd2979d97ffc4beebd8b0a891df04f9ed6f72995b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

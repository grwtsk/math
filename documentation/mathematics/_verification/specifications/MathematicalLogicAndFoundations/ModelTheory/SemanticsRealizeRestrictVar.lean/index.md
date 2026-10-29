# Verification target: Semantics Realize Restrict Var

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a059889a228ea4409cb604b1fb01a98f3045cd90",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a059889a228ea4409cb604b1fb01a98f3045cd90`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Syntax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ProdSigma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-source-edition-2.md) | 70 | `declaration-track:94ccaf54998f3245f2674bcb01f907ddee95a34ab5c2a4e515b6a1d0a2be22cf` |
| 2 | `theorem` | [realize_var](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-var.md) | 75 | `result-track:d601eebfffd4a8353149ba336d17c85fefdc856125a33a774598dc926e0e5736` |
| 3 | `theorem` | [realize_func](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-func.md) | 78 | `result-track:873a3f023543525d229c53de9704be032b1a362282224573dd157b2c0430a462` |
| 4 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-relabel.md) | 82 | `result-track:6cdc9e697f917e674c9edb8e3b94d00e04bac653e37dbe7ab834189ef8263d38` |
| 5 | `theorem` | [realize_liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-liftat-source-edition-2.md) | 89 | `result-track:c94b6f1bbe41df6aa7c46a0dedbe5019fba469c242373851d520aa934f1f5379` |
| 6 | `theorem` | [realize_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-constants.md) | 96 | `result-track:f4deec4b847a12cbe387cd075763768fd615afcee04efd698c79ad63e06b6e59` |
| 7 | `theorem` | [realize_functions_apply₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-functions-apply.md) | 100 | `result-track:42b0bc81915d4e9967990907568dbf89c29e0940feb7a3250b9393814bdfba5e` |
| 8 | `theorem` | [realize_functions_apply₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-functions-apply-source-edition-2.md) | 107 | `result-track:4c4912c56490f3e008e0cd45fa60814b85d8aba965e1542c2fac6766b54a6e6d` |
| 9 | `theorem` | [realize_con](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-con.md) | 114 | `result-track:8c182047a8a24c06353a8b282cff594b7bb5c17465f97df2fe07a945863013b0` |
| 10 | `theorem` | [realize_subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-subst-source-edition-2.md) | 118 | `result-track:d334a36d8b45f546bf6ae2275938a2ead9cee7c2b38f440df4851dcbd4e001f0` |
| 11 | `theorem` | [realize_restrictVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-restrictvar.md) | 124 | `result-track:c561c1152d9a5b0b9223133a86ee059f9937d5d8c67e57dfce71b20279f0505c` |
| 12 | `theorem` | [realize_restrictVar'](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-restrictvar-source-edition-2.md) | 135 | `result-track:dbc5c2dca5fdf50ed89cba6b731e2c09c43d4b18b2bef70c9eb8ec29edc90ea4` |
| 13 | `theorem` | [realize_restrictVarLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-restrictvarleft.md) | 139 | `result-track:782153f504a55fcee09acd85c2eaef08751f42662a6f5f975c218da907261ab9` |
| 14 | `theorem` | [realize_restrictVarLeft'](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-restrictvarleft-source-edition-2.md) | 151 | `result-track:f40ea88e2a6157dffcfe7657867badaa56f05414f30e8e706891d6651f1146f3` |
| 15 | `theorem` | [realize_constantsToVars](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-constantstovars.md) | 158 | `result-track:e57c4bdf2d0a3e0e31f9fe48f308074210ccdad3c36ba4bc967ce7671b46d0ff` |
| 16 | `theorem` | [realize_varsToConstants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-varstoconstants.md) | 178 | `result-track:fc1378d30ae474f0ff14bc36970a2b170e2c222575d0596158132b5f04be3a29` |
| 17 | `theorem` | [realize_constantsVarsEquivLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-constantsvarsequivleft.md) | 188 | `result-track:42c6b83c567dac6f66032168bf11a4f9a6b31b5b70dd1c7a571b6e1f71383872` |
| 18 | `theorem` | [realize_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-onterm.md) | 204 | `result-track:5ae32947c89e2b06c54f8541baae20cbe58304d7508834ac8b797a05dad2d99f` |
| 19 | `theorem` | [HomClass.realize_term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/homclass-realize-term.md) | 213 | `result-track:d92edf1ede6fec4e5fffbddfcb0208e968d60cce83a671d861fb91e752486e5a` |
| 20 | `def` | [Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize.md) | 230 | `declaration-track:015449a3ae1c57c7082f4af8d67f4889129f09fa60eeeb52d3fcf72d55bcddf1` |
| 21 | `theorem` | [realize_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-bot.md) | 241 | `result-track:3feecd14fbdd8d6c1970a5c5097a9897d77a78be1f7b303f2d77445939b44d04` |
| 22 | `theorem` | [realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-not.md) | 245 | `result-track:3c88c64b337a0c1f9ad806fb1acaa1763a895013192b777e8b7befc75e6e7429` |
| 23 | `theorem` | [realize_bdEqual](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-bdequal.md) | 249 | `result-track:c87b7e7557afe0ed8f861b84c7678de5245f8de6d2c28f3ad68110d8a7ccb68e` |
| 24 | `theorem` | [realize_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-top.md) | 254 | `result-track:4b4f2f5d1bbbf38db9884af438d6da15b5ef6bef53c51a303bbe9693063c7857` |
| 25 | `theorem` | [realize_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-inf-source-edition-2.md) | 257 | `result-track:55d57f7fd0585cd1deba3639cc03d82171a00db6dd4da8ab1de091a5adbd95cd` |
| 26 | `theorem` | [realize_foldr_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-foldr-inf.md) | 261 | `result-track:0e802c33e5f8667a8a5707575eea477db143c1037842e824aae09158f494785d` |
| 27 | `theorem` | [realize_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-imp-source-edition-2.md) | 268 | `result-track:4fe307e6214bc6cac523ca67ff2b94c9288fb72d43b6469630a3969f80d11db6` |
| 28 | `theorem` | [realize_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-rel-source-edition-6.md) | 272 | `result-track:c384a9f6c87db0810282a60d4c4b0ccc16a6454f8e9a8af61bf724a0c7d3601b` |
| 29 | `theorem` | [realize_rel₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-rel-source-edition-3.md) | 277 | `result-track:7d367deb7f890120c36e324b8a9b0162241b65b059b396774ae7d3d0322c6d44` |
| 30 | `theorem` | [realize_rel₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-rel-source-edition-2.md) | 284 | `result-track:4ae6b62aba080942e0da6ad6919f653c3aca3035b601ae779326dd60f14d018d` |
| 31 | `theorem` | [realize_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-sup.md) | 293 | `result-track:eebdfff7062cb3ab4b5b47b2c82e713707700c77fda37bed02fa32829950e23c` |
| 32 | `theorem` | [realize_foldr_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-foldr-sup.md) | 298 | `result-track:2010a54b9298e96870e4ea5f0921624fd9a73290147d9d43de1ac03143abb0d2` |
| 33 | `theorem` | [realize_all](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-all.md) | 307 | `result-track:49d54d6532fda78d396116729221fc8e94e5a80ecf36dc2d1b9d5744a8d6ac79` |
| 34 | `theorem` | [realize_ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-ex.md) | 311 | `result-track:28bf87c605bd85c696309431295934c6d189d26a6813bc750c2eeb7b27d6533a` |
| 35 | `theorem` | [realize_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-iff.md) | 316 | `result-track:baefc890fdfcf5fa732a87ad80563f335e80ebab10a3a119b23a1786b8dceb16` |
| 36 | `theorem` | [realize_castLE_of_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-castle-of-eq.md) | 319 | `result-track:54e893d0708acfdd51bd165abb5067247617d5ba60d6455af94eb3306ddf5629` |
| 37 | `theorem` | [realize_mapTermRel_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-maptermrel-id.md) | 324 | `result-track:0fc8e0f361a2351849eb40a3b34eea5da36b6f91806fda9e57e40733825bc965` |
| 38 | `theorem` | [realize_mapTermRel_add_castLe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-maptermrel-add-castle.md) | 340 | `result-track:e869a92ababbb4f854807a4fad049dd00994c0871a97458b157234b90172ff77` |
| 39 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-relabel-source-edition-2.md) | 359 | `result-track:ce1633dc72a48a2e0d25f8089180234f1724784fcd8a57262ce1b3d176f571d7` |
| 40 | `theorem` | [realize_liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-liftat.md) | 365 | `result-track:bc703279d0783ebdac3df5154df07bf61e981b8bf8f7b8e9737ce589efa6ec8e` |
| 41 | `theorem` | [realize_liftAt_one](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-liftat-one.md) | 387 | `result-track:bfa201f0b21bd47166261c5b85b1876ea760afa2e605d032ccdf3c0c90a96763` |
| 42 | `theorem` | [realize_liftAt_one_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-liftat-one-self.md) | 394 | `result-track:920e34e782a90143f92c918631c170ea54d47a918c0998109aaa1c492424573a` |
| 43 | `theorem` | [realize_subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-subst.md) | 401 | `result-track:afcf5f389d67799be099f5a9746a2b574963c8ac890165af9c594a414bb3ba75` |
| 44 | `theorem` | [realize_restrictFreeVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-restrictfreevar.md) | 412 | `result-track:569dbbfef70fc00a25fa102db639ae9770dd2be7079b307c8369b3852b0daec9` |
| 45 | `theorem` | [realize_restrictFreeVar'](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-restrictfreevar-source-edition-2.md) | 438 | `result-track:60ae99923ef694e9669c8645f4040074584d9ff2ec97455c7969541ebfb623d5` |
| 46 | `theorem` | [realize_constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-constantsvarsequiv.md) | 443 | `result-track:2972c04ce5a46a29d339ab3ce9b93a19c8cdd243dd070e0d8d949a8c4300e167` |
| 47 | `theorem` | [realize_relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-relabelequiv.md) | 456 | `result-track:d316259f0ab6cef9d6d1ca4bd90264f91ba93219efd372823fb6f206ff427cfb` |
| 48 | `theorem` | [realize_all_liftAt_one_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-all-liftat-one-self.md) | 466 | `result-track:b9d3ec383cdf35d96dfe51d38d55b849a9469552f9f2b780513114bbe898aa83` |
| 49 | `theorem` | [realize_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-onboundedformula.md) | 483 | `result-track:48bdfd89e65d198d9c78abe749aaf988c89976eaaab98da01bcb1138fb27d756` |
| 50 | `def` | [Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-source-edition-3.md) | 501 | `declaration-track:a0c6a499ec323c9d818a7d21d59d0eab98d2b6a40032b4d2a44dc6bf12b57b0c` |
| 51 | `theorem` | [realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-not-source-edition-2.md) | 507 | `result-track:99e186cbe10d8d1deea3159b75403d8867b362a0507637b13857e148024020dc` |
| 52 | `theorem` | [realize_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-bot-source-edition-2.md) | 511 | `result-track:e61e6f7458df5fbf9790f67ea3f45993b77fa49b96db920d63381ca855ca9d87` |
| 53 | `theorem` | [realize_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-top-source-edition-2.md) | 515 | `result-track:d7f51f470d90d92d4a6c33db1404cb51e44aec66f2526e0306f7b88209cc5e09` |
| 54 | `theorem` | [realize_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-inf.md) | 519 | `result-track:4095fce16ace4a1eaeb0cf84d56178d7be1329f81b18d2931175320aeee0dbba` |
| 55 | `theorem` | [realize_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-imp.md) | 523 | `result-track:0d984494256b55bea09c2ae646e160060f93e7c112bb4d22342b15af222694bf` |
| 56 | `theorem` | [realize_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-rel.md) | 527 | `result-track:0b8962101e925daa70f00e5c7f151c1bd4303bdea58ff17f4270e63e792e9bd6` |
| 57 | `theorem` | [realize_rel₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-rel-source-edition-5.md) | 532 | `result-track:97405a94c2162fca2cfe5100c0890939ad93ae1842e739a665aae3cac85a11a4` |
| 58 | `theorem` | [realize_rel₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-rel-source-edition-4.md) | 539 | `result-track:90566957796a7d0b5dfeda3bc70762af0232c629f6e08dbf4315fb26f9fc92bc` |
| 59 | `theorem` | [realize_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-sup-source-edition-2.md) | 547 | `result-track:f31123b317cc578725d02dda1947e46d085fca362c66b8b7400240b0c440d58f` |
| 60 | `theorem` | [realize_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-iff-source-edition-2.md) | 551 | `result-track:e31e7ad7368424fe25cf266e0e71b64f2a6410d5a68bf9f5431776675a1a9a10` |
| 61 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-relabel-source-edition-3.md) | 555 | `result-track:e9701dbf7987e84cbba86f98bd307a75ea6b4aeb1539f866665236f4976a754a` |
| 62 | `theorem` | [realize_relabel_sumInr](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-relabel-suminr.md) | 560 | `result-track:a9cd799eb8c720501f28b5627aaa2537819c4eaf2e219aa44b4ce275a03fee0d` |
| 63 | `theorem` | [realize_equal](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-equal.md) | 569 | `result-track:fdd733b2a02fa93f5b0a798f70339e8bb6122fcf985e124b31b9259cbf5ab2bb` |
| 64 | `theorem` | [realize_graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-graph.md) | 573 | `result-track:8d7bc4bfd41a33a444cd4009ec032d6efaa178bb6b52034a247ba1db8555a2ee` |
| 65 | `theorem` | [boundedFormula_realize_eq_realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/boundedformula-realize-eq-realize.md) | 578 | `result-track:7b18fdcffb2504447afc64047fdb157cd9252ced015f900fc962e4f67120fb29` |
| 66 | `theorem` | [LHom.realize_onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/lhom-realize-onformula.md) | 587 | `result-track:687d0de25f83dc48b0826fc72eea246c2b44a54bb329f619099fed7fb4fbb754` |
| 67 | `theorem` | [LHom.setOf_realize_onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/lhom-setof-realize-onformula.md) | 592 | `result-track:132661175d74c1b14f323a8d0620758bf0acd917a0709b83ff6d5bc38ce67cce` |
| 68 | `def` | [Sentence.Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/sentence-realize.md) | 600 | `declaration-track:a14cdbab6832c4fad9d62080c1d3036201647f59d0b6623d2f77064d3425960c` |
| 69 | `theorem` | [Sentence.realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/sentence-realize-not.md) | 608 | `result-track:5e33ade873fa9a2bb3b2b73fd1402c7b1188360150955445ca779d4b175886af` |
| 70 | `theorem` | [realize_equivSentence_symm_con](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-equivsentence-symm-con.md) | 614 | `result-track:65962c189dc4a1be253f7224975027ab4b30c59b7d3ae72977752f7f2035a1e6` |
| 71 | `theorem` | [realize_equivSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-equivsentence.md) | 626 | `result-track:ccd467c4bc7d57c3028df9680df4027650dee6c6c7c1291285c86deba98dd5d4` |
| 72 | `theorem` | [realize_equivSentence_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-equivsentence-symm.md) | 630 | `result-track:c785b2ce93a7a0fd5729d4460d63cdb9992c19c330693022e027e08e6fa9a65a` |
| 73 | `theorem` | [LHom.realize_onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/lhom-realize-onsentence.md) | 640 | `result-track:7ea54bbcfed71f7e953831b5edcb81aed004ec129ba78e4c41e41720bbaa4d4e` |
| 74 | `def` | [completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/completetheory.md) | 647 | `declaration-track:2fe55593e6645704ab9c4bcbb12045f1bbd34e9f6246535d7564b37febb3fa03` |
| 75 | `def` | [ElementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/elementarilyequivalent.md) | 653 | `declaration-track:4404769290aaf047f9c88c62210f0ca2e6f3eb047af82c48bae2d257065f2117` |
| 76 | `theorem` | [mem_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/mem-completetheory.md) | 663 | `result-track:23f2c9c16de843e92e39fd545d5e0df0e69f6aacd35ac87482c288940405e93c` |
| 77 | `theorem` | [elementarilyEquivalent_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/elementarilyequivalent-iff.md) | 666 | `result-track:21cddcc93f3c1ee8b068a5f0ce5706f2d200a06b0ff44c532d9125e231c4cc46` |
| 78 | `class` | [Theory.Model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/theory-model-source-edition-3.md) | 672 | `declaration-track:d1d724b244fa475eb4c9b6c6da4c3573bfa5fb543573d3db9168a55851914e7a` |
| 79 | `theorem` | [Theory.model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/theory-model-iff-source-edition-2.md) | 682 | `result-track:38f4acf3fc19c74ce996f3a59e9c6f0bf837b4e4cf8dcbd665c3f04ff91b4be8` |
| 80 | `theorem` | [Theory.realize_sentence_of_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/theory-realize-sentence-of-mem.md) | 685 | `result-track:8f1ffd2ed70391a8628075f4694f2d6c390ad3e9b595ddf6da0c366fe5f6a90b` |
| 81 | `theorem` | [LHom.onTheory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/lhom-ontheory-model.md) | 689 | `result-track:ca9d5a53bf40863386b5c4ba816a2d460fc364ad546c1fa791350df6ad2d61eb` |
| 82 | `instance` | [model_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-empty.md) | 694 | `declaration-track:f41a119f2e874867870a6af474e95e51b9528313af52781c0bbe97bc7fc6f896` |
| 83 | `theorem` | [Model.mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-mono.md) | 699 | `result-track:1b11cc4cee60744dd4290a69204399cc850d170fbda4f6ccc7ea14443bce8656` |
| 84 | `theorem` | [Model.union](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-union.md) | 702 | `result-track:c895a5fdca72a302ce06e01b131a0153e2a63291ad92b6f49dedaaf7482a10cb` |
| 85 | `theorem` | [model_union_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-union-iff.md) | 707 | `result-track:cb611542a4063978dcea8c787e33d0953a2493bd06d7123d8ed6e08b3bcc3a44` |
| 86 | `theorem` | [model_singleton_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-singleton-iff.md) | 712 | `result-track:3c4e9ed26ff8d2b4643adaab89133e426745d77fab02844434e24572d3512be9` |
| 87 | `theorem` | [model_insert_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-insert-iff.md) | 714 | `result-track:ce294b5834d0b8707ca72b1433a9ee1fa4e026f8a54cd918a7851e5afaa44e46` |
| 88 | `theorem` | [model_iff_subset_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-iff-subset-completetheory.md) | 717 | `result-track:3c8a739ca36008b27dfa5834a9fa3f57537fbbe200e22e0cafccc05f19dc7513` |
| 89 | `theorem` | [completeTheory.subset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/completetheory-subset.md) | 720 | `result-track:296e390caedcb68f90574ca593bacc433879243e3f3dd7c7d9a9c288e4f1d2d9` |
| 90 | `instance` | [model_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-completetheory.md) | 725 | `declaration-track:e52042d1bf8578bf192325a06af49ce0a0054edb5426e87c4fb5f80dca0eb013` |
| 91 | `theorem` | [realize_iff_of_model_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-iff-of-model-completetheory.md) | 730 | `result-track:a040fa2f48f6b8a46bede7cfe9a46d42d4660d4aca54fc92fd460a4f5c0b7bb1` |
| 92 | `theorem` | [realize_alls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-alls.md) | 742 | `result-track:81ac242d4b70a95ba9db6bf7e0ea97d4aeef08eddbe12fd014a5ad28c05ade71` |
| 93 | `theorem` | [realize_exs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-exs.md) | 751 | `result-track:7d9970544229859efc47777da71c8de55c6d0c6b26481b6a918dca6de951b7e6` |
| 94 | `theorem` | [_root_.FirstOrder.Language.Formula.realize_iAlls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/root-firstorder-language-formula-realize-ialls.md) | 765 | `result-track:a7fdee356bbf8fa53d37e4bd3f7876e4a54bd915dee6ca0785e29e345217d39a` |
| 95 | `theorem` | [realize_iAlls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-ialls.md) | 783 | `result-track:d9b3857e66eea584e097914382f5e4a13059aca6cfd528573ffd3ddd3c379f35` |
| 96 | `theorem` | [_root_.FirstOrder.Language.Formula.realize_iExs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/root-firstorder-language-formula-realize-iexs.md) | 789 | `result-track:6e4f91b9ee67c8dd02c8368e6e9df2e323db30a1baab90b3fffb3abeab072b11` |
| 97 | `theorem` | [realize_iExs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-iexs.md) | 807 | `result-track:13f2061bc625599212864c2945a7aa22804b810eb36cc79e63bd29744c082a6b` |
| 98 | `theorem` | [realize_toFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-toformula.md) | 813 | `result-track:55c0d02a128681f40b4359ca22af00c2a3aea1144823780b12477bea115368fd` |
| 99 | `theorem` | [realize_iSup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-isup.md) | 843 | `result-track:2975136107d6ad7e29731b405c56050fbcb30a48033238f1399ad90617fb37f7` |
| 100 | `theorem` | [realize_iInf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-iinf.md) | 850 | `result-track:e16f2716b2d7cc95b74a96191943240f8da20f472dbea7e83d3a50b1c51f7450` |
| 101 | `theorem` | [_root_.FirstOrder.Language.Formula.realize_iExsUnique](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/root-firstorder-language-formula-realize-iexsunique.md) | 857 | `result-track:be7f9a4baae555d1bedc8043c7367d73ed0cf29365e4b8246cd60a440b3fc506` |
| 102 | `theorem` | [realize_iExsUnique](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-iexsunique.md) | 870 | `result-track:c4fe3c9ac1265760fb47b052b6cee8329696b3a0ef51209ed265b3acc3a23c3c` |
| 103 | `theorem` | [realize_boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-boundedformula.md) | 882 | `result-track:0415efe7393673f4b9b58d29447f3ba4337833d7cdc8242228be2472fe8819c0` |
| 104 | `theorem` | [realize_formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-formula.md) | 906 | `result-track:b6afc269309f8c1c8080c07f1110591f29e1febb2fc887491fe8ef02686d37c2` |
| 105 | `theorem` | [realize_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-sentence-source-edition-2.md) | 913 | `result-track:e6da5cbdc99d241712a0993d1c29f9ee768c49937725d5fae50fac2c0fb9a5a9` |
| 106 | `theorem` | [theory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/theory-model-source-edition-2.md) | 917 | `result-track:8926749712cc106f7cd5f437e5e6a2b9808015167d451575b5a836b8be90106d` |
| 107 | `theorem` | [elementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/elementarilyequivalent-source-edition-2.md) | 920 | `result-track:befd0c42ad7f1f08f9362b73b0e1a08664f848a64fb35fedcab2b658231d4289` |
| 108 | `theorem` | [realize_reflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-reflexive.md) | 932 | `result-track:17cb6b229e6cdc155dd985f87434d4cd3922108b1065eda35310f22e9e0cd491` |
| 109 | `theorem` | [realize_irreflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-irreflexive.md) | 936 | `result-track:e989f57377c569ac770868e518ab09bdb07139ce117ea95ab333b068c48b9db0` |
| 110 | `theorem` | [realize_symmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-symmetric.md) | 940 | `result-track:f8912ffff2d652c6beee21f57610d5c9a57203761528a91fa742c42dd8de6e8e` |
| 111 | `theorem` | [realize_antisymmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-antisymmetric.md) | 944 | `result-track:8de0c4278c65bb43a098ce2760da809bbec398a4d21ffe87ea117bdcba25bda4` |
| 112 | `theorem` | [realize_transitive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-transitive.md) | 950 | `result-track:bb73693fccde2df61161b1d3fa99a874ff65a7a44e044ca7ec95e6f801a809a8` |
| 113 | `theorem` | [realize_total](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-total.md) | 956 | `result-track:f28b4ca3fa0a33fdce0050b4cbce82e311c298ffd23232a9e9a8ee5b15690d0a` |
| 114 | `theorem` | [Sentence.realize_cardGe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/sentence-realize-cardge.md) | 966 | `result-track:9a4a25e43a4a61e99065ab13fcfbd062ff1ac22fd560e077af431ec49c575172` |
| 115 | `theorem` | [model_infiniteTheory_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-infinitetheory-iff.md) | 984 | `result-track:0a3c9b766e973d0385025ea37d9dd30b23cf498841a7a4ed9ff3746fa23992b1` |
| 116 | `instance` | [model_infiniteTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-infinitetheory.md) | 987 | `declaration-track:0124f73956a43213ec14f3cd30d70d768f68b2b607122237889f36d7f6148645` |
| 117 | `theorem` | [model_nonemptyTheory_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-nonemptytheory-iff.md) | 991 | `result-track:d43c73f3b7f17f42f3ba4fc398db23624fb45efa67cf08090a510f5fa1410646` |
| 118 | `instance` | [model_nonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-nonempty.md) | 995 | `declaration-track:8bd1ef3ea2aad4d71ff4421d00714c6949d55c1049d45fe83c302e3c5e08b539` |
| 119 | `theorem` | [model_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/model-distinctconstantstheory.md) | 998 | `result-track:e3649acfe41d298051ce3b121a76278f54638e4b8ef6cb468769b73be4ef4332` |
| 120 | `theorem` | [card_le_of_model_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/card-le-of-model-distinctconstantstheory.md) | 1012 | `result-track:0bb8998cceb8c82138adf9c831fa4574e4aa4dab717ee9b325939c02b19ee855` |
| 121 | `theorem` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/symm.md) | 1021 | `result-track:509da83a7bdfb4d06e7c6dccf1bdc16f48640544adb312905475b7d56af4b75d` |
| 122 | `theorem` | [trans](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/trans.md) | 1025 | `result-track:1785259eea8e6cee1435155284d7c87d8e97a7c66873ca5261a0410f5c7365d6` |
| 123 | `theorem` | [completeTheory_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/completetheory-eq.md) | 1028 | `result-track:61a51033f36459930fadaf16d4cb8b1c6bac2c12fa476c43a3eef187b719256b` |
| 124 | `theorem` | [realize_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/realize-sentence.md) | 1031 | `result-track:1f9862673e697094ddae64984fc129a9b7da0a78f851b11d09a87da3b3513290` |
| 125 | `theorem` | [theory_model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/theory-model-iff.md) | 1034 | `result-track:3267bc95f6f2e5b360fea4f752076e778058b00df58145f758f1ae8d04bc7618` |
| 126 | `theorem` | [theory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/theory-model.md) | 1038 | `result-track:52f7775616f0d2f817789a6558fa08e6948c4ad959e80bc256dd03d894057644` |
| 127 | `theorem` | [nonempty_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/nonempty-iff.md) | 1041 | `result-track:2288f4a1780693f28af1bee6f8eef7af935462bcde164bcce709b7b5f2fc2410` |
| 128 | `theorem` | [nonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/nonempty.md) | 1044 | `result-track:c6f13a25b3e10f8a7f7366ffcdf7dea6adf50acaee80f7a71ee99a1a4ee4990b` |
| 129 | `theorem` | [infinite_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/infinite-iff.md) | 1047 | `result-track:7a0bb119fd4eb3226e95780e179d659ee568269f581c0a54ac55e3c0f8e2417b` |
| 130 | `theorem` | [infinite](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsRealizeRestrictVar.lean/declarations/infinite.md) | 1050 | `result-track:02f1d7f7a6595a84756f85084a7a7936a82d266587e3d2e7530915d3570ad344` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a5eaccb88ed3b37b52778ff1d64dd449f76b69593f33693898e64c12a2a0643 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant57be9f1cf98ca9e455e1c89a084f12fa0dd28066b81c0499d9de3e98e71dc8b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

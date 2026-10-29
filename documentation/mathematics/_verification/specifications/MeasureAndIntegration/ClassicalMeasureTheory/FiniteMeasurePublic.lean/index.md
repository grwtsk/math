# Verification target: Finite Measure Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b8d3b802caeee3f409048a9044cc77e96b73f4f",
  "lexical_observation_count": 122,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b8d3b802caeee3f409048a9044cc77e96b73f4f`.

Source path: `GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean.json)

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
| 1 | `def` | [_root_.MeasureTheory.FiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/root-measuretheory-finitemeasure.md) | 117 | `declaration-track:5cade26473566786890c50626695d1920b2deec0e755e73f7b42b8e0c87bfd09` |
| 2 | `def` | [toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure.md) | 122 | `declaration-track:c5a605cca09a4bedf6dae613f24b2e57678ef5627a152b9149edff4a712142b4` |
| 3 | `instance` | [instCoe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instcoe.md) | 125 | `declaration-track:0bca21a59decbe2b065be8d6dd57d1bb0886e1167a2dd03483eaf3f50e15492e` |
| 4 | `instance` | [isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/isfinitemeasure.md) | 127 | `declaration-track:dcceb2ed8a9de7be6a4d92362f67d80f89328f1d9999fb25171ee0cbdf59c378` |
| 5 | `theorem` | [val_eq_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/val-eq-tomeasure.md) | 130 | `result-track:facdfdeedb023f82df6daa7f7c88de020851cabead9c91bb4bfe268c48df9be9` |
| 6 | `theorem` | [toMeasure_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure-injective.md) | 132 | `result-track:f5cf1b009b375b0bd6c534076639ea6acfdf790d830854a7eb1babff754b0cee` |
| 7 | `instance` | [instFunLike](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instfunlike.md) | 136 | `declaration-track:923a4bcf4e5babbf0bbe0716e295d05139f54ebcfb5ac5bf94f40c4b5191a4d5` |
| 8 | `lemma` | [coeFn_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/coefn-def.md) | 141 | `result-track:5a27b9ca14456ce8e769bc277ccedda5de23041c7fecc7f93c872824dd42cd39` |
| 9 | `lemma` | [coeFn_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/coefn-mk.md) | 143 | `result-track:789c500b555880da697133d0c130362f5de937b93a24e4415e13e6d92ff61823` |
| 10 | `lemma` | [mk_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/mk-apply.md) | 147 | `result-track:89d3b9cf70a60fd1367f622802e0a2772e79574370c4d36ec4af6b260c041c36` |
| 11 | `lemma` | [toMeasure_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure-mk.md) | 150 | `result-track:ac7b6dd6b76baf7538fd20b055ff390e140002e6f62ef6161c7cc271195868e0` |
| 12 | `lemma` | [measureReal_eq_coe_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/measurereal-eq-coe-coefn.md) | 153 | `result-track:8adf5536cfdd369907f6f312b4351ffe212dc5ec773ee20949160fb510d53ebf` |
| 13 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 157 | `result-track:40d48afdfe43e840014084b54b70235dad0603a443739003685bf0b7a9191a4a` |
| 14 | `theorem` | [null_iff_toMeasure_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/null-iff-tomeasure-null.md) | 162 | `result-track:b89ae04a6d3892ed2b35d255bbec6035756ea658e0593dd56463b6d220f1b801` |
| 15 | `theorem` | [apply_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/apply-mono.md) | 168 | `result-track:a4f0820eead5ed170a7286b38d34034bde113c7d269bdacfb5d9618f4e9fcfd5` |
| 16 | `theorem` | [apply_union_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/apply-union-le.md) | 171 | `result-track:2ed8db24ed6cf9bfda4086270394bc61fb285724fe3836660e38947e60220b47` |
| 17 | `theorem` | [mono_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/mono-null.md) | 176 | `result-track:379f54c94f948ecf1790a473dcd058430349d31b82974d5e6fdda9afacc3db01` |
| 18 | `lemma` | [pos_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/pos-mono.md) | 179 | `result-track:fc20b2897b007450a19f756544c688dd69746acc76d7fd46b54fb058bfede4ad` |
| 19 | `lemma` | [tendsto_measure_iUnion_accumulate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-measure-iunion-accumulate.md) | 184 | `result-track:654aa25e96e9e39033ba8b75d20676200ee78bfb67b104612a8bb90fd8e1469a` |
| 20 | `def` | [mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/mass.md) | 192 | `declaration-track:08d857e8ae9ace27e3b00cb4fc808e3ad902c8228ed922703f6c7a8ce01241cb` |
| 21 | `theorem` | [apply_le_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/apply-le-mass.md) | 194 | `result-track:411274e640e9a2445c6f448f512cbf98c4d736008e9f2429564b4192cfaf43a3` |
| 22 | `theorem` | [ennreal_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/ennreal-mass.md) | 198 | `result-track:48ab2c4976890748bdaedd4075c4f24228baf94b9b070fb560e09ef6c6817f13` |
| 23 | `instance` | [instZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instzero.md) | 201 | `declaration-track:bd177d044aa953958f5d816aa480b1b7322334012c1fc528b39f66cc07e42d53` |
| 24 | `lemma` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/coefn-zero.md) | 203 | `result-track:429d1bf290de0edfe5ca1d8e2684ec795665cce2b77fb7ee0b6bb9a7dca13169` |
| 25 | `theorem` | [zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/zero-mass.md) | 206 | `result-track:5904dbb87e209097ed6187e12af8c5f326ab239e50ccb9216aaaafd2992d0528` |
| 26 | `theorem` | [mass_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/mass-zero-iff.md) | 209 | `result-track:6a7602cd5033987aba3900c9c96c03fffe52d069265cb9a136897796e1c6f14a` |
| 27 | `theorem` | [mass_nonzero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/mass-nonzero-iff.md) | 215 | `result-track:ff1c819764649fd98b7780bd9c56e726009a789116994fd40ff3fe8c0afc4963` |
| 28 | `theorem` | [eq_of_forall_toMeasure_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/eq-of-forall-tomeasure-apply-eq.md) | 219 | `result-track:0a5e692158a3f8156939bd21ec6a455c68c0c93e0a0adf43a06f6c01740f3b51` |
| 29 | `theorem` | [eq_of_forall_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/eq-of-forall-apply-eq.md) | 225 | `result-track:868c8c918a5eef08318a2e9eddfa53c32e4e255f656575b3c675bfb41617bda6` |
| 30 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instinhabited.md) | 230 | `declaration-track:bb12bf8c8bd95c4cbca75cd556295df6d845f0682ab9c7d9742099949374bd38` |
| 31 | `instance` | [instAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instadd.md) | 232 | `declaration-track:fc93c24c57de16a7bd73ae24a18f863ab0289dbce06bee5988c119184b5fbb86` |
| 32 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instsmul.md) | 237 | `declaration-track:d18814e36cd5c4d9cc30711cd453a7a4175f9d0ebf5b89a9c5ea54e6c46fc8fe` |
| 33 | `theorem` | [toMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure-zero.md) | 241 | `result-track:adc57b6033934efbfbaffed1227af006a9eb3dceb1c29cf3cdf63e2982bcff66` |
| 34 | `theorem` | [toMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure-add.md) | 244 | `result-track:13b7e326ce231900fbe07ee8e9232aa4af82ad77fcf7e4aec468bce5f1557d5c` |
| 35 | `theorem` | [toMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure-smul.md) | 247 | `result-track:2dccee0be5d97911c4e6217f0e23568f15914e258f21a44acd2c4d7e88c7159a` |
| 36 | `theorem` | [coeFn_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/coefn-add.md) | 251 | `result-track:96b2238732895b28663f9e1b54be39a15600996e5bf71f78eadc0e3a214d353e` |
| 37 | `theorem` | [coeFn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/coefn-smul.md) | 258 | `result-track:e96f41a75e75832624b0f2482f0ed90af4a6ebf0562fc28f00eb055aa82417f6` |
| 38 | `instance` | [instAddCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instaddcommmonoid.md) | 262 | `declaration-track:55d721b8e5021824c27d5934e55399229dd17506514f3faaddb20e53f411c077` |
| 39 | `def` | [toMeasureAddMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasureaddmonoidhom.md) | 267 | `declaration-track:4541c6ef5c09690269dd4db044924c80d1f567737ef3d13837af458cb0070526` |
| 40 | `theorem` | [toMeasure_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure-sum.md) | 273 | `result-track:aa7bec47b8373f94a92f4e7387a2cf73a7dc90b46af9b07cf8f7efa77cf9b1c3` |
| 41 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instance-source-edition-2.md) | 277 | `declaration-track:6636b826087a80bc48f79d312c49650007c85f149db88fa8e733fd8d40831275` |
| 42 | `theorem` | [smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/smul-apply.md) | 281 | `result-track:6b474c053b179459f23e9f88abd56f9b78dc8b498cd8c04d3e750d6d2bd1be78` |
| 43 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict.md) | 286 | `declaration-track:f0e1d8ca5486dfcec7c81ee0e08edb90239560b1a28f142d9155b83ddae7fe77` |
| 44 | `theorem` | [restrict_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-measure-eq.md) | 291 | `result-track:4845e870c5b2c873fd5030f80172189452c2899e7a008386b60015e44049b7f0` |
| 45 | `theorem` | [restrict_apply_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-apply-measure.md) | 294 | `result-track:b0d2276f2a4de6ece6f1d78dcd65f2963602afeb7c6b9e16663a820724b689a1` |
| 46 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-apply.md) | 299 | `result-track:b8b08fc0f2db5f4e44fdb1370f78bf2d57ceef43d6724a96776888d5ffcaa0bd` |
| 47 | `theorem` | [restrict_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-mass.md) | 305 | `result-track:6620516eb8f6ae55f666b93300e208f841a8323850fd8a06be554c624737ccbe` |
| 48 | `lemma` | [restrict_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-univ.md) | 308 | `result-track:053e07d1f811dc7bebc8f84c29b171187acd45cb9176e89565b04991efd7d48d` |
| 49 | `lemma` | [restrict_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-union.md) | 311 | `result-track:6034fc1ea9efdef837196b608a994aed752d24831d25739fa4a666f64bfc88db` |
| 50 | `lemma` | [restrict_biUnion_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-biunion-finset.md) | 316 | `result-track:c7fd374925799a2c62d087b2eeb0113ff2e353daf9c6366f389ebc3312db9edd` |
| 51 | `theorem` | [restrict_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-eq-zero-iff.md) | 326 | `result-track:fc646799cf8668ccd5adc2d4ea6f90c1b8c1a2c4d2f97eaaa390be8e9c13a105` |
| 52 | `theorem` | [restrict_nonzero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/restrict-nonzero-iff.md) | 329 | `result-track:eb8b735ea5b6394d3b97a9052cf28e0a7ee62c6906181c5ffa7e34c754558c9d` |
| 53 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instance-source-edition-4.md) | 333 | `declaration-track:cdd0cd8b06fe27c88f6d31647cfab3f12aa3c71e045b0979e9d312ecf40dfddc` |
| 54 | `lemma` | [measurableSet_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/measurableset-isfinitemeasure.md) | 337 | `result-track:d4c6fd21afb126c82201c22e71a8edf8b734c269fa1d5105d4c728169c1c09c6` |
| 55 | `theorem` | [measurable_fun_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/measurable-fun-prod.md) | 347 | `result-track:0330d1f0c80ae5e3bb260a674827dbc1af251a7b19b7d596b5919137543b3c98` |
| 56 | `lemma` | [apply_iUnion_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/apply-iunion-le.md) | 362 | `result-track:aac835d8ba2412f76b9b97949a93cdd6630cbeddb6227f77fbd9c9d55d8c1097` |
| 57 | `theorem` | [ext_of_forall_lintegral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/ext-of-forall-lintegral-eq.md) | 371 | `result-track:320e84542a10d195ed9a479dc32669a64290e04a161f1c25cd29be455a7dcb72` |
| 58 | `theorem` | [ext_of_forall_integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/ext-of-forall-integral-eq.md) | 380 | `result-track:7e25c99d7ffdc4914fa26c0580910b475ad38a826f484e677f4d21e691504854` |
| 59 | `def` | [testAgainstNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn.md) | 394 | `declaration-track:f704b2c94e6d484a7b27b82a89175e4cd5f6ccb80d3153864d92d97bb355c002` |
| 60 | `theorem` | [testAgainstNN_coe_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-coe-eq.md) | 398 | `result-track:46ad49cf520f6892decc55b519253e735963f824b22e99d24c461d83eb3b3798` |
| 61 | `theorem` | [testAgainstNN_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-const.md) | 402 | `result-track:9973ebda608b02fec4108db6cf298f3303f2215383d45376d60856825b2cad1a` |
| 62 | `theorem` | [testAgainstNN_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-mono.md) | 406 | `result-track:3db8519ae547764d77f13d9db2be232655eb540991f278f56d8e748200849a3f` |
| 63 | `theorem` | [testAgainstNN_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-zero.md) | 413 | `result-track:2aba8052524d09f6856d5a20247178bd33a87994dd259c7355d3e953daa2c110` |
| 64 | `theorem` | [testAgainstNN_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-one.md) | 417 | `result-track:1fd161715bb3453948a8cc07b963f268bdbc638fabdfd34699aa1fbb5b4f0e23` |
| 65 | `theorem` | [zero_testAgainstNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/zero-testagainstnn-apply.md) | 422 | `result-track:7b456085b42f6e9d2ee3609efbcaf294330bc0b6f203d4e17b35f7fbf9f1855b` |
| 66 | `theorem` | [zero_testAgainstNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/zero-testagainstnn.md) | 425 | `result-track:9c03042d3f7843d5f6e47bbcbc1a7c4a8cd8ba96fab736e68d4328be3d2f2653` |
| 67 | `theorem` | [smul_testAgainstNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/smul-testagainstnn-apply.md) | 430 | `result-track:db4cd3c9c93954da9cc4c090c1703b52c748d89e6e39678e97e985cc1bc449e5` |
| 68 | `theorem` | [testAgainstNN_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-add.md) | 439 | `result-track:525b3ea3d30f3a68d397c043d25d83ede8567c53f65d908f4734847d8975fc5b` |
| 69 | `theorem` | [testAgainstNN_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-smul.md) | 445 | `result-track:981254646ab2e0397ce7b78400d8d56c2e6db647f45a6a65e428d4a19ffdb7d9` |
| 70 | `theorem` | [testAgainstNN_lipschitz_estimate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-lipschitz-estimate.md) | 454 | `result-track:ee640e407d1fd1937b957e4e85d720ab4494ad06c53d01d256b86d2a5cb22beb` |
| 71 | `theorem` | [testAgainstNN_lipschitz](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/testagainstnn-lipschitz.md) | 470 | `result-track:e04bf8f8e28a0678805503c7db19b968f8ef026d587ff62c7cfffc75f64b5d55` |
| 72 | `def` | [toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/toweakdualbcnn.md) | 489 | `declaration-track:ea219878283ae6c7abe888bbcd6a9e11d8f00896cb60ccfbfea71afa97d5f1b6` |
| 73 | `theorem` | [coe_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/coe-toweakdualbcnn.md) | 496 | `result-track:675da9189b104227370604b6b3786a42d0a3b86f557f1fc1cc3c0c0270d9a175` |
| 74 | `theorem` | [toWeakDualBCNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/toweakdualbcnn-apply.md) | 500 | `result-track:4f487eca5dcc55a70534cd61ad37b4cb2ac059d13098d3a9fd82e31ba2cebfca` |
| 75 | `instance` | [instTopologicalSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/insttopologicalspace.md) | 506 | `declaration-track:52a16e6bf4585b8a8db093e1b1b8a01eb65f1f6c2d7448f04c5d48cf3168e284` |
| 76 | `theorem` | [toWeakDualBCNN_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/toweakdualbcnn-continuous.md) | 509 | `result-track:54437515d62b9500f194f3a13d7402eeeb0e74c072ac3d6978c88a574e4feb5b` |
| 77 | `theorem` | [continuous_testAgainstNN_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-testagainstnn-eval.md) | 514 | `result-track:7f8dd83b092e13c14b2c8287d5ed6da1664ff4d330c8d29b6c791b623d627a0d` |
| 78 | `theorem` | [continuous_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-mass.md) | 521 | `result-track:3201674d72743392b8eadac10f7a3ecef47a9d49b40fd77c670a9ea19747f400` |
| 79 | `theorem` | [_root_.Filter.Tendsto.mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/root-filter-tendsto-mass.md) | 525 | `result-track:183089d59b60d96af8caa17cc0bc2843722f534452946d0f21bcf72778a07078` |
| 80 | `theorem` | [tendsto_iff_weakDual_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-iff-weakdual-tendsto.md) | 529 | `result-track:f0df98568efe94f78c9d229e34acd00f263f350c5e76c08a6cf792a46bbbd7b0` |
| 81 | `theorem` | [tendsto_iff_forall_toWeakDualBCNN_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-iff-forall-toweakdualbcnn-tendsto.md) | 534 | `result-track:2c9fce9dfa768a8fd048954e1ac999b3243d0b2e264551bac446c012bdb2c00c` |
| 82 | `theorem` | [tendsto_iff_forall_testAgainstNN_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-iff-forall-testagainstnn-tendsto.md) | 540 | `result-track:76c48c293f79d3904851e238ff28c0a48cebb190d4b97910f182e2f55544c726` |
| 83 | `theorem` | [tendsto_zero_testAgainstNN_of_tendsto_zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-zero-testagainstnn-of-tendsto-zero-mass.md) | 550 | `result-track:96f8449ce9446c0cc4942038316a2bf373dfac27480725de7ec1eae963512cb2` |
| 84 | `theorem` | [tendsto_zero_of_tendsto_zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-zero-of-tendsto-zero-mass.md) | 564 | `result-track:58eeb159e4e517941c76b599312cd1d1aff215f5e37486c2f6dc535eda3d547d` |
| 85 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-iff-forall-lintegral-tendsto.md) | 573 | `result-track:62e315634f2920de3fa992b93a7ef2a8f07f581e50a9d8fd3de2cfb845a8f83b` |
| 86 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instance-source-edition-5.md) | 582 | `declaration-track:e85bf4eb03b2622ef0a0772757a1c04db55177f3ef4494758cbb11fccd8a0b55` |
| 87 | `lemma` | [injective_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/injective-toweakdualbcnn.md) | 595 | `result-track:428f6a6bd59635e406eb02ca734edb046d83e85a3f80ca95c52b1dff4d36ccb7` |
| 88 | `lemma` | [isEmbedding_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/isembedding-toweakdualbcnn.md) | 607 | `result-track:1b6489a90e1efac885e4f278bb012c03f816791f1d5cd7965f07a1325bf11168` |
| 89 | `instance` | [t2Space](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/t2space.md) | 615 | `declaration-track:49b6a3fd4fce848f26ba16c1cad5d21a482d8222bdfe70f8f6f5d80c3a7d4c50` |
| 90 | `theorem` | [tendsto_lintegral_nn_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-lintegral-nn-of-le-const.md) | 640 | `result-track:1a45643f8fae4a2d9f3ce92799355f9e3633b87206aac1b0e979959291a8c20c` |
| 91 | `theorem` | [tendsto_testAgainstNN_filter_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-testagainstnn-filter-of-le-const.md) | 661 | `result-track:f15994da5d3728809308d54583258e0ac7a8e48e5b1fa3304b2941a6cf3ad8fb` |
| 92 | `theorem` | [tendsto_testAgainstNN_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-testagainstnn-of-le-const.md) | 680 | `result-track:f2a430f62b908240dec936078de371d0806404df5ffdfa2da4686cb4e8964df9` |
| 93 | `theorem` | [tendsto_of_forall_integral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-of-forall-integral-tendsto.md) | 702 | `result-track:f4958de8aeee706fea2f14dca02db7fc867387c1be142c307fb9e2e94dc9863d` |
| 94 | `theorem` | [tendsto_iff_forall_integral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-iff-forall-integral-tendsto.md) | 727 | `result-track:27313a3b34fb70ae755def6dab0f0e91cb6f143f55b3dd92801ebef0cd21e532` |
| 95 | `theorem` | [tendsto_iff_forall_integral_rclike_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-iff-forall-integral-rclike-tendsto.md) | 749 | `result-track:7d81000f8507abc4ae54ee957c9e4f3005b3176b48f7881305346028c24ca9ec` |
| 96 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instance-source-edition-3.md) | 768 | `declaration-track:6b70571a2a83fca870efb7bbe52100c2fe674451033b5d288c41aa336b1f0286` |
| 97 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/instance.md) | 781 | `declaration-track:2b9abaaaf786c3981827111ab2b3bd568b432b8eefb2c50a8a259dd4bc510f4c` |
| 98 | `lemma` | [continuous_iff_forall_continuous_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-iff-forall-continuous-lintegral.md) | 797 | `result-track:c5510ebab578351d97f2cb46edd5f0eb13b0b111ddf76365b85c0a9c875be36f` |
| 99 | `lemma` | [continuous_iff_forall_continuous_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-iff-forall-continuous-integral.md) | 804 | `result-track:2a029bd13979917d19484758d07e7414af531d2d662fce218cc80459bec0a859` |
| 100 | `lemma` | [continuous_lintegral_boundedContinuousFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-lintegral-boundedcontinuousfunction.md) | 810 | `result-track:1749ef9c5a848b32caa7bdcc87188ce42c810852eb33d09daee71fa606952d5e` |
| 101 | `lemma` | [continuous_integral_boundedContinuousFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-integral-boundedcontinuousfunction.md) | 815 | `result-track:105f3a5c0f07511a8007c19ba489fdb9b945e1e62a30eb00846bde3d10386f86` |
| 102 | `lemma` | [continuous_iff_forall_continuousMap_continuous_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-iff-forall-continuousmap-continuous-lintegral.md) | 823 | `result-track:9a2339621cd2e8f7acd84c0ca3b678f38869a7a922fcdea494c89682e30c87b3` |
| 103 | `lemma` | [continuous_iff_forall_continuousMap_continuous_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-iff-forall-continuousmap-continuous-integral.md) | 830 | `result-track:059458ea94b3edbd5a4928d545128bbc8a7be276be3461b112644b3528fac48a` |
| 104 | `lemma` | [continuous_lintegral_continuousMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-lintegral-continuousmap.md) | 837 | `result-track:159e5e4d9fd7ad1fbe5a5625ee757d78ba24979bd73d3924e944f55e6f213377` |
| 105 | `lemma` | [continuous_integral_continuousMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-integral-continuousmap.md) | 841 | `result-track:d1b663bf3c9dd052815c1b980d0ab9eba3602ff1d1bbb34e13bc35ba1722c239` |
| 106 | `def` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/comap.md) | 856 | `declaration-track:84739452a2312c53775cfe0f69d2c1f6d9486833f66d55becc8feb2070016b4a` |
| 107 | `lemma` | [toMeasure_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure-comap.md) | 860 | `result-track:9a261b7f29febf46b40a9764688cdca03a4fe20910edc66c7d82f6a59ac2a2bb` |
| 108 | `lemma` | [mass_comap_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/mass-comap-le.md) | 863 | `result-track:73b922a39518316e4e0ac038975552686ae53a79bf40cf32fc0da2e2afff42b6` |
| 109 | `lemma` | [_root_.Topology.IsClosedEmbedding.continuousOn_comap_finiteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/root-topology-isclosedembedding-continuouson-comap-finitemeasure.md) | 871 | `result-track:41edef99ce502c6ab21fc0f272eebd3582abd6b7873db232fe1215b416058d13` |
| 110 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/map.md) | 905 | `declaration-track:3cb5c4a8a790fb252bf0fe4bf5849f04315f1ad412a14d091e82d3bd8ee9bb6e` |
| 111 | `lemma` | [toMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tomeasure-map.md) | 908 | `result-track:7974eecf46b4fa98e6636404cc2db87ff1fb495332e75b1fa33d8c748e49b09f` |
| 112 | `lemma` | [map_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/map-apply-source-edition-2.md) | 913 | `result-track:eb34dec7cd7c21ffa35f657328aa072c209e06faced89969cfe675699ac1f375` |
| 113 | `lemma` | [map_apply_of_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/map-apply-of-aemeasurable.md) | 918 | `result-track:1fbf94b0b2e241fbda0ee14eee8e018acebc2a5f93fd07da7580d483f4541456` |
| 114 | `lemma` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/map-apply.md) | 924 | `result-track:7679633978f390abf06c4af0588645d4ba72d781b62ffb4ddab734c46df24ee0` |
| 115 | `lemma` | [map_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/map-add.md) | 929 | `result-track:9de6642c66a95b043c98af328cf6a5d75e872cec57ab8b9661a2dcc0cf475702` |
| 116 | `lemma` | [map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/map-smul.md) | 932 | `result-track:9c7daccd1b9a921ce76c97facf30f760f2fbdeba155ab7d351efab6efcf794f7` |
| 117 | `def` | [mapHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/maphom.md) | 938 | `declaration-track:015fe336cea88353c7fc0f60d6478eacaebf38918e09b05b7f2144cfa284b1e3` |
| 118 | `lemma` | [mass_map_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/mass-map-le.md) | 944 | `result-track:e37f514d25190523fb13897214660746675f0ac7ccdcdc5361d5d384d3e28405` |
| 119 | `lemma` | [tendsto_map_of_tendsto_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/tendsto-map-of-tendsto-of-continuous.md) | 957 | `result-track:04358694932daf97d2efd8428228f0716716c57ca06341b27903ef63a3952992` |
| 120 | `lemma` | [continuous_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/continuous-map.md) | 972 | `result-track:0728b6786ebf83bdf998ac06a9931d68e082e13081086d315c0476d6c1261409` |
| 121 | `def` | [mapCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/mapclm.md) | 979 | `declaration-track:aa3a3482bb719f6620bcfcaae0772158e212dbc79bde41c8ffd84b9d77eabca0` |
| 122 | `lemma` | [Topology.IsClosedEmbedding.isEmbedding_map_finiteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasurePublic.lean/declarations/topology-isclosedembedding-isembedding-map-finitemeasure.md) | 985 | `result-track:d24c6e71689063e0c686a7bf91616dffce129f08ca4709116ee161b0d6943536` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44925b9be3c2ae7fca219d7850511ec9cd6a37fa63ca15a225aad3197ab7fec4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/FiniteMeasure/Variante5e154ed40aee73b9d2ead9d7605d7eb4dd03805456c1d0378541d6732bdf04e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Finite Measure Coe Fn Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f86ffe0319c0e296ed9407c7309a96693f0963ab",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f86ffe0319c0e296ed9407c7309a96693f0963ab`.

Source path: `GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.HasOuterApproxClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.MeasureTheory.FiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/root-measuretheory-finitemeasure.md) | 112 | `declaration-track:94398f6312deae068859915a4a219bdd9093e082af274f8b47058fe924dd026a` |
| 2 | `def` | [toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tomeasure.md) | 117 | `declaration-track:f642ab3e1ed9fb9ecd44e038118c2a860ec07efe8b0ed818acf53923e535fe03` |
| 3 | `instance` | [instCoe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instcoe.md) | 120 | `declaration-track:a3b4dc4f119149f210e02c977eac3a09cf746cfb339df67d6adbc69bb04b6065` |
| 4 | `instance` | [isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/isfinitemeasure.md) | 122 | `declaration-track:82e660cdeb5c9bbce84b5c7394024a3c03de63cd14bdad0e3da9cf2c2d88d3e1` |
| 5 | `theorem` | [val_eq_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/val-eq-tomeasure.md) | 125 | `result-track:b03dd7209b4e5d29e06dcf7763ba62ab902133b1fc715be83bc7e772aa4e8820` |
| 6 | `theorem` | [toMeasure_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tomeasure-injective.md) | 127 | `result-track:f29b8f580adeeab11bea161c8225ce434f8f7b30b51c6e671c151a88e71ff577` |
| 7 | `instance` | [instFunLike](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instfunlike.md) | 130 | `declaration-track:03aea28486fb751c40bf3c063f771f430503785b7c8848b731ebb00c23f222ec` |
| 8 | `lemma` | [coeFn_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/coefn-def.md) | 135 | `result-track:6ad644eb371051d97fcae549d205a9935a8f834b6093335daced0119ed1552ab` |
| 9 | `lemma` | [coeFn_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/coefn-mk.md) | 137 | `result-track:8e460e20be846f3a6ba70fadf5dfadcc38822862468a2a95a1110c444fabf992` |
| 10 | `lemma` | [mk_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/mk-apply.md) | 141 | `result-track:8c38b8113a967a124cd8b8c6c397cf68fb7222393c82c0c381249f78e8444675` |
| 11 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 145 | `result-track:f81f3161da3ae5e25946c3e19ec34f82e587b959526bedbd84e4530ba930f362` |
| 12 | `theorem` | [null_iff_toMeasure_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/null-iff-tomeasure-null.md) | 150 | `result-track:cd4ce9d363be65675974f8fc5ee8620d4d956844e71a5e757bcea109790da059` |
| 13 | `theorem` | [apply_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/apply-mono.md) | 155 | `result-track:0ef0c2a0c6219afe2aaebac1a37771504b1956a8eea4759014bf418a43322e5d` |
| 14 | `lemma` | [tendsto_measure_iUnion_accumulate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-measure-iunion-accumulate.md) | 160 | `result-track:8c3e00409863c14cb108ac5cd62f1a986cd42d94622d816c802aab3486c0ca04` |
| 15 | `def` | [mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/mass.md) | 168 | `declaration-track:eefb3442775370287b6ac004b681586d12059b350c55b91944fcf625b93ce367` |
| 16 | `theorem` | [apply_le_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/apply-le-mass.md) | 170 | `result-track:b5fd564d769ebc761561f649fdfb165531cb10c21dc0d73fb3d7f5e108c20512` |
| 17 | `theorem` | [ennreal_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/ennreal-mass.md) | 174 | `result-track:2cbb4939cb000aaf2f98089a158b1c13fe5a699159e59a511c08b3a51f8ab97e` |
| 18 | `instance` | [instZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instzero.md) | 177 | `declaration-track:e8e5f161c1cf591a3b322ac498c413abb738768a8c6d7475c331ed7903f501b6` |
| 19 | `lemma` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/coefn-zero.md) | 179 | `result-track:5156b3fb9427bfad1b4ad169ed9c54188118c93962b599088bb48d63f3057759` |
| 20 | `theorem` | [zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/zero-mass.md) | 182 | `result-track:3b758b47c8f6d0bebe68a4d45b095f424b450689f5ddf9ddb00c4639f2e2da94` |
| 21 | `theorem` | [mass_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/mass-zero-iff.md) | 185 | `result-track:8e367bf643473489483f91804421f58698881b17ba03d6f7845ad01f48311f15` |
| 22 | `theorem` | [mass_nonzero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/mass-nonzero-iff.md) | 191 | `result-track:a2d951aa8f4053e6f80b4dd1de4cfeac6fc3d56a6bda15453d947be34c3e18d8` |
| 23 | `theorem` | [eq_of_forall_toMeasure_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/eq-of-forall-tomeasure-apply-eq.md) | 195 | `result-track:ef0075983c87c8e95d357be30b64f4aa46c08af85cef41c028dfac234722f598` |
| 24 | `theorem` | [eq_of_forall_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/eq-of-forall-apply-eq.md) | 201 | `result-track:5710e936486198a13011eac34eae3333852d2f6d76a46acaca8d78f6fe9cfb2d` |
| 25 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instinhabited.md) | 206 | `declaration-track:15866064049ba438f32a274d596be12a353087e17eeb4b33d192a58548e03095` |
| 26 | `instance` | [instAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instadd.md) | 208 | `declaration-track:f43bcfca74fd302f118f7a23fbc034a60cdff1d41afc0db8ce418114e9e60e0c` |
| 27 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instsmul.md) | 213 | `declaration-track:2d3c02b8bca96101e3e865f44ebdcacb8a102ef3d43a6d5a3f2e94f714cb7ab6` |
| 28 | `theorem` | [toMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tomeasure-zero.md) | 217 | `result-track:c838e6cc8ddad87f22093d6255fd74afad64374d899ea4a024ecd9c99775a046` |
| 29 | `theorem` | [toMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tomeasure-add.md) | 220 | `result-track:2fae30251970c4decfa97fffe58b666446291f78b758427394bcb0a1ecdc299e` |
| 30 | `theorem` | [toMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tomeasure-smul.md) | 223 | `result-track:1894ab2b3c5181f07e0ca0ee9288daacfe15bbb1a30db39b9904f2ea9f60b17f` |
| 31 | `theorem` | [coeFn_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/coefn-add.md) | 227 | `result-track:71fe5f8938db448c59c5ada1c1ee745ee179ca0dd987b63e82b9b2ea1b3988fa` |
| 32 | `theorem` | [coeFn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/coefn-smul.md) | 234 | `result-track:1525ea2143a7b6b4c7c379f184a5a74c8b776404e7115457e2847a09099b3f7f` |
| 33 | `instance` | [instAddCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instaddcommmonoid.md) | 238 | `declaration-track:15446e9dfd8a732d998d4891f7167f8cba0fdd200ad3b54b252bff7f7b0aa560` |
| 34 | `def` | [toMeasureAddMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tomeasureaddmonoidhom.md) | 243 | `declaration-track:6954af89402855bc0d798748d4aa9d3d3a792035d00cfdabdcfc36cfd8df8c05` |
| 35 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instance-source-edition-2.md) | 248 | `declaration-track:ce7839e52ba00b8d30f114a989ad466fb4ca4d36a77393bba1bf06cd3c7f5d00` |
| 36 | `theorem` | [smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/smul-apply.md) | 252 | `result-track:73bfa3bf0cc7fd867bf7fcd0cd065cee3accba713aca370a74cd9b440bf55bc4` |
| 37 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/restrict.md) | 257 | `declaration-track:8ba27966a2f8e39b5ac3c3621e63fa0601d9b902c316ca3c927a876b9e464660` |
| 38 | `theorem` | [restrict_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/restrict-measure-eq.md) | 261 | `result-track:0afb9238d44e174cbc4caa116cf8b4b4ecc6938273893493f6f394d1cb330dec` |
| 39 | `theorem` | [restrict_apply_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/restrict-apply-measure.md) | 264 | `result-track:07ef9690a35367baf5d8bfa4013698a4c84362b90ba6e79ae1c1eea24acc148e` |
| 40 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/restrict-apply.md) | 268 | `result-track:7f6ced36ca5a86ebaf91f43168419fe09952e74ba5bf32141028f178a93afe4e` |
| 41 | `theorem` | [restrict_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/restrict-mass.md) | 273 | `result-track:cfb7032294b3e67ed2150524df684b51c227c777f2ae661ac2107804ded8f566` |
| 42 | `theorem` | [restrict_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/restrict-eq-zero-iff.md) | 276 | `result-track:46415d67d4bd14323280aa5ff5b0fbbc49a57132a6606fadb20e7ed08173859f` |
| 43 | `theorem` | [restrict_nonzero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/restrict-nonzero-iff.md) | 279 | `result-track:ea3dacfa93cf0357a87c219d851146f2dd26330a866b89fcd3f8f50bfcf41bc8` |
| 44 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/instance.md) | 283 | `declaration-track:706b9af29cf87c993c9d864ddb30f737d089b8afa5863ea0e67bdd422b8a957a` |
| 45 | `lemma` | [measurableSet_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/measurableset-isfinitemeasure.md) | 286 | `result-track:2e85862e000be30720954b44a6a6fcfd53e1ce50db7f77130f560f692851deb8` |
| 46 | `theorem` | [measurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/measurable-prod.md) | 296 | `result-track:ba5ecf3cf517e709f58c94fd7060105bc38eb0d219cb6f47ecd4684db97dd6ef` |
| 47 | `theorem` | [ext_of_forall_lintegral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/ext-of-forall-lintegral-eq.md) | 315 | `result-track:a3284e8f9d9cf916c269ba7e6c87aa6f37b8828d91006e4ed8892674b7fa14a7` |
| 48 | `theorem` | [ext_of_forall_integral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/ext-of-forall-integral-eq.md) | 324 | `result-track:df1cabdf5b622ca4aabdbcd82409448cfed9800e3580fe9417c6890223be9586` |
| 49 | `def` | [testAgainstNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn.md) | 338 | `declaration-track:2131e40a4d1ac7cf249ec846ca51381370b073c4233ecb92a003dc1ee235c21c` |
| 50 | `theorem` | [testAgainstNN_coe_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-coe-eq.md) | 342 | `result-track:6855564534d650e3a2e9c57100d5aafe98e139f2dae154f79a14bf24a53ce294` |
| 51 | `theorem` | [testAgainstNN_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-const.md) | 346 | `result-track:5735e0328d2c02b6f535394f29c572deee905d308e1e8b01f9c174d8a5e45048` |
| 52 | `theorem` | [testAgainstNN_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-mono.md) | 350 | `result-track:f9c6a2444e5c1cdbcaed644b95be55aa2107213780b0e2371bf0255e49b9c0f8` |
| 53 | `theorem` | [testAgainstNN_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-zero.md) | 357 | `result-track:8b81c5b03ebb5d96ee0c0f734c44d413aa0eabc2f25964d71b5f98da138185e1` |
| 54 | `theorem` | [testAgainstNN_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-one.md) | 361 | `result-track:aa6401ef0f63391621779fef7bd19742b7681f700514601182fc9befbe630118` |
| 55 | `theorem` | [zero_testAgainstNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/zero-testagainstnn-apply.md) | 366 | `result-track:3a89beb6aed47ff85af9913ad35584a3d5bc234f40134148dfdcf9ba87e105d7` |
| 56 | `theorem` | [zero_testAgainstNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/zero-testagainstnn.md) | 369 | `result-track:2e7627a98ccbb6b151d590342387889ca69613ac9e890d0c6a77b0bf47c591da` |
| 57 | `theorem` | [smul_testAgainstNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/smul-testagainstnn-apply.md) | 374 | `result-track:0be714724000b2a84db3750dd3b0c26d50e7c04986df5d1ad9d53eff557fbff1` |
| 58 | `theorem` | [testAgainstNN_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-add.md) | 383 | `result-track:4cdff7b1b83592beb37d43fa3aaf5d0e6945fa1e9c8c8106b458c796cf4ad32c` |
| 59 | `theorem` | [testAgainstNN_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-smul.md) | 389 | `result-track:2d548c21fad0cb498c545456a62fc477ca39f6fe4a55ade154b30a30c03f21b7` |
| 60 | `theorem` | [testAgainstNN_lipschitz_estimate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-lipschitz-estimate.md) | 398 | `result-track:99a5333111c801c68b1bbf957e56ed843c68181dceaff729fb5075fab091f8d3` |
| 61 | `theorem` | [testAgainstNN_lipschitz](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/testagainstnn-lipschitz.md) | 414 | `result-track:aabc255396304b72e1ac63ec34bd6963424bf3a4b7803c6aec98f13cd5367bd6` |
| 62 | `def` | [toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/toweakdualbcnn.md) | 433 | `declaration-track:ffadb81d81a5c6eb46ea9d15f13e937fb29b1f35bf3444e140800db24efcd69b` |
| 63 | `theorem` | [coe_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/coe-toweakdualbcnn.md) | 440 | `result-track:3e9a2aa0c2482f07ee442d34175b946c78ae251ac4ecb277a4558cdb21c215f2` |
| 64 | `theorem` | [toWeakDualBCNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/toweakdualbcnn-apply.md) | 444 | `result-track:8a1320cc5e1392551d310586c750eb685805ca1560c5076eeb4ef790eae35c2e` |
| 65 | `instance` | [instTopologicalSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/insttopologicalspace.md) | 450 | `declaration-track:8bee6ecf1e9962b27032f0ad1926fe22d7efb6698fe71f414548a7338c6aa184` |
| 66 | `theorem` | [toWeakDualBCNN_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/toweakdualbcnn-continuous.md) | 453 | `result-track:9c7ef48b1840c6f6acd123d064c63785d7c3deedd280ffe5d486ae0459af0379` |
| 67 | `theorem` | [continuous_testAgainstNN_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/continuous-testagainstnn-eval.md) | 458 | `result-track:9bfe4de84dccf4cf71c19e5622541b062eca66b84fb23ae0ffd12bea73a67e99` |
| 68 | `theorem` | [continuous_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/continuous-mass.md) | 465 | `result-track:20613d7fd3846a5463f13d2cf18a51e8cacf74c3b46060eb3927ee43f579d355` |
| 69 | `theorem` | [_root_.Filter.Tendsto.mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/root-filter-tendsto-mass.md) | 469 | `result-track:46f97f0948e3aae98c365114a611423302572fc46d6bb9db7a072f0a040f362c` |
| 70 | `theorem` | [tendsto_iff_weakDual_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-iff-weakdual-tendsto.md) | 473 | `result-track:c8d74625a0e3e762f2e9bd4e81919fc560b05e531b65140653cce10e379b3299` |
| 71 | `theorem` | [tendsto_iff_forall_toWeakDualBCNN_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-iff-forall-toweakdualbcnn-tendsto.md) | 478 | `result-track:01badea7b16d0f75e3b89905a897abe62ed7ce9e2b9da229e905883689ecfdff` |
| 72 | `theorem` | [tendsto_iff_forall_testAgainstNN_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-iff-forall-testagainstnn-tendsto.md) | 484 | `result-track:21f62b6ee88ee250aec8473144e915178f83576e691a18d0ceb997b4fa515df2` |
| 73 | `theorem` | [tendsto_zero_testAgainstNN_of_tendsto_zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-zero-testagainstnn-of-tendsto-zero-mass.md) | 494 | `result-track:2440787e54cec10ef4fa45f83fee6fcd9ce8a74648cbbe748750d75874deacea` |
| 74 | `theorem` | [tendsto_zero_of_tendsto_zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-zero-of-tendsto-zero-mass.md) | 508 | `result-track:d3a7ec1a14a4150a8049738eaf3afed70a47d193a03cfc87269c9a0ab0f030b8` |
| 75 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-iff-forall-lintegral-tendsto.md) | 517 | `result-track:ca8b20432e02c3543edc862f9b5b634a9ef41d55c3c01afa67e53d4bbf95631e` |
| 76 | `lemma` | [injective_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/injective-toweakdualbcnn.md) | 537 | `result-track:865cd7e526c8c371edbd756db87fe2c8754c86a284f20b38386c82d7544fa02b` |
| 77 | `lemma` | [isEmbedding_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/isembedding-toweakdualbcnn.md) | 549 | `result-track:90b6abff3da24fa722cc9c386f4d021f673dde209de085076fa1897da6161df1` |
| 78 | `instance` | [t2Space](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/t2space.md) | 560 | `declaration-track:96290b8fdcde983df629c47e65c56476d118d226766d1d1cad87b940c5f42156` |
| 79 | `theorem` | [tendsto_lintegral_nn_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-lintegral-nn-of-le-const.md) | 585 | `result-track:f5e232ea7f116eea8b201d9c264e3e02cdb77520540d6450d0000980315b55b4` |
| 80 | `theorem` | [tendsto_testAgainstNN_filter_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-testagainstnn-filter-of-le-const.md) | 606 | `result-track:89c1a5fdbf486ab44150b143453aaba28782b8b7f418abbc3719bcd33e23c957` |
| 81 | `theorem` | [tendsto_testAgainstNN_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-testagainstnn-of-le-const.md) | 625 | `result-track:dbedd52c168f433126b316ba560f47bab6da050e529fae0b8d8934e6e12edbf9` |
| 82 | `theorem` | [tendsto_of_forall_integral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-of-forall-integral-tendsto.md) | 647 | `result-track:8afd6c35fd33e1cb1c0cd4f1143659902e157f5434e1998a1086747da2e70aea` |
| 83 | `theorem` | [tendsto_iff_forall_integral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-iff-forall-integral-tendsto.md) | 672 | `result-track:c82dddc73db75db79b381ac5056de0e9415fb903eb50ffe5e1d4524bfcfe4c2b` |
| 84 | `theorem` | [tendsto_iff_forall_integral_rclike_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-iff-forall-integral-rclike-tendsto.md) | 693 | `result-track:da4f61f32d5952442ec4eb4e608ab6c6e6f8d76b58ec10c60f5263d4dfaf5518` |
| 85 | `lemma` | [continuous_integral_boundedContinuousFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/continuous-integral-boundedcontinuousfunction.md) | 712 | `result-track:260a766413f6dd660591ab64201c647e3fcf52207fe2f041c8f33a7c96b542b2` |
| 86 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/map.md) | 727 | `declaration-track:32662dae86dd858fa00eff038d0c579522d81ed785a9c92067dddfb5b6d991d8` |
| 87 | `lemma` | [toMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tomeasure-map.md) | 735 | `result-track:eea8bb6c57bdf8a5aa48003f378e859264309819d05459ff6f087b371d648d24` |
| 88 | `lemma` | [map_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/map-apply-source-edition-2.md) | 740 | `result-track:be874ce32720d6151d6ece3bbc151fb7b72ff20d7fc8dbd569b8260fd04c18ad` |
| 89 | `lemma` | [map_apply_of_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/map-apply-of-aemeasurable.md) | 745 | `result-track:b5ec596a9c9f9e851126d35605031f020666793c53091370925d458e875442ec` |
| 90 | `lemma` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/map-apply.md) | 751 | `result-track:02edbf3d08fb545730c15e1a91a42ef3f14b510e6e9155752c94c42f20abe388` |
| 91 | `lemma` | [map_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/map-add.md) | 756 | `result-track:94493904c9c6a28c5c4c5ad901d631274afbf79039ad579c76ca1831f65356cc` |
| 92 | `lemma` | [map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/map-smul.md) | 761 | `result-track:6c147e15a7d86e41e305d8e3ca487907e499ee65b4af9eab6aa049b08dd9f4a1` |
| 93 | `def` | [mapHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/maphom.md) | 767 | `declaration-track:10d4da3c82d581a5cc3d7d50642ad8484e8ee603e1e0a0c7b21f42b0194c6b62` |
| 94 | `lemma` | [tendsto_map_of_tendsto_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/tendsto-map-of-tendsto-of-continuous.md) | 779 | `result-track:918075b6175651b540419ef062fcfcc83f53d422a2952215706b1e1cf22cb508` |
| 95 | `lemma` | [continuous_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/continuous-map.md) | 793 | `result-track:1c5bcfa795a7c3a5edb31f5dc03a9262b41e7dbbfea8027c3368cb8566281846` |
| 96 | `def` | [mapCLM](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/declarations/mapclm.md) | 800 | `declaration-track:b1957071c61423fb30a2f70516b1ed28834650f40b079f17585462d85925a491` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=719b6698a9f8222eece24f91276395add891c7ec11af85f412ab22af250747ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

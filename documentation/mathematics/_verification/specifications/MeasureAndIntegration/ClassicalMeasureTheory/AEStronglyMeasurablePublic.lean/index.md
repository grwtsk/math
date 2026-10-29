# Verification target: AEStrongly Measurable Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5eb2e67bf1ad9dfb2928149c16c5a2a148030ea",
  "lexical_observation_count": 124,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5eb2e67bf1ad9dfb2928149c16c5a2a148030ea`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean.json)

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
| 1 | `def` | [AEStronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable.md) | 66 | `declaration-track:4ae65b1ccc57a34d13b2ebf936d3ff95b3e32391f5970ff11e09db2cc206afe9` |
| 2 | `def` | [AEFinStronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aefinstronglymeasurable.md) | 81 | `declaration-track:59f87a2f8c777f96fe603b0e538f81ba9cbfaf0b26a0061e3c59c1b3993fec72` |
| 3 | `theorem` | [aefinStronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aefinstronglymeasurable-source-edition-2.md) | 91 | `result-track:df792a7c1c1bc3b136fc915964bb00512a06ebb610f8d483cb4aee4bcdd2e90c` |
| 4 | `theorem` | [aefinStronglyMeasurable_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aefinstronglymeasurable-zero.md) | 97 | `result-track:97edeff6fad5b141838069e2cac2b4d812463ebeaff822514eb05d7f231a0503` |
| 5 | `theorem` | [StronglyMeasurable.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/stronglymeasurable-aestronglymeasurable.md) | 108 | `result-track:270db00308a81b4508a36be4a3e2475a3ab0d27bb2e56781a4e6414348d67aef` |
| 6 | `theorem` | [aestronglyMeasurable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable-const.md) | 112 | `result-track:1b94b96476dab7dc001b4f912289973ed4f516e2a0c9b85c337088a90f03f282` |
| 7 | `theorem` | [aestronglyMeasurable_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable-one.md) | 116 | `result-track:c9bb58d2d64d2a96f4f98287fe05b5d7b075cb116dbb665d1d77055d2c4b5cf1` |
| 8 | `lemma` | [AEStronglyMeasurable.of_subsingleton_dom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable-of-subsingleton-dom.md) | 120 | `result-track:c0402ef0c274408c804be6c3e0232edeb5a9c9d3cc66739446b5b302026b6dd0` |
| 9 | `lemma` | [AEStronglyMeasurable.of_subsingleton_cod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable-of-subsingleton-cod.md) | 124 | `result-track:5f7062800905eed694d2d6751c45f3eafe9b1aa7c0fee17f1b270e66f87d07ec` |
| 10 | `theorem` | [aestronglyMeasurable_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable-zero-measure.md) | 128 | `result-track:25c5802e42f869fe819d61ccac4169220f40c2f2e73cf181a7f3b3138be5ea2d` |
| 11 | `theorem` | [SimpleFunc.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/simplefunc-aestronglymeasurable.md) | 135 | `result-track:1a01c09ecf57a3d89e98e567ab342c877c258e749de15c187f43eecc5e997717` |
| 12 | `lemma` | [aestronglyMeasurable_id_of_isSeparable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable-id-of-isseparable.md) | 140 | `result-track:16c56754421b948fd1b54b74283af6915b6ef8963899cc0224502b930c07efe9` |
| 13 | `lemma` | [of_discrete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/of-discrete.md) | 165 | `result-track:abcd54ec6a9d1b7c6f59b396d37b3de0fba58fc71d01059567ca852e9495e846` |
| 14 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mk-source-edition-2.md) | 172 | `declaration-track:7f728453c0b7e0ecb2f7ede9908484cd088a8bdadbb20853a5f18e7c47a5493c` |
| 15 | `lemma` | [stronglyMeasurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/stronglymeasurable-mk.md) | 176 | `result-track:92f8aa84e4b33cadc430e893861a02c53ec47ad21353a4ec9280f3992516ddd7` |
| 16 | `theorem` | [measurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/measurable-mk.md) | 180 | `result-track:d76607518e4bf4bb421b7b83ac126e6803797a8cc966157f7bc3095fd8edd92d` |
| 17 | `theorem` | [ae_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/ae-eq-mk-source-edition-2.md) | 184 | `result-track:bf8e97242c34f5e5aeef88be301c471e0ab83a26a8683311a8bc031d924bd969` |
| 18 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aemeasurable.md) | 188 | `result-track:0d1dde3a3bef79acebe16e3d280cfac4e8be94d13114a289304b6c65898f1433` |
| 19 | `theorem` | [congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/congr.md) | 195 | `result-track:564135738070028723e09fd1cd65c01a95ab6334c73ac3cb9a44cdccfcef7e91` |
| 20 | `theorem` | [_root_.aestronglyMeasurable_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-congr.md) | 198 | `result-track:0c8d03329a5359dbc8164666bf8b9e15923c84c415024d0f3c6d829c6ab786f6` |
| 21 | `theorem` | [mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mono-measure.md) | 202 | `result-track:aad13e87df71cc6bb2feabe2206c6eff78bd7c8413836cdb4b9d13e551b96a63` |
| 22 | `lemma` | [mono_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mono-ac.md) | 206 | `result-track:efe223c0ed1eba206b576f68c6e14e8c3bcc213a90b9890bde22aa736904e44f` |
| 23 | `theorem` | [mono_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mono-set.md) | 209 | `result-track:7827bd7ac16c796f226b62d278276e22fb4503ea5f6c0564f2f5252bcc5abfcc` |
| 24 | `lemma` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mono.md) | 213 | `result-track:2951cd15483fe77355d15d9188a0536f471be8d8134c2248886dbd6a51254041` |
| 25 | `lemma` | [of_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/of-trim.md) | 216 | `result-track:eb7f639aca32ac5a46da2b17299fb42a846ad8336fea1199cf94b6965148224a` |
| 26 | `theorem` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/restrict.md) | 221 | `result-track:7cb5f23d88259eec92d90fa8baea59bedbdfe6e3d08d7484c657990cc0ee3d52` |
| 27 | `theorem` | [ae_mem_imp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/ae-mem-imp-eq-mk.md) | 225 | `result-track:d887329827934bd6965b00134954e8c8b6f71250e2c8d42091ed0a96db495ba4` |
| 28 | `theorem` | [_root_.Continuous.comp_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-continuous-comp-aestronglymeasurable-source-edition-2.md) | 232 | `result-track:d494407f2c56b46eef8929bb55478455830cb0cc41f53cee80214eb6aae2463e` |
| 29 | `theorem` | [_root_.Continuous.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-continuous-aestronglymeasurable.md) | 239 | `result-track:2f97c2b0cd350cda01aa0bfaa2d788b5e1a03e270a208fd5795098f1d6382760` |
| 30 | `theorem` | [fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/fst.md) | 245 | `result-track:4ef63755e7e16e52e03eec220a0260f1c6f1a2b7b8ccab1d657bc21caeefd144` |
| 31 | `theorem` | [snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/snd.md) | 250 | `result-track:9589688e045173079ab6c3d3d27421a319a108652d100633353d6a55d368dc62` |
| 32 | `theorem` | [prodMk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/prodmk.md) | 255 | `result-track:3fd8c017e8e5e25fcdd158dd1040d00e6cf4cc4619b7dc1c4d07bfc2a07d370e` |
| 33 | `theorem` | [_root_.Continuous.comp_aestronglyMeasurable₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-continuous-comp-aestronglymeasurable.md) | 262 | `result-track:153fa65db20f3a2e3db4b3cef59aa4a6e3a9b5fdb9f777ad1e7b82299bbf27e4` |
| 34 | `theorem` | [_root_.Measurable.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-measurable-aestronglymeasurable.md) | 271 | `result-track:bef8191cdf67d99fc27da56489a9a92292cbf3b1a1ac41d7ad9160f445effecb` |
| 35 | `lemma` | [of_measurableSpace_le_on](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/of-measurablespace-le-on.md) | 280 | `result-track:4725df795dcc3dcbe2c946f8dbbeeb187a2282c4d48919781de390ca969fa877` |
| 36 | `theorem` | [mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mul.md) | 300 | `result-track:33dc48bc221a5a6f370f7cddf398ebad0628684873d0e22f73b66cde5e95c2f6` |
| 37 | `theorem` | [mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mul-const.md) | 305 | `result-track:46108b8646cfcaabe8f68c8fd4ea1764f5482fbcc4f4e54aa699fdb78945fecb` |
| 38 | `theorem` | [const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/const-mul.md) | 310 | `result-track:782e5fbab8781ffe6d86ab56807e404318dbfda2ec699b91f93beefd0354d6b3` |
| 39 | `theorem` | [inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/inv-source-edition-2.md) | 315 | `result-track:ef7be651914ed0017cc2129dc4ce5e87e856d3cd8e44e1fe6d2d5b0e4a80fcda` |
| 40 | `theorem` | [inv₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/inv.md) | 320 | `result-track:3e2c753850589e66bdd1412d9f48405b365434b007f5173904510e66df626e5f` |
| 41 | `theorem` | [div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/div.md) | 325 | `result-track:5f8ad5b48b3814e6997854ef4b6360cc6beea89db3329b6d61dc233886181f95` |
| 42 | `theorem` | [div₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/div-source-edition-2.md) | 331 | `result-track:a92f52789a2b7388abc98ce909d99302e8ee39a4f057b079ecff0e86a024709f` |
| 43 | `theorem` | [mul_iff_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mul-iff-right.md) | 338 | `result-track:c35b02d8d183531db0396542f85d7cf70aea030fd8b342861bd9cfc353805bb1` |
| 44 | `theorem` | [mul_iff_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mul-iff-left.md) | 344 | `result-track:58a7bdeefb5c2d36591a162c64409378388991283563fd70f70dd72ac0cbff78` |
| 45 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/smul.md) | 349 | `result-track:d4445d2c7942d2cd0db8cd0ae94ac2878d31914eab021d804a50b9c0487fd83a` |
| 46 | `theorem` | [pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/pow.md) | 355 | `result-track:7c5657c814b750778aaedfacf0e1fccd8df442fe4ebcb7bef68cfb9ed19d8913` |
| 47 | `theorem` | [const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/const-smul-source-edition-2.md) | 360 | `result-track:4f5d5001cef505556b54f361d6c7be1a898432bfea9f007f4dfa4d80fe6f84ef` |
| 48 | `theorem` | [smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/smul-const.md) | 371 | `result-track:691a33d028d2e55a56c6243a7f6e8917e44ce841c7d309b4a097d2c028a13c6b` |
| 49 | `theorem` | [star](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/star.md) | 380 | `result-track:6bfa995f28322380df3b328573f66d7fb0723044e4774d6598ae9faecc110553` |
| 50 | `theorem` | [star_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/star-iff.md) | 384 | `result-track:306807a352443293ceea16f7fd5b36f075038bad5140e7e8281427525ee96178` |
| 51 | `theorem` | [sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/sup.md) | 394 | `result-track:737bfd8a4c022a0d362b166c03f7e0e2b730639e1dbc1de14de6ab915ac36fef` |
| 52 | `theorem` | [inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/inf.md) | 400 | `result-track:24f0b0e8b7e2a4dd007f0c8197766719978b284f7285fcb208a29b8e8e5022ba` |
| 53 | `theorem` | [oneLePart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/onelepart.md) | 406 | `result-track:32759f61df506e27cde41edb0a7c03e937342449a95713bb3edc850a7b53c295` |
| 54 | `theorem` | [leOnePart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/leonepart.md) | 412 | `result-track:b652e40327b150ccda0e6e82bd09deab6e8304aac857b5244ff9cd4b1bccb268` |
| 55 | `theorem` | [_root_.List.aestronglyMeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-list-aestronglymeasurable-prod.md) | 430 | `result-track:2d446ba9ecce72759f8dcf9e544c57ad28c187b5377fe115b79fa32ad95f07d1` |
| 56 | `theorem` | [_root_.List.aestronglyMeasurable_fun_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-list-aestronglymeasurable-fun-prod.md) | 440 | `result-track:32ac5fc111fd294e8a5d50ef4278e1d2d241c3112884a70ac3447c6ee80e6247` |
| 57 | `theorem` | [_root_.Multiset.aestronglyMeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-multiset-aestronglymeasurable-prod.md) | 452 | `result-track:e3a59765b4e956ee4b36b4a230b44a1eac1b06f31d36e87f12e96630a8647576` |
| 58 | `theorem` | [_root_.Multiset.aestronglyMeasurable_fun_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-multiset-aestronglymeasurable-fun-prod.md) | 458 | `result-track:8cc3fec118205791d95950be356a8ce55697ced1390a480f384666e9a9e9137d` |
| 59 | `theorem` | [_root_.Finset.aestronglyMeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-finset-aestronglymeasurable-prod.md) | 464 | `result-track:a630b6287996fd3fcbde889bbe6b6d839f4045ac12aa9bc821df8d09468e3525` |
| 60 | `theorem` | [_root_.Finset.aestronglyMeasurable_fun_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-finset-aestronglymeasurable-fun-prod.md) | 471 | `result-track:9eaaa185bdcb2be574102df9545ed062103b40650b63bbbd5aa696acaa15d2f2` |
| 61 | `theorem` | [_root_.AEMeasurable.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aemeasurable-aestronglymeasurable.md) | 484 | `result-track:3625dbac336a1ca048bce1d9b69b676b19042c8bb65bfb29416bf5b6cb311b82` |
| 62 | `theorem` | [_root_.aestronglyMeasurable_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-id.md) | 489 | `result-track:570f064ffb958b28cbe7d0131d234065bb8b38b4b4986d3175fe6831db0948e2` |
| 63 | `theorem` | [_root_.aestronglyMeasurable_iff_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-iff-aemeasurable.md) | 495 | `result-track:2940ee4da8d4e8cfd8a70d301980b4c9593b8e4f5ffb30f1bbe5430eed787b53` |
| 64 | `theorem` | [dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/dist.md) | 502 | `result-track:87b76bbe264af2d78f3280ae5044dc2dfd4ab6f793418f77adadcfb3666b6a86` |
| 65 | `theorem` | [norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/norm.md) | 508 | `result-track:1b5308f949dd697bb6c221990220a0219d08fb90129b46ddbebf3bd8b15ca8e9` |
| 66 | `theorem` | [nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/nnnorm.md) | 513 | `result-track:19b988cbae474659b91440dd9a75598630f1291852819f2f430b08326482be28` |
| 67 | `theorem` | [enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/enorm.md) | 524 | `result-track:2dd820d70ebfa5ae41900f3ffb3622a571af80013a38ed5e2e90d2ee1d91989d` |
| 68 | `theorem` | [edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/edist.md) | 534 | `result-track:590acbaa68a00642b90d3c90a4d1014d62839a19791f3ae05ccef28a43170b1a` |
| 69 | `theorem` | [real_toNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/real-tonnreal.md) | 540 | `result-track:436f3f2e45d41dc21bf6f9df3c769f0e185228b4ab67cc52103ec48d1dd47d7b` |
| 70 | `theorem` | [_root_.aestronglyMeasurable_indicator_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-indicator-iff.md) | 544 | `result-track:4526d9a58e9694a5e3af0fccbec056cb9dca9c60b62bc7effe90dacb626ed974` |
| 71 | `theorem` | [_root_.aestronglyMeasurable_indicator_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-indicator-iff-source-edition-2.md) | 557 | `result-track:cca503cc021721a2ddb8cd2f224870203bdce31fd84d962bce69ebafa62947a1` |
| 72 | `theorem` | [indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/indicator.md) | 565 | `result-track:105d4f97b7dfe17cf2b6ecea3424eff344ceb695a99a2b11114f25e34bf8b52c` |
| 73 | `theorem` | [indicator₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/indicator-source-edition-2.md) | 570 | `result-track:9a517f39b435ad4fad221b3b9230f7aaca75bb1d79a62ac84585d8cf0cf2af19` |
| 74 | `theorem` | [nullMeasurableSet_eq_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/nullmeasurableset-eq-fun.md) | 574 | `result-track:5ada71c3c6996d85f6f8e69cdf937faf0332929b7f66f6086cca1134f4d4b3a2` |
| 75 | `lemma` | [nullMeasurableSet_mulSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/nullmeasurableset-mulsupport.md) | 584 | `result-track:b5e262d217f6b9c69a6f709c7a4d8be39527c8bf433b27c717607effda529cd3` |
| 76 | `theorem` | [nullMeasurableSet_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/nullmeasurableset-lt.md) | 588 | `result-track:07f4d52eac3251469288198f600a1a41b8079d81913884123ef9dee44c65ed7e` |
| 77 | `theorem` | [nullMeasurableSet_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/nullmeasurableset-le.md) | 596 | `result-track:8c4faa56839a666f9b899a6c956205d2170df4ab0a517337649b3688edecbed3` |
| 78 | `theorem` | [_root_.aestronglyMeasurable_of_aestronglyMeasurable_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-of-aestronglymeasurable-trim.md) | 604 | `result-track:909a9353a02693e106270450120897fdb8bbd047cc82d635a6882bf80b00b7cf` |
| 79 | `theorem` | [comp_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/comp-aemeasurable.md) | 609 | `result-track:189363cf9631e7d759ae5b24b593dab432dd5b5ca2c7bd232568f8304aa8bf98` |
| 80 | `theorem` | [comp_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/comp-measurable.md) | 615 | `result-track:293121ede67253774fc7d1096f472aad83b87ec003b97ef0a58ba5b62646f77a` |
| 81 | `theorem` | [comp_quasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/comp-quasimeasurepreserving.md) | 620 | `result-track:c7f59ae3473099ed67922f735dbf50694745fc4cc8595565f9e66d442ce09832` |
| 82 | `theorem` | [isSeparable_ae_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/isseparable-ae-range.md) | 625 | `result-track:c65203bf431e32497e1c4f4a8daee0baa9637ea1f9028d2a65efe7712db96d2a` |
| 83 | `lemma` | [aestronglyMeasurable_id_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable-id-map.md) | 633 | `result-track:51e9c16ad5f190b8fcef81cfaf8889ff4e1ea25d46d4789cc641221b7b3e2426` |
| 84 | `theorem` | [_root_.aestronglyMeasurable_iff_aemeasurable_separable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-iff-aemeasurable-separable.md) | 644 | `result-track:34d274a4deb44b23e3e79797067e672744644b25e1f37e2e6d8a048e85257a01` |
| 85 | `theorem` | [_root_.aestronglyMeasurable_iff_nullMeasurable_separable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-iff-nullmeasurable-separable.md) | 659 | `result-track:6960ad9b6f0b4acca88cfc9b77e5f17e40c1d6dd8fdcbdf70e5cfb1e72ba081f` |
| 86 | `theorem` | [_root_.MeasurableEmbedding.aestronglyMeasurable_map_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-measurableembedding-aestronglymeasurable-map-iff.md) | 667 | `result-track:b7d9f6cc658ba29fa62df802b052d3af4ee37ef232b2213901f459604ff11103` |
| 87 | `theorem` | [_root_.Topology.IsEmbedding.aestronglyMeasurable_comp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-topology-isembedding-aestronglymeasurable-comp-iff.md) | 676 | `result-track:78b28809f5a24608a84a5be7e3fb9f75e4b4b436b595fe826a710aaf7e31695a` |
| 88 | `theorem` | [_root_.aestronglyMeasurable_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-of-tendsto-ae.md) | 695 | `result-track:9d717f90bccf78aeee4980e48bdd1b66f7973fa37612c5855b9a5d539adea4b0` |
| 89 | `theorem` | [_root_.exists_stronglyMeasurable_limit_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-exists-stronglymeasurable-limit-of-tendsto-ae.md) | 713 | `result-track:90734a856f63013c709aa050d8f82e42e19ce3640433938ee235196c3d115a9d` |
| 90 | `lemma` | [exists_stronglyMeasurable_range_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/exists-stronglymeasurable-range-subset.md) | 730 | `result-track:abe4c82b1e64c6980a576ec6b77f557810681615df0e55cff761a71cccb39aa0` |
| 91 | `theorem` | [piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/piecewise.md) | 747 | `result-track:8211a40c77a6c7b3b065f1a60a54cb77e8dc6c2e89dad70c786fc8428053600f` |
| 92 | `theorem` | [piecewise_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/piecewise-iff.md) | 768 | `result-track:2eecd95b5c9231e406541e1991ecb2e8909d0aa3cabf7dcda89613d076f43635` |
| 93 | `theorem` | [sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/sum-measure.md) | 776 | `result-track:779862cc004038ce0d0a54b25bf79f8f483bd139fe8cdae5d094d6db237a3795` |
| 94 | `theorem` | [_root_.aestronglyMeasurable_sum_measure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-sum-measure-iff.md) | 792 | `result-track:ba4bf4993683996ce5ae597b512da367ae1035f4d5e6161eb7573fdfa8cb6920` |
| 95 | `theorem` | [_root_.aestronglyMeasurable_add_measure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-add-measure-iff.md) | 798 | `result-track:58eda1ebdb42a4d9099b81a9b28f7c501de651a6b2d4e93e35a9cba2b78693bc` |
| 96 | `theorem` | [add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/add-measure.md) | 804 | `result-track:ed229ea563b0b28f155ef6ee0fa353df1e7070a985ed5e102e81bb6190398888` |
| 97 | `theorem` | [iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/iunion.md) | 810 | `result-track:27fa1c9d7ac6e6b03b176c2a58ddd7cec30704710078307e9da6d8932e9fc70d` |
| 98 | `theorem` | [_root_.aestronglyMeasurable_iUnion_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-iunion-iff.md) | 816 | `result-track:a1eab89deaf679a041abe5b90f964d378298a5241c5daa18dc60561121ba2b1c` |
| 99 | `theorem` | [_root_.aestronglyMeasurable_union_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-union-iff.md) | 823 | `result-track:c3a73137c614224135791434c5328416a4c7865d15c23f7493ebe86c63d44879` |
| 100 | `theorem` | [aestronglyMeasurable_uIoc_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aestronglymeasurable-uioc-iff.md) | 828 | `result-track:19c7248c433c369a3623d2bb8e9307f6b01f50bffa812557839dee7badf38e5a` |
| 101 | `theorem` | [smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/smul-measure.md) | 836 | `result-track:fa45ea26b2d6691834d1cbe5922b9141b16f2a5ce097af8c6cb03e999d547b68` |
| 102 | `theorem` | [_root_.aestronglyMeasurable_const_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-const-smul-iff-source-edition-2.md) | 847 | `result-track:d1b9b8b86b2bc03b4f2391beb8b05179109aeb701746f0416a0332f4378da655` |
| 103 | `theorem` | [_root_.aestronglyMeasurable_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-smul-iff-source-edition-2.md) | 854 | `result-track:79dcb833fb6101b7e2d4c5916d90695870173578621235312d2b3e67e777a041` |
| 104 | `theorem` | [_root_.IsUnit.aestronglyMeasurable_const_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-isunit-aestronglymeasurable-const-smul-iff.md) | 859 | `result-track:26762221cdaf969c362953f6b2121395eb75b32386a3455f40389fb834b86868` |
| 105 | `theorem` | [_root_.aestronglyMeasurable_const_smul_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-const-smul-iff.md) | 865 | `result-track:220cd46a3a1dad84253cf632979b2e0081958deeb39031c5dde6c48e25478bda` |
| 106 | `theorem` | [_root_.aestronglyMeasurable_smul_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/root-aestronglymeasurable-smul-iff.md) | 872 | `result-track:1e6f5ba710f7cacc932db99f21a682502da4d66ffec2b7717d4ef4d9fb1b69e8` |
| 107 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mk.md) | 898 | `declaration-track:12ea01a86933e634ed1ed44a3d46d65d688570099ed88fa29e44caa2950a9d41` |
| 108 | `theorem` | [finStronglyMeasurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/finstronglymeasurable-mk.md) | 901 | `result-track:5669a0c1c046afae848cf126ca76167e1ce2971075037639bf79b374442e48d6` |
| 109 | `theorem` | [ae_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/ae-eq-mk.md) | 905 | `result-track:648298f937253fc3c5d4790592901625e90e1a9254db1b6d78cab0942027967a` |
| 110 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aemeasurable-source-edition-2.md) | 909 | `result-track:6de77fc03b33823b19cefe10b9bcd8ec6ac3c07355e5b7b9076d91f1dedfc6db` |
| 111 | `theorem` | [mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/mul-source-edition-2.md) | 919 | `result-track:ed6e9babb344d679ea7f2f3f33266cdceddeda6899606539c2d106b520377d85` |
| 112 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/add.md) | 925 | `result-track:2a6f27ee62fd6ff5b1b33301763d56a4af9648721687fd06bbfa981b5efb7f29` |
| 113 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/neg.md) | 931 | `result-track:eb99d75da1cd494f643d02a278b91e95624977a33391c98ee0c9ba8424767a18` |
| 114 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/sub.md) | 936 | `result-track:fd72f5a1bb7fa60f7b4a2555a75106359fc1e9d4b268a0025fd1642c0a7fa0d9` |
| 115 | `theorem` | [const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/const-smul.md) | 942 | `result-track:0dd4cc89a33c0666f5eaeb39ea137fff4db93f016989cf6113c5a07be312f4ef` |
| 116 | `theorem` | [sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/sup-source-edition-2.md) | 954 | `result-track:e47f4a5931bc29fd6c7aed81fa7cf6eb360d5ecfdfe14edf26f8b6b1c4b99bb0` |
| 117 | `theorem` | [inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/inf-source-edition-2.md) | 960 | `result-track:542d958ff84274f018aafacb5b8a6909ae90b846e18786dede1afa64930f852c` |
| 118 | `theorem` | [exists_set_sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/exists-set-sigmafinite.md) | 969 | `result-track:823c0076a7fe9fccf629a262b9366a97f836de6e9dd86830c143e8d639860c75` |
| 119 | `def` | [sigmaFiniteSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/sigmafiniteset.md) | 981 | `declaration-track:31e8e852b92c10653757e5426b72710996079232e208184915fc3773e2ca761c` |
| 120 | `theorem` | [measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/measurableset.md) | 984 | `result-track:9407a69ef71c040453134a6991088a7ec57609ba7f5b4ad68e1deaf3a18ef451` |
| 121 | `theorem` | [ae_eq_zero_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/ae-eq-zero-compl.md) | 988 | `result-track:b66699432e3a71335eda47ae04c04e0bd6fd1687d7faf792d1ac98dfae8e50d0` |
| 122 | `instance` | [sigmaFinite_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/sigmafinite-restrict.md) | 992 | `declaration-track:71bb3ae41fda750f04bb6f3622289ed25809678c4dbf964449c136667cf5033e` |
| 123 | `theorem` | [aefinStronglyMeasurable_iff_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aefinstronglymeasurable-iff-aemeasurable.md) | 1005 | `result-track:bf60cfb6e5f539ffe59951719b980f72d7747218c47e29627a3de1d43a174389` |
| 124 | `theorem` | [aefinStronglyMeasurable_of_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurablePublic.lean/declarations/aefinstronglymeasurable-of-aemeasurable.md) | 1012 | `result-track:94b3ef776237755b48452bdc349d7e0e8fb1414e28f92540c2739a91b32b9bb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96867bd3a15aed436a9e4a04da1bfa9abff8d62b3cc80f576f15ace1fbf3e78c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AEStronglyMeasurable/Variant14ac3ace6912a63bec974d56db7b171c199032fe7bb34758f82360b7683cab86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

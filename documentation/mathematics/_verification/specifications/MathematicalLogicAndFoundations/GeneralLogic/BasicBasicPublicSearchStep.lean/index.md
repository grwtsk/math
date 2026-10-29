# Verification target: Basic Basic Public Search Step

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "846cb5d8fd4ba718e27c5448831e2826238ad04f",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `846cb5d8fd4ba718e27c5448831e2826238ad04f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.FindPos` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Loop` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.IsEmpty` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SearchStep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/searchstep.md) | 41 | `declaration-track:2f4b66896340b39fa7b2b0f4c99fa63a97f3ec965e8c2a05f9ebfa85257e9750` |
| 2 | `def` | [startPos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/startpos.md) | 56 | `declaration-track:7d7c0a73147f9af09e5e6cb00c813a5262344db4140329e1366b0a13f30b4190` |
| 3 | `theorem` | [startPos_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/startpos-rejected.md) | 62 | `result-track:6d2e8bb552a458dd49196d26673b457548fcb2c6ee02bfcada494ff0e105b28d` |
| 4 | `theorem` | [startPos_matched](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/startpos-matched.md) | 65 | `result-track:561fde22fb33304e03efcdaf14af3f68413fd0162d5e7ac96fae2e1fa3043a3c` |
| 5 | `def` | [endPos](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/endpos.md) | 69 | `declaration-track:ce188a4e42fd49013a255f95486ef0e9457046c9db6bdd0c47e4ca9d46ed8e7c` |
| 6 | `theorem` | [endPos_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/endpos-rejected.md) | 75 | `result-track:b0ae9e4098044d90c745bbbb1f910d5bf5387cf937341ada9049be4a1ddf0647` |
| 7 | `theorem` | [endPos_matched](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/endpos-matched.md) | 78 | `result-track:3886f37f1dba5181517c772b92e599bcac00dbea3afbc3520d6fa1d6b080dfa9` |
| 8 | `def` | [ofSliceFrom](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/ofslicefrom.md) | 84 | `declaration-track:0837e2dda84a604df8be4aa8eff600eb634ea7764e2c7b8af10d81db63f2ece7` |
| 9 | `theorem` | [startPos_ofSliceFrom](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/startpos-ofslicefrom.md) | 90 | `result-track:f57d332a21e97173d2a6b0f85f24704003186ffa956ecf17abee7682c8ae3745` |
| 10 | `theorem` | [endPos_ofSliceFrom](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/endpos-ofslicefrom.md) | 95 | `result-track:82a011bce11725fc1660a8806e8c3667e3c49f406c9ef1996043f05384b617a7` |
| 11 | `def` | [cast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/cast.md) | 104 | `declaration-track:a526e4d6cfb024642a03264738ceb04e049a1d1e95f20fb2a1492ff19765cba8` |
| 12 | `theorem` | [cast_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/cast-rejected.md) | 109 | `result-track:77500e1e1a4eb85d6bf0da6d34e30cd4253e5fcb9c7834abf063ccb903dc03f4` |
| 13 | `theorem` | [cast_matched](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/cast-matched.md) | 114 | `result-track:b6b9d2e459767576a0bc18002869d89d5496a5f4be776c4bfe8e3d23646de40a` |
| 14 | `theorem` | [startPos_cast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/startpos-cast.md) | 119 | `result-track:8f8184c978595cc2d985b488d4871a2e51e6564f2f4ead3a0cd9c12c8807dad6` |
| 15 | `theorem` | [endPos_cast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/endpos-cast.md) | 124 | `result-track:b7cc3e7031fcade69caa05d37448fa534cb8a3c7fab434a932f7c4fdaa048a42` |
| 16 | `theorem` | [cast_rfl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/cast-rfl.md) | 129 | `result-track:dc85aa9cca8252e8a3bf7153c917b1b9f8f09bec0d46cc30254b5cebead0e4d4` |
| 17 | `theorem` | [cast_cast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/cast-cast.md) | 133 | `result-track:52a8def8019917b7dd0b5b2e1a1b038b4f020e72c091a685438c0b61d88cf08a` |
| 18 | `class` | [ForwardPattern](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/forwardpattern.md) | 142 | `declaration-track:370ad25b16eea559a9fb3979029f28b7d658b86725351837d06214644bd83bc0` |
| 19 | `def` | [ForwardPattern.dropPrefix?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/forwardpattern-dropprefix.md) | 159 | `declaration-track:d478c408c3a0acbe087512e32e9a8f3cb5e97857beaca233f17d8106e8451bb3` |
| 20 | `class` | [LawfulForwardPattern](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/lawfulforwardpattern.md) | 175 | `declaration-track:a8aa8769515561e81673c80e3bc9049e1227156cab91216db854fffacc5a5f3e` |
| 21 | `class` | [StrictForwardPattern](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/strictforwardpattern.md) | 187 | `declaration-track:2a09cced7eb9503542293db728220163849bdcd3cfe787eca523a5370c33ece4` |
| 22 | `class` | [ToForwardSearcher](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/toforwardsearcher.md) | 207 | `declaration-track:8c845a6cc8a206c96bc7a381074fa2c1b71dff06689e6a70458b9e441abd4985` |
| 23 | `structure` | [DefaultForwardSearcher](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/defaultforwardsearcher.md) | 217 | `declaration-track:ae0b114e075e54c5f0fc7325095cedc9ce2bdd7e1a251a830ceb5652aa4b8b4d` |
| 24 | `def` | [iter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/iter-source-edition-2.md) | 226 | `declaration-track:c5dafd254a446ce6f7823207ce00821643594b2c7f7d8398b59dd998f9f04412` |
| 25 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/instance-source-edition-2.md) | 229 | `declaration-track:316f6c8a022b53abb32a7e712b6de029c8e63570e488d5c3dc46faa91b9b298a` |
| 26 | `def` | [finitenessRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/finitenessrelation-source-edition-2.md) | 254 | `declaration-track:4ebc0ec4c759f80803237e7c3e7c7970c50d5fe5494ab8972fda9f121c83a36d` |
| 27 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/instance-source-edition-4.md) | 274 | `declaration-track:5960c25dd3c0ef2377652616705acbcd8e43a0e10517f54e0702998850f32e7f` |
| 28 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/instance-source-edition-5.md) | 278 | `declaration-track:8d531c97123d076699fbcc17bb93ea602a046a3e28991bf318135d9725fa64ce` |
| 29 | `def` | [defaultImplementation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/defaultimplementation.md) | 291 | `declaration-track:39844e9ea104894b8ca2b3d225bb57b37eb5c503b2c3c5a2a134de20d9639e81` |
| 30 | `def` | [memcmpStr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/memcmpstr.md) | 300 | `declaration-track:f5b9b7a839ff0304e947953de2f102fbe49a3b5893a5bca5c68998214876a055` |
| 31 | `def` | [memcmpSlice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/memcmpslice.md) | 325 | `declaration-track:486d379fa953cde29cef9b14a69adca5e11e8608e1fe642fa4a87b6d39a781d7` |
| 32 | `class` | [BackwardPattern](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/backwardpattern.md) | 352 | `declaration-track:7f8e78fb37acb7d5c72f22ee085267b3783a70ad4ffce68ade9c286638968a99` |
| 33 | `class` | [LawfulBackwardPattern](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/lawfulbackwardpattern.md) | 381 | `declaration-track:ae8913ea173ac371772a40883628d51f85f515135c363c5daceeaff20a024f5a` |
| 34 | `class` | [StrictBackwardPattern](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/strictbackwardpattern.md) | 393 | `declaration-track:3aadbb70e096f5912e62baddf10d49ec70ab5e338d37ef7415e43b4591f05c55` |
| 35 | `class` | [ToBackwardSearcher](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/tobackwardsearcher.md) | 413 | `declaration-track:ea27f2b347050b87398337687f9aa6fe33f1419cafbbf27d647e2996c4eadd3c` |
| 36 | `structure` | [DefaultBackwardSearcher](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/defaultbackwardsearcher.md) | 423 | `declaration-track:1029e189f392c5125929e2460a5c4fcfd355612494fafcdf1d214f973e0e3ec5` |
| 37 | `def` | [iter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/iter.md) | 432 | `declaration-track:bac4fc670a859db0c78b5cde42468c80b72f0d89448987f08c2e4467f9ce08a3` |
| 38 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/instance.md) | 435 | `declaration-track:1ad29cdb035b004ac417cb7e10002e27407ac9e7e7b9f3069ac32a845dc23b80` |
| 39 | `def` | [finitenessRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/finitenessrelation.md) | 460 | `declaration-track:2c082e4be11b388dd67383f00ecc103215ef1a32e47e5cc81f4417d1db7427f9` |
| 40 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/instance-source-edition-6.md) | 479 | `declaration-track:e41c7f68f68560ee0237eaab72c929a096577cbb916faeb20f7e16e22c910e4f` |
| 41 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/instance-source-edition-3.md) | 483 | `declaration-track:585a5b516df7e216cde3dab0400d4daa4261e0d3914fdf198c5f1ca7466c9aac` |
| 42 | `def` | [defaultImplementation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicSearchStep.lean/declarations/defaultimplementation-source-edition-2.md) | 496 | `declaration-track:be5b46b57ce41605bf09bf21cc6c79b72884cb95ab73a86bfc1a08d0bbdd4c82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f2463ea3d9495f1c155fd1504f471622d5d573a20d57210f3d19b16b351f5f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante9eb9acac828fc9afbd309468f5ac17a56f554669a702d0812243eb42eb8d480.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

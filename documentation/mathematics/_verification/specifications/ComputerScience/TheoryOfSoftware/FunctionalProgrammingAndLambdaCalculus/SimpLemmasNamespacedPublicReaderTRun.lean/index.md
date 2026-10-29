# Verification target: Simp Lemmas Namespaced Public Reader TRun

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5d092fd5ae70a181c6af0cb256a09e5e5c7eb43",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5d092fd5ae70a181c6af0cb256a09e5e5c7eb43`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ReaderT_run](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/readert-run.md) | 42 | `result-track:4b0a76dbae9e8254a78f0677a1f22db38ef4fd52b6b82d8741fda8c18dae7367` |
| 2 | `theorem` | [StateT_run](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/statet-run.md) | 46 | `result-track:0bc7bbe5a75dac1606b543622dedf103b56ce5ac699e41277efb9e6c2feccc90` |
| 3 | `theorem` | [ExceptT_run](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/exceptt-run.md) | 50 | `result-track:fb26ca2c5cb6960e58947e96f76f7fed97264e213e192172e562fcd028638604` |
| 4 | `theorem` | [OptionT_run](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/optiont-run.md) | 57 | `result-track:0b9d48ab7b40b54cdcad972d0087c3a47c9d85cbfa80152ce19acc2ff648ec95` |
| 5 | `theorem` | [pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/pure.md) | 66 | `result-track:27d4eef481495023985d98015cc8cb4ca8137af69c84da714dc674de50040c7f` |
| 6 | `theorem` | [bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/bind.md) | 70 | `result-track:084e5d073edae4afec0e5f96deb0d8089f6b4c6fecac305b7a930a8ce94a9004` |
| 7 | `theorem` | [map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/map.md) | 74 | `result-track:96ba67c9c0156f20ca1f16b3d04e143a46bece4aa72b744744164651b83f8af2` |
| 8 | `theorem` | [seq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/seq.md) | 78 | `result-track:0509931297b19e9af89feaac836ed574a5eb6d60f4d9bf3fa3bab6dfa263fdd9` |
| 9 | `theorem` | [monadLift_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadlift-statet.md) | 90 | `result-track:8c4593d61c32bfb9aadf15288d17164ff661ec807794b89126d97cb0b5cb9c30` |
| 10 | `theorem` | [monadLift_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadlift-readert.md) | 94 | `result-track:1138a4f41299b9cfe6a5a1307d0772c411096ce3852d0aca9cd22d15e8d7a655` |
| 11 | `theorem` | [monadLift_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadlift-exceptt.md) | 98 | `result-track:83fa59d4c2e147696b4183957d91553f145e1c22c1aee3b3d37ab1e6aed5a086` |
| 12 | `theorem` | [monadLift_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadlift-optiont.md) | 103 | `result-track:7ed709d786c51f80309272c9198f8cfe69660db7c12216c74b1ac92d702cf784` |
| 13 | `theorem` | [monadLift_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadlift-trans.md) | 108 | `result-track:34d9a8955c940fce32241875056f8e4824e44a7cf0495e9a89b01000edf69483` |
| 14 | `theorem` | [monadLift_refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadlift-refl.md) | 112 | `result-track:e2618aed8098caaca47e67932ecda2de05919b3df3ea7abc65996ff86017895d` |
| 15 | `theorem` | [lift_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/lift-statet.md) | 118 | `result-track:bb8d55e0d84b96693c2f1db1a497a96ebc062c1bbbe0936c2295fb54cc3a938b` |
| 16 | `theorem` | [lift_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/lift-exceptt.md) | 122 | `result-track:742838ae33d77f9a1207a5c0d9c68908dbd46c2e9bef47b10d290ea0fbcd8a81` |
| 17 | `theorem` | [lift_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/lift-optiont.md) | 126 | `result-track:e7a0039ed69681929d30da52c575fafd8dec07fc63b326c1fd74bd55db4e880e` |
| 18 | `theorem` | [read_MonadReaderOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/read-monadreaderof.md) | 132 | `result-track:7e21a08d3370637770fb0e871e02b2f00d36c173d678fa1fef30dff4375a2f82` |
| 19 | `theorem` | [readThe_MonadReaderOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/readthe-monadreaderof.md) | 136 | `result-track:d1664666e48cb383055fe9ef104fa97a2539440fe0f5b23809106817736bb687` |
| 20 | `theorem` | [read_MonadReader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/read-monadreader.md) | 140 | `result-track:d34cc487f7bd802ad6dc3f378c153ef654ec2283dbea90526860481d29692b95` |
| 21 | `theorem` | [get_MonadStateOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/get-monadstateof.md) | 146 | `result-track:37e6a57ad4f9c4412abd8ef55996064c3fdb713939a77c7cb53e35a402b2c439` |
| 22 | `theorem` | [get_MonadState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/get-monadstate.md) | 150 | `result-track:e92fc857719345384914e59fd47a97166dc03999ab1f0a9c2de9a7feb2ffd545` |
| 23 | `theorem` | [getThe_MonadStateOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/getthe-monadstateof.md) | 154 | `result-track:f6ee299f7ceaa4ca5d066a0764fcb38b53a5f2dfab48d31f1010bf876a40ba0b` |
| 24 | `theorem` | [set_MonadStateOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/set-monadstateof.md) | 158 | `result-track:875d1517f000070fae5c1b02d6747e122e5c9c795512e6c1dcc322ec5b56dd9e` |
| 25 | `theorem` | [set_MonadState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/set-monadstate.md) | 162 | `result-track:7d15964c9edf61900c9d95a9b89f25981e42d82b59b9f80fda419ff92d077f0a` |
| 26 | `theorem` | [modifyGet_MonadStateOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/modifyget-monadstateof.md) | 166 | `result-track:2e34c0d24b69d1d4989d6173a8191ccbaf19f79c5c668ae4dc047e1d0ea2516d` |
| 27 | `theorem` | [modifyGet_MonadState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/modifyget-monadstate.md) | 171 | `result-track:e55bba05d1a8179b045c856c32d4d29a381e46d9057493c21e9df7a515844e14` |
| 28 | `theorem` | [modifyGetThe_MonadStateOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/modifygetthe-monadstateof.md) | 175 | `result-track:cbfbd0cae8e090040ff4bece245d18cf90cde39f5a36f6c0a954d2b851cb356f` |
| 29 | `theorem` | [modify_MonadStateOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/modify-monadstateof.md) | 179 | `result-track:42bdd6423a7c92d97f8c39b0d696df7dac24aa65ea5e26cb30b8a52d032d6514` |
| 30 | `theorem` | [modifyThe_MonadStateOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/modifythe-monadstateof.md) | 183 | `result-track:b8e9423bb1e7c17f5d830654f7a2493ad4c237639245400df55ccda2b1656ea6` |
| 31 | `theorem` | [getModify_MonadStateOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/getmodify-monadstateof.md) | 187 | `result-track:76a94f81d2d221853582b9329d44e3bab142bf468a763d1d2c61a9589f3f7fdb` |
| 32 | `theorem` | [read_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/read-readert.md) | 193 | `result-track:15af3dc99beb3a44b085b6b92c2040fe410d0507455c4b3e3d481fcb8e2d8176` |
| 33 | `theorem` | [adapt_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/adapt-readert.md) | 198 | `result-track:b835e2cf5f1f2056d85d8b6f332e197b5c73364c99f847aa9082021ce956b5c8` |
| 34 | `theorem` | [get_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/get-statet.md) | 202 | `result-track:275edfbb326c08378e84dfd915025f6c5928ee0e229b09f9c09ddd90d81862c2` |
| 35 | `theorem` | [set_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/set-statet.md) | 208 | `result-track:f173ab97196e0601ff40d5a1a2ca5ace5cbbad31405a027acab32be7460d5f0b` |
| 36 | `theorem` | [modifyGet_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/modifyget-statet.md) | 214 | `result-track:552ab3554e2e29479b35e1fbc7f810018245cd39fb508f855b5a84262364dd78` |
| 37 | `theorem` | [adapt_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/adapt-exceptt.md) | 220 | `result-track:9f10f1c2becdb08d075981a8a58cd7ad02b48b949045389373261ca4fb23f36a` |
| 38 | `theorem` | [get_EStateM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/get-estatem.md) | 228 | `result-track:dd6e4c9c204b25a8ec399cef33516654816524ff785c27d23870fdc5dfd05ead` |
| 39 | `theorem` | [set_EStateM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/set-estatem.md) | 234 | `result-track:3a5403943a76d6e45afda7c08471bb371b50e6a8a47d2a413e863892fac0ce24` |
| 40 | `theorem` | [modifyGet_EStateM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/modifyget-estatem.md) | 240 | `result-track:e1cb867b6fd698a82b257898cbfb23d577f8e66e7a8aada7ae97802b6aca1de9` |
| 41 | `theorem` | [adaptExcept_EStateM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/adaptexcept-estatem.md) | 246 | `result-track:cf4c6be8f0acfb5b25b4e35ed7d77b5b9a38a54505c28de6ac464cf1704f8741` |
| 42 | `theorem` | [monadMap_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadmap-statet.md) | 270 | `result-track:96cb98b3c7c2932f6c1b2a8e08e5552e995301135e6b290b1e533ce131f18973` |
| 43 | `theorem` | [monadMap_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadmap-readert.md) | 276 | `result-track:0d3996aceff4184fd3def1ea21cd7b2bfe91701f545e3d82cc08563b54f7d059` |
| 44 | `theorem` | [monadMap_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadmap-exceptt.md) | 282 | `result-track:ff70437e8359ab9f178f1c9641c76f3b797b12dee5c5f6caa0ce2e7b8450e9fc` |
| 45 | `theorem` | [monadMap_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadmap-optiont.md) | 289 | `result-track:cff8d5e3bb4a97ed6462a40d85c545bcf49deda3f5db992fee08316eee0e9ad7` |
| 46 | `theorem` | [monadMap_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadmap-trans.md) | 296 | `result-track:853a46586dd4455b0eb48a2e48ef9a05b13a85f1ed7f62af649bec561d452175` |
| 47 | `theorem` | [monadMap_refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/monadmap-refl.md) | 300 | `result-track:e83070c2eeeb6ca1a0324385f6393fcb8e7af56040fe9326d88fb2e4e132396a` |
| 48 | `theorem` | [withReader_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/withreader-readert.md) | 304 | `result-track:3b432980ac31e239be12b33abb1b413904ca057218481c88364559f21a0168da` |
| 49 | `theorem` | [withReader_MonadWithReaderOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/withreader-monadwithreaderof.md) | 308 | `result-track:b02aec6f5be201c24ec96f2dce92eb8ba2af6459b46689e58655b3b3d1c8db0b` |
| 50 | `theorem` | [withReader_MonadWithReader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/withreader-monadwithreader.md) | 312 | `result-track:6ad7d912a821791bb6f51149fd0381e7d1b36361994f5a2e39f6d0b855170d9c` |
| 51 | `theorem` | [withTheReader_MonadWithReaderOf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/withthereader-monadwithreaderof.md) | 316 | `result-track:c892fd3b7c83d97efdacbedc2dad12801b062e044fe8c9e9a51881f78ea0eefa` |
| 52 | `theorem` | [liftWith_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/liftwith-statet.md) | 330 | `result-track:997c7aff8a7a1739c448efa377674ba74e2013f457d780220cc236c18884eb66` |
| 53 | `theorem` | [liftWith_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/liftwith-readert.md) | 336 | `result-track:80a5818edb922fd7a805965c2eb618162cd0d08c6605a8b40aa9a348e22bf43a` |
| 54 | `theorem` | [liftWith_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/liftwith-exceptt.md) | 342 | `result-track:95b1730305fa5716eda9b88d713634241c537614ade08b70608b79e1826b456a` |
| 55 | `theorem` | [liftWith_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/liftwith-optiont.md) | 349 | `result-track:628758feceaaf2178d2fe40233dbcce1d142ae659eb42d6d3489efcc35b06054` |
| 56 | `theorem` | [liftWith_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/liftwith-trans.md) | 356 | `result-track:84fe6256fdbd1a71aeb0ff102fac30e76d898f13dc5a17f3ecfb830cb9862151` |
| 57 | `theorem` | [liftWith_refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/liftwith-refl.md) | 361 | `result-track:e5d98e3ff4e5fbd31019fecb85fd473d045613419ace04999c0e538a44e9af4c` |
| 58 | `theorem` | [restoreM_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/restorem-statet.md) | 366 | `result-track:d21b610bd3c521fb5e3862bba7e22ed7ef5a0eb1a01e8cc2bfe21386e58affa2` |
| 59 | `theorem` | [restoreM_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/restorem-readert.md) | 371 | `result-track:afc35a9172bbf0bf1a6f52b6b73f64689c9409f2871432c6efa7b6347d9b39f3` |
| 60 | `theorem` | [restoreM_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/restorem-exceptt.md) | 376 | `result-track:fd33cb51106532dd14609a9864b4cbf3662ca894b6b7c0a4df1083e2d89cab7f` |
| 61 | `theorem` | [restoreM_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/restorem-optiont.md) | 384 | `result-track:39eac4142a7f7a8f9cf96d32a1d5ca2d0094a65584fb03b05871acb71a8c0e10` |
| 62 | `theorem` | [restoreM_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/restorem-trans.md) | 392 | `result-track:431a6033761f5d1685ad6113229c897ab8a98979b7592a8106d87bde4997148c` |
| 63 | `theorem` | [restoreM_refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/restorem-refl.md) | 396 | `result-track:af1c3ac18ffd2025e2ace2ccd4bb12de28bfc045cc9bf5ea37581745b5db5307` |
| 64 | `theorem` | [controlAt_MonadControlT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/controlat-monadcontrolt.md) | 400 | `result-track:639444b8a10071b6874d874272730d3096d20320ef5c00b45a7e993df8b69879` |
| 65 | `theorem` | [control_MonadControlT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/control-monadcontrolt.md) | 405 | `result-track:56ff7699e58af53c03cb031f18063b6bc863551448498623c87faff1a9073ac7` |
| 66 | `theorem` | [throw_MonadExcept](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-monadexcept.md) | 423 | `result-track:e51693662285f3ab6b1b8afc7f60199a2c033de2f1baac65ea0e23d0cb702de1` |
| 67 | `theorem` | [throwThe](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throwthe.md) | 427 | `result-track:977b2b27827d56291a31cf126c61f3d5cca64ae87fe0022c1ff4ca19389e9743` |
| 68 | `theorem` | [throw_Except](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-except.md) | 431 | `result-track:b7f1f353119e773ab3ebdeabe62c37ab26a703563cc88b6273698e68ec0649eb` |
| 69 | `theorem` | [throw_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-exceptt.md) | 440 | `result-track:4df3f2bfbd01e6fd57bbd44e3c749cdcc148a6c49667fdc8c090cb0569245f4a` |
| 70 | `theorem` | [throw_Option](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-option.md) | 445 | `result-track:c347470d3b58dac75838856cc955d947f724f817d088165874a2b27f66ba2ef8` |
| 71 | `theorem` | [throw_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-optiont.md) | 453 | `result-track:6f0f72817932d14c28f16125bfbfcd8fa77209e6f0e1b6928b28619d6d5e4e22` |
| 72 | `theorem` | [throw_EStateM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-estatem.md) | 458 | `result-track:85edc66e2e56a9548ecdcfe7f07da8c0f06e1deb962fdde003b38a20f0001e6c` |
| 73 | `theorem` | [throw_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-readert.md) | 464 | `result-track:02cf6089eae0d02b0c711f681d6569f3feb15c406d5ce0092dea3e42b9f449b5` |
| 74 | `theorem` | [throw_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-statet.md) | 468 | `result-track:fa7d03cc0cafc729e6f59a1974fc0e0fcc02c98d6d2a07cb237cac07f7b5945f` |
| 75 | `theorem` | [throw_lift_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-lift-exceptt.md) | 474 | `result-track:ee1844b3d31f17081f28a9a28ccc850e6c2be355217b4409fffe906914fb61b0` |
| 76 | `theorem` | [throw_lift_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/throw-lift-optiont.md) | 484 | `result-track:098bbe88585b1554f03b9fc131b3513cc3864dcfc6584a212753d76bef4c1db7` |
| 77 | `theorem` | [tryCatch_MonadExcept](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-monadexcept.md) | 492 | `result-track:c4aecb820219c462f92e42ce0360ab7f4d245fb8629b6d941a66fd568a516ec9` |
| 78 | `theorem` | [tryCatchThe](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatchthe.md) | 496 | `result-track:2446d4afe1c1a1c23a7b1767a8d1fda5a4f4a84f98825cba7984fbe4904dc3e0` |
| 79 | `theorem` | [tryCatch_Except](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-except.md) | 500 | `result-track:f9e753aa674baef744ae5b8fc47d7ff800bd88d6537dfa58e86155c8a2ba04bc` |
| 80 | `theorem` | [tryCatch_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-exceptt.md) | 511 | `result-track:35b7c0961c1eccae4c2d1ad079276db72efafb295cd0f5cfc50224d415a91d88` |
| 81 | `theorem` | [tryCatch_Option](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-option.md) | 521 | `result-track:bab0b73ded51b4255e3c7c0425e18b06cd53a7120dbc299b073b42c80372bcaa` |
| 82 | `theorem` | [tryCatch_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-optiont.md) | 531 | `result-track:e64cdf3db417670f35e2b3c5f7250f188ec2996dcea311d942689dfdbb823938` |
| 83 | `theorem` | [tryCatch_EStateM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-estatem.md) | 542 | `result-track:1cd68bf097fac5b50c18c61cadea58440ce49814105e3201300a6b62bf4b0981` |
| 84 | `theorem` | [tryCatch_ReaderT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-readert.md) | 549 | `result-track:f1af0f0fc5bef338b7e77705de805ff02d2a115e5e27dee9f64d7450dc1ab5fc` |
| 85 | `theorem` | [tryCatch_StateT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-statet.md) | 554 | `result-track:ca3b327e658898e7e2fdf24beb029aed251d5a122031da5999bc981cacd08fda` |
| 86 | `theorem` | [tryCatch_lift_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-lift-exceptt.md) | 559 | `result-track:e9579ea7b26e8c3a56549d9a1758354e862db7317d0507edba90bc0da7e7d938` |
| 87 | `theorem` | [tryCatch_lift_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/trycatch-lift-optiont.md) | 567 | `result-track:91e7b25d6908e1ad71a5884ac3eaf97d08fbc507c09efbf2f36cb3712cfb3781` |
| 88 | `theorem` | [orElse_EStateM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/orelse-estatem.md) | 596 | `result-track:b0a628b61a628b02dc8f22d1959e9c389e8ee62110225a49cf2c038892ea7256` |
| 89 | `theorem` | [orElse_Except](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/orelse-except.md) | 603 | `result-track:59123b8905007088d305307094a2a5db51637b54a4015fdecd1bc00b1a6db096` |
| 90 | `theorem` | [orElse_ExceptT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/orelse-exceptt.md) | 608 | `result-track:9bf081ab0476e3ca887ed9f61f2c59fa1eb23e52f9784b2958e054f292787597` |
| 91 | `theorem` | [orElse_Option](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/orelse-option.md) | 613 | `result-track:19901bf307cbd74272bf0642698378eb0a7be329bf148176b1d93330d5876bf6` |
| 92 | `theorem` | [orElse_OptionT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/declarations/orelse-optiont.md) | 621 | `result-track:cfdf323e82e376f042d0b395e62da987ea6f6d30ca7fde7e6212318786b64208` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fcac29a0b5d98725ada44b3671eecb9b200c253e3cf326637b22428ab02ecae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

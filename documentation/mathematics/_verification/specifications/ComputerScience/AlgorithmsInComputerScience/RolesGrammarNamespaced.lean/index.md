# Verification target: Roles Grammar Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "075c4ae45340b14aeb9384ad7ac89e84c5e38d4b",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `075c4ae45340b14aeb9384ad7ac89e84c5e38d4b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.CriticalInvolution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tableRowKey](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/tablerowkey.md) | 30 | `declaration-track:c233abfc3878d7c6fa80910908100dc55458b4c980e34e13b947d214a4a155f1` |
| 2 | `def` | [finiteInputTuples](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/finiteinputtuples.md) | 34 | `declaration-track:df19db59805890611d76d20032957536dc839c5f3ac3b99a32da67bf99a6ba7e` |
| 3 | `def` | [tableKeyUniverse](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/tablekeyuniverse.md) | 40 | `declaration-track:c45dfdd34865e9c91ef7ec0b1c3e8ff0a45219ca9f8ec857ff66712cea2334d0` |
| 4 | `theorem` | [finiteInputTuples_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/finiteinputtuples-nodup.md) | 47 | `result-track:1a18235d4d164678655e3470d3b1974bb69f2ca33b9ef9f0438ac496e26440f6` |
| 5 | `theorem` | [tableKeyUniverse_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/tablekeyuniverse-nodup.md) | 57 | `result-track:4d3038371a262a91735f755177fa14b077e8f547bd0169f7f42ef3387ac6d6b4` |
| 6 | `theorem` | [tableKeyUniverse_nullary](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/tablekeyuniverse-nullary.md) | 72 | `result-track:bedee3599d1720d96e46ef6969c1ab50813e893c14b591e785f4fe3c45a14758` |
| 7 | `theorem` | [tableKeyUniverse_unary](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/tablekeyuniverse-unary.md) | 81 | `result-track:87e8a1a6c260eb30f1763d95a90d88a95d0da6bcc9fa15e623dd1fc5060da4fe` |
| 8 | `def` | [FiniteRowValid](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/finiterowvalid.md) | 90 | `declaration-track:b5087d60cc322c67a83117f0eddcd5bd4a7707cb61917bb2ec370b1021280853` |
| 9 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/instance-source-edition-6.md) | 96 | `declaration-track:e309ce166031f6463f84b02d1d1d8c19fe2a96f943369bef8723fa3f573640a7` |
| 10 | `def` | [finiteTableWork](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/finitetablework.md) | 102 | `declaration-track:71b272fa75111b6f1f91319c713ac692b9dca6f0fca7ef108c518bd5960b1c20` |
| 11 | `def` | [TableValid](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/tablevalid.md) | 107 | `declaration-track:e6bad4ad9bf29d33326026b3bcec4d020d566f83d3f2f25f23569a85c3a75aba` |
| 12 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/instance-source-edition-3.md) | 120 | `declaration-track:9c7fa911bd791e9ec5ea68dbfaa56e27e5955b0fd2ec7854ccf30cd48600b42c` |
| 13 | `def` | [checkFiniteTable](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkfinitetable.md) | 126 | `declaration-track:183a9695cd27f33c31b08b110f61e46eb271f7537a007fed3f9b9b86aed75d7a` |
| 14 | `theorem` | [checkFiniteTable_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkfinitetable-sound.md) | 130 | `result-track:5011b02befb723ea76ee3fd6a8ea55b2b72eb4a0a134818a78757eaebe0c26ed` |
| 15 | `theorem` | [finiteTable_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/finitetable-deterministic.md) | 136 | `result-track:851c915cf16e53a14121908e2c8a36d5224d9094e91e67779dcabb41bd5280d1` |
| 16 | `theorem` | [finiteTable_total_coverage](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/finitetable-total-coverage.md) | 144 | `result-track:9bcf52f39df6f30d369fec54f87d4ceb5a4cb6ca332024fe7bbacb454bce5e6a` |
| 17 | `def` | [RoleAlgebraValid](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/rolealgebravalid.md) | 153 | `declaration-track:eb6bcb717dab09c2a4c1920d5a023c63aa31151f6564823010bdfbd9076108af` |
| 18 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/instance.md) | 158 | `declaration-track:527e0dc7b23229cb5894555f7032c9ab40c537b33e26f99d7ebdbe3092a864da` |
| 19 | `def` | [checkRoleAlgebra](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkrolealgebra.md) | 163 | `declaration-track:9213188690a829a91f3aead3a33121efdc53f30e4725443de2ca7699989e48c7` |
| 20 | `theorem` | [checkRoleAlgebra_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkrolealgebra-sound.md) | 165 | `result-track:408243969b31d3308a44091da07be98228219e652eef43236f2713b1b663af75` |
| 21 | `structure` | [CheckedRoleAlgebra](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedrolealgebra.md) | 172 | `declaration-track:ef0902228e4ffea967c3f49bbf8a79b1bd191d70be859c63cd67d8eb793f1bed` |
| 22 | `def` | [admitRoleAlgebra](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/admitrolealgebra.md) | 181 | `declaration-track:4d30ea280cb870b1cc6adc2234a00e46a539400d5d59538c787b1845c8ef1f79` |
| 23 | `def` | [roleAt](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/roleat.md) | 187 | `declaration-track:5aea19fba01e60c2544b1e18ff072aa6a253bec8c7b5a6071ac999f000285e9b` |
| 24 | `def` | [nodeTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/nodetransition.md) | 190 | `declaration-track:91765eb24d2b11a8270973b043e2b4074dc15289f5020d7c927db4e6495232d6` |
| 25 | `def` | [roleRunWork](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/rolerunwork.md) | 194 | `declaration-track:4111ace80011e3c849fe32b3ab9c513d61858986a66d8beeec3ac4d2dab035f8` |
| 26 | `def` | [RoleRunValid](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/rolerunvalid.md) | 199 | `declaration-track:5959da76ab9bce3b262f6ec6a4142a54dd705086e56df36b76f935e9303dc8d2` |
| 27 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/instance-source-edition-5.md) | 206 | `declaration-track:d08222ad324f8660bf83e23a8e1a7daeec291085dc6441a4767e47376da08b89` |
| 28 | `def` | [checkRoleRun](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkrolerun.md) | 211 | `declaration-track:8b7f56f85bd50e9286fd5390fbe06b21af79d2c1acb347d30ea1bc68f6a0f08e` |
| 29 | `theorem` | [checkRoleRun_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkrolerun-sound.md) | 213 | `result-track:0202732f0adb2d252b6a1e42aa017cc9b9f0600ef921b36802cebf73895141e2` |
| 30 | `structure` | [CheckedRoleRun](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedrolerun.md) | 221 | `declaration-track:ba1377413d02a74ea8daf12ff83ba7a3864c1b91070f2408240a54e1c68f552b` |
| 31 | `def` | [admitRoleRun](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/admitrolerun.md) | 227 | `declaration-track:c78f3b4e04f6216ce9b6f2e62a5ef8ca7db94b8b991355e52b8374e38380183d` |
| 32 | `def` | [RoleAccepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/roleaccepted.md) | 232 | `declaration-track:932ec22f1f5fe57e907740a68e4fbbe020492791812ce54e006a2b26014b28c2` |
| 33 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/instance-source-edition-4.md) | 235 | `declaration-track:cd6cd1d2b49525e33acc58b97df36eb30fda3b1d9fda839071a1b093151389e2` |
| 34 | `def` | [checkRoleAccepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkroleaccepted.md) | 240 | `declaration-track:20c86163c3825b923b5907c685bda9b9ef057bda51450aef0b14f708c80276e8` |
| 35 | `theorem` | [checkRoleAccepted_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkroleaccepted-sound.md) | 242 | `result-track:6fe1fefc225c7b79d0a77a4045e30e2beee812bf3f5671cddd9a8f01b3356fb7` |
| 36 | `structure` | [CheckedAcceptedRoleRun](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedacceptedrolerun.md) | 249 | `declaration-track:9ab8f56715fb19cebc4afe5be137d32e1080a3a91e3502149d711f6f1f907276` |
| 37 | `def` | [admitAcceptedRoleRun](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/admitacceptedrolerun.md) | 255 | `declaration-track:80602b718655fae16cb2c6831bf6272d22a74c19abb2f2cd3f4ae488654b7770` |
| 38 | `theorem` | [checkedRoleRun_node_transition](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedrolerun-node-transition.md) | 260 | `result-track:c40f37d8c4e407a0d6cfa4e1c30df78d4f2408174947086e6f2cfd3041936a81` |
| 39 | `theorem` | [checkedRoleRun_exact_tree_scope](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedrolerun-exact-tree-scope.md) | 267 | `result-track:4a505a272e88903f8bac6d6dcc828ac00ba5d7ca70efb3b6a557a989dd250f3a` |
| 40 | `def` | [productionOfRow](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/productionofrow.md) | 272 | `declaration-track:2e4fac61faef5bea8a5c0402d376939c9c236fe67fc6f5da2a5758a6fee6beee` |
| 41 | `def` | [extractGrammarRows](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/extractgrammarrows.md) | 277 | `declaration-track:555fb59c012f642e0c72bb6ccb78c6454bf923c18c921275660da67f785d86e8` |
| 42 | `def` | [grammarRecordWork](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/grammarrecordwork.md) | 281 | `declaration-track:67bfe99211feeacfc768efd1d0f91797fe04bfc83c65163fbbe89f35a5de4ee1` |
| 43 | `def` | [grammarExtractionWork](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/grammarextractionwork.md) | 286 | `declaration-track:159d9ebe4d6d4b0fcc5a1208cb57f33526bfd9d025dd1755075934900e9edc85` |
| 44 | `def` | [GrammarValid](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/grammarvalid.md) | 292 | `declaration-track:62d619d68fa7dde77cc053b05ba4f8a10ae0d8ce5908ebf23701dcee72306dfc` |
| 45 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/instance-source-edition-2.md) | 298 | `declaration-track:7a254aced985c7b39083631926b6a75b0bddf5b06e3db17ef69d6ce94725fd6c` |
| 46 | `def` | [checkGrammar](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkgrammar.md) | 303 | `declaration-track:c33d25a69724d07abd46634e8955f6aeef887df5108aba41e5115e22b01eb5f1` |
| 47 | `theorem` | [checkGrammar_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkgrammar-sound.md) | 305 | `result-track:6e68268583726880e080582f5a1d0b0a8877cdf976a50681191797779dbece13` |
| 48 | `structure` | [CheckedGrammar](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedgrammar.md) | 312 | `declaration-track:15e22a125dc4ac39b58cf3e46d55ec3984dbf2490dd064a4cf24f0b076ae0757` |
| 49 | `def` | [admitGrammar](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/admitgrammar.md) | 318 | `declaration-track:93cf3e1bd09d95d36389da692a059e3cc48b5cbd31db8bdeed237ef12ad8b9ce` |
| 50 | `def` | [CheckedGrammar.productions](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedgrammar-productions.md) | 323 | `declaration-track:baef7388ed5affb326ab4e78d8dcff5c6a171f11912b93a17f5316d89b991e7a` |
| 51 | `def` | [CheckedGrammar.accepting](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedgrammar-accepting.md) | 328 | `declaration-track:b4c46d98b3d988f24bb38c99b7b6921a76ef4e20ab46d00ab5beaa46f284c555` |
| 52 | `theorem` | [grammar_production_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/grammar-production-iff.md) | 333 | `result-track:d77faa2461f682846750585ee4e2c56bb65b602c63ce74ed70f76d2032c73a8f` |
| 53 | `theorem` | [productionOfRow_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/productionofrow-injective.md) | 340 | `result-track:955d14c4806056ed3f30729aa494df9a59746f30036cc22e24fc6347cd367797` |
| 54 | `theorem` | [checkedGrammar_productions_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedgrammar-productions-nodup.md) | 351 | `result-track:9f4363af132719312a35778515fa9ccc2100dc5f6bf1caa29736c489a836a66b` |
| 55 | `theorem` | [grammar_transition_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/grammar-transition-iff.md) | 358 | `result-track:0c153e60b298abc09d5a93d1703a4b13fe2cbff9aeacdce1a7ae033f6c00a5cf` |
| 56 | `theorem` | [checkedRoleRun_grammar_local_soundness](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/checkedrolerun-grammar-local-soundness.md) | 369 | `result-track:e653d0fb0d5ef90392b4e681cc6e6887d4e4452ad35f8dc758862b8d22c5f6d0` |
| 57 | `theorem` | [grammar_local_iff_run_local](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/grammar-local-iff-run-local.md) | 380 | `result-track:a1d60d22cea2cb9c3e4b97d95e885d6692ccbbe3e0102cae0a7db5249af5b451` |
| 58 | `def` | [signature](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/signature.md) | 392 | `declaration-track:a44c4bfa4201c5edf09d4ecbcc70b8fc1016f1a1a4594117fe3e0b73c01bc7e5` |
| 59 | `def` | [nullaryRow](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/nullaryrow.md) | 401 | `declaration-track:1f1c2d2c0163a681893a4d7c04285757dbde8fe39d8fce3d76e46f8ab74a7ef8` |
| 60 | `def` | [unaryZeroRow](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/unaryzerorow.md) | 403 | `declaration-track:9b2614798c494cd71a17c459495b0a72c96ed8ad556c928aa90bc1ac3e88c41f` |
| 61 | `def` | [unaryOneRow](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/unaryonerow.md) | 405 | `declaration-track:968d8f65c94348917fdc74f9e1384fa80dad73bbf1f7cbc00835f0cc5ddc2f0b` |
| 62 | `def` | [totalTable](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/totaltable.md) | 407 | `declaration-track:8e25b47dae9e371c83c18880adcd3a264a29e7135c0188e9aea07dc0d28abafe` |
| 63 | `def` | [partialTable](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/partialtable.md) | 409 | `declaration-track:9aa384ef8d9f79328d8c5f8bb700717bbc03a85be55379547e62196323b7f6c7` |
| 64 | `theorem` | [total_table_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/total-table-accepted.md) | 411 | `result-track:7202a42f2adc9f2bcc8776457c6cea9e458b3af1141a24a5755f2cdd4c4041e6` |
| 65 | `theorem` | [partial_table_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/partial-table-accepted.md) | 413 | `result-track:d8278b439c384c5e998e871e2bf6babdb94745f37d08b3fbb2cab822a4b0edc7` |
| 66 | `theorem` | [unused_key_omission_rejected_for_total](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/unused-key-omission-rejected-for-total.md) | 416 | `result-track:9c0e80a86cc150cd0e0c41bc4775bac86c322d3b95a135014bb1ce71ca7a1da0` |
| 67 | `theorem` | [missing_partial_key_has_no_transition](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/missing-partial-key-has-no-transition.md) | 419 | `result-track:d11f32943e6ade438109ab51215563f3e10890b35370b04dbaeed886774d4730` |
| 68 | `theorem` | [duplicate_identical_key_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/duplicate-identical-key-rejected.md) | 421 | `result-track:943c5a7cd1c1c27068d291719b62f4d691bdc3b898df948914b0e99f594fdd42` |
| 69 | `theorem` | [duplicate_conflicting_key_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/duplicate-conflicting-key-rejected.md) | 426 | `result-track:a260c5651f360373f65e415bdaec30e8136181319203866ea2b8fae4f358b2cd` |
| 70 | `theorem` | [reordered_table_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/reordered-table-rejected.md) | 431 | `result-track:4f05ea80d9dd8210bc04ccd077c35e4f0975690e7358bcb76c042aca78dcad1f` |
| 71 | `theorem` | [unknown_constructor_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/unknown-constructor-rejected.md) | 436 | `result-track:1ee68c573593a52b6d2551fabeaa29e03f125f8d72334e08ca6e68609686f08a` |
| 72 | `theorem` | [unknown_input_role_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/unknown-input-role-rejected.md) | 441 | `result-track:d7c26909d756389c59f2771cdad2c69ce4b114e14797e5f93121d078746a6599` |
| 73 | `theorem` | [unknown_output_role_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/unknown-output-role-rejected.md) | 446 | `result-track:f3e93e143b93ce4ebd07c7459108b6809f4cf536367c5cbd301a5beaa2f9815b` |
| 74 | `theorem` | [nullary_with_child_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/nullary-with-child-rejected.md) | 451 | `result-track:f09a1ca07bce27eefe0bcf5883022444cdf4e726f0e27b356c077c7c0c792c3a` |
| 75 | `theorem` | [unary_without_child_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/unary-without-child-rejected.md) | 456 | `result-track:6612235cf81c98f044ed612838893f7776f2b7d87064b13c737ad42f60b27b47` |
| 76 | `theorem` | [empty_role_domain_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/empty-role-domain-rejected.md) | 461 | `result-track:f09891b854351991b06066cfb331ece0bb1a9cda0fe9ce2ceaa4f4ea345747f6` |
| 77 | `theorem` | [work_exhaustion_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/work-exhaustion-rejected.md) | 465 | `result-track:16fc32c1779e5e94363382e52658608b7ccf7690092fb4e4ba8c762ea81d0ae3` |
| 78 | `theorem` | [extraction_includes_every_unary_row](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/extraction-includes-every-unary-row.md) | 470 | `result-track:97691b132ffe0a053714cd72657ceed92c154ff3a383d9cc3e67ae12ba4353d9` |
| 79 | `theorem` | [omitted_production_is_not_complete_grammar](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/omitted-production-is-not-complete-grammar.md) | 474 | `result-track:b3b929764fd56df6d202371debed634430c0d98de08f49cd2a2ed5c8f9c07c46` |
| 80 | `theorem` | [changed_surface_is_not_extracted](../../../../../ComputerScience/AlgorithmsInComputerScience/RolesGrammarNamespaced.lean/declarations/changed-surface-is-not-extracted.md) | 478 | `result-track:f7ad270164c54269a7b84ead47034da158da94751b70502214238b6fea3364d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=033e073fb97d282db3dd02512cc26f02929fd2f6abe8f5bf96d8ba7dab66dd9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RolesGrammar/Variant8ed740f1f1c5eae45103e8d2bd6418bb39dcf2e635a3f656f9007d82d517468f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

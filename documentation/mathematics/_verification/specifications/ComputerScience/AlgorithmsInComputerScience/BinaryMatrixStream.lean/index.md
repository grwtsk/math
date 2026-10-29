# Verification target: Binary Matrix Stream

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72b79af351919a94ca3ecee99d3c6b57a56ef438",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72b79af351919a94ca3ecee99d3c6b57a56ef438`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryMatrixStream](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/binarymatrixstream.md) | 19 | `declaration-track:58c7a232bb53ba7c36a95f4d82c9a79c358dcffbb28e072bf2c09095b534de04` |
| 2 | `theorem` | [ext](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/ext.md) | 26 | `result-track:5e33dead80a23c0a39a1534480fcff77b87f0744dfc662bc41b27150fe317b53` |
| 3 | `def` | [length](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/length.md) | 46 | `declaration-track:e044de77c5df0310233fafe3a5902cf4699d7c3943807ddea68a81c70a8a15ff` |
| 4 | `def` | [get](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/get.md) | 49 | `declaration-track:4ae46c8841df13e5dd9d94d00e66ed42825a237f653cfdaf5974cf413fe45b7a` |
| 5 | `def` | [empty](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/empty.md) | 52 | `declaration-track:078864f640a944c056e9e4e843a38c3829743768ae2621fd2173d0bf03e4df70` |
| 6 | `def` | [concat](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/concat.md) | 56 | `declaration-track:f3854d4017c211234d6336d960b6c713a7e835da94e33f2654f77238d4b9a7f7` |
| 7 | `def` | [restrict](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/restrict.md) | 66 | `declaration-track:c81532869a4f642bbc8fea443de369e4d3be5b48aa134125110a6a972d6440e0` |
| 8 | `def` | [mapMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/mapmatrix.md) | 77 | `declaration-track:59acf9e35fbc5b85823a03d18a32a17e5b859bf85c6020e15ae39015d128b03f` |
| 9 | `theorem` | [length_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/length-empty.md) | 85 | `result-track:8250d4905de878d0a4a64d637ca9c4bd0ec6fc3d024cb5a0a2dc6103b8be7e3b` |
| 10 | `theorem` | [length_concat](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/length-concat.md) | 89 | `result-track:67d6a365c785ddb83509999fac6ce31bcca0455cd89aebcfdfff246e0db641ad` |
| 11 | `theorem` | [length_restrict](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/length-restrict.md) | 94 | `result-track:8c8024840482887e7a094f7020ea5c423a22343ab5a0e292b1189448a7a18f54` |
| 12 | `theorem` | [length_mapMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/length-mapmatrix.md) | 102 | `result-track:64a70a38abe069c67bb4803ba3268355ca8540e9e35a580c36e7a3aff3048f5e` |
| 13 | `theorem` | [get_mapMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/get-mapmatrix.md) | 109 | `result-track:b534585b1131fd21fc5693ee325f585d8c77e526dad0e2c78e87ce7fc16a73c1` |
| 14 | `theorem` | [get_concat_left](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/get-concat-left.md) | 116 | `result-track:cd6c8189acd062611fcaaf7c2e914461ae57d340e002bd70db7df927c423f32f` |
| 15 | `theorem` | [get_concat_right](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/get-concat-right.md) | 125 | `result-track:809b1b42cc05a848e454a1630d06ece8878de732320db476a483944bb56af8b2` |
| 16 | `theorem` | [get_restrict](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/get-restrict.md) | 136 | `result-track:a969d491100d3b13d23bf87a37e0867fa9fd75818eba8435574baf4932da7b3f` |
| 17 | `def` | [timeLength](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/timelength.md) | 153 | `declaration-track:d03517154112ca7b036d963a4de797b4984a1c8a80f86ea012f35778c9078185` |
| 18 | `def` | [frameAt](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/frameat.md) | 157 | `declaration-track:6c5e84f3701b17d481e30fd951ad83887b5cab8d8ce4eb8bbbf5f3a0c55ea7e6` |
| 19 | `theorem` | [timeLength_eq_length](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/timelength-eq-length.md) | 160 | `result-track:985210ffee50496a49c7fc75766632448457c48ecc1bffa8f627a229a6e5c348` |
| 20 | `theorem` | [frameAt_eq_get](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/frameat-eq-get.md) | 164 | `result-track:59a72aaab9b8432609b7623de6efce64bf605ab16a113555e7a65a6379d7a4f2` |
| 21 | `def` | [HasFixedWidth](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/hasfixedwidth-source-edition-2.md) | 174 | `declaration-track:60162ca1843561a05a0cbd7c5a98d15d35051262f752e47d095c98982158e896` |
| 22 | `theorem` | [empty_hasFixedWidth](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/empty-hasfixedwidth.md) | 179 | `result-track:d842a3f212da75a8d0c8f2bf60d1ec486aa8e738d6d793cbd115b4f0a0c526db` |
| 23 | `theorem` | [hasFixedWidth_of_shape](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/hasfixedwidth-of-shape.md) | 188 | `result-track:b96ca67e87468b17404441fe59eb5129b039a0792f3a62c2f3b88278c204d689` |
| 24 | `theorem` | [mapMatrix_hasFixedWidth](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/mapmatrix-hasfixedwidth.md) | 199 | `result-track:948092bd57572b28af5b13a23abe6ab42633ab960e88b1422c30e4fe2d53cc0d` |
| 25 | `structure` | [ExternalAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/externaladapter.md) | 231 | `declaration-track:f89733d7ab008dcc5d7a2c4f4284743eafe191295be9edb4c92849bb0c6b29d7` |
| 26 | `structure` | [MatrixExternalAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixexternaladapter.md) | 238 | `declaration-track:6daf6ab461fb04dc8a931f6f53ab92c2ef0ef7dfefbeb7878f21bf70eafd100e` |
| 27 | `def` | [toExternalAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/toexternaladapter.md) | 246 | `declaration-track:8eaf00cd6eb4cdddd87a039657c93aa6784e9e93526fb70516c543bda530b351` |
| 28 | `structure` | [MatrixProofStep](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixproofstep.md) | 260 | `declaration-track:6e6b79fae4059f7203666668a9042067f3d7f2de9d00bbcb8baaf52f5b3a7a22` |
| 29 | `def` | [run](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/run-source-edition-3.md) | 269 | `declaration-track:4d3c33923ff2fd725b2c1bae317c847e85477b0a09f67b5357143b84b54ed62e` |
| 30 | `theorem` | [run_eq_output](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/run-eq-output-source-edition-3.md) | 272 | `result-track:a7dc725073adb85c9814d078e9e937684e0dafbf9339824f53a3319cc0d39c3a` |
| 31 | `structure` | [MatrixTheoremFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixtheoremframe.md) | 285 | `declaration-track:12c68ae6541f4b64a734cfdc94ed5813aa52a8d3625c597eb3838f7a2713f86e` |
| 32 | `structure` | [MatrixProofFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixproofframe.md) | 294 | `declaration-track:1f176ac896bd7459078672edf10d9affb8098b551dab20bf51842be859a823c6` |
| 33 | `def` | [toMatrixTheoremFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/tomatrixtheoremframe.md) | 304 | `declaration-track:a92fe227a148ccee06450a659def4eb40961648462f611d0661ecd72f8cd5de9` |
| 34 | `structure` | [MatrixTheoremProof](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixtheoremproof.md) | 320 | `declaration-track:1a68962fb19da34e3a2f57fcf4a494c0b0c61a22f37a3db22513a05fde766101` |
| 35 | `structure` | [InternalMatrixTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/internalmatrixtheorem.md) | 336 | `declaration-track:88fa19d10a8609b875c7268417429686ea873921f62392177ff889dd8d615034` |
| 36 | `def` | [run](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/run.md) | 349 | `declaration-track:0ba7d2f5a1fc43284fe67d3dc1ba87858fccfb73127c42bf8aa16e0406552cac` |
| 37 | `theorem` | [run_eq_output](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/run-eq-output-source-edition-2.md) | 352 | `result-track:7182a06c0c75baea2bf76b5a9809d830458ef7a17d999bb4192d73ff97359648` |
| 38 | `structure` | [MatrixInternalTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixinternaltheorem.md) | 365 | `declaration-track:b035dbe4fdfaf39a008c6040bd9bfc2634d740fe31d384b35e90393a27de7d46` |
| 39 | `def` | [run](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/run-source-edition-2.md) | 377 | `declaration-track:11446aff6a140ce4cc61934c986633e79118c049871e39c8c84e670a5490085b` |
| 40 | `theorem` | [run_eq_output](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/run-eq-output.md) | 380 | `result-track:4d28685d4b81b2acdc345c7b30e58b1b92435ceb9db1c4b343e9200b571f7117` |
| 41 | `def` | [toInternalMatrixTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/tointernalmatrixtheorem.md) | 385 | `declaration-track:a1cbaf6ebe08e94c241e213d082b064ef549d1bc14cb8a2e5ea4b3f9802a3ae4` |
| 42 | `structure` | [MatrixTheoremAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixtheoremadapter.md) | 405 | `declaration-track:95cb59031c078afaa14502c0687fd4737766f362307e55fe017ec967bdca7eaf` |
| 43 | `structure` | [MatrixProofBudget](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixproofbudget.md) | 415 | `declaration-track:e9d687ba19616b81baabf59a111b927902d3ee6f8a52fb5dd1df0cae0fa3efb1` |
| 44 | `structure` | [UniformMatrixProofStream](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/uniformmatrixproofstream.md) | 424 | `declaration-track:0b8ce28d98b890125b466d62f0b23dde42f947704c8eebbe027b43e168325abf` |
| 45 | `structure` | [WeightedMatrixProofStream](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/weightedmatrixproofstream.md) | 437 | `declaration-track:dca6d18d1849c8cc261d1f10273008c51c142c74be185d323b21b32a498609e7` |
| 46 | `structure` | [MatrixFiberDeterminantBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixfiberdeterminantbridge.md) | 445 | `declaration-track:2595c1fe7187e214b011a5cfdc8682694f6149a55e6fba09a8a81301db211274` |
| 47 | `structure` | [DynamicMatrixTheoremTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/dynamicmatrixtheoremtrace.md) | 456 | `declaration-track:36a3a53826599b10e14748894e2d45363381a9696d8c3af88992744d26a10ec7` |
| 48 | `structure` | [DynamicMatrixTheoremProof](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/dynamicmatrixtheoremproof.md) | 465 | `declaration-track:0af1c2f90288799bca24c0b21d92cc8b0120ddd6ac7de29e366a616a8860a025` |
| 49 | `inductive` | [MatrixInterfaceKind](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixinterfacekind.md) | 469 | `declaration-track:d916b51589869dec2f9251549866b421963170e8fa246411dd28fb059300de14` |
| 50 | `structure` | [MatrixInterfaceAuditEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixinterfaceauditentry.md) | 476 | `declaration-track:08a302ff6d54a591ae259d01064439df3a820ed5ddc6d66d6a20d937661b937f` |
| 51 | `theorem` | [matrix_internal_entry_has_matrix_io](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrix-internal-entry-has-matrix-io.md) | 487 | `result-track:681dde469527d0a51c754c9315d5c08f7e6cabfc6c263d257d12024d2627ee53` |
| 52 | `structure` | [MatrixOnlyInternalTheoremAudit](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrixonlyinternaltheoremaudit.md) | 495 | `declaration-track:1d2236062e4e0c3142be0a4494da8340469622d1dd830d66994687d742bc3340` |
| 53 | `theorem` | [matrix_only_internal_audit_passes](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/matrix-only-internal-audit-passes.md) | 504 | `result-track:dd815c743ca0f7fcf0cbf3834eca204a1840f6b900e8f9176ba7b6f09204634f` |
| 54 | `structure` | [InfiniteBinaryMatrixStream](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/infinitebinarymatrixstream.md) | 522 | `declaration-track:785d38a613b4339b47b16fae5426442eca5e0e32c15c5ca515a5670007a52c18` |
| 55 | `def` | [frameAt](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/frameat-source-edition-2.md) | 528 | `declaration-track:7daeda235ba5ecdaab6278d63691b9b40f82f9c64d9bc10517bada75e113c96c` |
| 56 | `def` | [HasFixedWidth](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/hasfixedwidth.md) | 536 | `declaration-track:108e710f4f8b1e911bf0e6684671b5b96d75e2a50d6e46d9f861758e24823e66` |
| 57 | `def` | [«prefix»](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/prefix.md) | 544 | `declaration-track:0e0cfa416d10b3e5e403b0b14cad76db9958eefb2267b4c08a5348bc192d1b9c` |
| 58 | `theorem` | [prefix_timeLength](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/prefix-timelength.md) | 549 | `result-track:3a47f1487140fd94a94ee66fee56bce511054aecbc11ae9db5952f78d2ea71ce` |
| 59 | `theorem` | [prefix_frameAt](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/prefix-frameat.md) | 554 | `result-track:4b80fb927b9b533f0f9f1288ec616c2105514947c5c1410ef29504d1c1f75364` |
| 60 | `theorem` | [prefix_hasFixedWidth](../../../../../ComputerScience/AlgorithmsInComputerScience/BinaryMatrixStream.lean/declarations/prefix-hasfixedwidth.md) | 563 | `result-track:b44be0fd41654f79b1398003b9a6294ae4b69625d0fd19db59c7e2c21164309d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01b23bb31a2a7af65ba7ab66df0f60dc6bee8f605ed2ae3f9bc0aca44d98b68f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

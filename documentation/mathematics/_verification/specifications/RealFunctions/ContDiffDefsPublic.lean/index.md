# Verification target: Cont Diff Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ab507f7d08758f6092f4529f1eb045208584f61",
  "lexical_observation_count": 154,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ContDiffDefsPublic.lean/index.md) · [Full source](../../../../RealFunctions/ContDiffDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ab507f7d08758f6092f4529f1eb045208584f61`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContDiffWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat.md) | 131 | `declaration-track:59e6fd9f52de2ce3030ffe967db59bf485be3efcfb7f83239fc5c497c66f7737` |
| 2 | `lemma` | [HasFTaylorSeriesUpToOn.analyticOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/hasftaylorseriesuptoon-analyticon.md) | 138 | `result-track:89a0832a32974ed41ed53d74fd5778732dbe5be640d788d90a333635d674fc16` |
| 3 | `lemma` | [ContDiffWithinAt.analyticOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-analyticon.md) | 146 | `result-track:134fe42a4c80300249a40dbad1affac7a937d12098c623d8d99f464ab531ccd7` |
| 4 | `lemma` | [ContDiffWithinAt.analyticWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-analyticwithinat.md) | 151 | `result-track:80a5d1d1e3c84c8d42627ad4016f193f5064fd586c63fb3fdac28a6127a0cbc2` |
| 5 | `theorem` | [contDiffWithinAt_omega_iff_analyticWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-omega-iff-analyticwithinat.md) | 157 | `result-track:e246f43d6d951d1c283d1a753b2264bd2a76464527332ee369e9f53da9dea38b` |
| 6 | `theorem` | [contDiffWithinAt_nat](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-nat.md) | 163 | `result-track:9280038f3b7a25e4a8f728b556a6cc590ee76108804b4e476a855385288c54ca` |
| 7 | `lemma` | [contDiffWithinAt_iff_of_ne_infty](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-iff-of-ne-infty.md) | 171 | `result-track:4da6dd7923bfbed7e3d9147ef57771fd30b26edce4a726235689ba3a052f8ed2` |
| 8 | `theorem` | [ContDiffWithinAt.of_le](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-of-le.md) | 181 | `result-track:9f755599341528ba335be28d2505e67d26258347df1d9389a154f960b61ea6f1` |
| 9 | `theorem` | [AnalyticWithinAt.contDiffWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/analyticwithinat-contdiffwithinat.md) | 197 | `result-track:0f14821c587d63d4d4cac56afb0bdf6aa1ededd367a57fc9d6dff26e6b577e22` |
| 10 | `theorem` | [contDiffWithinAt_iff_forall_nat_le](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-iff-forall-nat-le.md) | 201 | `result-track:a8807be2f59ac2a9af8370ecedaee7496f207d30c6973be700899afba886a012` |
| 11 | `theorem` | [contDiffWithinAt_infty](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-infty.md) | 205 | `result-track:a9ea465a77b6c0e8eb17dfe6946ca324514d159127613f6219b1c9751a2d3586` |
| 12 | `theorem` | [ContDiffWithinAt.continuousWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-continuouswithinat.md) | 209 | `result-track:512ea3f55c8834d371fd0e7b194e47de65a6e8809753fe427fdd24e99401f68f` |
| 13 | `theorem` | [ContDiffWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-of-eventuallyeq.md) | 218 | `result-track:4a2fef88e1f39d854797e4dc26c355480ced03fd8ff124032f521b65d371cb0b` |
| 14 | `theorem` | [Filter.EventuallyEq.congr_contDiffWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/filter-eventuallyeq-congr-contdiffwithinat.md) | 232 | `result-track:b5280ea0f29110e07fc5dd1f2d3c53294a21eaccf19b5051746c441a8e294614` |
| 15 | `theorem` | [ContDiffWithinAt.congr_of_eventuallyEq_insert](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-of-eventuallyeq-insert.md) | 236 | `result-track:2d980c872824e352b9e684bb07018eea132a9ad0de0294501431fc6dfeff1ec8` |
| 16 | `theorem` | [Filter.EventuallyEq.congr_contDiffWithinAt_of_insert](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/filter-eventuallyeq-congr-contdiffwithinat-of-insert.md) | 241 | `result-track:41ce786f9006857d28d9735f27d357e1d28baa888e888c133a708c2cc9e25e27` |
| 17 | `theorem` | [ContDiffWithinAt.congr_of_eventuallyEq_of_mem](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-of-eventuallyeq-of-mem.md) | 245 | `result-track:175b5194e10a930b6dcb5549cb92de9382ee08e51bcc9c95efb026a48ff794a7` |
| 18 | `theorem` | [Filter.EventuallyEq.congr_contDiffWithinAt_of_mem](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/filter-eventuallyeq-congr-contdiffwithinat-of-mem.md) | 249 | `result-track:7dded282fe12b25f19d84b59479b53b023d0abec093bec2847f01da95c5b9370` |
| 19 | `theorem` | [ContDiffWithinAt.congr](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr.md) | 253 | `result-track:152090625f4f6a766cf653086382ebe5af663b86df03c09224051933b94c1616` |
| 20 | `theorem` | [ContDiffWithinAt.congr'](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-source-edition-2.md) | 259 | `result-track:2a218e16f5a26796a6d813070f8a1272e01771669292b99f41588f6cf3a75c5d` |
| 21 | `theorem` | [contDiffWithinAt_congr](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-source-edition-3.md) | 264 | `result-track:9c58a14fac4d273b75267cb9855f6debf57579688ffe349b37abe3f1c70de368` |
| 22 | `theorem` | [ContDiffWithinAt.congr_of_mem](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-of-mem.md) | 268 | `result-track:0b31e26105e5089ed64638365b5e4ca27cb8bec3d881f744c89c934e755550a0` |
| 23 | `theorem` | [contDiffWithinAt_congr_of_mem](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-of-mem-source-edition-2.md) | 272 | `result-track:e45ef6f60c0e0181706502c5f673e2d2d544f7280cb7ca1e5257f2d84a7eaf8e` |
| 24 | `theorem` | [ContDiffWithinAt.congr_of_insert](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-of-insert-source-edition-2.md) | 276 | `result-track:f443783e9fb5fff50245b44ec873779861ed4cbf3f641b21d9c445c9642efc90` |
| 25 | `theorem` | [contDiffWithinAt_congr_of_insert](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-of-insert.md) | 280 | `result-track:50b6dc3174fd8331115e2c4e711cbd0b81df62a5f5c4fd3ceb7d52d658c95b7a` |
| 26 | `theorem` | [ContDiffWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-mono-of-mem-nhdswithin.md) | 284 | `result-track:7012796184126acdfd2f054562470e11a5d1d4b6bf6b8e20e608b8240c098ff2` |
| 27 | `theorem` | [ContDiffWithinAt.mono](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-mono.md) | 295 | `result-track:bcc8ef56261b29b991dfdf59e08f9538f4ca05f630f30aa2174d9e248b7b5754` |
| 28 | `theorem` | [ContDiffWithinAt.congr_mono](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-mono.md) | 299 | `result-track:2d5fff08bf9e118fda81956d53275f3f45fb225c64f3fc6586fba05f2141a49e` |
| 29 | `theorem` | [ContDiffWithinAt.congr_set](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-set.md) | 304 | `result-track:c6217f6f2a00dff53d1d4cadf6f43febc16a7f29df359dc6d41965ac3b20c5ed` |
| 30 | `theorem` | [contDiffWithinAt_congr_set](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-congr-set-source-edition-2.md) | 309 | `result-track:d157d9f22bd695a46c77ef7468311ce99f882cb768d11cebcf97ec17d182bb91` |
| 31 | `theorem` | [contDiffWithinAt_inter'](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-inter-source-edition-2.md) | 313 | `result-track:4339c50f4c5cfab4cc91acff92fb0e1c79420aef01a73a8e6d878fea4092223e` |
| 32 | `theorem` | [contDiffWithinAt_inter](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-inter.md) | 317 | `result-track:1471977c25a06130e8d00c014c53bed400b8954847d6921f253f035ff8fd1d8c` |
| 33 | `theorem` | [contDiffWithinAt_insert_self](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-insert-self.md) | 321 | `result-track:072f9494af70a6f57db038c88561ec57cecb41b74cbb457632f41bc4c38434d6` |
| 34 | `theorem` | [contDiffWithinAt_insert](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-insert-source-edition-2.md) | 327 | `result-track:e3ec574bd74b532b30f1d12062d55a8788cfa75e15fc4e78527df05b9850905d` |
| 35 | `theorem` | [ContDiffWithinAt.insert](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-insert.md) | 337 | `result-track:ce2fc459d6acb2f71c65fe2b71fb6a4f1b4cb7d51ea71207402d30fd03736571` |
| 36 | `theorem` | [contDiffWithinAt_sdiff_singleton](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-sdiff-singleton.md) | 341 | `result-track:eea4314c57ef6f8918d3e3f158bf4c3fea419609aba49ce64aafa01d656c02e6` |
| 37 | `theorem` | [ContDiffWithinAt.differentiableWithinAt'](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-differentiablewithinat-source-edition-2.md) | 350 | `result-track:a32b8a998ad3ba74df05d15ec03e964ca50669410aeac5b487a579cf4a8f40bb` |
| 38 | `theorem` | [ContDiffWithinAt.differentiableWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-differentiablewithinat.md) | 359 | `result-track:35b8618c8e4a937d7fb8657ede379c1c5131e5a0b4062f0aee127b4e4d669248` |
| 39 | `theorem` | [contDiffWithinAt_succ_iff_hasFDerivWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-succ-iff-hasfderivwithinat.md) | 365 | `result-track:0524be4dde072ec3887a0d3ebfeb3cc8379a3c2fc867a89af9b8cef79447ba9e` |
| 40 | `theorem` | [contDiffWithinAt_succ_iff_hasFDerivWithinAt'](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-succ-iff-hasfderivwithinat-source-edition-2.md) | 434 | `result-track:27bdb2c732c6d4659b85770fc28784c684a3704d6dd4e3e81f68f5a074dcf8d7` |
| 41 | `def` | [ContDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon.md) | 472 | `declaration-track:92b52dd3148a61272dba320ac210a221ee20aa11206dac7d4423cb14da1bd487` |
| 42 | `theorem` | [HasFTaylorSeriesUpToOn.contDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/hasftaylorseriesuptoon-contdiffon.md) | 475 | `result-track:abc1b475e4aff8b5f1042d8397ba0cd8a31b9879e76a669df420765aaa6c2e74` |
| 43 | `theorem` | [ContDiffOn.contDiffWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-contdiffwithinat.md) | 482 | `result-track:43c4b5843718b8b35afbc7a4fea8bee7259704188d99da62b99973a8a8fb9aea` |
| 44 | `theorem` | [ContDiffOn.of_le](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-of-le.md) | 487 | `result-track:616d0478646c625d287267118f5d9059e1ba1cc5501ba5d9c2ff977a211c7b30` |
| 45 | `theorem` | [ContDiffWithinAt.contDiffOn'](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-contdiffon-source-edition-2.md) | 490 | `result-track:8b35220a019b466fe35573d338a9d683e53757dbed46b7200008e5fd8fc06460` |
| 46 | `theorem` | [ContDiffWithinAt.contDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-contdiffon.md) | 511 | `result-track:48b8944c60de65ed677311e3729b8bf38fe6531ee29d6cca5a364eddfffcf864` |
| 47 | `theorem` | [ContDiffOn.analyticOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-analyticon.md) | 517 | `result-track:edec1cb5a9b5bfb284e773c501e79fe786c8e96a1cbb6b138d14940cd6d7c0b6` |
| 48 | `theorem` | [contDiffWithinAt_iff_contDiffOn_nhds](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-iff-contdiffon-nhds.md) | 522 | `result-track:cdb2958515501bda818f5ceaea7ce33d3a8d2ccc7a1dba6e25ea27da860c759f` |
| 49 | `theorem` | [ContDiffWithinAt.eventually](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-eventually.md) | 531 | `result-track:06a6011369d5977cfbc8cf1b9568cdc6caa0ea1ae4f1b137d733f54dd390d7f1` |
| 50 | `theorem` | [ContDiffOn.of_succ](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-of-succ.md) | 539 | `result-track:4e404ecc4fe0f6e7fc0c55a043571ede0fc107b8cacbda753461a2e5f9904e71` |
| 51 | `theorem` | [ContDiffOn.one_of_succ](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-one-of-succ.md) | 542 | `result-track:58d372442797de65e6bb96b4a0d148ced17a89af32443b0454ad7ada54ca53ec` |
| 52 | `theorem` | [contDiffOn_iff_forall_nat_le](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-iff-forall-nat-le.md) | 545 | `result-track:28ff8cab5027af740a9d8caf43d1bac453227b835d38fed0f23c72687623c181` |
| 53 | `theorem` | [contDiffOn_infty](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-infty.md) | 549 | `result-track:6392ff185c165698001f96072e965c9401966436a4147969da74985b92cee155` |
| 54 | `theorem` | [contDiffOn_all_iff_nat](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-all-iff-nat.md) | 552 | `result-track:9c0237f9d1e7b0c16f82b050310561de8e1976954684f8d318d8da7d684156a2` |
| 55 | `theorem` | [ContDiffOn.continuousOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-continuouson.md) | 558 | `result-track:22fbef217aec4b73e6f012059eed99cd4c08d22ed81945b5219f20eea656a69d` |
| 56 | `theorem` | [ContDiffOn.continuousOn_zero](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-continuouson-zero.md) | 562 | `result-track:999f38241a065f3ea3c1cdca47a58ee9bb582045e3404b92e64fe4dae1925794` |
| 57 | `theorem` | [ContDiffOn.congr](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-congr-source-edition-2.md) | 565 | `result-track:f70b39883f6dba214db38b161dfa84a1412d44f242ad952cc8250be1c1ad0d31` |
| 58 | `theorem` | [contDiffOn_congr](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-congr.md) | 568 | `result-track:22992c7e8d688fe1cb366c42b83eb7da5396cb58d848973b8fe0f3e66a0fcdd4` |
| 59 | `theorem` | [ContDiffOn.mono](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-mono.md) | 571 | `result-track:0252d2a1bfa3324b3a46832cf480b37e84769acfbe6920cd550266629083c138` |
| 60 | `theorem` | [ContDiffOn.congr_mono](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-congr-mono.md) | 574 | `result-track:696268510ee110901daf26547f7545cb11c7e7b20ac29be187ef33c8a540de06` |
| 61 | `theorem` | [ContDiffOn.differentiableOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-differentiableon.md) | 579 | `result-track:a6750ea05b75d382fc9a49e64723f883ef418a960dcc253df4434f343719adca` |
| 62 | `theorem` | [ContDiffOn.differentiableOn_one](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-differentiableon-one.md) | 583 | `result-track:8d1dc7df2374f0d6bfc06120777b08085c7db5e7791f7023a3db1d4dae9f86cd` |
| 63 | `theorem` | [contDiffOn_of_locally_contDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-of-locally-contdiffon.md) | 587 | `result-track:d0e86c325c024efb8ca8731f0e3b0b2fe0b962a148e8c4e353b3bcb7d4d3231b` |
| 64 | `theorem` | [contDiffOn_succ_iff_hasFDerivWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-succ-iff-hasfderivwithinat.md) | 595 | `result-track:6860dfd43b625e83e6978fe95723cc70bcc3b9f1720e8f225b79d98597b55416` |
| 65 | `theorem` | [contDiffOn_zero](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-zero.md) | 619 | `result-track:3258c4d594e5226fa7af658d5e3d0a8fbc6d7c26c011beb679fc806d34e2c60d` |
| 66 | `theorem` | [contDiffWithinAt_zero](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-zero.md) | 627 | `result-track:e85817fdf5fd793a98077bc7a4ccecd12ace465238d1c69415b178d009e44535` |
| 67 | `theorem` | [ContDiffOn.ftaylorSeriesWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-ftaylorserieswithin.md) | 643 | `result-track:9cfbc6edb6a409c048bccf19bd27abbc5580913f2ada0e24722bda4e5ab20b91` |
| 68 | `theorem` | [iteratedFDerivWithin_subset](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/iteratedfderivwithin-subset.md) | 686 | `result-track:1ebd46f654df7b368b697b0660d4a68e9e49c752b45acda33ece507b6e8ac547` |
| 69 | `theorem` | [ContDiffWithinAt.eventually_hasFTaylorSeriesUpToOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-eventually-hasftaylorseriesuptoon.md) | 691 | `result-track:ca2b83c47304f715a61f4acdfc2fe9b0d11a15c3cf6ec0682b84b3a686e055d4` |
| 70 | `theorem` | [AnalyticOn.contDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/analyticon-contdiffon.md) | 706 | `result-track:c6edc840be72443d02a60acd78df6a7eaec6562c1095c23fb380dde89bfc5d2e` |
| 71 | `theorem` | [AnalyticOnNhd.contDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/analyticonnhd-contdiffon.md) | 718 | `result-track:37f7993aa47fe7c54dfa2aadabd08af68014fee598dfea1734b5fa3e66638d42` |
| 72 | `theorem` | [AnalyticOn.contDiffOn_of_completeSpace](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/analyticon-contdiffon-of-completespace.md) | 722 | `result-track:e523c66a068dd6a5d1e5f0ba9d17d3abf35da5ce4fb0d119191f601638d11eff` |
| 73 | `theorem` | [AnalyticOnNhd.contDiffOn_of_completeSpace](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/analyticonnhd-contdiffon-of-completespace.md) | 727 | `result-track:4278881d9be7196b22568afd17fe5d1a152f1d43cd1b0bac0b6852e97b40b2a9` |
| 74 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-of-continuouson-differentiableon.md) | 731 | `result-track:fc405d1b3a163e284d101f45d8c4a47543b3c5beea637346dffe779c945ff6a5` |
| 75 | `theorem` | [contDiffOn_of_differentiableOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-of-differentiableon.md) | 748 | `result-track:7d2f57068d35ba413be76ccdc80948423241bf2cb38e7e03a8da42bdb9b6d022` |
| 76 | `theorem` | [contDiffOn_of_analyticOn_iteratedFDerivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-of-analyticon-iteratedfderivwithin.md) | 754 | `result-track:b3194a4fe42b8525ff338545a1bb40302c4408a9039bfc634cc5ad3c582ea650` |
| 77 | `theorem` | [contDiffOn_omega_iff_analyticOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-omega-iff-analyticon.md) | 773 | `result-track:4a240cd55793bbf622a2835cd782a76d1e15dd80458b66c1b4e62c9c2a2be46c` |
| 78 | `theorem` | [ContDiffOn.continuousOn_iteratedFDerivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-continuouson-iteratedfderivwithin.md) | 777 | `result-track:d02444f1abbadfef4c22841453880e660ca3389e52804ecd05de78e72152b760` |
| 79 | `theorem` | [ContDiffOn.differentiableOn_iteratedFDerivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-differentiableon-iteratedfderivwithin.md) | 781 | `result-track:296f934bbed993f82cc09d69ee238e58287945df90e326cf7595ef9e5fbbbde9` |
| 80 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedFDerivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-differentiablewithinat-iteratedfderivwithin.md) | 789 | `result-track:230f43d3e41db9a337c6407b41f024324aa3109ee120656d43f0e108e62c8fc9` |
| 81 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-iff-continuouson-differentiableon.md) | 809 | `result-track:dad8e877d2f033b33d468db7cb6313b000c756627356d1a461fe414789adb13a` |
| 82 | `theorem` | [contDiffOn_nat_iff_continuousOn_differentiableOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-nat-iff-continuouson-differentiableon.md) | 817 | `result-track:4ff3e4c27d00209014de8d497961ece277017b12f07baa2e2128f3c7ee3c2ba1` |
| 83 | `theorem` | [contDiffOn_succ_of_fderivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-succ-of-fderivwithin.md) | 824 | `result-track:9fb288e67095bec3d6bc3c42806568c698d70d550eb7c92cf38d45bd9a832303` |
| 84 | `theorem` | [contDiffOn_of_analyticOn_of_fderivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-of-analyticon-of-fderivwithin.md) | 841 | `result-track:399a26b58edc03111d73a9dbdf2ab2da149b6b229920dca28794d2cff593d95d` |
| 85 | `theorem` | [contDiffOn_succ_iff_fderivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-succ-iff-fderivwithin.md) | 848 | `result-track:fb76381bb7c7db0a598c915696c69b9d51e6af4e5ffecbfc0c153b87e8f653d8` |
| 86 | `theorem` | [contDiffOn_succ_iff_hasFDerivWithinAt_of_uniqueDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-succ-iff-hasfderivwithinat-of-uniquediffon.md) | 875 | `result-track:deed9701d2bb561082905dd375735af355575cb01e383e293d05c5229462bbd0` |
| 87 | `theorem` | [contDiffOn_infty_iff_fderivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-infty-iff-fderivwithin.md) | 885 | `result-track:b9217ddc185601ac1a4b487953d7f6dcae8c27c3dc0a5ae690aa5d6e9c238740` |
| 88 | `theorem` | [contDiffOn_succ_iff_fderiv_of_isOpen](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-succ-iff-fderiv-of-isopen.md) | 892 | `result-track:bd0a3c95367ea93615a650d0c10da1b6558d892795f84ed31fee73500d83a95a` |
| 89 | `theorem` | [contDiffOn_infty_iff_fderiv_of_isOpen](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-infty-iff-fderiv-of-isopen.md) | 899 | `result-track:ff1920bd453ef0ba195b7cd413faa08940832a8215e5e1eb19666db9adffbd96` |
| 90 | `theorem` | [ContDiffOn.fderivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-fderivwithin.md) | 904 | `result-track:c93e6bc04603a0c6498a4129000dd634d02b8f19df3371f5b4417a30c2b3e98c` |
| 91 | `theorem` | [ContDiffOn.fderiv_of_isOpen](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-fderiv-of-isopen.md) | 908 | `result-track:bbdc11f41bad86d090387babe84b252fbdddca1f6ae5c2e75bce54cc8c85eed4` |
| 92 | `theorem` | [ContDiffOn.continuousOn_fderivWithin](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-continuouson-fderivwithin.md) | 912 | `result-track:03a62120ab57e9a7310d627b66f6a3b92fa601a23f2e5f2669c91de5b118df68` |
| 93 | `theorem` | [ContDiffOn.continuousOn_fderiv_of_isOpen](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-continuouson-fderiv-of-isopen.md) | 917 | `result-track:97c45f10fc24bc7a632cdfe3a144df48ce283906ef7895aeb77ec905dbe61e76` |
| 94 | `def` | [ContDiffAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat.md) | 937 | `declaration-track:7137ef772c5a0fb8bef635b196b8a932021c81cbcbe8d6b56932f91063a5a1f1` |
| 95 | `theorem` | [contDiffWithinAt_univ](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-univ.md) | 940 | `result-track:2e492c4f1d4d2abab6a6a4fa81055ecf7ad29ff5e4ad27457d5d2d39efd1f7c0` |
| 96 | `theorem` | [contDiffAt_infty](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-infty.md) | 943 | `result-track:4282062e1cf6a395e25657f1462115e2bc1c17f44835a3c1ba90a984120ed102` |
| 97 | `theorem` | [ContDiffAt.contDiffWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-contdiffwithinat.md) | 947 | `result-track:4eaa5a000305a58c6a3da483070004d6f8b674a77ad13dde5077b210740f4493` |
| 98 | `theorem` | [ContDiffWithinAt.contDiffAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-contdiffat.md) | 951 | `result-track:be7da95cb5b4ce3ef85e2e14bd4598cb1bf1ca5ea0773a13da8d2fcfbc18f5c7` |
| 99 | `theorem` | [contDiffWithinAt_iff_contDiffAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-iff-contdiffat.md) | 954 | `result-track:671587da88501cf5ff9b1d1ea9a85eaad14abad7d1837ab4bb1eeb2eab1fc00b` |
| 100 | `theorem` | [IsOpen.contDiffOn_iff](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/isopen-contdiffon-iff.md) | 958 | `result-track:ffa187e5c34e7eed8cea20043ceb807fcd623015d11b58986ad1f59f2447cf0d` |
| 101 | `theorem` | [ContDiffOn.contDiffAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-contdiffat.md) | 963 | `result-track:03b60c4031353f167e49c7ef43e4dcc88f200186f5e8a5c5786cfd36075561fc` |
| 102 | `theorem` | [ContDiffAt.congr_of_eventuallyEq](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-congr-of-eventuallyeq.md) | 967 | `result-track:19b1100d8e816f0791ae4e66d4c0e8992ce1103731cc99d0a4404907b48ed3ab` |
| 103 | `theorem` | [ContDiffAt.of_le](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-of-le.md) | 971 | `result-track:75faf5a52cd6ee3f5f9c4d80539817170cad72f37d2153ff45040f197b2a4ea2` |
| 104 | `theorem` | [ContDiffAt.continuousAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-continuousat.md) | 975 | `result-track:b653f06d2a99cf2ef17ce8a307a746b7a375365d49ed2fa10eb3616f16b5cc6b` |
| 105 | `theorem` | [ContDiffAt.analyticAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-analyticat.md) | 978 | `result-track:051b012d72baaf5b3e97d4e3700ebd6de33cce5bb37205beccc8dfbefcffc270` |
| 106 | `theorem` | [AnalyticAt.contDiffAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/analyticat-contdiffat.md) | 986 | `result-track:484fbf2474558c9dcf95c926fa405b90037a70683d66f9e0455028d774b4c8f0` |
| 107 | `theorem` | [contDiffWithinAt_compl_self](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffwithinat-compl-self.md) | 993 | `result-track:2d5585e4c2cba52b71e95c4c1c1d1013d96bcece777ce13840100dbc2c73e1c1` |
| 108 | `theorem` | [ContDiffAt.differentiableAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-differentiableat.md) | 998 | `result-track:659b6082ca95e3d8574bdb9b63223d385895b89e09eb306d1d6d40f379a72561` |
| 109 | `theorem` | [ContDiffAt.differentiableAt_iteratedFDeriv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-differentiableat-iteratedfderiv.md) | 1002 | `result-track:ec45ecaf8f76eb70d737e998541c009204a552789e2218c9103ffa3360bedf3c` |
| 110 | `theorem` | [ContDiffAt.differentiableAt_one](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-differentiableat-one.md) | 1010 | `result-track:26831d97cc1ffdbb72ebcae849785d0317f56ca4ffb3483f153c565ea108f664` |
| 111 | `lemma` | [ContDiffAt.contDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-contdiffon.md) | 1014 | `result-track:c1ee12e116b559c96bbafb2f05481361c7f068c2cc95f2d8bde8501a00ec367f` |
| 112 | `theorem` | [contDiffAt_succ_iff_hasFDerivAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-succ-iff-hasfderivat.md) | 1019 | `result-track:34c8b59702ec9af2e66f28165eb8dd1b0ec64ff9f61e232b0ddd1f6266e10c2c` |
| 113 | `theorem` | [ContDiffAt.eventually](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-eventually.md) | 1036 | `result-track:18458a738fc345f1e409e5f285ec724c3e86545a643d792df5d35c3326a0bcb4` |
| 114 | `theorem` | [iteratedFDerivWithin_eq_iteratedFDeriv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/iteratedfderivwithin-eq-iteratedfderiv.md) | 1040 | `result-track:13ef449ad48c3550078330255a1cfd484d5a764fd75491178b5f33b50d1429fc` |
| 115 | `def` | [ContDiff](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff.md) | 1068 | `declaration-track:13c16d046eff45996b8d693050e553f5838c40f6f66c3c228f1d708459bcbfe3` |
| 116 | `theorem` | [HasFTaylorSeriesUpTo.contDiff](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/hasftaylorseriesupto-contdiff.md) | 1075 | `result-track:1d8d45caae34f0ee79aae9ee544b39c0fb11cd3bd1376a2e8a54d1ccdeaa3986` |
| 117 | `theorem` | [contDiffOn_empty](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-empty.md) | 1079 | `result-track:39d53e33b763c45fc18a48f4a99a72d6831d9ec5c4cecbad4b38a112578d1506` |
| 118 | `theorem` | [contDiffOn_univ](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffon-univ.md) | 1081 | `result-track:6c9e8fc4d37f01e654fdfde11221dd691dffbaf5898390afc96d7c6a39b57d59` |
| 119 | `theorem` | [contDiff_iff_contDiffAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-iff-contdiffat.md) | 1104 | `result-track:6f0c0059e5d238bffb2571e955d6c597275501bcfcd6afcd2119993ad945172b` |
| 120 | `theorem` | [ContDiff.contDiffAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-contdiffat.md) | 1108 | `result-track:f10907f3e8a7af22e276c0df64056891f365df35d41f72bf431080fa8a71a64c` |
| 121 | `theorem` | [ContDiff.contDiffWithinAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-contdiffwithinat.md) | 1112 | `result-track:2d04c9ccadbb5398d44adccc3c6856f1ed9c3af6e772eff77b82db73fa0cce00` |
| 122 | `theorem` | [contDiff_infty](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-infty.md) | 1115 | `result-track:5d41f0d9ccafe6f65d737fa1602365f917bd820c1fb71eba68561407cdaae774` |
| 123 | `theorem` | [contDiff_all_iff_nat](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-all-iff-nat.md) | 1118 | `result-track:66fa19e14a622c6ff18bbe0f5245811209a81b3a9c69ac0b469f20b824908dda` |
| 124 | `theorem` | [ContDiff.contDiffOn](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-contdiffon.md) | 1122 | `result-track:bb02bde42052de2fc268985400c8fca7e11d7d57e31bae5f9f1b218e8a83d691` |
| 125 | `theorem` | [contDiff_zero](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-zero.md) | 1126 | `result-track:ce503684fc2eb8b5b2010b92e4ad7f55feba1a20d76795053e86a516640a4734` |
| 126 | `theorem` | [contDiffAt_zero](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-zero.md) | 1130 | `result-track:1a768bdcb20791c7d4b3771135fe973a9067fafc5608824088becabac7790ba6` |
| 127 | `theorem` | [contDiffAt_one_iff](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiffat-one-iff.md) | 1133 | `result-track:39d00ba5cd8111cada0d60b9c3bf6f594733f07b1fffe18abac3a1bd0a4cca81` |
| 128 | `theorem` | [ContDiff.of_le](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-of-le.md) | 1141 | `result-track:336d67703729d625c131733cce117a5afc36d899669d7bafedb95e6c7ba6783c` |
| 129 | `theorem` | [ContDiff.of_succ](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-of-succ.md) | 1144 | `result-track:2b28ab0fc6c7d8285b90ad774e9c47bdca325ddb298d0b3f11b5005ebf0b344a` |
| 130 | `theorem` | [ContDiff.one_of_succ](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-one-of-succ.md) | 1147 | `result-track:58c45feaf5949b2bb96b37da44e10e141a04565f4ae155a240aac6c6e9e3d7a1` |
| 131 | `theorem` | [ContDiff.continuous](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-continuous.md) | 1151 | `result-track:420c5aff1be5fb1fd440559b7ea43f605fe6a4a7df78c6c05f368c9cafd28263` |
| 132 | `theorem` | [ContDiff.continuous_zero](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-continuous-zero.md) | 1155 | `result-track:624d1a12d14d80f107b8d09339f828b0995f3399b4226062ac55f92da2012c3d` |
| 133 | `theorem` | [ContDiff.differentiable](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-differentiable.md) | 1160 | `result-track:fda6f7e05a62bc25fc4843c0493390754a83b20a88b2404786944c9c1284c501` |
| 134 | `theorem` | [ContDiff.differentiable_one](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-differentiable-one.md) | 1164 | `result-track:f1b6e7e26b4f474b5becda2b565d0336b90bd0a1552efb639ef4856452ad48ef` |
| 135 | `theorem` | [contDiff_iff_forall_nat_le](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-iff-forall-nat-le.md) | 1167 | `result-track:b7728f574188b84bd4747e007f9f35a67b2b363c9ced40ee1538f3bd4c40de16` |
| 136 | `theorem` | [contDiff_succ_iff_hasFDerivAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-succ-iff-hasfderivat.md) | 1172 | `result-track:dd782e3bc14643c218d63d49d127f6d9c084c17c759e66b4d9577684d7a766d1` |
| 137 | `theorem` | [contDiff_one_iff_hasFDerivAt](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-one-iff-hasfderivat.md) | 1179 | `result-track:eec1d85cbaac87c3e0b66ea305aafb18c9df2332b85b00f2416d6e39bedb6d64` |
| 138 | `theorem` | [AnalyticOn.contDiff](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/analyticon-contdiff.md) | 1183 | `result-track:b53f588310fab82ec0d9991b8b7ba4c76b8b9bca3f5cd46c715f37f87ef8766a` |
| 139 | `theorem` | [AnalyticOnNhd.contDiff](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/analyticonnhd-contdiff.md) | 1187 | `result-track:355f311df13e95e97783ea255bf2317f1c91626c5f41723e4d392c16585bdf60` |
| 140 | `theorem` | [ContDiff.analyticOnNhd](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-analyticonnhd.md) | 1190 | `result-track:6d3e922bb8a57f004745132545aaff8feee5ecf8ef225018dbdff27d50c0d915` |
| 141 | `theorem` | [contDiff_omega_iff_analyticOnNhd](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-omega-iff-analyticonnhd.md) | 1196 | `result-track:107a196e22c4e7923ac132e0734a756581e762ce3fc38a91d0fda80225e1a489` |
| 142 | `theorem` | [ContDiff.ftaylorSeries](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-ftaylorseries.md) | 1204 | `result-track:61dcb7d95037939a65f363a3f785a72a43bd190c3d4cf9b4ced615a888f6c880` |
| 143 | `theorem` | [contDiff_iff_ftaylorSeries](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-iff-ftaylorseries.md) | 1212 | `result-track:3e0cfa079b4486af1c878ae84a39f49fb019e2a029b27cad6a1031f4a4759691` |
| 144 | `theorem` | [contDiff_iff_continuous_differentiable](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-iff-continuous-differentiable.md) | 1219 | `result-track:9a177b1cb74fb0a59b09e1e24975e73615c2b3c3bb0177d04188a32764872b3a` |
| 145 | `theorem` | [contDiff_nat_iff_continuous_differentiable](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-nat-iff-continuous-differentiable.md) | 1226 | `result-track:a3f6c334df553acd93d8f9fa6aef2094ab8147d7103535879766e7353d3a09fd` |
| 146 | `theorem` | [ContDiff.continuous_iteratedFDeriv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-continuous-iteratedfderiv-source-edition-2.md) | 1234 | `result-track:f910140bca440fe566453f800ae6bf4d01374eccc2cae105635b2121a3aa4682` |
| 147 | `theorem` | [ContDiff.continuous_iteratedFDeriv'](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-continuous-iteratedfderiv.md) | 1239 | `result-track:c6d56062e544f5020979f6708ba8345110540d06ae4166eaa3fb18cecf7d81ba` |
| 148 | `theorem` | [ContDiff.differentiable_iteratedFDeriv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-differentiable-iteratedfderiv.md) | 1244 | `result-track:e2b0400971adde15fe31a49d8bcd3744111928b2c4f0467986cf4ab6593fea84` |
| 149 | `theorem` | [contDiff_of_differentiable_iteratedFDeriv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-of-differentiable-iteratedfderiv.md) | 1249 | `result-track:3d80bebd535a91913982ba4b6af598798b85e27e2a0c72611d5162ceea92d0d9` |
| 150 | `theorem` | [contDiff_succ_iff_fderiv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-succ-iff-fderiv.md) | 1256 | `result-track:52f8ec53fdf1436f7c6f26ba4a955cf7d11f09f33e011eadef584f70768123fa` |
| 151 | `theorem` | [contDiff_one_iff_fderiv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-one-iff-fderiv.md) | 1262 | `result-track:482456e58f9362e06d05d1bfa349fe450c2cd83043368635921f4921aa64a398` |
| 152 | `theorem` | [contDiff_infty_iff_fderiv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-infty-iff-fderiv.md) | 1267 | `result-track:01179215dd997fc932bacbccab51bbb7f428b91647d48b3ea9436945c1da8a50` |
| 153 | `theorem` | [ContDiff.continuous_fderiv](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-continuous-fderiv.md) | 1272 | `result-track:0981023437bffbb131be4c43cb576b4c1966ca27b1b7a48e567ac2e7a13ad3a1` |
| 154 | `theorem` | [ContDiff.continuous_fderiv_apply](../../../../RealFunctions/ContDiffDefsPublic.lean/declarations/contdiff-continuous-fderiv-apply.md) | 1278 | `result-track:21dd1ac1cc8693c3d824854b26c505e0b83ac0061e987378edc93f7f8ab70ded` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1aeb8854dcbc97504dc1329d0efde9b996fce6f5a2f591424744834407be15d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

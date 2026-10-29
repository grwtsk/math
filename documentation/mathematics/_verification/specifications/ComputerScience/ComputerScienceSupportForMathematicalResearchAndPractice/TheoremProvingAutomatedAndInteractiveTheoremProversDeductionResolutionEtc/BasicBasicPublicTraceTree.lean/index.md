# Verification target: Basic Basic Public Trace Tree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c836af9dfaade68c6408111f2dfed5f834d2081e",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c836af9dfaade68c6408111f2dfed5f834d2081e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.CoreM` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/syntax.md) | 63 | `declaration-track:99643c05ab78c983c2a7a5abad5dda627e296c40567bd52682c76f8a78cb4427` |
| 2 | `inductive` | [TraceTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/tracetree.md) | 70 | `declaration-track:3fe06b84b261489e739e0fe6621b37b53dec2cc1884fe2810c9e4ab6350f0c75` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/instance.md) | 83 | `declaration-track:549cd1b74090143c69e7942d85bd37a525138568845f3f07e23548d37ba9f4b5` |
| 4 | `def` | [TraceTree.ofMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/tracetree-ofmessagedata.md) | 89 | `declaration-track:1ade49c6d059e78d055382bbabac96d0f68dd04e5f09b7b2f91e021647c49d8d` |
| 5 | `def` | [TraceTree.toMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/tracetree-tomessagedata.md) | 99 | `declaration-track:3b74dfc58f3b000a10ed97caf49f0f1a5b3d2a8cef18b8c626f0a388eb7e28b2` |
| 6 | `abbrev` | [TracePostprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/tracepostprocessor.md) | 115 | `declaration-track:a1caa914843543af95cacfe1d9f1068d594f697057214979df6cf78199a1da29` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/instance-source-edition-2.md) | 117 | `declaration-track:b03d8c987777330927edbf3b889ed496d17de28308b370ff3b977b248404d3bd` |
| 8 | `def` | [traceContainer?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/tracecontainer.md) | 124 | `declaration-track:a1ce2013a7cbb19fc271bb805d61bbf09c8e85504fb13e3d265dc8422d29c851` |
| 9 | `def` | [postprocessMessage](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/postprocessmessage.md) | 143 | `declaration-track:e01712acc75a5dfc21c3099fa46a72b509b64dc9c5395af48e3422ee748bd4b7` |
| 10 | `def` | [runAndCollectMessages](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/runandcollectmessages.md) | 162 | `declaration-track:3b9b3f6ec414048d84d4ad580e5883e85bdfc4499bfabdda0d8df387b8d96e1b` |
| 11 | `def` | [evalPostprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/evalpostprocessor.md) | 185 | `declaration-track:7086a79c99eb5a183a32ee2c503487f825d6f3a33ecfd60553b73628eb712db2` |
| 12 | `def` | [evalPostprocessorTopLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/evalpostprocessortoplevel.md) | 205 | `declaration-track:71c75cdf5e3c48624d8bfd0b27a6e34a3936e6c0d3096d0e726588821360789b` |
| 13 | `def` | [elabPostprocessTraces](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/elabpostprocesstraces.md) | 213 | `declaration-track:7c8b47c4afe765042c4655d92b2786fb63a19aad2537612cec597b790421280a` |
| 14 | `abbrev` | [TracePattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/tracepattern.md) | 241 | `declaration-track:b458f446f0cbb79468fe733d0511265126147bede792bf2e9def025aec2dcc00` |
| 15 | `def` | [data?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/data.md) | 246 | `declaration-track:e6de3c5a0e8c208185bf8c0782229257c48ef68d46a02f93460e8d997ae5fe3d` |
| 16 | `def` | [cls?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/cls.md) | 251 | `declaration-track:f923b7d2904a043e7bfac543000234f0e4151a2b110141407710c9480b216afe` |
| 17 | `def` | [children](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/children.md) | 255 | `declaration-track:8c68b657b06d2f4bba3404818b5b6aadc32fb2e3165376fa682ba6aac5d55d1c` |
| 18 | `def` | [withChildren](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/withchildren.md) | 260 | `declaration-track:da505d4e8d59d6bdf61a564002b06606eb18b5bbd3bc4708a5d752038b2ff048` |
| 19 | `def` | [modifyData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/modifydata.md) | 266 | `declaration-track:6bc51316f1a60f3b26b87d94d68647d7871df959d2883d9ed2f67584d39a07a5` |
| 20 | `def` | [elapsed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/elapsed.md) | 272 | `declaration-track:359f9524bdde8f52933af9089c625b856edfc21e95700831465b3bbdaae61395` |
| 21 | `def` | [selfElapsed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/selfelapsed.md) | 281 | `declaration-track:0ffebde180815a4bc4e614d1265975e29c95583ec801ee2f19f4693739a059e8` |
| 22 | `def` | [headText](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/headtext.md) | 288 | `declaration-track:cd3eb3b59743fcc8f6f8f69f6fdbb67d9cab4a97feef66658ecf5e3468ff2a7a` |
| 23 | `def` | [result?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/result.md) | 297 | `declaration-track:fd56e551739366b7da39cff275c087a31ef8a655f62288862f5a196d960330e7` |
| 24 | `def` | [collectSubtrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/collectsubtrees.md) | 304 | `declaration-track:e76f8208b0476b79970748933c04844f1c9262345b55ecd7c7a630341dffd860` |
| 25 | `def` | [filterSubtrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/filtersubtrees-source-edition-2.md) | 315 | `declaration-track:adaad254558b1bab2573e18a76e590a8abba25ecfbd69b848450bfef788cc8f4` |
| 26 | `def` | [containsSubstr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/containssubstr.md) | 326 | `declaration-track:79e17de3dca873963afdff777a1db7c24acf8167563c75c92b0cc0213b86f345` |
| 27 | `def` | [ofClass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/ofclass.md) | 332 | `declaration-track:17728f425ba496aadbbfa9d29efccf24938738f1d4c4d660169506ede5708e13` |
| 28 | `def` | [containsString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/containsstring.md) | 340 | `declaration-track:c5cc52b6e416d5140ce15542d4edc3002c4001e337aed63a10a594e868f5a4d5` |
| 29 | `def` | [succeeded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/succeeded.md) | 349 | `declaration-track:9d8f2ec6d878b8d9579b153e1ce63a7bcdaebdf97bc885b120dec07dc605c1bb` |
| 30 | `def` | [failed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/failed.md) | 353 | `declaration-track:3c0ea57acccae4ba5157559d9bbfd0b915830863322572e46b7faf4f53ff52ec` |
| 31 | `def` | [errored](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/errored.md) | 357 | `declaration-track:f34e7894a772ecb378e9c14980ec37164f1f6a6b125cc70396911269330607b5` |
| 32 | `def` | [unsuccessful](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/unsuccessful.md) | 364 | `declaration-track:9373c3c27d841758b975f6715756f30890a92841f5e8a6ee853e34c0a9e46615` |
| 33 | `def` | [minTimeMs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/mintimems.md) | 371 | `declaration-track:306716e3fa7bc7871a9e4592b9c04715a261ce57a49dafaa00ed1f0848248385` |
| 34 | `def` | [minSelfTimeMs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/minselftimems.md) | 378 | `declaration-track:aef1cf6c1a8d1be2501c9df209bee58fcd4281a2631f658ad98210bcb483b98a` |
| 35 | `def` | [filterSubtrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/filtersubtrees.md) | 390 | `declaration-track:1dc1877eefe0892b6701a962f54494f15704b450711ce8fb7bc4294741f6d476` |
| 36 | `def` | [hoist](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/hoist.md) | 398 | `declaration-track:5347061ef1c70c0ecaa5077222f9d109e530641a86d9aab6d01970541d2e9d90` |
| 37 | `def` | [exposeSubtrees](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/exposesubtrees.md) | 407 | `declaration-track:15254e9c2a7ab86ed1c92aded1992bdd5efc887f984d77c30948cab50b48159e` |
| 38 | `def` | [countNodes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/countnodes.md) | 420 | `declaration-track:57b551c38a911b72796f7c0b84c53f9a915a155f5a459c252f892d028ee06ca7` |
| 39 | `def` | [formatMs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/formatms.md) | 433 | `declaration-track:9c4dbc1c1077a9c05355f8500537e02af59dac7150723bfb4edb8c4ab8dc1195` |
| 40 | `def` | [selfTime](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicTraceTree.lean/declarations/selftime.md) | 442 | `declaration-track:00d76f516b36ea95389c0b637d83c7ad1861da39e7b5f750faf1cb8e6421ef05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c4647d5c7a9cd2bcbfd596709bd3d750fcae23a5e379133a97e69b245fb9447 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ca3db4c153226f1abbbf75876282721b663a221add8ee62e8d23be2ae71e4ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

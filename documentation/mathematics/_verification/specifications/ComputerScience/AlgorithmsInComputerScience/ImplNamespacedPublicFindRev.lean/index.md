# Verification target: Impl Namespaced Public Find Rev

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54169047001e0c0cd95b6dbb296d6dfaf2bffe5e",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6eb162515cc5e2ddf8c7977fc4e0eb8ce04874d662c4e75cb4e06bcd2cf9645c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54169047001e0c0cd95b6dbb296d6dfaf2bffe5e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6eb162515cc5e2ddf8c7977fc4e0eb8ce04874d662c4e75cb4e06bcd2cf9645c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6eb162515cc5e2ddf8c7977fc4e0eb8ce04874d662c4e75cb4e06bcd2cf9645c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [setTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/settr.md) | 78 | `declaration-track:3dc87e6e2628198d9628312d2d90308cab76c2d1f1c3e330a66ef8eb541c2d2c` |
| 2 | `theorem` | [set_eq_setTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/set-eq-settr.md) | 86 | `result-track:7af008105ffbda142d1171885e89ff7c89996b9f4eb2127db9d25edda1b13bf0` |
| 3 | `def` | [filterMapTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/filtermaptr.md) | 113 | `declaration-track:8659a0e21105f042a47b87db2d439ce62f7dda8b7dddbafc2880adf55650caea` |
| 4 | `theorem` | [filterMap_eq_filterMapTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/filtermap-eq-filtermaptr.md) | 121 | `result-track:28d5b73db17edea26d80b2e841f379139bebb5987f0291c06014d21362270669` |
| 5 | `def` | [reduceOption](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/reduceoption.md) | 134 | `declaration-track:7d76159138dbb102603ae54fdccab40ce36455e53ef2124966c7950418707f19` |
| 6 | `def` | [foldrTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/foldrtr.md) | 150 | `declaration-track:f10da2afc5c8463166567ad5364f49cefc0c890791904c8a4e9f0328ebd714d1` |
| 7 | `theorem` | [foldr_eq_foldrTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/foldr-eq-foldrtr.md) | 152 | `result-track:c225bfc70a31af209065c1cfab66d30c6627c7094a8c023294e18bdd2352d92a` |
| 8 | `def` | [flatMapTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/flatmaptr.md) | 167 | `declaration-track:c0a0776fd135ed39b03982ce894b9525e2fc3128756828e68566de35a295b38d` |
| 9 | `theorem` | [flatMap_eq_flatMapTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/flatmap-eq-flatmaptr.md) | 173 | `result-track:b3c1c59c289eef8d28416eb8479a48300ce4c155af81f4f799450fca6611a5a0` |
| 10 | `def` | [flattenTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/flattentr.md) | 191 | `declaration-track:d1511561f743b388097ee189f00097cfc5d411f0ea0a405922e434bc0dab31d6` |
| 11 | `theorem` | [flatten_eq_flattenTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/flatten-eq-flattentr.md) | 193 | `result-track:786b4f0940f633bf9ad2f2bebad940dee6a679dada0e0fa4c749c5db810a3869` |
| 12 | `def` | [takeTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/taketr.md) | 210 | `declaration-track:35643452c47a297890ba81df3c5323118b3bfcac81fffae150aae234f359c588` |
| 13 | `theorem` | [take_eq_takeTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/take-eq-taketr.md) | 218 | `result-track:eeee6fd0415585f9b00fd00987cd57dc7593a52466f12dcda02066b64d36e481` |
| 14 | `def` | [takeWhileTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/takewhiletr.md) | 242 | `declaration-track:c7c491395ffcd059e5cf6c3bd3e04f322a72e3de571c86a745c525aec8ee6c52` |
| 15 | `theorem` | [takeWhile_eq_takeWhileTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/takewhile-eq-takewhiletr.md) | 249 | `result-track:fb743a87d8c46920ad0b37ee3025aacfe566ca11e2f2c4241839fa13034b677f` |
| 16 | `def` | [dropLastTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/droplasttr.md) | 274 | `declaration-track:6497ca1c644763ad40659f727466e28ae29f15a9a4b60ee212d44a121afe4748` |
| 17 | `theorem` | [dropLast_eq_dropLastTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/droplast-eq-droplasttr.md) | 276 | `result-track:06aa12d6d47b57eab94305c744da1ac1064fc967a76393fe7b1db2d6501ec3c8` |
| 18 | `def` | [findRev?TR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/findrev-tr.md) | 282 | `declaration-track:9d1ff414646ed43f5ca3cacf2c20345ce2dd13885512891ad6de14d48138d9e1` |
| 19 | `theorem` | [find?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/find-singleton.md) | 284 | `result-track:79306ddc89627ed096a2eab444306d0990fdafad818553eb66e323f2c68dbc6b` |
| 20 | `theorem` | [find?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/find-append.md) | 288 | `result-track:ea9b776f76c173193046356c596f1abf6c2ca824a229a094ace926af787b1c82` |
| 21 | `theorem` | [findRev?_eq_findRev?TR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/findrev-eq-findrev-tr.md) | 295 | `result-track:60895506a3d6f14aa1005a966dc84f56a8c4897fea89526a1d1d2e5c04c09391` |
| 22 | `theorem` | [findRev?_eq_find?_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/findrev-eq-find-reverse.md) | 303 | `result-track:70d06fd560711d3b5e7803b295216971f5ac1ecac6a998bf4ca94f755033ebef` |
| 23 | `def` | [findSomeRev?TR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/findsomerev-tr.md) | 308 | `declaration-track:21802fa93374c36b782c7152c74a09aa468fa81f0fb4e81e89f7d92ab9984365` |
| 24 | `theorem` | [findSome?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/findsome-singleton.md) | 310 | `result-track:cdf3a10a5ccf93fbbc36135a0a46e449fb28d11ebb75825836cbb88f6f4f625a` |
| 25 | `theorem` | [findSome?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/findsome-append.md) | 315 | `result-track:6f6d3220e0f7896548bd0cce1a7f1eebf2efdb8234b5c458fff8b9ce86ae9846` |
| 26 | `theorem` | [findSomeRev?_eq_findSomeRev?TR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/findsomerev-eq-findsomerev-tr.md) | 322 | `result-track:6c14431ddaf12cc945b30c9e194facfaccb31864aed61c50e2282a6d2b7790f3` |
| 27 | `theorem` | [findSomeRev?_eq_findSome?_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/findsomerev-eq-findsome-reverse.md) | 331 | `result-track:07de8f8049a50126c5e39f6ae03d5224a0e67adb37bea96d2903073fcfc4e1cd` |
| 28 | `def` | [replaceTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/replacetr.md) | 349 | `declaration-track:34a062840c168a25d7e2bbc52f2d6e9dbdf7545a170db8cb0ea433eb9a00a1dc` |
| 29 | `theorem` | [replace_eq_replaceTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/replace-eq-replacetr.md) | 356 | `result-track:74268984da8a4d89af58a7915f18ea38969eed1ac103f4c00b2633071a5699bb` |
| 30 | `def` | [modifyTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/modifytr.md) | 381 | `declaration-track:ca955752da6e2fd106677ec86d0ec5014c5388dce4af191b02e4b637a10d938c` |
| 31 | `theorem` | [modifyTR_go_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/modifytr-go-eq.md) | 388 | `result-track:9755c54ad5b58dbbdd6e4fa2f712ef472e56938aa83d1f7f1c51aed7a412e50d` |
| 32 | `theorem` | [modify_eq_modifyTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/modify-eq-modifytr.md) | 393 | `result-track:34a0821957efd6d7cacf17e815aaec43eacfc816dfe8664890eac6015a76b3e6` |
| 33 | `def` | [insertIdxTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/insertidxtr.md) | 413 | `declaration-track:2fa13e6a3ce45d3080d7ffc4e4ee2b44a0e2225475963b1940c60ac9e03664a5` |
| 34 | `theorem` | [insertIdxTR_go_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/insertidxtr-go-eq.md) | 420 | `result-track:c39695db9b60b649b6195a23b31684e5810b408a150902cb5886eecdf543c160` |
| 35 | `theorem` | [insertIdx_eq_insertIdxTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/insertidx-eq-insertidxtr.md) | 424 | `result-track:5c52045efde501e43440d6dfe9e2e065106b32e1ffdc197317f590b026cd1dc6` |
| 36 | `def` | [eraseTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/erasetr.md) | 441 | `declaration-track:95707680cf106e783f60b2943cf8859ae6b318cef5c8d74e7b86c51cdfaccd45` |
| 37 | `theorem` | [erase_eq_eraseTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/erase-eq-erasetr.md) | 448 | `result-track:8b10c95d507fd1da74544a27423f28cbad819c6d5c0defbf9070ea993da03adc` |
| 38 | `def` | [erasePTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/eraseptr.md) | 471 | `declaration-track:ba0220f79a88e1bb3fe77b62d5a9ab65e1dbf7e1a882d76180f01329d39fef58` |
| 39 | `theorem` | [eraseP_eq_erasePTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/erasep-eq-eraseptr.md) | 478 | `result-track:f2d5f1f366f9e401d229117a6965573f8e78566f93874ec1932d0dd3b711c4de` |
| 40 | `def` | [eraseIdxTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/eraseidxtr.md) | 504 | `declaration-track:6fb81f54f6dbe85887ae6678374a522e0453fc76c089bfd6ad411e54561adaac` |
| 41 | `theorem` | [eraseIdx_eq_eraseIdxTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/eraseidx-eq-eraseidxtr.md) | 512 | `result-track:86a48a7bbc27ee432f0069cc970bca3fdffeae3ae48ec6f730d3fe8eb56cee32` |
| 42 | `def` | [zipWithTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/zipwithtr.md) | 541 | `declaration-track:acb3623134ce7978a87e9e7829ae857cf1dfae5d75154065d13e62a44f05b1c9` |
| 43 | `theorem` | [zipWith_eq_zipWithTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/zipwith-eq-zipwithtr.md) | 547 | `result-track:99b23d73183c9517cf6726d15cdb43db2723e3b9bebc9e520e332e6de46f36cf` |
| 44 | `def` | [zipIdxTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/zipidxtr.md) | 568 | `declaration-track:e6863f68758b68ee51b5c47b8197810a5dddc7a80faedebfc4aaaad88506155c` |
| 45 | `theorem` | [zipIdx_eq_zipIdxTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/zipidx-eq-zipidxtr.md) | 572 | `result-track:583990a717c67d86cf75df14f9ab0972e7f3e8f07c8e29e21165dfa7d7773f48` |
| 46 | `def` | [intercalateTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/intercalatetr.md) | 603 | `declaration-track:3d912724729925e55716ab1f4171fef59bfaef216c57acb9c7baf1150d6d1ca4` |
| 47 | `theorem` | [intercalate_eq_intercalateTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplNamespacedPublicFindRev.lean/declarations/intercalate-eq-intercalatetr.md) | 615 | `result-track:a3ff3d40997ec0110f49ef60250940d292396b6eea883466155d90a0515e004f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a4ec93b491a5b3bed9a88d9dcd495160ac17171eba14153d95ca9f7196ad35a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6eb162515cc5e2ddf8c7977fc4e0eb8ce04874d662c4e75cb4e06bcd2cf9645c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6eb162515cc5e2ddf8c7977fc4e0eb8ce04874d662c4e75cb4e06bcd2cf9645c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

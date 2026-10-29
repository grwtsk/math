# Verification target: Extract Public Size Extract Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3126d89a18d956dd833f6cd1e09df7fbe36addd6",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantbec29f77e3e7fbb0797cbe2988095350748bcead12cd1d44e20d8e643668372c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3126d89a18d956dd833f6cd1e09df7fbe36addd6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantbec29f77e3e7fbb0797cbe2988095350748bcead12cd1d44e20d8e643668372c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantbec29f77e3e7fbb0797cbe2988095350748bcead12cd1d44e20d8e643668372c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [extract_of_size_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-of-size-lt.md) | 36 | `result-track:b8adc58e3dcd4f5b49310970e9cce9096405563b3700126953dd9e028ed8971c` |
| 2 | `theorem` | [size_extract_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/size-extract-le.md) | 44 | `result-track:729328c541924e910c71efc7d72a327f13d999747fd3ada1044e9d98fe2ce254` |
| 3 | `theorem` | [size_extract_le'](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/size-extract-le-source-edition-2.md) | 49 | `result-track:79e06afab5a4811e6a87e665112dc6f4b1619e51f0cd268416cc204dd9bd6307` |
| 4 | `theorem` | [size_extract_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/size-extract-of-le.md) | 54 | `result-track:3351e6d8d66c58ba8e8b592437aaadf2ac8c7fc0d47c01af7e20365fc37647bb` |
| 5 | `theorem` | [extract_push](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-push.md) | 60 | `result-track:c111c08f822f1b950d59d6c8032a66c8c5966f89463cb0ef3036de831a03b448` |
| 6 | `theorem` | [extract_push_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-push-of-le.md) | 95 | `result-track:ff6e27b9420db9ca5f4c5cbac97956d35535c125641023531d1bbe42c93227ea` |
| 7 | `theorem` | [extract_eq_pop](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-eq-pop.md) | 100 | `result-track:2f58dc6cb224dd5286c024d892626dade41aff52ff5f8197a6715cf0a0dfc305` |
| 8 | `theorem` | [extract_append_extract](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-append-extract.md) | 109 | `result-track:3a839b8b0bc34ad25d6224224ed5b33de4df672abfbf0573aece25210c0302ca` |
| 9 | `theorem` | [extract_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-eq-empty-iff.md) | 121 | `result-track:402563c361374c0058241e08779495f21ba5a70a99618528004489666b1efc1c` |
| 10 | `theorem` | [extract_eq_empty_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-eq-empty-of-le.md) | 131 | `result-track:8857b5b3ef2e3bf8f101515e42160ae494bd30eb832a410704c84be44e84c791` |
| 11 | `theorem` | [lt_of_extract_ne_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/lt-of-extract-ne-empty.md) | 135 | `result-track:fcb4662659178229483530a77197b7491ba4c93e7cdbb73f6e8ed8e7fb385039` |
| 12 | `theorem` | [extract_eq_self_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-eq-self-iff.md) | 140 | `result-track:5d11945bba35cccff5ae89b73ed77b1a0fa4ed63eb90a118ee19c13b4d00042b` |
| 13 | `theorem` | [extract_eq_self_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-eq-self-of-le.md) | 156 | `result-track:0e94b69e9c4240c4b148322dc049a364ca152ae0a45707c86bf29c14a245927f` |
| 14 | `theorem` | [le_of_extract_eq_self](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/le-of-extract-eq-self.md) | 160 | `result-track:3e46620376c237738d4b188edda9e19a19597f2e8da0c4d38297cc002b2f2648` |
| 15 | `theorem` | [extract_size_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-size-left.md) | 167 | `result-track:beb1f208395e50dc565709577c0cb4b53c8ef510f1149a600c8a0bc98b742c23` |
| 16 | `theorem` | [push_extract_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/push-extract-getelem.md) | 173 | `result-track:c3dc813bd9250a07f1787edc0dffa05b8b60f02a4ef0bcd1f4a816835e75bdf7` |
| 17 | `theorem` | [extract_succ_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-succ-right.md) | 184 | `result-track:a730cbb6f5a77d2ece938a2348a5dc64a06215e34fb1b734d2a246a3da6d2cb1` |
| 18 | `theorem` | [extract_sub_one](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-sub-one.md) | 194 | `result-track:50529b07c68a0fd8101fd038832853b773f827316a64ff4de9183a1646d18aab` |
| 19 | `theorem` | [getElem?_extract_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/getelem-extract-of-lt.md) | 203 | `result-track:e234fa3f0cee36abc22a475cb34b27b79a54cd16bddaabc9fe2b6990f75b5754` |
| 20 | `theorem` | [getElem?_extract_of_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/getelem-extract-of-succ.md) | 207 | `result-track:92795795d15ad4e711657b0e055edbc3ad0c2f544bf6c204437f264d31f9f918` |
| 21 | `theorem` | [extract_extract](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-extract.md) | 212 | `result-track:45c2a18ca90aeaaf2a94376cf8990a890ba5a888e5d7c25ed7d43169c0ecd268` |
| 22 | `theorem` | [extract_eq_empty_of_eq_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-eq-empty-of-eq-empty.md) | 223 | `result-track:7589f122b2f31f478e67abdc53cd3a09359243944d87e29d3e918174161bfaaa` |
| 23 | `theorem` | [ne_empty_of_extract_ne_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/ne-empty-of-extract-ne-empty.md) | 227 | `result-track:e71cbe6c7e4382cda8a966c2351b15d9bd63c7ef15149645afe4e273f22a3a59` |
| 24 | `theorem` | [extract_set](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-set.md) | 232 | `result-track:d1ab2e3e2eb7bc515238f91812942d5efa64602678fdc48c9e9766e0f02d87cc` |
| 25 | `theorem` | [set_extract](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/set-extract.md) | 259 | `result-track:6a084f5bd3009558f0ebb469cb52857b620a7821ef7312471a70cce4d6bba04b` |
| 26 | `theorem` | [extract_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-append.md) | 266 | `result-track:f9c0f3846b37fb56f3273fb8a95820ead44aad36c33513a01e848b106bb0af14` |
| 27 | `theorem` | [extract_append_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-append-left.md) | 282 | `result-track:a95de66022bce980e89af961d9f48e9b8682cf6e18c45cf7ea5a7025ced87c49` |
| 28 | `theorem` | [extract_append_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-append-right.md) | 286 | `result-track:295459b57212a39f61e44903aa28ec479577be23ae4496e748ebeef237973b02` |
| 29 | `theorem` | [map_extract](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/map-extract.md) | 290 | `result-track:0d7937bd3fa9d1bbc0fb6e61aedbe1822f0d2ca7b68f2c1124faeed95179f17c` |
| 30 | `theorem` | [extract_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-replicate.md) | 297 | `result-track:e6ab6484d357d9473a3173c2f1179c0c307579a994466a47f896df2f136df4a8` |
| 31 | `theorem` | [extract_eq_extract_right](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-eq-extract-right.md) | 304 | `result-track:9434a6e8f44d5c3712ecadb869871b73e1fcd73f22d708393dd839dd518860ba` |
| 32 | `theorem` | [extract_eq_extract_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-eq-extract-left.md) | 309 | `result-track:71d96cf1be5e50d91250b1cdf3c4fe3912e26ec4999354dc449c3f27d4cfd3e6` |
| 33 | `theorem` | [extract_add_left](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-add-left.md) | 323 | `result-track:468515942777e0a57e1b3a8c987fb79e75a82f551bb7c9b8d7e388169172e1c3` |
| 34 | `theorem` | [mem_extract_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/mem-extract-iff-getelem.md) | 328 | `result-track:7ce2f80c2bab482518b6bcda7890d8805dcc1d7c4579a8a8804cf80e34c643c1` |
| 35 | `theorem` | [set_eq_push_extract_append_extract](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/set-eq-push-extract-append-extract.md) | 336 | `result-track:52e5d477cd6599b51411964bb65655a9f1912a9bfbca5ee8e47ba20956757192` |
| 36 | `theorem` | [extract_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-reverse.md) | 343 | `result-track:9cf57a48b1009c5cba78bdff36574c5e535cdeb46c5832dd65e3aa4105b237d6` |
| 37 | `theorem` | [reverse_extract](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/reverse-extract.md) | 354 | `result-track:beb45458d25ea027d05ff55459a06b3b16afc2289469948baa23616148f40fb7` |
| 38 | `theorem` | [takeWhile_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/takewhile-map.md) | 369 | `result-track:04a4c1f71418a4f7992b9b951ab11e19894b310d48c968ea0e606586c04f0c5f` |
| 39 | `theorem` | [popWhile_map](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/popwhile-map.md) | 374 | `result-track:5a0a60b726bd8b91181555946b9452f2705184cbaf32964d6a18883548b28061` |
| 40 | `theorem` | [takeWhile_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/takewhile-filtermap.md) | 379 | `result-track:5916b7cbec3de1357d5b4a390901fa4758a6f92bf2cc685a549c3c10f67b08d3` |
| 41 | `theorem` | [popWhile_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/popwhile-filtermap.md) | 384 | `result-track:00dd1f9a20623d946c4b0ca0f26561c2c5db61dc17c228495217e7dd08adf930` |
| 42 | `theorem` | [takeWhile_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/takewhile-filter.md) | 389 | `result-track:5d82e5449650a7982903bd51657b456c971c6d9aac6bb91bfbfddb6d79036170` |
| 43 | `theorem` | [popWhile_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/popwhile-filter.md) | 394 | `result-track:e985aee42f4690a192dc2a2f10fb565f0592207de3f36af0aaf8d28aaf201af8` |
| 44 | `theorem` | [takeWhile_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/takewhile-append.md) | 399 | `result-track:09690795c86d6c357095b97b138b873c61238a025fcdb14eb47a2f188f2d97f7` |
| 45 | `theorem` | [takeWhile_append_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/takewhile-append-of-pos.md) | 407 | `result-track:2bc04f75a189f7d9b19b9be6f7f311679701e37c0b7760af1a1a7b8e3b9e88ee` |
| 46 | `theorem` | [popWhile_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/popwhile-append.md) | 414 | `result-track:ddef4061debf4a69a351b86aa3606f596dbcc20952434411dba67a0fc58dfb6a` |
| 47 | `theorem` | [popWhile_append_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/popwhile-append-of-pos.md) | 425 | `result-track:0bcca1f646e792df2455f099a83c5a3d1cfa9958072cde424cd3de8e7e97826e` |
| 48 | `theorem` | [takeWhile_replicate_eq_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/takewhile-replicate-eq-filter.md) | 435 | `result-track:7d6514e48fb788df14993e19f1d6bc8cbb9a09be756797c997004e74d6f6696b` |
| 49 | `theorem` | [takeWhile_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/takewhile-replicate.md) | 439 | `result-track:595d69bbd83538265f98586ba102b7948b0d8e0b12221c016c0a6c45b95947f0` |
| 50 | `theorem` | [popWhile_replicate_eq_filter_not](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/popwhile-replicate-eq-filter-not.md) | 443 | `result-track:e525bdb04a9368dc25eb5678f7a638ea2c5517c7223ebd54ebed509f19b4a8d6` |
| 51 | `theorem` | [popWhile_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/popwhile-replicate.md) | 447 | `result-track:6adb0c0bb1145928717ded39c52916913b33ca40341c241e14519cddcc33a8c0` |
| 52 | `theorem` | [extract_takeWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/extract-takewhile.md) | 453 | `result-track:62c9b02573f72800319ce4d8680195f79566a6373b143241f6c1b1ac4851dd9c` |
| 53 | `theorem` | [all_takeWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/all-takewhile.md) | 458 | `result-track:50b84d7b11423b0d689b54a18de43fc7f40b8ed6285fdd53c93ff1f9508b4ec5` |
| 54 | `theorem` | [any_popWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/any-popwhile.md) | 464 | `result-track:febcb78cfaa7d2d172430dff9b2a3aed265feae3e86b6055aebc13a21db559dc` |
| 55 | `theorem` | [takeWhile_eq_extract_findIdx_not](../../../../../ComputerScience/AlgorithmsInComputerScience/ExtractPublicSizeExtractLe.lean/declarations/takewhile-eq-extract-findidx-not.md) | 470 | `result-track:3117a015840080a1b19f7680a5b5f151434a2fd2bea07e84a759858120bdf541` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8cc07f6cf4bccf6053b58cb6f9d9dcef80b6ab30fb167b05aa57cb9413864a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantbec29f77e3e7fbb0797cbe2988095350748bcead12cd1d44e20d8e643668372c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantbec29f77e3e7fbb0797cbe2988095350748bcead12cd1d44e20d8e643668372c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Forall2 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11e3433323e2b5a73e82a81f58dab7c2edd209f4",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11e3433323e2b5a73e82a81f58dab7c2edd209f4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Forall₂.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-imp.md) | 35 | `result-track:40cc25ec8ecc58bcdf894995817f6921e9f91052ac6427a87ca7a8343c745de1` |
| 2 | `theorem` | [Forall₂.mp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-mp.md) | 38 | `result-track:03a9c94280ba9b2447ac6fa8a5e6c64ce54fec5bf1cdfab2a6f4a08270814726` |
| 3 | `theorem` | [Forall₂.flip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-flip.md) | 44 | `result-track:d567ea861085017a0fe4c119b180207cc8895c10ed73de100dfb89d5afd9bc2f` |
| 4 | `theorem` | [forall₂_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-same.md) | 49 | `result-track:8efa55bbb1d870de656a9e18fe1a722db0bb7e3d5e55b669a177a7d16675efbe` |
| 5 | `theorem` | [forall₂_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-refl.md) | 53 | `result-track:c5e705139902014853ed449b6d364fe13918d3638cc6bd09fb60b2d065d11647` |
| 6 | `theorem` | [forall₂_eq_eq_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-eq-eq-eq.md) | 57 | `result-track:484e76dc5b3013d7f397c558424e9705506d1c92a80806a5daa3ea9bf1d4b794` |
| 7 | `theorem` | [forall₂_nil_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-nil-left-iff.md) | 68 | `result-track:8c61a3c9160021f8e1174b516ac308ef857b7ffddd2b64014b2a87077964425b` |
| 8 | `theorem` | [forall₂_nil_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-nil-right-iff.md) | 72 | `result-track:1e4b17eec31d08b6ac3b2d894e49b3c89372c108e0b066c4fad49599c1db6121` |
| 9 | `theorem` | [forall₂_cons_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-cons-left-iff.md) | 75 | `result-track:0655c26a7f0fd8637295c352e5f94ca0aa361db2f38885716d115cd05a6acee7` |
| 10 | `theorem` | [forall₂_cons_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-cons-right-iff.md) | 85 | `result-track:63071b0f9c7299ad664f18919751fe2e29da40ec0b093c93f571bc1cf06d6052` |
| 11 | `theorem` | [forall₂_and_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-and-left.md) | 95 | `result-track:2d1def03c86d92e800c7b5546d86ab2c924f87d71e0ddc3bba1f4dcc5bac6102` |
| 12 | `theorem` | [forall₂_map_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-map-left-iff.md) | 105 | `result-track:d823a9fd7ede5a387b1ef38aca6932d09334f8933dfbfcf9a71b9d588c0f646f` |
| 13 | `theorem` | [forall₂_map_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-map-right-iff.md) | 111 | `result-track:d0356b7762bdf698bfca9a2463a90c5680321bf9f0833f7f21304a9c2a4d8314` |
| 14 | `theorem` | [left_unique_forall₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/left-unique-forall.md) | 116 | `result-track:90ccae960a643cd5494c1811a28048e34054a74dd61406a204e720d8149f3c48` |
| 15 | `theorem` | [Forall2 Namespaced](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-su-source-edition-3.md) | 121 | `result-track:e30e3437ade08b780ca57f04a814a1480edbc7ee4b2634dae8de492ab936dbd9` |
| 16 | `theorem` | [right_unique_forall₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/right-unique-forall.md) | 124 | `result-track:ee0878437b3b44edc96f9bb895d0cef35a78c1437162c570dbf3b7ca8fecf9ce` |
| 17 | `theorem` | [Forall2 Namespaced](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-su.md) | 130 | `result-track:45f5f684c5dc22ec2b8e2601ba914a1db370d2aa661702fa83a9e948e7979658` |
| 18 | `theorem` | [Forall2 Namespaced](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-su-source-edition-2.md) | 133 | `result-track:8e4acc3037fe7ed0c3ee1f1684d8a1eef3d39242b0840537d8b5289bf271edce` |
| 19 | `theorem` | [Forall₂.length_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-length-eq.md) | 136 | `result-track:a1cab52ae473f0b588f397364056b9b8402c63bf9997b093f2e1c9463a5809e4` |
| 20 | `theorem` | [Forall₂.get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-get.md) | 140 | `result-track:cff2441e4d199a1a26043c56ece85ce775d49862d65aba8ba5e0ff8f8bea3314` |
| 21 | `theorem` | [forall₂_of_length_eq_of_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-of-length-eq-of-get.md) | 146 | `result-track:f35e0d58643772c219faaedc354e5e658e5dc5f6bcce5bc9f931b62362d721b5` |
| 22 | `theorem` | [forall₂_iff_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-iff-get.md) | 155 | `result-track:074b65a98706801f81f8e3d0daf8f11e3c9032c63e3f4731d258d6fb2e2f2b78` |
| 23 | `theorem` | [forall₂_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-zip.md) | 159 | `result-track:443fb6001d623e6fc43c3283ac8c4f0d58a08cc9f8c3776533b93680d41caa7f` |
| 24 | `theorem` | [forall₂_iff_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-iff-zip.md) | 166 | `result-track:ef934a92fd221cee7f0a3437b615fcbaf6952792047d023f978a28fafd3a9550` |
| 25 | `theorem` | [forall₂_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-take.md) | 183 | `result-track:ca7d1e2f7ae1bfd9f0acc4eab8fed28beccc3c60323295d88c1ca21be7fa4952` |
| 26 | `theorem` | [forall₂_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-drop.md) | 188 | `result-track:91da562d3342e482e2696e33f5cdbd713f5b3f7d81c729efa34959fa7ecd4343` |
| 27 | `theorem` | [forall₂_take_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-take-append.md) | 193 | `result-track:ba457006937d7d27d5eb2b5dff9e97bbc2c6d63360f8f25827c1ea67086b8310` |
| 28 | `theorem` | [forall₂_drop_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-drop-append.md) | 199 | `result-track:7967d2f7b4aa5453868fe8fb00af7041794336e9cc3e8b26d9c4476e9b8064f5` |
| 29 | `theorem` | [rel_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-mem.md) | 205 | `result-track:259af26cfd38c5a7bf47dfc048a9c9cf40806e7106c49d6c7ba83adc6dfeb60f` |
| 30 | `theorem` | [rel_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-map.md) | 211 | `result-track:1fc700841bf6117fc38256fcf08dad8212f42161ba326b4552c568bfa241969b` |
| 31 | `theorem` | [rel_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-append.md) | 215 | `result-track:7cc13bcef534d3be9b37e66fde8290df09f913e8e7e8d4ee1a0847b207b9568a` |
| 32 | `theorem` | [rel_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-reverse.md) | 219 | `result-track:aad88f04b603eefa7aac7e7bee7014515c749230e4b4ca192f0f15e9deb15fc1` |
| 33 | `theorem` | [forall₂_reverse_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/forall-reverse-iff.md) | 226 | `result-track:fffe442758609df7c2281de0e8562320dc2f828119071637dd0696c115552b9d` |
| 34 | `theorem` | [rel_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-flatten.md) | 233 | `result-track:9661ef2e89e0243720b348089153135e979b91416f73ab102d32466426cfd70e` |
| 35 | `theorem` | [rel_flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-flatmap.md) | 239 | `result-track:519862450f8c7410e18c6724f3e0e93f2260c95b9446b41df8ac14adcb49f68e` |
| 36 | `theorem` | [rel_foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-foldl.md) | 245 | `result-track:1d05d57e304cb12321326e0d1898032ab884c59952563effa565c19be36da238` |
| 37 | `theorem` | [rel_foldr](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-foldr.md) | 249 | `result-track:666ec602632fa4104c8ca698d077949cf2314078005a3b74f3b61d19ce760b03` |
| 38 | `theorem` | [rel_filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-filter.md) | 253 | `result-track:cd5f2e545a15d04cb439d26b4a2a7f4ccd591e6266184a21f409db57c5403511` |
| 39 | `theorem` | [rel_filterMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/rel-filtermap.md) | 266 | `result-track:e027e7eb1aef0e47653d7578e5588c8f6417a8808c3ad75d522bbc42dfb74fc2` |
| 40 | `inductive` | [SublistForall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/sublistforall.md) | 277 | `declaration-track:eb2289753dfdba993c4fe40de46643a27696690cd54a6a9d00975c62768d1591` |
| 41 | `theorem` | [sublistForall₂_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/sublistforall-iff.md) | 282 | `result-track:2ed31f6bd1a1cf0c98f9879b21500666577acb3ce44ebe8626cc948fc36e29c2` |
| 42 | `instance` | [SublistForall₂.is_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/sublistforall-is-refl.md) | 306 | `declaration-track:64d5cf43a7f0bccff283bcd56775fb9dee9b2d11d81fc38ac99913631156d57c` |
| 43 | `instance` | [SublistForall₂.is_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/sublistforall-is-trans.md) | 309 | `declaration-track:5554dddadf968cc34c36e65a111738608f71123587783e4308e57cc046fa0d0d` |
| 44 | `theorem` | [Sublist.sublistForall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/sublist-sublistforall.md) | 328 | `result-track:8b7bdb2316060dd002897979a39155226f228bc15beb5c2b5d168056116f6843` |
| 45 | `theorem` | [tail_sublistForall₂_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/tail-sublistforall-self.md) | 332 | `result-track:00824d1e985403024971737212b590fa707b227468cd70e3903c8fdf71a923b8` |
| 46 | `theorem` | [sublistForall₂_map_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/sublistforall-map-left-iff.md) | 336 | `result-track:f9932faee88e200db2eed4e863a9a430334a3ab4111f414c994e809722a6dbfa` |
| 47 | `theorem` | [sublistForall₂_map_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Namespaced.lean/declarations/sublistforall-map-right-iff.md) | 341 | `result-track:496ad872e2aec5154482454a37d08cbf8fee4c9623a808c5f0e8b3352951807a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e871d03ac2d2120a87324a8d6ea34f9b103e6c4ba8936babe32effdea773bf2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant61bc6ac31f6469ac74cbfde0bc5f8ab6f12fa6d671ef4f36600598d62787e503.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

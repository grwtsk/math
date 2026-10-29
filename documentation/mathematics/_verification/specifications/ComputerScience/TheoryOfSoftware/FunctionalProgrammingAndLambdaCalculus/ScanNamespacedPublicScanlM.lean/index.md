# Verification target: Scan Namespaced Public Scanl M

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "107a0bfb7ff52c66a1c7d97175d54040c271f536",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant2ff10e48a8208180e3ab3eab81823a96f385339da07ae91c7f5bee65d87be857.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `107a0bfb7ff52c66a1c7d97175d54040c271f536`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant2ff10e48a8208180e3ab3eab81823a96f385339da07ae91c7f5bee65d87be857.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant2ff10e48a8208180e3ab3eab81823a96f385339da07ae91c7f5bee65d87be857.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Scan` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scanlM.loop_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanlm-loop-tolist.md) | 31 | `result-track:e2bcc3db8339c6f2be7e802eb803469156d94c7b9aad08ff10356fb2cbb2a7fa` |
| 2 | `theorem` | [scanlM_eq_scanlM_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanlm-eq-scanlm-tolist.md) | 47 | `result-track:ea4b443d7a6578e1479c30947c38ef4cbfbc22a12135938736dceec22abdc588` |
| 3 | `theorem` | [toList_scanlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/tolist-scanlm.md) | 53 | `result-track:8d2f2ca38de1584de6b8b124124f8876a2bfc53208cb579466ec0f9666066c82` |
| 4 | `theorem` | [scanrM.loop_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanrm-loop-tolist.md) | 57 | `result-track:955052de383b962e8531ca012af491b91742f56852f3287769605d42a07d426e` |
| 5 | `theorem` | [scanrM_eq_scanrM_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanrm-eq-scanrm-tolist.md) | 83 | `result-track:d7435e219d876859c198d1aa4e06da151a251d7a91c8d9332d306a8c3110a458` |
| 6 | `theorem` | [toList_scanrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/tolist-scanrm.md) | 89 | `result-track:da18f2db83c564ba7502cb557f87d7b3afe243e62744722569716a49f76a047b` |
| 7 | `theorem` | [scanlM_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanlm-extract.md) | 93 | `result-track:e740f543f7f5562570cccc2051890ea01bdeb328673c2315065407c2f898af3d` |
| 8 | `theorem` | [scanrM_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanrm-extract.md) | 101 | `result-track:b13395cc72fc584bac285bdfb501e72230a2ad51e6483ce3f8862a7e93e8e348` |
| 9 | `theorem` | [scanlM_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanlm-empty.md) | 110 | `result-track:4584684cfb6cfcd489fed88229cbe6d50a1452ea4d6242c47a2804409a9d02df` |
| 10 | `theorem` | [scanrM_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanrm-empty.md) | 115 | `result-track:4e5eb0a842d36aa1ffcc44c7e4a40a32fd0431791aae025dbe5e5332879c0410` |
| 11 | `theorem` | [scanlM_reverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanlm-reverse.md) | 119 | `result-track:509fdfb58a9a573aaf7222f2517d5b1822770a3c661491c0800981aec4a9aeed` |
| 12 | `theorem` | [scanlM_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanlm-pure.md) | 125 | `result-track:817bb2d82608dccefefe081497ea93380040f39779ec0e2cb51090bb6b3d216a` |
| 13 | `theorem` | [scanrM_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanrm-pure.md) | 131 | `result-track:6db5c72c73bbf61ab5f587a4e22cc123505e4c147e0f5c6bb1c7742d9d7ed9a4` |
| 14 | `theorem` | [idRun_scanlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/idrun-scanlm.md) | 137 | `result-track:5a91453de1172cd94d2af9a305490d486256b0643fa4ab68070225e5a05455d7` |
| 15 | `theorem` | [idRun_scanrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/idrun-scanrm.md) | 142 | `result-track:244fd15b22ce846c12f37a4b112667ce8473b8b4df0bb524a9c8097cf7e946a1` |
| 16 | `theorem` | [scanlM_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanlm-map.md) | 147 | `result-track:e069fc72442ffb7ce13f060869cbfdc31e9ae4bb1da8014f99458866d86b6cc4` |
| 17 | `theorem` | [scanrM_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanrm-map.md) | 152 | `result-track:c19b86dd9a52fa66e6dd90eeb7f452ce2212fe9f4381ac2c988450dd4067a1f3` |
| 18 | `theorem` | [scanl_eq_scanlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-eq-scanlm.md) | 158 | `result-track:3fefc43a02db024e0be8dd9c4c403532c7a1626e9d8f7807fc07c9fe8ee20edc` |
| 19 | `theorem` | [scanl_eq_scanl_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-eq-scanl-tolist.md) | 162 | `result-track:31567e9d74bce43431d0f7e6170976b90ebcd0c9bed1f45d47be6be46ab90141` |
| 20 | `theorem` | [toList_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/tolist-scanl.md) | 168 | `result-track:75a9b5730cb7dff9d0694801f78b406e3395dcf221012ec638e42dbc3c0d096a` |
| 21 | `theorem` | [size_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/size-scanl.md) | 173 | `result-track:6808b519240e875dedee3da1dc95c1d901d832840a67aa2ad539e604e6dff03b` |
| 22 | `theorem` | [scanl_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-empty.md) | 180 | `result-track:835d45a4629722b5fbefee013c5f934fad41a781f538c0909f17d2d6029626a4` |
| 23 | `theorem` | [scanl_singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-singleton.md) | 186 | `result-track:40acc64da71913c2f2a8d43fbee347be08c45f59846839cb7b88703ca3174af2` |
| 24 | `theorem` | [scanl_ne_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-ne-empty.md) | 192 | `result-track:72b25c6a4229d2f6ed686cae036b3856193093eb89930c02567a9f09dd93b200` |
| 25 | `theorem` | [scanl_eq_singleton_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-eq-singleton-iff.md) | 195 | `result-track:c815f0e6657cec75ddb8165f5e7e3781180458c2c72d48b63b72912c2351e59a` |
| 26 | `theorem` | [getElem_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-scanl.md) | 200 | `result-track:9fec39908393e677a8a49b1c00445b8bfe38fcb07981b0bc76c4d2c5ea6af4d9` |
| 27 | `theorem` | [getElem?_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-scanl-source-edition-2.md) | 206 | `result-track:ca5307c7474d1da0e778f38669f1caccf0190e4c911072f9a75542dd7d5c07a9` |
| 28 | `theorem` | [take_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/take-scanl.md) | 211 | `result-track:65f38f2c8caefa9ff3a374640aa6458ada72e6a54886cc0d3c6182ee05d42cd1` |
| 29 | `theorem` | [getElem?_scanl_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-scanl-zero.md) | 215 | `result-track:27ef4cccefa851356e99ffb64c1524b9eecd97503ec7fa21d49cd83d73d2ac1c` |
| 30 | `theorem` | [getElem_scanl_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-scanl-zero-source-edition-2.md) | 217 | `result-track:f9f210d04f734a1b2ca90c5f0eb9f3672cf2cdc092b4f66e375e04b601495d78` |
| 31 | `theorem` | [getElem?_succ_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-succ-scanl-source-edition-2.md) | 219 | `result-track:bdcbd3edac39d43b9aac9dacf1a68b4f5780a7c14396242970361dd9a88f288e` |
| 32 | `theorem` | [getElem_succ_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-succ-scanl.md) | 223 | `result-track:451c8336ed12c3932bd2f7849ccb3534693344936278619dc48be296dff5ab1b` |
| 33 | `theorem` | [scanl_push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-push.md) | 229 | `result-track:f19e20eb0bac597875896bbc9462d21547671d4621490d1004f11c174147d3ec` |
| 34 | `theorem` | [scanl_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-map.md) | 235 | `result-track:10239b07f20fdb889f801201c71e96000c2f90fc874cf9eb00b2d486794c94ca` |
| 35 | `theorem` | [back_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/back-scanl.md) | 240 | `result-track:8945268b6732b8c24073448c729241ea4205f8c5808b52ab5f495622cd59fd37` |
| 36 | `theorem` | [back?_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/back-scanl-source-edition-2.md) | 244 | `result-track:a314ba593113a1906cc204a74f304a264bfbab23e9ce53fb7cafe7c563150ad7` |
| 37 | `theorem` | [scanr_eq_scanrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-eq-scanrm.md) | 253 | `result-track:fa16e3b2a9887ef1eaa09ff21382df2b7a82f5413385c08525e4f6c9729c942f` |
| 38 | `theorem` | [scanr_eq_scanr_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-eq-scanr-tolist.md) | 257 | `result-track:3cdfc03598d42b3d3fad48bec54d86dc3444943efbf1eef3801bdf77c37a7dd6` |
| 39 | `theorem` | [toList_scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/tolist-scanr.md) | 263 | `result-track:dd3082a34e2e44a6d415f689bf8b742ca2b1d30455248071265ac5a8c02e2ad3` |
| 40 | `theorem` | [size_scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/size-scanr.md) | 268 | `result-track:7c5844d610618a60d41b3cf6ee06f5b641c045bb00fb6fc60cfff5fa15f54548` |
| 41 | `theorem` | [scanr_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-empty.md) | 275 | `result-track:915c3748184ea897b733b2e59304d8d3ef12ef8743cd3db1d618ce91129e1aaa` |
| 42 | `theorem` | [scanr_ne_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-ne-empty.md) | 281 | `result-track:7ed1e592f1faeafdf9ceaf67d402090a7ddc02150a6fad5117490827a558da67` |
| 43 | `theorem` | [scanr_push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-push.md) | 286 | `result-track:5e8e12b230da981bdafad955696f59c3553d79f0640cb9813611115a5c39dfa6` |
| 44 | `theorem` | [back_scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/back-scanr.md) | 292 | `result-track:a16d8d8264fb31b6070ceba961d303ccb60a6cff3add085dc50e42a2a3c809f1` |
| 45 | `theorem` | [back?_scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/back-scanr-source-edition-2.md) | 295 | `result-track:d1bfc0976024d821493b037dd90f9890b831296c1c4330223a4b54370e9b6ce6` |
| 46 | `theorem` | [getElem_scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-scanr-source-edition-2.md) | 300 | `result-track:e7858cadba7d02d0cc6c716bb30feb09adc780df7f523dec37d9dc2b23360848` |
| 47 | `theorem` | [getElem?_scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-scanr.md) | 306 | `result-track:3441e7a47e0e83ef88688f6b12fd2ad4a83f69cf956104d26379d65aed017693` |
| 48 | `theorem` | [getElem_scanr_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-scanr-zero-source-edition-2.md) | 310 | `result-track:b3bd6499eab6c9d4b06bdc5ec800c8457daff8976244879897f639e3e75b132c` |
| 49 | `theorem` | [getElem?_scanr_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/getelem-scanr-zero.md) | 314 | `result-track:5b942dc4681b6fdf426fb7ee212e6cf71757bd972111535631a8bb7e3914cc3d` |
| 50 | `theorem` | [scanr_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-map.md) | 319 | `result-track:644160c149b230bea3fb9d45c744fb06a031e6df3849800d1412f2110eb535c5` |
| 51 | `theorem` | [scanl_reverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-reverse.md) | 324 | `result-track:46138356d92fbcdb3dc96a47d934ab4c01e16005b30f730683fc61d32fe9058a` |
| 52 | `theorem` | [scanr_reverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-reverse.md) | 331 | `result-track:9f4a24f0af9acd0702da2b85c2c64587c17a08743b09b413e781fc4b3962bd14` |
| 53 | `theorem` | [scanl_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-extract.md) | 337 | `result-track:d36f69a5d8b5c1a04e3900c28ff7e17e4a01b2aeb5b4c8b07b00bc44666669b8` |
| 54 | `theorem` | [scanr_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-extract.md) | 342 | `result-track:1f8c4824cf63369638e573aa7ee780b47daec484c952665bfc3a3eefa7170cfa` |
| 55 | `theorem` | [toArray_scanlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/toarray-scanlm.md) | 351 | `result-track:94cd915e59bf8dd1064b3fd4dfb205193c06924230d3f2ce9da624f32a5a46e0` |
| 56 | `theorem` | [toArray_scanrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/toarray-scanrm.md) | 356 | `result-track:fa5035ffe7c1f9c6447d53a4713e40322a133982bb64fb5fafa21047c99f0991` |
| 57 | `theorem` | [toArray_scanl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/toarray-scanl.md) | 361 | `result-track:ff082ee6c26ec75e4475eb67f93728e0d07a83fb3fd9a6c871c9da3c7b0023ed` |
| 58 | `theorem` | [toArray_scanr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/toarray-scanr.md) | 365 | `result-track:ebdfcf7a49f898ed84169283de87603fdf678591342f3881981e00e801f3d632` |
| 59 | `theorem` | [scanlM_eq_scanlM_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanlm-eq-scanlm-extract.md) | 374 | `result-track:f66d21d73b36d9f075c5e0f4b8a89bc2e3dbd296b5eab0e7dbc81c4095f3e248` |
| 60 | `theorem` | [scanrM_eq_scanrM_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanrm-eq-scanrm-extract.md) | 379 | `result-track:83fb73ccb8185ac334e6c2fef7d71ffd87df80632e826b36eb84b70246efffa9` |
| 61 | `theorem` | [scanl_eq_scanl_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanl-eq-scanl-extract.md) | 384 | `result-track:94fb7e8a9d5e90d693e2400c8d0fdfafcede44b4b43a210ccef1f43c74fdcc5d` |
| 62 | `theorem` | [scanr_eq_scanr_extract](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/declarations/scanr-eq-scanr-extract.md) | 389 | `result-track:e2e17eec7e7a694e780f45ba108da8f27ce8641809d877ece16b4340d32ef79a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54c3b6f7306d27f35ea243156344fd2da94295053571b74336904fb7f7232cba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant2ff10e48a8208180e3ab3eab81823a96f385339da07ae91c7f5bee65d87be857.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant2ff10e48a8208180e3ab3eab81823a96f385339da07ae91c7f5bee65d87be857.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

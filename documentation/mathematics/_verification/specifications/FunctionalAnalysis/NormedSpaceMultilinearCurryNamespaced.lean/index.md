# Verification target: Normed Space Multilinear Curry Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7545ddbf7d61010ec072997ff60732e1551289f",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7545ddbf7d61010ec072997ff60732e1551289f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Curry` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.norm_map_removeNth_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-norm-map-removenth-le.md) | 67 | `result-track:88a920c93c14eacec53d78ed42e9525340b48177f2d8b6a279267c2fb578d8f9` |
| 2 | `theorem` | [ContinuousLinearMap.norm_map_tail_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-norm-map-tail-le.md) | 73 | `result-track:66fa39c3b121d6f86d212e61e9505206bb05fa5d0d7ed8ab1405909260ac60f7` |
| 3 | `theorem` | [ContinuousMultilinearMap.norm_map_init_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-norm-map-init-le.md) | 78 | `result-track:e1063e449c43f7217da992473da362535e78306d83a61500b6ee4be9911089d7` |
| 4 | `theorem` | [ContinuousMultilinearMap.norm_map_insertNth_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-norm-map-insertnth-le.md) | 84 | `result-track:98aa943c8bfcd5c28d925aa2532b60acf612307cf99d03c6b075cbcbe02ccde0` |
| 5 | `theorem` | [ContinuousMultilinearMap.norm_map_cons_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-norm-map-cons-le.md) | 89 | `result-track:b42fa84d401570f3eeea427e51b4aaa6cf7a4802ebe0920a4400b27bd2b3726b` |
| 6 | `theorem` | [ContinuousMultilinearMap.norm_map_snoc_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-norm-map-snoc-le.md) | 93 | `result-track:a8e09beb545fee4791421f715b0c171be085c64dfe81062b314c5df4a009d4dd` |
| 7 | `def` | [ContinuousLinearMap.uncurryLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-uncurryleft.md) | 104 | `declaration-track:d2e0766b6ec11efc28635d55c30e8d1afb1f4673f4d3043d0fe9218fb22caa19` |
| 8 | `theorem` | [ContinuousLinearMap.uncurryLeft_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-uncurryleft-apply.md) | 111 | `result-track:e5e20b10d2963a7cc971f1df61855e2eb2464ff275d8c0cdf7112d8c87568b7e` |
| 9 | `def` | [ContinuousMultilinearMap.curryLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curryleft.md) | 119 | `declaration-track:fc28104d2b0a0e763c922d5afb4809a5a0cad8b7daa9cf16e855a5b1e98efcd1` |
| 10 | `theorem` | [ContinuousMultilinearMap.curryLeft_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curryleft-apply.md) | 124 | `result-track:3b21aeb8ff5b90ad1c27aa8878ca4dabf147d8d15684286e2ba97910bd28f852` |
| 11 | `theorem` | [ContinuousLinearMap.curry_uncurryLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-curry-uncurryleft.md) | 129 | `result-track:9f005bfe1b678e0dbc3f4812d730c80a3e85126c8a3424760be7d9586a618891` |
| 12 | `theorem` | [ContinuousMultilinearMap.uncurry_curryLeft](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurry-curryleft.md) | 137 | `result-track:be1fc374d45b11b8b113933df57c037cad7f178203fdf25dc92f58235efb0a10` |
| 13 | `def` | [continuousMultilinearCurryLeftEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryleftequiv.md) | 151 | `declaration-track:fa3e2951cb8a0d43f12f0153c8e8857e090a379543eb7fbbdfe8f1b6e4826b94` |
| 14 | `theorem` | [continuousMultilinearCurryLeftEquiv_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryleftequiv-apply.md) | 169 | `result-track:e6f0494a6acaa9039f808f6b9fd9f42966fe4a597727923401c1dd01c02acede` |
| 15 | `theorem` | [continuousMultilinearCurryLeftEquiv_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryleftequiv-symm-apply.md) | 175 | `result-track:ff7e7c7e9af4b9c242a0a8756e3df31a20945c067b2788a94b63b8401eecbdeb` |
| 16 | `theorem` | [ContinuousMultilinearMap.curryLeft_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curryleft-norm.md) | 181 | `result-track:13a6a84a80e73f68f81c930091c95d04f44e82cf418ca0936b879c0ceb0a96f3` |
| 17 | `theorem` | [ContinuousLinearMap.uncurryLeft_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-uncurryleft-norm.md) | 186 | `result-track:c3315c1658126d8e4aa0398dcb90051518a36520f07a4359920de8ba67c5b3e4` |
| 18 | `def` | [ContinuousMultilinearMap.uncurryRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurryright.md) | 197 | `declaration-track:3327ea388d0bdc6d84f3146de9e557832001c507fa2b8a790c8ee6827aae32d4` |
| 19 | `theorem` | [ContinuousMultilinearMap.uncurryRight_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurryright-apply.md) | 205 | `result-track:5c897809fa61385be153e72c783f5a0a00944849f775f4a856a97f7a3a1e30ae` |
| 20 | `def` | [ContinuousMultilinearMap.curryRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curryright.md) | 213 | `declaration-track:ac8bfe88f0f43cfe357f924811975fd5201944769cbf5dcfe02de0028589d56a` |
| 21 | `theorem` | [ContinuousMultilinearMap.curryRight_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curryright-apply.md) | 230 | `result-track:ad914f19d727bdab0a276bf4086abda072eb4697ce4dfbd9d7917c750ff84e82` |
| 22 | `theorem` | [ContinuousMultilinearMap.curry_uncurryRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curry-uncurryright.md) | 235 | `result-track:6a8307c38ba128c8569c069ef85dd18f2a4292c3e6fd5034a93d979ed0215995` |
| 23 | `theorem` | [ContinuousMultilinearMap.uncurry_curryRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurry-curryright.md) | 243 | `result-track:88adc48762e26ab66533025b6e41e51c66c59510eb0d4c124ec122d91ea3ce16` |
| 24 | `def` | [continuousMultilinearCurryRightEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryrightequiv.md) | 260 | `declaration-track:9c6af1c1da9829109648258a3b631df9d3905efb6b6c027c07a7a2be0ef32153` |
| 25 | `def` | [continuousMultilinearCurryRightEquiv'](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryrightequiv-source-edition-2.md) | 288 | `declaration-track:eb1faf55a9524bcf3d1e1a5294e41333b50ea74d97f934ccb8adb634ffecf8de` |
| 26 | `theorem` | [continuousMultilinearCurryRightEquiv_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryrightequiv-apply.md) | 294 | `result-track:48ac48eb47f1e6dc4c94b47d0c8ae4728b9ccc591f4349d8dd41f5e04547fed0` |
| 27 | `theorem` | [continuousMultilinearCurryRightEquiv_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryrightequiv-symm-apply-source-edition-2.md) | 300 | `result-track:b5607f001699f654245e79bd7891a2ecaa2be8682c6c7ed9845a1e89000550a1` |
| 28 | `theorem` | [continuousMultilinearCurryRightEquiv_apply'](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryrightequiv-apply-source-edition-2.md) | 307 | `result-track:cfe08992a15a8b391ca1de5247445f528c10d4e5416bd912bb345086a3fb5db7` |
| 29 | `theorem` | [continuousMultilinearCurryRightEquiv_symm_apply'](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryrightequiv-symm-apply.md) | 313 | `result-track:58e887793ba3d2b3abe2e71558cd75458b1fb877ff946cc51eb9835c127a8511` |
| 30 | `theorem` | [ContinuousMultilinearMap.curryRight_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curryright-norm.md) | 319 | `result-track:5e6f189d8a77542ca1dadd2192b605ddab2bba23912d26d93d05454c3c6f7b45` |
| 31 | `theorem` | [ContinuousMultilinearMap.uncurryRight_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurryright-norm.md) | 324 | `result-track:8c32592be1c442fbc20e9231e73e6728d2bba661fffc47285c229be81280cc31` |
| 32 | `def` | [ContinuousLinearMap.uncurryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-uncurrymid.md) | 337 | `declaration-track:5406d071b126d28a1a05e900c133c5e09220ada43acc0ac983952f81fa992b0a` |
| 33 | `def` | [ContinuousMultilinearMap.curryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-currymid.md) | 346 | `declaration-track:725bf128458cf663ef35c9f5cf08a4aa4cd9d5533b9bc1988a78cc0f0bdaa28d` |
| 34 | `theorem` | [ContinuousMultilinearMap.curryMid_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-currymid-apply.md) | 351 | `result-track:1f5e3b4b68f198514e8e3088af49c3b30f4517de205c02b36b683e745033ba10` |
| 35 | `theorem` | [ContinuousLinearMap.curryMid_uncurryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-currymid-uncurrymid.md) | 357 | `result-track:0e634743aabbd94e12daf0ce378af03c1a884755077607cad9100abf7738581a` |
| 36 | `theorem` | [ContinuousMultilinearMap.uncurryMid_curryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurrymid-currymid.md) | 362 | `result-track:9bcf46b92ba36cc97649712095e296eda79d81af9a93abfac45f5a201ac2628a` |
| 37 | `def` | [ContinuousMultilinearMap.curryMidEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-currymidequiv.md) | 370 | `declaration-track:eac24d686a66063c6c7a62eb247e858509cc09f2367b1fa4cad25d2ac816ec5d` |
| 38 | `theorem` | [ContinuousMultilinearMap.norm_curryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-norm-currymid.md) | 388 | `result-track:460569d651b040232982988ba5764847f4efbf5c37a1e40c75e516da0284a4c3` |
| 39 | `theorem` | [ContinuousLinearMap.norm_uncurryMid](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuouslinearmap-norm-uncurrymid.md) | 393 | `result-track:1f6df4239ab2f7f6ce9af4ac464008d756a1bed4b33ffafbd95dd71cc1f8cd1a` |
| 40 | `def` | [ContinuousMultilinearMap.curry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curry0.md) | 411 | `declaration-track:69b51be5ca2618a1d1112aedfc1d5ffd827a956f1094f80a81e0bb3cf0c16870` |
| 41 | `def` | [ContinuousMultilinearMap.uncurry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurry0.md) | 418 | `declaration-track:0df507381271f801a899700a25a2238a834bf638faede213c5ca05a9be73d528` |
| 42 | `theorem` | [ContinuousMultilinearMap.uncurry0_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurry0-apply.md) | 423 | `result-track:c5ed2685e7d619fb9b4b68bae91c44116b107c9676a8c8b96e01be48003d628d` |
| 43 | `theorem` | [ContinuousMultilinearMap.curry0_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curry0-apply.md) | 428 | `result-track:ab074bb7c7b5cba8247e5a771ef26d3c13ae41c0377d386902260310a99d7f54` |
| 44 | `theorem` | [ContinuousMultilinearMap.apply_zero_uncurry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-apply-zero-uncurry0.md) | 432 | `result-track:5b1194996ea2a93a6b70e503b5d935f445c53f48a90e95e74122e5fe81d1ee1d` |
| 45 | `theorem` | [ContinuousMultilinearMap.uncurry0_curry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurry0-curry0.md) | 437 | `result-track:234370fc1679bc07c1e8f293db71cbfbd1110c2bdf2586cbef276f141e6517e3` |
| 46 | `theorem` | [ContinuousMultilinearMap.curry0_uncurry0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curry0-uncurry0.md) | 441 | `result-track:a0291d26f9c74772bd70a57ad93a94a9041dc0c485f652eb4818a4d59e9320c8` |
| 47 | `theorem` | [ContinuousMultilinearMap.uncurry0_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-uncurry0-norm.md) | 447 | `result-track:2fc8de89c90c3810b1177dbfe92a572f72678cf53b9f7b30ff7e3d758bf49b15` |
| 48 | `theorem` | [ContinuousMultilinearMap.fin0_apply_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-fin0-apply-norm.md) | 452 | `result-track:22db55b46b3d463a4bdf201902fe8101a67bbca0c6dfeec2a0440e6cad9526ae` |
| 49 | `theorem` | [ContinuousMultilinearMap.curry0_norm](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmap-curry0-norm.md) | 461 | `result-track:83521b07693b6f147fd8058fe91d1fbb2efcc88c3451a202c8265f719d083979` |
| 50 | `def` | [continuousMultilinearCurryFin0](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryfin0.md) | 470 | `declaration-track:847267697c41e44b1c725a0885fdcb56ea05203269137efa147c1738c36c7d00` |
| 51 | `theorem` | [continuousMultilinearCurryFin0_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryfin0-apply.md) | 482 | `result-track:6e4095832f39a3526c25d75f7d48e1af2795b67c00fe4d3226d1dd67baaeb2d8` |
| 52 | `theorem` | [continuousMultilinearCurryFin0_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryfin0-symm-apply.md) | 487 | `result-track:d52b708d2071602ddd6b1eaf4880dfba9907209194204593b3be950e3c9a5c51` |
| 53 | `def` | [continuousMultilinearCurryFin1](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryfin1.md) | 500 | `declaration-track:77f92b19c7152ed801af271b8d9c3ea0d2fe158bf979f753ce9e02ff5720b38e` |
| 54 | `theorem` | [continuousMultilinearCurryFin1_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryfin1-apply.md) | 507 | `result-track:86546fba97a3cc57c4d38abc31025096093c1ecd8bd9d34cb046f164bcb97f22` |
| 55 | `theorem` | [continuousMultilinearCurryFin1_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearcurryfin1-symm-apply.md) | 512 | `result-track:c10168937ee9533c392a5bd7385429ce64f0ce0ba7da79d2143f9dcc4bae6d3e` |
| 56 | `theorem` | [norm_domDomCongr](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/norm-domdomcongr.md) | 521 | `result-track:7f83c530de86d627cdc4f90325766257f0ae57fe8fc1f80286c8343775b5bea9` |
| 57 | `def` | [domDomCongrₗᵢ](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/domdomcongr.md) | 529 | `declaration-track:c9a8ff3bea977ec4c2544904667504d500bcf8900ee8f19e5de042b6817d7ed5` |
| 58 | `def` | [currySum](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/currysum.md) | 544 | `declaration-track:2b9989824558645fa5d6dd955ff53285d4c7894b0ae4f884f30757c21f8ce879` |
| 59 | `theorem` | [currySum_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/currysum-apply.md) | 550 | `result-track:1740dbf68c893101c7fe8c4031669bececa2de41ef84812dbc4e9bb4b49f2531` |
| 60 | `def` | [uncurrySum](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/uncurrysum.md) | 557 | `declaration-track:9bfdb4195d28d7275e20f31649237da6f20456c243588465df883cb79000f51a` |
| 61 | `theorem` | [uncurrySum_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/uncurrysum-apply.md) | 566 | `result-track:07172ce554e2c0f07a5f73d03352735c92b53e582ce4797c19652cb82801934d` |
| 62 | `def` | [currySumEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/currysumequiv.md) | 580 | `declaration-track:471d8453b53f8dbfce432605f366d93f421e4ade4de369587d8d7ef58744b698` |
| 63 | `def` | [curryFinFinset](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/curryfinfinset.md) | 611 | `declaration-track:1429368e23facfad910b70847ab5fd4f67b960f1f41cdda96af56a5187bbe792` |
| 64 | `theorem` | [curryFinFinset_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/curryfinfinset-apply.md) | 619 | `result-track:8275fb3dde65a8c32159546425bf4002966946f8830ebc8a5fde971538e6f6ce` |
| 65 | `theorem` | [curryFinFinset_symm_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/curryfinfinset-symm-apply.md) | 625 | `result-track:4ee65005a008f5dcdab5ceded877c57f96b3e41ab149950a33e7b55ddbccd748` |
| 66 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/curryfinfinset-symm-apply-piecewise-const.md) | 631 | `result-track:2939312884560187fbbfd7f345b01fe904b06e06579286583e23e0b12d44ba97` |
| 67 | `theorem` | [curryFinFinset_symm_apply_const](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/curryfinfinset-symm-apply-const.md) | 638 | `result-track:a2aec7dc41eac03010f74eb8d0907eb846db2ecb7f547583e1640771312a5655` |
| 68 | `theorem` | [curryFinFinset_apply_const](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/curryfinfinset-apply-const.md) | 643 | `result-track:084deaf6bf6c225804d3767493933084dc80390a3e17385bae4bc77ac984fa26` |
| 69 | `def` | [continuousMultilinearMapOption](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmapoption.md) | 663 | `declaration-track:1b40f2229c5959fa21bb778dd3aca251a9abc456ff8f72893cb30077607054cd` |
| 70 | `lemma` | [continuousMultilinearMapOption_apply_eq_self](../../../../FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/declarations/continuousmultilinearmapoption-apply-eq-self.md) | 703 | `result-track:e4b46e6214a1e5b1c90f6c3939cbfa83b2f0444670ce18b01aa76ef8b7361707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0892ea6d2768e82860a8aa0968fdeed90150417b62d761b31c43257b8b6be78b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

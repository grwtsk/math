# Verification target: Product Measure Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6807386801297f718eb3a42dc57a41ab26179413",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6807386801297f718eb3a42dc57a41ab26179413`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean.json)

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
| 1 | `lemma` | [isProjectiveMeasureFamily_pi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/isprojectivemeasurefamily-pi.md) | 65 | `result-track:99e3f9b0e19e9d59ea7cd5b942ac4e033459ff823284e0bc2e5259990ff0e6a6` |
| 2 | `def` | [piContent](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/picontent.md) | 78 | `declaration-track:04bbe76c4eb9f93c1d4643405c6b6877e8c8fa6ec12ad48bdcea3fe5d57d4df2` |
| 3 | `lemma` | [piContent_cylinder](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/picontent-cylinder.md) | 81 | `result-track:f3abf5505d876c5d1a7d68a7ca78a8da10642f6e12b3eab0d4f31e39db8ec6f1` |
| 4 | `theorem` | [piContent_eq_measure_pi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/picontent-eq-measure-pi.md) | 85 | `result-track:d2ed2da9748da9669048f1e8d67b958b747800a859b7259e3d73a6be12d6c040` |
| 5 | `def` | [infinitePiNat](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepinat.md) | 113 | `declaration-track:c72cd5d65a8b0d73e3ba5b9065d38ccc14863869b1a6114ef5f76b06b02ec848` |
| 6 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/instance.md) | 116 | `declaration-track:2a90ab1e9b9448b5a8e3d12f495b9e8477ae850dfd548c51e146a15f51e3fdce` |
| 7 | `lemma` | [pi_prod_map_IocProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/pi-prod-map-iocprodioc.md) | 122 | `result-track:496a7d3c705d3c736507bb7a4367111e5dd08de4be902afc44cd3c9cb310fb30` |
| 8 | `lemma` | [pi_prod_map_IicProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/pi-prod-map-iicprodioc.md) | 138 | `result-track:188ab82beb93bd638b6d74ffc026ad89049a2b3f8f127b4ec692fe9dbc82cc84` |
| 9 | `lemma` | [map_piSingleton](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/map-pisingleton.md) | 157 | `result-track:13fe4bc66e917030e64438fb412b5c58681719c3fa9afc4b163ef4b9b48addd8` |
| 10 | `theorem` | [partialTraj_const_restrict₂](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/partialtraj-const-restrict.md) | 173 | `result-track:7dbc1dc7e63ce802cfe25bc19b74d349ee2fa23c76c839bc0231b916a6db3f0c` |
| 11 | `theorem` | [partialTraj_const](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/partialtraj-const.md) | 202 | `result-track:4d6a4f041c82bde1f715029480ea71e649d99dea7ec3014f541e35187fbaca04` |
| 12 | `theorem` | [isProjectiveLimit_infinitePiNat](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/isprojectivelimit-infinitepinat.md) | 209 | `result-track:52ca4821327074a3b2ac9c3637cea1dc1bd2850fce5fae68485de670b61bd1be` |
| 13 | `lemma` | [infinitePiNat_map_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepinat-map-restrict.md) | 220 | `result-track:136310fccd9c1d1f94fea7a3c19fbfc1358bdce371d13b6bbf9050556a2d8a4b` |
| 14 | `theorem` | [piContent_eq_infinitePiNat](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/picontent-eq-infinitepinat.md) | 224 | `result-track:c026460267342dede2a115086f3442252da096831012de8ab2b1ab695eb1568d` |
| 15 | `lemma` | [Measure.infinitePiNat_map_piCongrLeft](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/measure-infinitepinat-map-picongrleft.md) | 247 | `result-track:5187e82b20b484ff9eb841b2d795e9c8bf4a9f4d4ab03bfae8163fe99302290a` |
| 16 | `theorem` | [piContent_tendsto_zero](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/picontent-tendsto-zero.md) | 264 | `result-track:6bf66a9059968949e721f1ba08df86cbc26e7dace0502dcb9e2a6f0ad4122a86` |
| 17 | `theorem` | [isSigmaSubadditive_piContent](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/issigmasubadditive-picontent.md) | 339 | `result-track:26cce06bcc1bbd48c4fb305bde8b132f08e7b6a93b43c06ab42039ece8173653` |
| 18 | `def` | [infinitePi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi.md) | 355 | `declaration-track:fa234070e03f6178e84a7e5ea4a065936fd288b72d858932a121bd9cfe8c8de4` |
| 19 | `theorem` | [isProjectiveLimit_infinitePi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/isprojectivelimit-infinitepi.md) | 363 | `result-track:3dafbefe259ebab5565efe058a91fde502149b323a82361f5044aad2bd5694d9` |
| 20 | `theorem` | [infinitePi_map_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-restrict.md) | 374 | `result-track:a834fcfb18ea88d24133223e3c0aab75936029b394e84b8a18028bb3254f0686` |
| 21 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/instance-source-edition-2.md) | 378 | `declaration-track:814a25e55c1abcf220a7e1182cf242721186993f83604a470e7d30a860f98056` |
| 22 | `theorem` | [eq_infinitePi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/eq-infinitepi.md) | 385 | `result-track:2ff1326f71efdfcc25c4a36c97d1b70f5ec620ef769ffe6ddad3ca6994be1e9d` |
| 23 | `lemma` | [infinitePi_pi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-pi.md) | 402 | `result-track:c799b63f4c246a9e6cf81595955b1e68c2134fefdf880bb165410257a3b15362` |
| 24 | `theorem` | [infinitePi_map_restrict'](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-restrict-source-edition-2.md) | 413 | `result-track:e2eed8e1362898b6f5042e491258207c8dced9d4cdfba4ccb053df279d722f84` |
| 25 | `lemma` | [infinitePi_pi_of_countable](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-pi-of-countable.md) | 422 | `result-track:d2a64b14f163cd2f253c5eb8c7856236f58ee6bb2142cd453e802188965010d6` |
| 26 | `lemma` | [infinitePi_pi_univ](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-pi-univ.md) | 449 | `result-track:905e323c1ce5b3ff12e306ecc916cf3036bb558d2abbde17227c51f17e5889f6` |
| 27 | `lemma` | [infinitePi_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-singleton.md) | 457 | `result-track:1979e4f9078a23ec4cccb5a44e213197cb6a8bb4a738bd8e27d0ba9d0a68c8da` |
| 28 | `lemma` | [infinitePi_singleton_of_fintype](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-singleton-of-fintype.md) | 461 | `result-track:6a4183400909c8d98d4af8e072b9a1025da3bc0134b5c3a6844f7264c7b0baa4` |
| 29 | `lemma` | [infinitePi_dirac](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-dirac.md) | 464 | `result-track:e7ce8d86f2096c66997babcbab00a5091d65565c0be9987103bc218a757a9224` |
| 30 | `lemma` | [_root_.measurePreserving_eval_infinitePi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/root-measurepreserving-eval-infinitepi.md) | 467 | `result-track:d68c013da322601a881b3f291c2805de6052d9decbbe39641e685ae2ab9d4ee4` |
| 31 | `lemma` | [infinitePi_map_eval](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-eval.md) | 478 | `result-track:ee6509408059b81351e13beeb02f5acf62b91f5caca409f77bd41d00e43ef2aa` |
| 32 | `lemma` | [infinitePi_map_pi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-pi.md) | 482 | `result-track:5290b442935ee7d530fd292d1ad200f7f10bfcfa0298c8729bfa5d1f7583ef5a` |
| 33 | `theorem` | [infinitePi_map_piCongrLeft](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-picongrleft.md) | 495 | `result-track:810937efa48346d33cbbebd1f14d2c163692a9a6ee5550dc06a57c568f9cd182` |
| 34 | `theorem` | [infinitePi_eq_pi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-eq-pi.md) | 507 | `result-track:cebe12c77e0e70e25ad4c770be57361fd86c092c6f87b8d9886761c8935b6b1e` |
| 35 | `lemma` | [infinitePi_cylinder](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-cylinder.md) | 512 | `result-track:a7b062efeeee5790cbb89cc7c5add3aeabc7dd0dc28f6be8ebd0a862eb4d40c4` |
| 36 | `lemma` | [infinitePi_map_piCurry_symm](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-picurry-symm.md) | 522 | `result-track:2de770566e7746c9940b7f2d89db548d4c7989cef03878f632a0322d5f8a2e2d` |
| 37 | `lemma` | [infinitePi_map_piCurry](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-picurry.md) | 535 | `result-track:73e225434ae199308c49a9e513f7ac0bc4934c4bed43a1fa616545798aee2122` |
| 38 | `lemma` | [infinitePi_map_curry_symm](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-curry-symm.md) | 543 | `result-track:01f5c8bb5493ccdc74e84bc3c179edf21daf0ea661995c84c67c9208b83466fb` |
| 39 | `lemma` | [infinitePi_map_curry](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/infinitepi-map-curry.md) | 555 | `result-track:fa8f85c8705d3bfcae7f31bfa5cd827eeb59f6acaa8019fbe83d2feabbd2a1d5` |
| 40 | `theorem` | [integral_restrict_infinitePi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/integral-restrict-infinitepi.md) | 566 | `result-track:19080abcc562bbf5a2c6db237da532eddcee3fd65634a55c2c576003c5e66d1d` |
| 41 | `theorem` | [lintegral_restrict_infinitePi](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/lintegral-restrict-infinitepi.md) | 574 | `result-track:f332c2ade9bc7000720d3af0619d99e02a9a2058d76225140fb3ae039c1e3ed7` |
| 42 | `theorem` | [integral_infinitePi_of_piFinset](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/integral-infinitepi-of-pifinset.md) | 581 | `result-track:4194086fa7b5cbe32dbd8bfcb4889264038dc39290c953824746e901333fcff2` |
| 43 | `theorem` | [lintegral_infinitePi_of_piFinset](../../../../ProbabilityTheoryAndStochasticProcesses/ProductMeasurePublic.lean/declarations/lintegral-infinitepi-of-pifinset.md) | 593 | `result-track:bc19bd07e2a38134d0ea4b9a87d06b5d3293e5cf94e6acc56b1105aaf3ed2c04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fccc8b3937ed3252d38304ff7c72188920d54689b20437d73b205a64c1d464aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

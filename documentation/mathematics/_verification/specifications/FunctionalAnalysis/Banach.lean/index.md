# Verification target: Banach

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e95553dc8bb4a821bea29b8e20eb347fc66a63ee",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/Banach.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Banach.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e95553dc8bb4a821bea29b8e20eb347fc66a63ee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Baire` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.AffineIsometry` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonlinearRightInverse](../../../../FunctionalAnalysis/Banach.lean/declarations/nonlinearrightinverse.md) | 33 | `declaration-track:4af728b01da7cea4f6ea4b4472d9e0329d074713dca0900c80353f3712a299f2` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/Banach.lean/declarations/instance-source-edition-2.md) | 40 | `declaration-track:f133c41330abe765e5ab677c26146b654d4efe732503563c5b17e35a2dba7e2a` |
| 3 | `theorem` | [NonlinearRightInverse.right_inv](../../../../FunctionalAnalysis/Banach.lean/declarations/nonlinearrightinverse-right-inv.md) | 44 | `result-track:6d12861e6e0eeb27b1ac2290f46c3c89636391a421d32b9c0e6a0d36564de574` |
| 4 | `theorem` | [NonlinearRightInverse.bound](../../../../FunctionalAnalysis/Banach.lean/declarations/nonlinearrightinverse-bound.md) | 49 | `result-track:88bd1ff18614650c9af26e9f82e3180c1a7b91ba507421db3f20350d0a7f0e7c` |
| 5 | `def` | [ContinuousLinearEquiv.toNonlinearRightInverse](../../../../FunctionalAnalysis/Banach.lean/declarations/continuouslinearequiv-tononlinearrightinverse.md) | 58 | `declaration-track:0a952ea10d73fe9a4cbe5fba57b871f83f623df02a575ac032b77c5caf9329a5` |
| 6 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/Banach.lean/declarations/instance.md) | 66 | `declaration-track:1d7f047fdce6bbb100a972fe0182901fcda4da1b64155c693842d18d821fd7c9` |
| 7 | `theorem` | [exists_approx_preimage_norm_le](../../../../FunctionalAnalysis/Banach.lean/declarations/exists-approx-preimage-norm-le.md) | 83 | `result-track:9198dc253eb4d976ec26fe3ffa0a13adf9177558c6c2d9ef3f7ef9b0d7002453` |
| 8 | `theorem` | [exists_preimage_norm_le](../../../../FunctionalAnalysis/Banach.lean/declarations/exists-preimage-norm-le.md) | 169 | `result-track:2dc81be0a017c1cc364220e8a9638cd998c24160fd5fff1f0369687e372026a1` |
| 9 | `theorem` | [isOpenMap](../../../../FunctionalAnalysis/Banach.lean/declarations/isopenmap.md) | 238 | `result-track:1aecca7a62f230039c33959b4158a6f20ec9704407a97564a036f399781ad156` |
| 10 | `theorem` | [quotientMap](../../../../FunctionalAnalysis/Banach.lean/declarations/quotientmap.md) | 262 | `result-track:0cf9b18462ce33fff3bfdbcf6ed1bb07ac47629b620b506b424abcccdcb0b93d` |
| 11 | `theorem` | [_root_.AffineMap.isOpenMap](../../../../FunctionalAnalysis/Banach.lean/declarations/root-affinemap-isopenmap.md) | 266 | `result-track:a53ba1a95963f70e1248783e41387070bfa4dcf29ac3f5d98651ef031cd1758c` |
| 12 | `theorem` | [interior_preimage](../../../../FunctionalAnalysis/Banach.lean/declarations/interior-preimage.md) | 277 | `result-track:bcabd5fba76c6becbc7e4bdbd3b76eb20754f7b846919b80dd3562010afe707d` |
| 13 | `theorem` | [closure_preimage](../../../../FunctionalAnalysis/Banach.lean/declarations/closure-preimage.md) | 282 | `result-track:0cc9e80cbff32e3f772e49c31ed2fd8f7d003a8802c93e7889d12e946c38c3e7` |
| 14 | `theorem` | [frontier_preimage](../../../../FunctionalAnalysis/Banach.lean/declarations/frontier-preimage.md) | 286 | `result-track:44a27400f93fd255605045654d1c8c28a87e66fcf2ebf75df60862604c75ec68` |
| 15 | `theorem` | [exists_nonlinearRightInverse_of_surjective](../../../../FunctionalAnalysis/Banach.lean/declarations/exists-nonlinearrightinverse-of-surjective.md) | 291 | `result-track:2067614a0a5305dd3685f5433b6f6ee1a8130442999a70b4540b1849246ece79` |
| 16 | `theorem` | [nonlinearRightInverseOfSurjective_nnnorm_pos](../../../../FunctionalAnalysis/Banach.lean/declarations/nonlinearrightinverseofsurjective-nnnorm-pos.md) | 311 | `result-track:0799b1ac58524011c79c2b71e2c721b2dac94244a7903a2d43ea77199765c154` |
| 17 | `theorem` | [continuous_symm](../../../../FunctionalAnalysis/Banach.lean/declarations/continuous-symm.md) | 325 | `result-track:c17990b84d8bcd529e3e0814d45302dda93c23e72598c635a20bd8daa51dbd52` |
| 18 | `def` | [toContinuousLinearEquivOfContinuous](../../../../FunctionalAnalysis/Banach.lean/declarations/tocontinuouslinearequivofcontinuous.md) | 336 | `declaration-track:708b7da2db257e3a1029f4b677229ae21b1e9c5ea753ba51d60f4b201c6cc618` |
| 19 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous](../../../../FunctionalAnalysis/Banach.lean/declarations/coefn-tocontinuouslinearequivofcontinuous.md) | 343 | `result-track:fee2f08e954551656ca5bc698b5fe5fd9d40725e5bb847fd3d3d0251b5e2bea2` |
| 20 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous_symm](../../../../FunctionalAnalysis/Banach.lean/declarations/coefn-tocontinuouslinearequivofcontinuous-symm.md) | 349 | `result-track:5af746e4310ba5985a59522ec89a3c271e67d4810e8cbd726d060a9c5ed99d21` |
| 21 | `def` | [ofBijective](../../../../FunctionalAnalysis/Banach.lean/declarations/ofbijective.md) | 362 | `declaration-track:8e10a859784d14c8ef73de3f1269d697b0cba1b8a0fa67da536b791fd750e4cb` |
| 22 | `theorem` | [coeFn_ofBijective](../../../../FunctionalAnalysis/Banach.lean/declarations/coefn-ofbijective.md) | 372 | `result-track:0177b540dc42c4d0be4f7a8a80963960f2706480e8dcb93f0899240cd75da6c1` |
| 23 | `theorem` | [coe_ofBijective](../../../../FunctionalAnalysis/Banach.lean/declarations/coe-ofbijective.md) | 377 | `result-track:724f5b9b0049932b73c9457f60ead79558207870a6dcb6a910bdfa8931635919` |
| 24 | `theorem` | [ofBijective_symm_apply_apply](../../../../FunctionalAnalysis/Banach.lean/declarations/ofbijective-symm-apply-apply.md) | 384 | `result-track:7e7f792dce52513cb0471167c004d22ae7a9f31b4d35be36ae32c2d2810332b9` |
| 25 | `theorem` | [ofBijective_apply_symm_apply](../../../../FunctionalAnalysis/Banach.lean/declarations/ofbijective-apply-symm-apply.md) | 390 | `result-track:f8ccd13ac609cd63084d1deb4b981b6fa90e5d7a7f1c95b87195cb19c2f052e3` |
| 26 | `def` | [coprodSubtypeLEquivOfIsCompl](../../../../FunctionalAnalysis/Banach.lean/declarations/coprodsubtypelequivofiscompl.md) | 405 | `declaration-track:bd9a08070fd6e79ea2871a7d9b7bb0565a65b67d8c355e85a896b6d637307e3d` |
| 27 | `theorem` | [range_eq_map_coprodSubtypeLEquivOfIsCompl](../../../../FunctionalAnalysis/Banach.lean/declarations/range-eq-map-coprodsubtypelequivofiscompl.md) | 418 | `result-track:001c78177238bc6ccf7cce81473666623f28812d6420a08e0942ae66f1aceba7` |
| 28 | `theorem` | [closed_complemented_range_of_isCompl_of_ker_eq_bot](../../../../FunctionalAnalysis/Banach.lean/declarations/closed-complemented-range-of-iscompl-of-ker-eq-bot.md) | 431 | `result-track:e4d644def444f487a23cf1caaed82917d2cb182653768e1dc0924b603455c842` |
| 29 | `theorem` | [LinearMap.continuous_of_isClosed_graph](../../../../FunctionalAnalysis/Banach.lean/declarations/linearmap-continuous-of-isclosed-graph.md) | 450 | `result-track:3d8540a5bf77a2d75c0e0a85f08e3e0b5b69f69c20db15dd5b8f44aa26ba5c55` |
| 30 | `theorem` | [LinearMap.continuous_of_seq_closed_graph](../../../../FunctionalAnalysis/Banach.lean/declarations/linearmap-continuous-of-seq-closed-graph.md) | 465 | `result-track:abc2ccb4fca78fd0b6f3face0180e488a79824b38be519d789be86636d73b8f0` |
| 31 | `def` | [ofIsClosedGraph](../../../../FunctionalAnalysis/Banach.lean/declarations/ofisclosedgraph.md) | 483 | `declaration-track:a65da0025d6ba7a1e86af8a1676fa563b065b9f51f4bbe509bf2397c4a977a29` |
| 32 | `theorem` | [coeFn_ofIsClosedGraph](../../../../FunctionalAnalysis/Banach.lean/declarations/coefn-ofisclosedgraph.md) | 489 | `result-track:5cf8db78eeed8e6084239341b1f11e63878947fa2a694a27a8e783bd35f5b7d3` |
| 33 | `theorem` | [coe_ofIsClosedGraph](../../../../FunctionalAnalysis/Banach.lean/declarations/coe-ofisclosedgraph.md) | 494 | `result-track:0b7aadd85f347aa8b04507e299984c3b245cfcc6e319f3661c9c43580e2e483b` |
| 34 | `def` | [ofSeqClosedGraph](../../../../FunctionalAnalysis/Banach.lean/declarations/ofseqclosedgraph.md) | 502 | `declaration-track:926bdb940e02b1bcfb2a26334577ed672bb7ef019aaa8631171dbf0c47ba2665` |
| 35 | `theorem` | [coeFn_ofSeqClosedGraph](../../../../FunctionalAnalysis/Banach.lean/declarations/coefn-ofseqclosedgraph.md) | 510 | `result-track:1acd2ef0eb8c76f5671a7b253b8d7f1531a5e59c432372821aa35d83bab29480` |
| 36 | `theorem` | [coe_ofSeqClosedGraph](../../../../FunctionalAnalysis/Banach.lean/declarations/coe-ofseqclosedgraph.md) | 516 | `result-track:b4fc63b6b2161474af270a56ca8632b8b279fbf3dedcb196ad3e11d26c81f66c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62e01bd2cac01dc95f07fcd63af7f10e8e66e9a5de6823c57d8bf1715cce7282 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Banach/Variantba55a5442128012f378d8a55626d8f90fd36f9f498147a2e3b9d52d6249ee7a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

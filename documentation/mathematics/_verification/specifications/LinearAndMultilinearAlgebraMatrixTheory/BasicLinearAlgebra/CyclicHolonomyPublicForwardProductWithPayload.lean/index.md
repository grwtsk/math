# Verification target: Cyclic Holonomy Public Forward Product With Payload

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0ef87f8ce62f0adb1e6b97d3ee99a1ef632c3d2`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleLength](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/cyclelength.md) | 48 | `declaration-track:1e324a33ef23d87d746c01fd69c0fca84bf7fc9e3d056868e1f2964ee200bf88` |
| 2 | `theorem` | [cycleLength_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/cyclelength-pos.md) | 54 | `result-track:634a995e61d901090e3fb8e3c55b703f34aa50f6269949e58024d5bf7e1a2f97` |
| 3 | `theorem` | [card_coverPhase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/card-coverphase.md) | 59 | `result-track:0675065119480edc2ef242833333f9066b3ae91b91622a16a66ebfb72f9e10e7` |
| 4 | `def` | [advance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance.md) | 67 | `declaration-track:ed3466ffd6c973a37003cf4671296c38e4cf191bd84e67a754f37ffe34f6c977` |
| 5 | `theorem` | [successor_iterate_eq_advance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/successor-iterate-eq-advance.md) | 72 | `result-track:b6747488bf6587ca29c43aa3eaeec79d946f09ba247d65ad29e2dd0a16f64dee` |
| 6 | `theorem` | [advance_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance-zero.md) | 82 | `result-track:cbeb2780c77cb2699ad65b20463535290bf1e7388f7da558712af5e3b9ae7f3a` |
| 7 | `theorem` | [advance_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance-one.md) | 87 | `result-track:3ec573f35bd73716119b7a764d4f0b89947580c0e8870aaf659971fe04c15c4d` |
| 8 | `theorem` | [advance_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance-succ.md) | 92 | `result-track:c045db00fc01400490a624493cc6d350e8438fb9337214566ebc32c5ac5da4a5` |
| 9 | `theorem` | [advance_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance-successor.md) | 98 | `result-track:4a2f9ed8f2a88775820d448cf82705caee627a14b0fbb40f32a4cfb04bb9227a` |
| 10 | `theorem` | [advance_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance-add.md) | 105 | `result-track:801ca53e65037131ce69d4132b330f3ce6a4af62d196065fd73d01dc5cb0f6d9` |
| 11 | `theorem` | [advance_cycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance-cycle.md) | 112 | `result-track:bd35bd78dda652867ae9745ddba2624ddd38aeddf7895eb709d6a4028e52977e` |
| 12 | `theorem` | [advance_mod_cycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance-mod-cycle.md) | 121 | `result-track:6293ef3435f17ee11c652182b84d41f79340ded73eadc68b5bdf2e0b6ba1f53c` |
| 13 | `theorem` | [advance_half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/advance-half.md) | 128 | `result-track:376d30752bb84e48f7b39fa318f730e9a7ba934fea338deed93724aeed9b4816` |
| 14 | `theorem` | [forwardProduct_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproduct-add.md) | 143 | `result-track:41e6a1b4627b0b5bd3df044a738bc878d01dd8af525d610d71d6bcf32f7e8d33` |
| 15 | `theorem` | [forwardProduct_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproduct-one.md) | 157 | `result-track:317e42bce3c734f2791d205531f2b980418028ef34a3682c266d652faad29907` |
| 16 | `def` | [monodromy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromy.md) | 165 | `declaration-track:3810ec9cd720381717fb6009b4087f8a53fad57c762a9646251eba59ed4e4682` |
| 17 | `theorem` | [forwardProduct_cycle_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproduct-cycle-add.md) | 175 | `result-track:6718e614dee8619cc52168b53580de2af0cdd3f6fa817333ce7590a6aafb162f` |
| 18 | `def` | [holonomyGroupAt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/holonomygroupat.md) | 184 | `declaration-track:7c68a5a342d206948ba66c2f26bf25cc533913744621aa460e71b5706f6ac224` |
| 19 | `theorem` | [mem_holonomyGroupAt_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/mem-holonomygroupat-iff.md) | 194 | `result-track:422dafc177696cc603f2f7be061f1361e7312b4cd8dc44c09ab505ee556a998e` |
| 20 | `def` | [StepsInSubgroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/stepsinsubgroup.md) | 204 | `declaration-track:70c0c7e279f45566f66c835f2a554754ce4c39f5ffd3aa0be385fc3064765a85` |
| 21 | `theorem` | [forwardProduct_mem_subgroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproduct-mem-subgroup.md) | 210 | `result-track:4f978a42ccc5e3f268185d23a364aae82a7eff9447aea190a6784c9779563d61` |
| 22 | `theorem` | [monodromy_mem_subgroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromy-mem-subgroup.md) | 223 | `result-track:10b4a12da79e88effad1db8af3b21e19bffedf609f924b1282993aba9eb871e6` |
| 23 | `theorem` | [transport_intertwines_monodromy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/transport-intertwines-monodromy.md) | 231 | `result-track:f73c5c367aecaab76e3cd161c3ea479ab920eb67ed7cb2144ed39bbcfb9beb69` |
| 24 | `theorem` | [monodromy_advance_eq_conjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromy-advance-eq-conjugate.md) | 257 | `result-track:2934a7c4205e81842e2a92ccd337fab30574886c88799030b636cb0fe39f49e6` |
| 25 | `theorem` | [monodromy_successor_eq_conjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromy-successor-eq-conjugate.md) | 271 | `result-track:e9ad828539c91d4de07cbc80c0ff03019bac06e4ec43cd5e6691223f6279aec7` |
| 26 | `theorem` | [monodromy_successor_mem_of_mem_normalizer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromy-successor-mem-of-mem-normalizer.md) | 286 | `result-track:6d8e6a3876295524e23e00e2580716c8a1cc9fa1f419836a3e167dbdd0e115c5` |
| 27 | `theorem` | [monodromy_successor_mem_of_normal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromy-successor-mem-of-normal.md) | 305 | `result-track:250b3b1973d0a0d3b970df88a0f310290f1862fae40607ebdd611edce3addaec` |
| 28 | `def` | [ClosesAfterCircuit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/closesaftercircuit.md) | 315 | `declaration-track:52fafc5b5c205bde7b7087976e0fb1cad8c0ef2e7a825f35d932a10a4d496a6e` |
| 29 | `theorem` | [closesAfterCircuit_iff_monodromy_fixed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/closesaftercircuit-iff-monodromy-fixed.md) | 320 | `result-track:fc7012be06f91d10505b6ee4b184ce78f66f7c3244eb227a9ea28c42f771789b` |
| 30 | `def` | [IsParallelSection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/isparallelsection.md) | 329 | `declaration-track:4e37a09d5486d64c62f66b64f64a3cb5a9d06da3aade19f5e97779b3f5998910` |
| 31 | `theorem` | [forwardProduct_apply_of_isParallelSection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproduct-apply-of-isparallelsection.md) | 334 | `result-track:0c904e96a82e4ef8ee778f3c02fe29d441f4cf8241bec6bf8962ac18cb557467` |
| 32 | `theorem` | [isParallelSection_closesAfterCircuit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/isparallelsection-closesaftercircuit.md) | 346 | `result-track:31edf1ca767aa435cc527235fd0af2bd040e5bfe206d33f656b99577f0f883bb` |
| 33 | `def` | [halfTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/halftransport.md) | 355 | `declaration-track:67380a02d664a24a8a43c4d844d59df563f6b8ed20122c76d7cf9466781fc26d` |
| 34 | `theorem` | [monodromy_eq_halfTransport_trans_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromy-eq-halftransport-trans-self.md) | 372 | `result-track:42c9f04b00c0780e830fcdcc34bea625363ab1a15cf07e385397f7e471e969fa` |
| 35 | `structure` | [PathDecomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/pathdecomposition.md) | 387 | `declaration-track:2365d0efcade199dd3fbc0736035142233dded9ab608078e47d34e7c53c0db41` |
| 36 | `def` | [decomposeSteps](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/decomposesteps.md) | 394 | `declaration-track:8a503e05bb7dee50486a02a3dc04ab211a9879be0cc90fa57c8f563b59e12030` |
| 37 | `theorem` | [decomposeSteps_recompose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/decomposesteps-recompose.md) | 401 | `result-track:465492f1d581ee5b266eea27afae195f489dd1fbc555479495ac99fc27e9341e` |
| 38 | `theorem` | [forwardProduct_laps_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproduct-laps-add.md) | 415 | `result-track:ed62f5690bf8079e4e04c9ad42e1b354d39906a02210e00c7121ae46109c5c25` |
| 39 | `theorem` | [forwardProduct_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproduct-decomposition.md) | 442 | `result-track:b25653d19f4f47d40245685ca1ee028185572b7186639632207cdefd0338c5cc` |
| 40 | `abbrev` | [OneLapIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapindex.md) | 458 | `declaration-track:9ea9ea8f24ec4553c531f05de92b527474420127af72667463979a3e5ac92a84` |
| 41 | `def` | [oneLapStart](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapstart.md) | 463 | `declaration-track:e861ed2c371e5d6d4e93f5344e6a63fdcef4ed2c37968cbb92fdead0f5f4ce90` |
| 42 | `def` | [oneLapEnd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapend.md) | 468 | `declaration-track:2f44116c4a5f8e6cadf885331d44549a3d0fa0226d32e479f36c16c61bc98f6c` |
| 43 | `def` | [oneLapPhase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapphase.md) | 473 | `declaration-track:248a08a44552b6c6ccae580afef511f791f0e8c6052e2bbab2c2f225a0556777` |
| 44 | `def` | [oneLapProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapproduct.md) | 478 | `declaration-track:d3e144e55678c3c86784ba05817c8970e4b1636f89e562dfa68fc66a7b8a654d` |
| 45 | `theorem` | [oneLapPhase_start](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapphase-start.md) | 483 | `result-track:cb4b2eb8459db334c802b89613fc2301ec437321319c7ff6f64a5be919a07493` |
| 46 | `theorem` | [oneLapPhase_end](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapphase-end.md) | 488 | `result-track:6df30e1aebd5da90482ac71d2946f6008364575c36f58a3d29c6e5ca9cb603f6` |
| 47 | `theorem` | [oneLapProduct_start](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapproduct-start.md) | 493 | `result-track:4084b248cd3a0fc75f54a2234dc20d08400e775ff4e35d71f070a997272cdf0d` |
| 48 | `theorem` | [oneLapProduct_end](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/onelapproduct-end.md) | 498 | `result-track:c19ea84fb158fe7171e0eb21aa2b99a46c2bc9dca69341297752222f427289d3` |
| 49 | `def` | [forwardProductWithPayload](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproductwithpayload.md) | 512 | `declaration-track:5f912ff4b8c7f6464edf41f0793f2b405e0bfc561ec4829db90c1765052f3fae` |
| 50 | `theorem` | [forwardProduct_preserves_payload](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/forwardproduct-preserves-payload.md) | 517 | `result-track:3cb45799b2de82cc02f3d12bbfec6fbaf9755a63bd90936b0254aeedc18f576b` |
| 51 | `def` | [monodromyWithPayload](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromywithpayload.md) | 525 | `declaration-track:41f69465bd02a1b93dc6323d4179fb999554a0c56a928560e8ce8404dce90a38` |
| 52 | `theorem` | [monodromy_preserves_payload](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicHolonomyPublicForwardProductWithPayload.lean/declarations/monodromy-preserves-payload.md) | 530 | `result-track:2e72abfe07e9eb31a5a7ab0b68f8fc956393ebb5bf3aab4aa9ea3afbcda2d8b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1488acc0da1920dcfba5359118e7f32f3b481ddb1b7f7cbac95ee2e715b58f3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CyclicHolonomy/Variantab5651697b508bcbee56bfb913a170fd5e11756171c195b697fc555346a5738f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

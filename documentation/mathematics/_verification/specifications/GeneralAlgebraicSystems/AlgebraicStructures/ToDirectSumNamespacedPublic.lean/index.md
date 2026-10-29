# Verification target: To Direct Sum Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36d1e3c09cd56987ec76ae4b18acd0419625c941",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36d1e3c09cd56987ec76ae4b18acd0419625c941`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AddMonoidAlgebra.toDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/addmonoidalgebra-todirectsum.md) | 77 | `declaration-track:1c6e092237ce4049405f5cd3a4d9b3b35586aa05eae542ebfef2cb6ede665b50` |
| 2 | `lemma` | [AddMonoidAlgebra.toDirectSum_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/addmonoidalgebra-todirectsum-single.md) | 85 | `result-track:457f2f64319d68ecd7c670531d64971906e0baaadd4e1459a90e23b8219f7d9d` |
| 3 | `def` | [DirectSum.toAddMonoidAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/directsum-toaddmonoidalgebra.md) | 91 | `declaration-track:fc85f440bea2c3e483b1bb185e0f76cae033761922d3866a49863bca6a3ccd86` |
| 4 | `theorem` | [DirectSum.toAddMonoidAlgebra_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/directsum-toaddmonoidalgebra-of.md) | 94 | `result-track:c17a5a92db2bee6e1a7c88d0024ce29fa4dc712056f9c7b4286d69b8e997ae13` |
| 5 | `theorem` | [AddMonoidAlgebra.toDirectSum_toAddMonoidAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/addmonoidalgebra-todirectsum-toaddmonoidalgebra.md) | 99 | `result-track:fe79e5ffa2c519e3b0c94cf6f4001e9a5d42e8489da3e52fc37e6477e8d21197` |
| 6 | `theorem` | [DirectSum.toAddMonoidAlgebra_toDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/directsum-toaddmonoidalgebra-todirectsum.md) | 103 | `result-track:bd6af720647eac9a05311ec332dc34f769c980a269e23f31a2211e0ae33b053e` |
| 7 | `theorem` | [toDirectSum_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-zero.md) | 119 | `result-track:82c758690707c922e9770b9b022da5e4da9e9f0ed621bd2ba5478b3f2b0b16b9` |
| 8 | `theorem` | [toDirectSum_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-add.md) | 123 | `result-track:1f96acf127eeb623291cff99aed6f3c6087ad959dd394d195f404a3d74bb20e9` |
| 9 | `theorem` | [toDirectSum_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-natcast.md) | 128 | `result-track:724ba722df2c9da9f18715499738fa98a327bc1af6af8c2686b7080baa0027c6` |
| 10 | `theorem` | [toDirectSum_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-ofnat.md) | 133 | `result-track:583b035bda72450149a55e6c24c9ea3ecd4994871c2d362629c5d73a458f2d09` |
| 11 | `theorem` | [toDirectSum_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-sub.md) | 138 | `result-track:eb57a89d2e7f72b196c6424eb3d8637ecb4f5dea968207539dcd4837ee7a889a` |
| 12 | `theorem` | [toDirectSum_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-neg.md) | 143 | `result-track:08717a6db7f197285b0f8f97f4c753bcc4f8bcb2922f505cb23e38870463c1e2` |
| 13 | `theorem` | [toDirectSum_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-intcast.md) | 148 | `result-track:e4757883cca33edb88e6e1d1cea70d9b4af9f977ccda0d319dd6dd5cc4fe9744` |
| 14 | `theorem` | [toDirectSum_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-one.md) | 153 | `result-track:d6c80daf463da4c8e6ad0e8843a2b27aec3329787170c4cac5161636e7759eb0` |
| 15 | `theorem` | [toDirectSum_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/todirectsum-mul.md) | 158 | `result-track:140dc00d13a5c40f50cf36ebab61a9986767d8cf82129b964c521a3c224abd88` |
| 16 | `theorem` | [toAddMonoidAlgebra_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-zero.md) | 177 | `result-track:a4ac23d20438631518d53f5b44c79933338a184c1acdab94f68bc168a3a92f48` |
| 17 | `theorem` | [toAddMonoidAlgebra_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-add.md) | 181 | `result-track:0168dc5f1aa11c794e178b8b8717ed6c382ac50c6b920d0e3c4765fa580daea8` |
| 18 | `theorem` | [toAddMonoidAlgebra_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-natcast.md) | 186 | `result-track:397e735ec317e06f38efe55b82070663cb6d1c6ce7c88c948050cf085955d996` |
| 19 | `theorem` | [toAddMonoidAlgebra_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-ofnat.md) | 191 | `result-track:2f7ca056bea1cdf12a732f2447f94f7b688ebfe45eb270771a5eb74d804bc93c` |
| 20 | `theorem` | [toAddMonoidAlgebra_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-sub.md) | 197 | `result-track:8cd0188336fc1e6cc04de119cf45fd0695bc28e09a4d1fb4060043cfbfbe1cd9` |
| 21 | `theorem` | [toAddMonoidAlgebra_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-neg.md) | 202 | `result-track:4b93d518886e1886749ba2b912832c4947e49784220e76d8b082d418fedfccfe` |
| 22 | `theorem` | [toAddMonoidAlgebra_intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-intcast.md) | 207 | `result-track:af4cff40cfff3e08adab1ea8e73286820d50c858abb2a0ef5e8c22cf94684117` |
| 23 | `theorem` | [toAddMonoidAlgebra_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-one.md) | 212 | `result-track:98411f5939077856db747b654634f19ebbf109b7389b951f426820f4982b1644` |
| 24 | `theorem` | [toAddMonoidAlgebra_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/toaddmonoidalgebra-mul.md) | 217 | `result-track:5d0a1115c82d743f3cd35e8f370111ce41aea6fb657ceecb7b38b0a5256c5bf4` |
| 25 | `def` | [addMonoidAlgebraEquivDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/addmonoidalgebraequivdirectsum.md) | 237 | `declaration-track:89590e0488b34160ec41845cf2cd721f5db820e442f7a91a2c57f02f70a904bb` |
| 26 | `def` | [addMonoidAlgebraAddEquivDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/addmonoidalgebraaddequivdirectsum.md) | 244 | `declaration-track:1bad94730d763b8a16d084585acfb29aa7f413743061cac8de4793ded9e2f19f` |
| 27 | `def` | [addMonoidAlgebraRingEquivDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/addmonoidalgebraringequivdirectsum.md) | 251 | `declaration-track:385ccec3d875d497cf1ae7c06899ae9866796d717958579ce66c24556d60b06e` |
| 28 | `def` | [addMonoidAlgebraAlgEquivDirectSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/addmonoidalgebraalgequivdirectsum.md) | 260 | `declaration-track:02ccb626fe3a02ea6141394b3c26308cbdd16179746cb5d2b9ee2311b3155b5a` |
| 29 | `theorem` | [AddMonoidAlgebra.toDirectSum_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/addmonoidalgebra-todirectsum-pow.md) | 268 | `result-track:96a525c5c6338040fdb6808ed4a57ef92d5b11833458fc55c0d7535b839465c4` |
| 30 | `theorem` | [DirectSum.toAddMonoidAlgebra_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ToDirectSumNamespacedPublic.lean/declarations/directsum-toaddmonoidalgebra-pow.md) | 274 | `result-track:83532b0f2fc56b3c3e1540d6a53f9baeca5ba0f56b0f4882211b90667ce980d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ee41710874e1bc2490c94bdacbd4988d873dd627e2f823dc6dab084316fd164 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/ToDirectSum/Variantb67905574601f385caaeca59b1ad6e0da493ea48284d802bcb40afd31cc9d600.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

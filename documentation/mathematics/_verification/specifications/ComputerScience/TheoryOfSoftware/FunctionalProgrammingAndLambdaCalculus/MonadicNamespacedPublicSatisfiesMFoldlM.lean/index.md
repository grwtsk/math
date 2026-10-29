# Verification target: Monadic Namespaced Public Satisfies MFoldl M

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e6a950ea4569d96b08fd32f9552ecd4c56ef285",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantaaa812b40044006534f294053c8326266415d2a60e8ac9169af7c840d60a7e55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e6a950ea4569d96b08fd32f9552ecd4c56ef285`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantaaa812b40044006534f294053c8326266415d2a60e8ac9169af7c840d60a7e55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantaaa812b40044006534f294053c8326266415d2a60e8ac9169af7c840d60a7e55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SatisfiesM_foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/satisfiesm-foldlm.md) | 32 | `result-track:311700053ac3cc4da8e2d1f2e35449f8ecc384ec43e7c5b4c7a10d08bdd04446` |
| 2 | `theorem` | [SatisfiesM_mapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/satisfiesm-mapm.md) | 46 | `result-track:26bd09961c011df03b581b9377a1fa7fa4a47c4960ba110ac9d4bf3b1b982d98` |
| 3 | `theorem` | [SatisfiesM_mapM'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/satisfiesm-mapm-source-edition-2.md) | 63 | `result-track:9ad339edd304619aa538f27c0cd61776903ff9f531491c08aedbfba387c037d1` |
| 4 | `theorem` | [size_mapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/size-mapm.md) | 71 | `result-track:fdc588370b115ecf6078787724b4b4048d46a820bb36ddb8950f0c85d99d1f3d` |
| 5 | `theorem` | [SatisfiesM_anyM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/satisfiesm-anym.md) | 75 | `result-track:4f2a3f4d9a0b5d4805183b7a40c3a9654dd3fe070a2b73cbaf68663f5df88771` |
| 6 | `theorem` | [SatisfiesM_anyM_iff_exists](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/satisfiesm-anym-iff-exists.md) | 98 | `result-track:bcc4cbb74f87299bf00222296a615b0fe8b5f47a0e41b6600397e5f1ae397c1c` |
| 7 | `theorem` | [SatisfiesM_foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/satisfiesm-foldrm.md) | 125 | `result-track:a6a0f7e58ae8ab19f02063a554b852332b647f5682cbca9dd22847a46297e9ee` |
| 8 | `theorem` | [SatisfiesM_mapFinIdxM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/satisfiesm-mapfinidxm.md) | 141 | `result-track:0079e1c0672d4b59a7cdebcee4c79d7b2ed1890a0e5e8b900ac2504d30354282` |
| 9 | `theorem` | [SatisfiesM_mapIdxM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/satisfiesm-mapidxm.md) | 163 | `result-track:66e1ed37f942cafb67a2e8ef4e2364dee36b2e59ebfe2e79d318c417ca09813f` |
| 10 | `theorem` | [size_mapFinIdxM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/size-mapfinidxm.md) | 171 | `result-track:084da339f4450685d94be536d1239eb7f763a580681807d561537468598d93fc` |
| 11 | `theorem` | [size_mapIdxM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/size-mapidxm.md) | 177 | `result-track:c34604131acfee9173d06929f794858f9b90edf875009a5b7082085ea8b2c7ef` |
| 12 | `theorem` | [size_modifyM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MonadicNamespacedPublicSatisfiesMFoldlM.lean/declarations/size-modifym.md) | 181 | `result-track:55a3fe352d1bcee88f87f989704ccbf4ad479e9097b4b71218de70d85d79bbae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35d1103f1dece53fbabf66ca270aee95cf528b8d2fee93a7d24af46cc86898ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantaaa812b40044006534f294053c8326266415d2a60e8ac9169af7c840d60a7e55.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantaaa812b40044006534f294053c8326266415d2a60e8ac9169af7c840d60a7e55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

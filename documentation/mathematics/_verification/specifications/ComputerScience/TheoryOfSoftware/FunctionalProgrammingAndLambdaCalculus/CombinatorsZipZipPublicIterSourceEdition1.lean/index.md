# Verification target: Combinators Zip Zip Public Iter Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c83eeaf95c2c5e2139b4d5d288e7be2588c51241",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c83eeaf95c2c5e2139b4d5d288e7be2588c51241`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Iter.Intermediate.zip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-intermediate-zip.md) | 33 | `declaration-track:d6c66fe94333123f168bce5c508168dbf00f06b91cf38542db742fd1d53ab33c` |
| 2 | `theorem` | [Iter.Intermediate.zip_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-intermediate-zip-inj.md) | 44 | `result-track:e9c549922305f9156044dbac536127e920e889f01160f9c77ebadbd35d0980e6` |
| 3 | `theorem` | [Iter.Intermediate.zip_surj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-intermediate-zip-surj.md) | 56 | `result-track:b840ccef0ae0d8375806fb532a8754af7ba27772b255845bd937eacdff4b08d7` |
| 4 | `theorem` | [Iter.zip_eq_intermediateZip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-zip-eq-intermediatezip.md) | 66 | `result-track:ac898b5c85d3923c28639227c56836bf5700ea2c076e9a6c92cda2ec34d94484` |
| 5 | `theorem` | [Iter.step_intermediateZip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-step-intermediatezip.md) | 72 | `result-track:5b8ecc7a5ebd2faae291e4e7d14cd9cdfcbb9be5e0d68dc1b6bd0a8e2f06a415` |
| 6 | `theorem` | [Iter.toList_intermediateZip_of_finite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolist-intermediatezip-of-finite.md) | 111 | `result-track:35d00a1e11f142eef4c527688335ab08103b83a8c70606e96ea3aae127f045d2` |
| 7 | `theorem` | [Iter.atIdxSlow?_intermediateZip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-atidxslow-intermediatezip.md) | 181 | `result-track:54a42ce3ec96f3a0b8b8f4fba6299442813874c73d3182ceb2cf861e7e82aa4d` |
| 8 | `theorem` | [Iter.atIdxSlow?_zip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-atidxslow-zip.md) | 259 | `result-track:7a85be71265338312df53045b2a2f6d7feec022e45c925a0ffb7baa79de2790a` |
| 9 | `theorem` | [Iter.toList_zip_of_finite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolist-zip-of-finite.md) | 266 | `result-track:291725d8b9c200787544c498d73804317af28615b6939d17780acac33bc10435` |
| 10 | `theorem` | [Iter.toList_zip_of_finite_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolist-zip-of-finite-left.md) | 272 | `result-track:1f86c4d4edac28220be9c1db8a70a19636ce07140d6c67d7c5f4428e44ae6e6d` |
| 11 | `theorem` | [Iter.toList_zip_of_finite_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolist-zip-of-finite-right.md) | 292 | `result-track:e036c9617fe7ca04fb47163a14405826ad9634ac8b02f3dcd1dd3cd8b8cb0252` |
| 12 | `theorem` | [Iter.toListRev_zip_of_finite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolistrev-zip-of-finite.md) | 313 | `result-track:9c7544e8985ff0ebd0c9e3b9721fc8375b505bcaf77652c1de2f3efd87d30dd3` |
| 13 | `theorem` | [Iter.toListRev_zip_of_finite_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolistrev-zip-of-finite-left.md) | 319 | `result-track:655e6c6e5e7598e0ddb45eb9877f6084f3aea0726329cdd858553b4241fa1234` |
| 14 | `theorem` | [Iter.toListRev_zip_of_finite_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolistrev-zip-of-finite-right.md) | 325 | `result-track:022cc9cda7b6004fb730815ab4c0342ce0b6db31797475b30d9271597b1aafd1` |
| 15 | `theorem` | [Iter.toArray_zip_of_finite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-toarray-zip-of-finite.md) | 332 | `result-track:bf10fa6279f6eb3c4e6fb290d1f69cf2c70f8f17a64e4e6553d961114168a438` |
| 16 | `theorem` | [Iter.toArray_zip_of_finite_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-toarray-zip-of-finite-left.md) | 338 | `result-track:8de34254fe59b78c278e06dbb770262c3d37438d258e026838e56c7755c05c28` |
| 17 | `theorem` | [Iter.toArray_zip_of_finite_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-toarray-zip-of-finite-right.md) | 344 | `result-track:1be904820c937896c5ff8f0fbd7fe9df76eefa75084924e85ffd030f2aa26078` |
| 18 | `theorem` | [Iter.toList_take_zip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolist-take-zip.md) | 351 | `result-track:f0907199fb270ce357d29c631b50e338bdd05c3b831899a7656985cbab1d9ef6` |
| 19 | `theorem` | [Iter.toListRev_take_zip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-tolistrev-take-zip.md) | 362 | `result-track:baac5eaebf16245e1c6ee99483e2d1e0bfb8aeeb847452076b52008e88968057` |
| 20 | `theorem` | [Iter.toArray_take_zip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CombinatorsZipZipPublicIterSourceEdition1.lean/declarations/iter-toarray-take-zip.md) | 369 | `result-track:4c484e166cc1a27a3d35822c87d8a8791e23a4c0c6108703e27c2d5c56ddfb1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6428821c69eb41d7d321de1b4ab6cbae762ca4fe4d39248659c43b5f9c1b5e1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

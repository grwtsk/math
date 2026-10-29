# Verification target: Flat Map Public Iter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85beae749fc9f33da5d0527b3aedd1808ffc6372",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85beae749fc9f33da5d0527b3aedd1808ffc6372`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.Monadic.FilterMap` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.Monadic.FlatMap` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Monadic` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMapM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-outeryield-flatmapm-pure.md) | 24 | `result-track:8269e2a4ea63dc1b7ed8218b2c77f4ee20deeb4b0c87cd8609ba1d0bb01991c9` |
| 2 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMapM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-outerskip-flatmapm-pure.md) | 35 | `result-track:906bf2cfce358d26dc0c90390589c572ce56f424a524a46ca0510a461a320f0f` |
| 3 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMapM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-outerdone-flatmapm-pure.md) | 43 | `result-track:610c4ca7dc5979f414168b097ebf95e43aafd7955bdcead1bc4bb5aae24a88bc` |
| 4 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMapM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-inneryield-flatmapm-pure.md) | 51 | `result-track:708678d7091ffaa7f99dca714d34f1ee0d7fee5f6dcd445d7dbfa24ce137f486` |
| 5 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMapM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-innerskip-flatmapm-pure.md) | 59 | `result-track:2cfac1f1713060dafdcb9fb186938e2697c708d1de0d12f06666ed3480f29e4e` |
| 6 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMapM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-innerdone-flatmapm-pure.md) | 67 | `result-track:096b3e0be088259e3985c5831e43688054f3b8cf9b0808f24d85b95c13b61ee0` |
| 7 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMap_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-outeryield-flatmap-pure.md) | 75 | `result-track:bf254c483bcd752bc4e648b543de5dff580a516407ed90758064189de1133072` |
| 8 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMap_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-outerskip-flatmap-pure.md) | 82 | `result-track:cc5bbac4c82bf767b5fca003915a57d550b3d0e03d20723ec86848afd8324699` |
| 9 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMap_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-outerdone-flatmap-pure.md) | 89 | `result-track:cd5548166983c7df82b2b845bc5872a9fb56a675fa89c78d060eacb5d5d3a3d2` |
| 10 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMap_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-inneryield-flatmap-pure.md) | 96 | `result-track:4edc62d20b8e52601ffbe574e748f8de130bafae3c28928c1edafd60255c39f8` |
| 11 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMap_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-innerskip-flatmap-pure.md) | 103 | `result-track:c08f1bcac2d28dee48a6f3746b2386465f545d0d662d1b6c7fc342a663758e82` |
| 12 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMap_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/flatten-isplausiblestep-innerdone-flatmap-pure.md) | 110 | `result-track:f6be79205e48338db02d23838a2efaf3054f9cdb88f9b6db23bdbca7b353df4e` |
| 13 | `theorem` | [Iter.step_flatMapAfterM](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-step-flatmapafterm.md) | 119 | `result-track:518f7072238e495fc3b39453c00584666684e62bfec106a3e97b5144f20f7f64` |
| 14 | `theorem` | [Iter.step_flatMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-step-flatmapm.md) | 146 | `result-track:b46d5457c63172ca6dc7e81fc99c2f683deae8e3c6267f281b389722f01edb33` |
| 15 | `theorem` | [Iter.step_flatMapAfter](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-step-flatmapafter.md) | 160 | `result-track:7e001ba31b4bd859d1a84b6ccef6396eff814302e86e0277fe57035415812afb` |
| 16 | `theorem` | [Iter.step_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-step-flatmap.md) | 183 | `result-track:c8e502bb870fd1d018be3a59430b5ab0230de15cbdb1060feb58c66dc377c74d` |
| 17 | `theorem` | [Iter.toList_flatMapAfterM](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-tolist-flatmapafterm.md) | 193 | `result-track:38d0c5af781979ca8600a8f6e098425d3c942790d0a6beb998f89375e15e7da4` |
| 18 | `theorem` | [Iter.toArray_flatMapAfterM](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-toarray-flatmapafterm.md) | 206 | `result-track:390a8bf319944dd17f270fd2eca55d8ec088c8a0fe1393b302a2af395829ecdb` |
| 19 | `theorem` | [Iter.toList_flatMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-tolist-flatmapm.md) | 219 | `result-track:5102d545651b2a7dca3f5b15502980a75288388ed3a74fe21ca50bd3f4551f5b` |
| 20 | `theorem` | [Iter.toArray_flatMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-toarray-flatmapm.md) | 227 | `result-track:418f9f1038090485413f589116c344503e9e0240837455ed9db3172a8636e7f9` |
| 21 | `theorem` | [Iter.toList_flatMapAfter](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-tolist-flatmapafter.md) | 235 | `result-track:ce507986ecf2ba678f1c1e7c1f7101de4c1ee67274c241a383b9fb6c415f462c` |
| 22 | `theorem` | [Iter.toArray_flatMapAfter](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-toarray-flatmapafter.md) | 246 | `result-track:62c5e8a00b0ddb2ab88e1294cd93c637cd9847c426868115aac7a1dfe6fe75c0` |
| 23 | `theorem` | [Iter.toList_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-tolist-flatmap.md) | 258 | `result-track:bde74dfd30dd72a56247e6e2588c1e34cbc6cac0e0ac023ff66336393129493d` |
| 24 | `theorem` | [Iter.toArray_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FlatMapPublicIter.lean/declarations/iter-toarray-flatmap.md) | 266 | `result-track:d250a94cf2573bad723e2984d6df7b701d1a6019440d30ae4b20ca4279e86256` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed74b853af5940077afb97cc367e230532eddfc0bebe1e7fd7bf5d85f2f4d543 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant10d6fb55c9e15a5bc2c0d646bdef24d25393d261aad5ac464c6a9fa804ddac69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

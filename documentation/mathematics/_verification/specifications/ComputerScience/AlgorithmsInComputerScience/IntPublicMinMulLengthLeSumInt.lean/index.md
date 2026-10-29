# Verification target: Int Public Min Mul Length Le Sum Int

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5491cddeaddff5c4358757bd202fcc4d79e64c93",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant3926bfd01601e7746fb20e65175763cdd988c3a54943f62d7e9f0426689f9c30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5491cddeaddff5c4358757bd202fcc4d79e64c93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant3926bfd01601e7746fb20e65175763cdd988c3a54943f62d7e9f0426689f9c30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant3926bfd01601e7746fb20e65175763cdd988c3a54943f62d7e9f0426689f9c30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_replicate_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/sum-replicate-int.md) | 21 | `result-track:31d12dbc88a2aedd02bd928f748cadcec8615d89538077b0dac3b5d5ca17c4a1` |
| 2 | `theorem` | [sum_append_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/sum-append-int.md) | 25 | `result-track:4b94b26b48a8e47b68b314d89f5a1436a0137b76573255c173f8f1592493978a` |
| 3 | `theorem` | [sum_reverse_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/sum-reverse-int.md) | 28 | `result-track:0e8f76b38660540b4fecf82b5d75fa27287430d3e4cb17d4e7f5c3e334a6643d` |
| 4 | `theorem` | [sum_eq_foldl_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/sum-eq-foldl-int.md) | 31 | `result-track:052ce9ab39545f22bd659779f45587830d65ccbcdc2b5cef0f09303126437bd2` |
| 5 | `theorem` | [min_mul_length_le_sum_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/min-mul-length-le-sum-int.md) | 34 | `result-track:a1aede797a6bbb28747334cb6aee2a4bf6854939635282a7d466c2777aa84a86` |
| 6 | `theorem` | [mul_length_le_sum_of_min?_eq_some_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/mul-length-le-sum-of-min-eq-some-int.md) | 39 | `result-track:7eff7f366d47b37907c31691ba9eeb775f5bfa01816df32cddd75a79a1ab6e6f` |
| 7 | `theorem` | [min_le_sum_div_length_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/min-le-sum-div-length-int.md) | 45 | `result-track:8d07f4e2b8796727e5e2e061392b2ea75f8ecf1b64e41aa5b298491a8d16ac61` |
| 8 | `theorem` | [le_sum_div_length_of_min?_eq_some_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/le-sum-div-length-of-min-eq-some-int.md) | 50 | `result-track:3ec7804c8fe63a8d9be18d3ca79e89b598f3b71d2d8b66691466fbfc115f4294` |
| 9 | `theorem` | [sum_le_max_mul_length_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/sum-le-max-mul-length-int.md) | 56 | `result-track:ca6748d8235ad703acca241c2d655adcad8cf7bede0567e751162aacf3207de4` |
| 10 | `theorem` | [sum_le_max_mul_length_of_max?_eq_some_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/sum-le-max-mul-length-of-max-eq-some-int.md) | 61 | `result-track:834bad160d4cbe59fb998f389c5056758df7b54214acbd214e4e5907bc13bf01` |
| 11 | `theorem` | [sum_div_length_le_max_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/sum-div-length-le-max-int.md) | 67 | `result-track:8afca1ad683f80ccc9fe6df1615647d6573016bdf143177a8a0dbb3d4013b7f2` |
| 12 | `theorem` | [sum_div_length_le_max_of_max?_eq_some_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/sum-div-length-le-max-of-max-eq-some-int.md) | 72 | `result-track:9fc0ac3308370fc4bf543bee6e0695cc01702e64f33eac8fd8f6a2a1795f73e9` |
| 13 | `theorem` | [prod_replicate_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/prod-replicate-int.md) | 78 | `result-track:f59eedecdf73faf62e7b9840dce463ac1a8bfd940a4ce4b898d09555e5df0a4e` |
| 14 | `theorem` | [prod_append_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/prod-append-int.md) | 82 | `result-track:2713d6bf8551fb85a539aeb5379c8b9737f6338d905d383be46bc137213c40bb` |
| 15 | `theorem` | [prod_reverse_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/prod-reverse-int.md) | 85 | `result-track:2e7761844f618d76efc76e31d04c43c85bfc9a85fc7bf1557339b6cf8b8cd111` |
| 16 | `theorem` | [prod_eq_foldl_int](../../../../../ComputerScience/AlgorithmsInComputerScience/IntPublicMinMulLengthLeSumInt.lean/declarations/prod-eq-foldl-int.md) | 88 | `result-track:20fd8551c12593c2ff44d021b75e86badcc3f0c07081e8f4613d419d2d7f31c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df1e51b3f2c403e532740febaeff457a08cc27f4e2266c8c16eb487e6199b134 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant3926bfd01601e7746fb20e65175763cdd988c3a54943f62d7e9f0426689f9c30.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant3926bfd01601e7746fb20e65175763cdd988c3a54943f62d7e9f0426689f9c30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.Topology.GeneralTopology.RatLemmas.Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ed4b7c87e159741b8be532249044ea0da1a70bb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ed4b7c87e159741b8be532249044ea0da1a70bb`.

Source path: `GRWTSK/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [interior_compact_eq_empty](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/declarations/interior-compact-eq-empty--ff9c14f4d62d88a7d0d4de9e.md) | 55 | `result-track:ff9c14f4d62d88a7d0d4de9ebc6234529c5c6ba78740514b541014767ae332b6` |
| 2 | `theorem` | [dense_compl_compact](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/declarations/dense-compl-compact--5932422fa9e1b827407a9d5a.md) | 58 | `result-track:5932422fa9e1b827407a9d5af7d489e8e56011d675265520c5e59280f4bed4b6` |
| 3 | `instance` | [cocompact_inf_nhds_neBot](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/declarations/cocompact-inf-nhds-nebot--55846081fbdb54a5fd6d885d.md) | 61 | `declaration-track:55846081fbdb54a5fd6d885df9f76b26236ce1a729db2d3efb81b07b8162e6c1` |
| 4 | `theorem` | [not_countably_generated_cocompact](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/declarations/not-countably-generated-cocompact--e82f2aaa89d4b7d671da34cb.md) | 66 | `result-track:e82f2aaa89d4b7d671da34cbe70609b3071663fc84d1600c8961706b6837ad6b` |
| 5 | `theorem` | [not_countably_generated_nhds_infty_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/declarations/not-countably-generated-nhds-infty-opc--171878ab980ed46f9a5d9c02.md) | 74 | `result-track:171878ab980ed46f9a5d9c02339f7d4d8051ee69cc08de86eb91580a69e614cf` |
| 6 | `theorem` | [not_firstCountableTopology_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/declarations/not-firstcountabletopology-opc--260efb79c72fb044ac3d6736.md) | 80 | `result-track:260efb79c72fb044ac3d6736eeb32672b20dd5813e94c31d2d3b6f4dd9520cf2` |
| 7 | `theorem` | [not_secondCountableTopology_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/declarations/not-secondcountabletopology-opc--ffe918c468fa9d031f44687a.md) | 84 | `result-track:ffe918c468fa9d031f44687a6db55d7d0fcde14e4253e610b45bd4116eb6b8bf` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variantb9f72bd8af7f6fa27a6780a48ec1c314d7fa5aed946b6ea08105ba672b19dbb9.lean/declarations/instance--bfbb1e7f3d42241f22b7ccd4.md) | 88 | `declaration-track:bfbb1e7f3d42241f22b7ccd4b69c03c8b96e6f50073e2eb34deb06b2bd9ea954` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

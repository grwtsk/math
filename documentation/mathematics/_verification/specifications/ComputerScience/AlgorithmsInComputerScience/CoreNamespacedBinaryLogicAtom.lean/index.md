# Verification target: Core Namespaced Binary Logic Atom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18fa218daed75d86522cf373ed1fea33ea8eb33e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianteccece9d99cbfefbeca2ba104f615ecf6a8681db2e8302440fda24a611f21338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18fa218daed75d86522cf373ed1fea33ea8eb33e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianteccece9d99cbfefbeca2ba104f615ecf6a8681db2e8302440fda24a611f21338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianteccece9d99cbfefbeca2ba104f615ecf6a8681db2e8302440fda24a611f21338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SomeBinaryLogicMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/somebinarylogicmatrix.md) | 16 | `declaration-track:291dad40e331e81ac65bfdbe444c818c8a868147be07f7dcbeb0290c6784a345` |
| 2 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/instance.md) | 21 | `declaration-track:7ea3e2ae4579412776244f473a60ceb35189ec19ee48b1c03a7d5134f3c494d7` |
| 3 | `inductive` | [BinaryLogicAtom](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/binarylogicatom.md) | 26 | `declaration-track:addf90ed4fe8c9bfd570a66635770319dfbb5e43ada0b891231b17d8cd84fdbf` |
| 4 | `inductive` | [BinaryLogicTree](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/binarylogictree.md) | 33 | `declaration-track:f7d280b5804196f454d270b522ea0df1f83fce108b17ea006d5f2e1f7703fb66` |
| 5 | `def` | [size](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/size.md) | 40 | `declaration-track:d76b4a6e14b3e26bc958a548c4f2388feae2583db9fabb46ba12dc9b9abaa492` |
| 6 | `def` | [depth](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/depth.md) | 44 | `declaration-track:bc023a2860e398051afbafd8a600c42c6f01c4804d30d7189d2e548376eead63` |
| 7 | `def` | [compose](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/compose.md) | 48 | `declaration-track:684c56a6ca1aeed3deb4cba1c5554b2d3b5a1b2b5233399d983086e53ca2a7b5` |
| 8 | `theorem` | [size_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/size-pos.md) | 51 | `result-track:6e6f43b7d0143b8f0ef81db873f224198d126e9babd483d51539408b03cb280f` |
| 9 | `theorem` | [depth_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/depth-le-size.md) | 60 | `result-track:74ec7c89e5337aa22cb15fe8c96323ce17c0ce800464306fb977ed5f3c49dcda` |
| 10 | `theorem` | [raw_node_left_right_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/raw-node-left-right-visible.md) | 71 | `result-track:a9698d8d426792c6c30d847751685141f7620007cd736d01b3a46feb7576663b` |
| 11 | `theorem` | [raw_bracketing_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/raw-bracketing-visible.md) | 78 | `result-track:dc8adc46a3aabf5f5ebfdd8eeb15af9cf12a445b39254386cfc7462c6414536d` |
| 12 | `def` | [raw_tree_order_not_quotiented](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/raw-tree-order-not-quotiented.md) | 88 | `declaration-track:aaf0d9228b0cea8f6ef63f5d5852fe998fd79340f1c5c497c8abcb737e7d290e` |
| 13 | `def` | [raw_tree_bracketing_not_quotiented](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/raw-tree-bracketing-not-quotiented.md) | 94 | `declaration-track:32ca182a1ea640fbb8ff2ccbd11e71a08a42608c1d30f02c3346c92782015988` |
| 14 | `theorem` | [binaryLogicTree_size_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/binarylogictree-size-pos.md) | 101 | `result-track:981ce8b2f86ac15022300251ad31d1eca66903445abc5e7cb0fcc47123cdd468` |
| 15 | `theorem` | [binaryLogicTree_depth_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/binarylogictree-depth-le-size.md) | 105 | `result-track:7e4889b494884f37844febe4fb08436496a48ae809128c04d0055e1f93bd6792` |
| 16 | `theorem` | [binaryLogicTree_raw_order_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/binarylogictree-raw-order-visible.md) | 109 | `result-track:3a2930ef51eb2d52151e15a4c848fff1ecb800d16b090c52e6dd0ed872e4caed` |
| 17 | `theorem` | [binaryLogicTree_raw_bracketing_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedBinaryLogicAtom.lean/declarations/binarylogictree-raw-bracketing-visible.md) | 115 | `result-track:f04b4e5e2243197f9a06f103f434fdea1367f7bdf68c63b1378cd61e07a49b32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=739e966d945d128d7db4fb5cdfef2f3843d3820caa5479a1ee724b34179a69da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianteccece9d99cbfefbeca2ba104f615ecf6a8681db2e8302440fda24a611f21338.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianteccece9d99cbfefbeca2ba104f615ecf6a8681db2e8302440fda24a611f21338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

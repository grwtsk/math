# Verification target: Of Scientific Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2c02b91eb687d474a93537b3f3763c85aa9b74b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant011dabc61a4dba51839735860eac2f41c0bb377cd709e515bc62bee6d5cbde65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2c02b91eb687d474a93537b3f3763c85aa9b74b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant011dabc61a4dba51839735860eac2f41c0bb377cd709e515bc62bee6d5cbde65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant011dabc61a4dba51839735860eac2f41c0bb377cd709e515bc62bee6d5cbde65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Log2` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Meta` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Float.exactlyRepresentablePowersOfTen](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/float-exactlyrepresentablepowersoften.md) | 21 | `declaration-track:b29f6573405ea7829973531de0b0777d8c5eea1a6451bf078067a63ddd94ece3` |
| 2 | `def` | [Float.ofScientific](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/float-ofscientific.md) | 35 | `declaration-track:023da335fe6f7880fcd36bdee51b1124e47693b168fc7f6f254452a49be57681` |
| 3 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/instance.md) | 60 | `declaration-track:1a027661509fe82150ab71055584f2cff4a43a15930d4dbdff4c57de71e57925` |
| 4 | `def` | [Float.ofNat](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/float-ofnat.md) | 68 | `declaration-track:992f436b0acd0e4d056b6a2648aacd168fc5bfadbaf37ceb84b8280a9eb8d9c0` |
| 5 | `def` | [Float.ofInt](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/float-ofint.md) | 75 | `declaration-track:e5887586bf469ee7ee5e96467bd6fef924e79dc2e5162993a67017700fdd8f1e` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/instance-source-edition-4.md) | 79 | `declaration-track:ea7cccb6ad9ac6621def0e01d1b921c8bb40d9892b769b46b3fcd36074b23d3f` |
| 7 | `abbrev` | [Nat.toFloat](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/nat-tofloat.md) | 81 | `declaration-track:8eb4cd47a5daa391bac81c93dd49b0bc15547f600c298cf79c8c1f10d056d0f3` |
| 8 | `def` | [Float32.exactlyRepresentablePowersOfTen](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/float32-exactlyrepresentablepowersoften.md) | 88 | `declaration-track:c235eb007abc8c89ca0ad17f4f69128c12600058c0863682557316997a04150a` |
| 9 | `def` | [Float32.ofScientific](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/float32-ofscientific.md) | 94 | `declaration-track:6245e3b14bd9ab81164be16b68f49e29c0e9c2148087f19adea9c333dc88897a` |
| 10 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/instance-source-edition-2.md) | 107 | `declaration-track:70b114b137ebcf74a8393aa68b1d1fc8c51443373180f3b86107b86681fc8842` |
| 11 | `def` | [Float32.ofNat](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/float32-ofnat.md) | 115 | `declaration-track:59c26b699fd57f2dfdf38f5a4f266333ac08506c0c3ef0c19d8a1d81fcdae40c` |
| 12 | `def` | [Float32.ofInt](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/float32-ofint.md) | 122 | `declaration-track:2cd2b5c4d6169c4b5b3d4b960a43a39d278a4fd39f6d4e15d18d496795429c06` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/instance-source-edition-3.md) | 126 | `declaration-track:ea339234c737312f925cb547985ae3d274eef52593cbd39234e3fbf03ae0fc14` |
| 14 | `abbrev` | [Nat.toFloat32](../../../../../ComputerScience/AlgorithmsInComputerScience/OfScientificPublic.lean/declarations/nat-tofloat32.md) | 128 | `declaration-track:5d9cac1ea6327a799718bfa27e0e91045eed330732337ac222caa26c193ad4d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03640cf625b30b0144f27aca8bad9fe358db2e0eee8b63315fac166cf508c511 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant011dabc61a4dba51839735860eac2f41c0bb377cd709e515bc62bee6d5cbde65.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OfScientific/Variant011dabc61a4dba51839735860eac2f41c0bb377cd709e515bc62bee6d5cbde65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

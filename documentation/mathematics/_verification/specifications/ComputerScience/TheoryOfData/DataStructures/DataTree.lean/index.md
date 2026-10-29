# Verification target: Data Tree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d509f7799b3b919f612028ef4b1ea35d0160899",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantdae83bd772314ef4e3df6fd0539d8263f0d35bbd5b29b73bfe438172c0d76e1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d509f7799b3b919f612028ef4b1ea35d0160899`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantdae83bd772314ef4e3df6fd0539d8263f0d35bbd5b29b73bfe438172c0d76e1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantdae83bd772314ef4e3df6fd0539d8263f0d35bbd5b29b73bfe438172c0d76e1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.RBMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Ordering.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Tree.](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/tree.md) | 32 | `declaration-track:110f7f76d7e858f9b5603793b758d3f7e13395c3ed0a2b20e0bbaf4fac90898e` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/instance.md) | 47 | `declaration-track:945a693a5443720e9bb299d59dbb22bed07b34a1c4fd3f44549b005af112bc54` |
| 3 | `def` | [ofRBNode](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/ofrbnode.md) | 53 | `declaration-track:1c4722a1d7be6bf4650c11f3970c1637ed504f3bf84acbb6f8b25ad77b2f0703` |
| 4 | `def` | [indexOf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/indexof.md) | 62 | `declaration-track:d9276ef4ac62e95fb477ae99ec136e88b5ca31887b684c9d08e3cd5ae1d59eb3` |
| 5 | `def` | [get](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/get.md) | 76 | `declaration-track:a4e47e297ded3cb232a0e530af7ec3c30bd9f747338f55da786f7fa30093bc24` |
| 6 | `def` | [getOrElse](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/getorelse.md) | 85 | `declaration-track:6c6f54da0943575e54dde6a1c7e547848f30490886ff15c22b4e2c51e703d4e5` |
| 7 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/map.md) | 91 | `declaration-track:1eddbca22c160c11c463844db8afbeebcdad000ac2e2c841d62a626d7ed27aae` |
| 8 | `def` | [numNodes](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/numnodes.md) | 98 | `declaration-track:d504d65007b0206ac576764734b614b6c487848c52769e9d4b32cc9b5528fe70` |
| 9 | `def` | [numLeaves](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/numleaves.md) | 105 | `declaration-track:6b3dc95b7b71945121d584ba86c982456f89eb694aa237644cd637bc72820010` |
| 10 | `def` | [height](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/height.md) | 112 | `declaration-track:f950afd775cf7e20d39c742f4656dee9766e9a8f08ae8a17709c7f9a3e1b1045` |
| 11 | `theorem` | [numLeaves_eq_numNodes_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/numleaves-eq-numnodes-succ.md) | 117 | `result-track:dad23388c2b096997bb753dd58628b3291c31e80c761a99ed8a5e88391eeb43f` |
| 12 | `theorem` | [numLeaves_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/numleaves-pos.md) | 121 | `result-track:4e067e475815f4053075a3b586cf72920a39fbb78896972f67cc01d727ee4a09` |
| 13 | `theorem` | [height_le_numNodes](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/height-le-numnodes.md) | 126 | `result-track:646aaaf37e1d8c8c572ef4f9d33a963d77d26402bce24137b7e74fb630a4af6b` |
| 14 | `def` | [left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/left.md) | 136 | `declaration-track:22849c97ff624ee20f51e2fde0a9375ac744466483f381f259e4f71543f5c5de` |
| 15 | `def` | [right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/right.md) | 143 | `declaration-track:2940e89e54cf053b4142848c3c40341129f1e6962d9dc0d5d5903337598aa5fb` |
| 16 | `def` | [unitRecOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/unitrecon.md) | 155 | `declaration-track:4ce7225ea6085b428444623c05298352790218315657d1de4d928a766198371d` |
| 17 | `theorem` | [left_node_right_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataTree.lean/declarations/left-node-right-eq-self.md) | 162 | `result-track:1b8e787a07e453d499f45279dac7f00d217673f896f0689775e13d4420c4e554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9455f70f3fd379f4c3acbdc79521e6a6e13e7b496f012a349b8056924e8efacf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantdae83bd772314ef4e3df6fd0539d8263f0d35bbd5b29b73bfe438172c0d76e1a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tree/Variantdae83bd772314ef4e3df6fd0539d8263f0d35bbd5b29b73bfe438172c0d76e1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

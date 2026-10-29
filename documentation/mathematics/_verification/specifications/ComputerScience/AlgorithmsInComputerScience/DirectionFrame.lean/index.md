# Verification target: Direction Frame

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "615a58e4c7f7f089c666fb569478e1fd3ed28552",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variantb70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `615a58e4c7f7f089c666fb569478e1fd3ed28552`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variantb70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variantb70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.ListTools` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DirectionFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/declarations/directionframe.md) | 28 | `declaration-track:5d35fbaad6d109fd98a3342c3b6e49e2e87710693bd59b9448feb8445793b0cb` |
| 2 | `structure` | [OppositeDirectionPair](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/declarations/oppositedirectionpair.md) | 54 | `declaration-track:a5eb04bdf2e2e634729ca40795387f4531ab4807ef07bcfa5de190e98f3d32ab` |
| 3 | `structure` | [DirectionOrbit](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/declarations/directionorbit.md) | 61 | `declaration-track:8243272b9ea2c87bcacff267ee543c7869fe74cf7964e9f0949187871e7cf5ca` |
| 4 | `inductive` | [BinaryDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/declarations/binarydirection.md) | 69 | `declaration-track:5e267da7de6f2ca0310332794967bb3cd1a315378166522f26cd72dc0a4dd1f1` |
| 5 | `def` | [binaryDirectionFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/declarations/binarydirectionframe.md) | 76 | `declaration-track:c009e43252794d9fd8d39f05a91236fe95dcf259143525bbfdeb340f2cc9024b` |
| 6 | `theorem` | [binary_opposite_involutive](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/declarations/binary-opposite-involutive.md) | 105 | `result-track:72c8819ff90fc0d01426c45ccdb5f36acd2e25327e73145f0591aeb732612711` |
| 7 | `def` | [binaryOppositeDirectionPair](../../../../../ComputerScience/AlgorithmsInComputerScience/DirectionFrame.lean/declarations/binaryoppositedirectionpair.md) | 112 | `declaration-track:c0445d3852f3aa0454a3681b9a45ac08333268ab9bc3c2736517d7a91b56612d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d24431f6514f6af4afadcef3c2afabb7f003cc8a59270c7d86c7c9bcd403415 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variantb70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variantb70fa1288e1bc8f34d4cf4c474774fae321221fb71f346cdf39d45c4060973d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

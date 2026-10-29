# Verification target: Octahedral Fundamental Cycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "517737d75785ec92bf7b4d02f87d43d17cdd2437",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFundamentalCycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/OctahedralFundamentalCycle.lean/index.md) · [Full source](../../../../AlgebraicTopology/OctahedralFundamentalCycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `517737d75785ec92bf7b4d02f87d43d17cdd2437`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFundamentalCycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFundamentalCycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 18; external provider; requires a separately pinned dependency.
- [Octahedral Finite Cells](../../../../GeneralTopology/OctahedralFiniteCells.lean/index.md) — import line 19; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralSphereChain](../../../../AlgebraicTopology/OctahedralFundamentalCycle.lean/declarations/octahedralspherechain.md) | 37 | `declaration-track:a2543656a7d726a04f25697325487c16c680b4765efa6932ae6cc8845002fe26` |
| 2 | `def` | [octahedralSphereBoundary](../../../../AlgebraicTopology/OctahedralFundamentalCycle.lean/declarations/octahedralsphereboundary.md) | 42 | `declaration-track:4791a3ccd574e88e48bf4b3a8e7aca24048e9c6d4ca16660a87a4b0e17a3b641` |
| 3 | `def` | [octahedralEdgeCoefficient](../../../../AlgebraicTopology/OctahedralFundamentalCycle.lean/declarations/octahedraledgecoefficient.md) | 46 | `declaration-track:5dc48a5bb120cea1eb33b264a9bd787fd511d04b820e2ff8616e2bc570ee26a1` |
| 4 | `def` | [OctahedralSphereClosed](../../../../AlgebraicTopology/OctahedralFundamentalCycle.lean/declarations/octahedralsphereclosed.md) | 55 | `declaration-track:ac737e9c8637c1c007058f0a3f8c2b0b93b0de8bdeeeb47154843bb9473ae2ce` |
| 5 | `theorem` | [octahedralSphereClosedProof](../../../../AlgebraicTopology/OctahedralFundamentalCycle.lean/declarations/octahedralsphereclosedproof.md) | 60 | `result-track:6e46529bbbca29c7f33d08c2056d776d42d6a4130b44f1ff3fccd10235d8f5c3` |
| 6 | `def` | [octahedralClosedSphereChain](../../../../AlgebraicTopology/OctahedralFundamentalCycle.lean/declarations/octahedralclosedspherechain.md) | 67 | `declaration-track:9fcad591a13fb28e07d32eafe0b716d7e545d91e1e232cd2e5eb68515396d69a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4569784fdd6cee4cb99875020ca95abdeb87715dafaed6c4752cbc8b57dd612 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFundamentalCycle.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Homology/SimplicialHomology/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFundamentalCycle.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

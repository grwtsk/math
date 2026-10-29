# Verification target: Constructions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca2f9d6c844630bf3353d57db24df38cb30ecf52",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variant8c53be7f6c87496583277e6303fe922812aa2cf05efd97a46d2661ac3e23726b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca2f9d6c844630bf3353d57db24df38cb30ecf52`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variant8c53be7f6c87496583277e6303fe922812aa2cf05efd97a46d2661ac3e23726b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variant8c53be7f6c87496583277e6303fe922812aa2cf05efd97a46d2661ac3e23726b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.W.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Natα](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/nat-source-edition-2.md) | 40 | `declaration-track:c2dbb4cf87c41c70ae47ede0d56010ddda8b23629239715c936a625731fc5866` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/instance-source-edition-2.md) | 44 | `declaration-track:8ff6a3cf680782ff11351940d6c988d1d13ee50fdf7a89bf56b677c27a73e70a` |
| 3 | `def` | [Natβ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/nat.md) | 48 | `declaration-track:84af880ce4a32afd743d9b58292a50eaa97ea474286788185b6705ae79d6fdad` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/instance.md) | 52 | `declaration-track:0ee6a1d983c6ad1d28f89529e5ee7f9fd0502dad6abe792c64e934aff06492c8` |
| 5 | `def` | [ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/ofnat.md) | 57 | `declaration-track:8c03de76aa6d58eefa2291ba0bd33a8bcef1574c7335b7ca85f232c84ebe27ee` |
| 6 | `def` | [toNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/tonat.md) | 63 | `declaration-track:03ddca30db02dfab6527461b4beb10fa61be263497ddf3d4a98f9d271789070d` |
| 7 | `theorem` | [leftInverse_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/leftinverse-nat.md) | 67 | `result-track:1ca7326f5eda36ff7894403b18d40a0458c0007c546ba6b180ab34e1e831816e` |
| 8 | `theorem` | [rightInverse_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/rightinverse-nat.md) | 77 | `result-track:9b7bbf6ab4b8a789b660251a9855e74f0ab9818751e95c9b57ea39c996e76e6a` |
| 9 | `def` | [equivNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/equivnat.md) | 82 | `declaration-track:c8a551ab13ff91c12eb05a7235c3e2baa0027fe840402d80dbf92c7df47fc55f` |
| 10 | `def` | [NatαEquivPUnitSumPUnit](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/nat-equivpunitsumpunit.md) | 94 | `declaration-track:8ff4ac1621e957d05fcff4864a40edf14f3e6f548978ddb539ca56de57d49e9c` |
| 11 | `inductive` | [Listα](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/list-source-edition-2.md) | 128 | `declaration-track:71597dae7a0348af663cb37c3030d50ec485a0a9513ffda032c1ce2036adddad` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/instance-source-edition-3.md) | 132 | `declaration-track:ea924c603fd78c9621b677cade31478506c3b00b8e15a605b36911a6d3c8c98c` |
| 13 | `def` | [Listβ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/list.md) | 136 | `declaration-track:3e01b094de182e1c12b7454806d21e8b0265aa8f88573bb0c4962c31bdf5f5b0` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/instance-source-edition-4.md) | 140 | `declaration-track:f8dfaddbcd2c2ddbf032a02f7fa769e3f6b10db4f390864d87fee371308ca097` |
| 15 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/oflist.md) | 145 | `declaration-track:5b18fd8acc9164dd23cf7d5f11f7d44554cf5b5479a840b6ac7a53f23303890e` |
| 16 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/tolist.md) | 151 | `declaration-track:f8df6528ed0321631d827ae152e31bd9edd3f7bacc5a38fa49b80deb83cda1cf` |
| 17 | `theorem` | [leftInverse_list](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/leftinverse-list.md) | 155 | `result-track:0645ff85f16fe15274319debb047cbdbad552c1819161885561000cb18da4dc4` |
| 18 | `theorem` | [rightInverse_list](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/rightinverse-list.md) | 164 | `result-track:99f40219b3ac999e195d80c136c097c01ca4be7d8520e9d98d7a144e7072d229` |
| 19 | `def` | [equivList](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/equivlist.md) | 169 | `declaration-track:bd7009d74aa56e69977e01103eaa3341be5f6c84fcaeba8016c63071f7095add` |
| 20 | `def` | [ListαEquivPUnitSum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ConstructionsNamespaced.lean/declarations/list-equivpunitsum.md) | 178 | `declaration-track:69683ebc4bbe6b3d22ffc96cf795bd2823e5d1624e97dcbd4226642dee08d9b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dd4c92cce83ab715ae16f7572f6359701172a4db314b061bd7bf0a5e5136ca1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variant8c53be7f6c87496583277e6303fe922812aa2cf05efd97a46d2661ac3e23726b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constructions/Variant8c53be7f6c87496583277e6303fe922812aa2cf05efd97a46d2661ac3e23726b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Perm Lattice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86143963e41f52d53f84bd4782dfb284bb0e451d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86143963e41f52d53f84bd4782dfb284bb0e451d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Forall2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TakeDrop` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Perm.bagInter_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/declarations/perm-baginter-right.md) | 29 | `result-track:8b128b27f5a68ba47d71ac23ee6c427ace5e4e220f80ea9f5723fd21b5a1541d` |
| 2 | `theorem` | [Perm.bagInter_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/declarations/perm-baginter-left.md) | 44 | `result-track:d423c949a03712c90e9c8d6232441f26648e70d92059893a7cd71fd29198b9fd` |
| 3 | `theorem` | [Perm.bagInter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/declarations/perm-baginter.md) | 51 | `result-track:25c5d548fac1fe7333c4c342bafbb974ab95d6bec61af661a8a8de28a91d52a8` |
| 4 | `theorem` | [Perm.inter_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/declarations/perm-inter-append.md) | 55 | `result-track:bdc963963dc0b7dd65a20de1b83eece85ad8208a231e09b4fd392d019f9a81f4` |
| 5 | `theorem` | [Perm.take_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/declarations/perm-take-inter.md) | 72 | `result-track:7995585033f977c6d9596f5a58b9851f0c3f334319df76dda0fbb14892956a7c` |
| 6 | `theorem` | [Perm.drop_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/declarations/perm-drop-inter.md) | 79 | `result-track:fcee6132c58677a5cfa72db649758fe938a901f29de45c89330deb8dc9812145` |
| 7 | `theorem` | [Perm.dropSlice_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PermLattice.lean/declarations/perm-dropslice-inter.md) | 97 | `result-track:8cc42f295bd8d8ae7292b10db8791307ecfe69224de7a916df93a7e6018fc08e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7652c13a2ca7a9b624d62d90c4dd325471393e359119d98431c2ea12e0f4f3c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant29beccecbaf141ac2fce03f5605df997d840d5d4c35e5b4314880b4693b2c2b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

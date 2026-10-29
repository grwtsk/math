# Verification target: Ineq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77de64548c6d7f981d265b70dc9e9bbcb1f98a5b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ineq/Variant94ec7db5f22c1093f422ef7c89f0a4200529d6e1955deb5602db2f038ea7fb4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77de64548c6d7f981d265b70dc9e9bbcb1f98a5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ineq/Variant94ec7db5f22c1093f422ef7c89f0a4200529d6e1955deb5602db2f038ea7fb4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ineq/Variant94ec7db5f22c1093f422ef7c89f0a4200529d6e1955deb5602db2f038ea7fb4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Ineq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/declarations/ineq-source-edition-2.md) | 24 | `declaration-track:7982fee299b32db4c82da2ef76cc56c0b8ead48651456e469ff08cf01e862a0a` |
| 2 | `def` | [max](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/declarations/max.md) | 34 | `declaration-track:4ada1e87bbb8ea7f2df12c671b18e22f159cf3029b21fa04f5e581352374d82b` |
| 3 | `def` | [cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/declarations/cmp.md) | 42 | `declaration-track:992f091be76c1c95a6c6668613370b7f767ac621d4202d286a53d3973ccbbc7a` |
| 4 | `def` | [toString](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/declarations/tostring.md) | 51 | `declaration-track:125a1b10ebdbc984d79b5632ca0c50984d619559dea383f019f219fa4a957551` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:b466b793d7f0a04f1c2826cd26acd971fccedbf36b022093c283003038bbe0e2` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/declarations/instance.md) | 58 | `declaration-track:a26d0d44c729589697e3487b363f0763efa510ce175da36230e125fac3b8afdd` |
| 7 | `def` | [ineq?](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/declarations/ineq.md) | 74 | `declaration-track:3dd96762034d18982ae6a83215d0b390b696c69813dbca629e5d87b405535e39` |
| 8 | `def` | [ineqOrNotIneq?](../../../../../../ComputerScience/TheoryOfData/DataStructures/Ineq.lean/declarations/ineqornotineq.md) | 93 | `declaration-track:c00d6a3126cc2d68196a496db2aff1e75096196ab9edf7462d83c9925a59da36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf8a363fcece5be4e921188903aa34524bca2cbf06e50867ed406604ebdd381f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ineq/Variant94ec7db5f22c1093f422ef7c89f0a4200529d6e1955deb5602db2f038ea7fb4a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ineq/Variant94ec7db5f22c1093f422ef7c89f0a4200529d6e1955deb5602db2f038ea7fb4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

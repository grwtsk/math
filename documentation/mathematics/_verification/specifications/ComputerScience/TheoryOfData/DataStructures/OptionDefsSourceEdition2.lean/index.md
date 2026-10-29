# Verification target: Option Defs Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d6bb70fe6f8917fed5fce1fee553f0a27517c76",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta8f4c9c9116f2511c2ce6fa42edd3da0bff458e735399cdeffaa11c4f772ab35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d6bb70fe6f8917fed5fce1fee553f0a27517c76`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta8f4c9c9116f2511c2ce6fa42edd3da0bff458e735399cdeffaa11c4f772ab35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta8f4c9c9116f2511c2ce6fa42edd3da0bff458e735399cdeffaa11c4f772ab35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Algebra.Classes` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/rel.md) | 26 | `declaration-track:9f48063e538535f9ab0623e211d230777aadccce0ce59cdeaac37092a72fe6c8` |
| 2 | `def` | [traverse.](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/traverse.md) | 34 | `declaration-track:136ad94d45e90b9141d1023a8b8e5aecfc755f83722b62d85a4f9b3c80ea17ac` |
| 3 | `def` | [maybe.](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/maybe.md) | 43 | `declaration-track:593316a8e3f40991b8cc26556eaa2eb70dc32bfe41c7e1a3a8689b431a9ac721` |
| 4 | `def` | [getDM'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/getdm.md) | 52 | `declaration-track:ab4115e725b76be4633a428a712ab406b8ba72324bcafea10c9679b252334695` |
| 5 | `def` | [elim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/elim.md) | 62 | `declaration-track:4bc7a5737fd7ef89934ef803197fd78528c82f6d0d402a1648ebf438634fca36` |
| 6 | `theorem` | [elim'_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/elim-none.md) | 68 | `result-track:953551549c3372e540b70c526212d98cd1e3b4a6e8f39fb4681f4f1483b04e47` |
| 7 | `theorem` | [elim'_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/elim-some.md) | 70 | `result-track:94a0615a25347ad9d8f28413308b782e234b307d26af2325a41519adf78cd4ad` |
| 8 | `lemma` | [elim'_eq_elim](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/elim-eq-elim.md) | 74 | `result-track:3527ba37a029cd04b25724a2e1fdd74d8fb798612fa7e9a8cff9ca9af92f9cd1` |
| 9 | `theorem` | [mem_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/mem-some-iff.md) | 79 | `result-track:45d7f77d24fe4781f72995afbf70ccd2b34abaf67cdd804cb22b26ebf57e75ea` |
| 10 | `def` | [decidableEqNone](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/decidableeqnone.md) | 87 | `declaration-track:363b82763c87c997e4473504f7f457dfad46ec193c261598682ab5b5b70ba5b7` |
| 11 | `instance` | [decidableForallMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/decidableforallmem.md) | 91 | `declaration-track:c6ebb0d5094d34f16d6ae09c76e1916ff3329ec88fe55b6dc35f5a6634606029` |
| 12 | `instance` | [decidableExistsMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/decidableexistsmem.md) | 98 | `declaration-track:f98a78a74787a602137d23fe6d8ffdc71f073a9b509338d4eba4977d8b4e3fd6` |
| 13 | `def` | [iget](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/iget.md) | 105 | `declaration-track:b5f42991d3de129c47a7680758947e3303208c03bc23a576132f1e7baa66d620` |
| 14 | `theorem` | [iget_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/iget-some.md) | 110 | `result-track:52f6bb604891146b2817c34de79f5d75d1532d4f99decb3ebcfbb573206ac371` |
| 15 | `theorem` | [mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/mem-tolist.md) | 115 | `result-track:d4b1dfcb98273f4c6adc8959fba508d4a5cb92a1a8a3517f97c4ade48b6071ab` |
| 16 | `instance` | [liftOrGet_isCommutative](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/liftorget-iscommutative.md) | 119 | `declaration-track:660d9c62e661afd52a0c482e330e002857cd73cfe9664d005f7fc79da762b7eb` |
| 17 | `instance` | [liftOrGet_isAssociative](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/liftorget-isassociative.md) | 123 | `declaration-track:6543af19e6d5362c437e294139ed09d42eb34e43ef3ed826711db77cc0fc994c` |
| 18 | `instance` | [liftOrGet_isIdempotent](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/liftorget-isidempotent.md) | 127 | `declaration-track:4eddfd17d406d4f487e4c70ee2feec74709f22358cceb1044537485a68a5b9fc` |
| 19 | `instance` | [liftOrGet_isLeftId](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/liftorget-isleftid.md) | 131 | `declaration-track:341527a1373a840560fb82ac543fe46a321a54d67eb44c33903b9410776622b1` |
| 20 | `instance` | [liftOrGet_isRightId](../../../../../../ComputerScience/TheoryOfData/DataStructures/OptionDefsSourceEdition2.lean/declarations/liftorget-isrightid.md) | 134 | `declaration-track:bd7d1cea5cdcee04964b337e3e008a0df822800da203564a4241d44234fb29e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe21b499a85f1c44fe942a1006866e9f544f1fb161f4c71c1954da4a6795a28f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta8f4c9c9116f2511c2ce6fa42edd3da0bff458e735399cdeffaa11c4f772ab35.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta8f4c9c9116f2511c2ce6fa42edd3da0bff458e735399cdeffaa11c4f772ab35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

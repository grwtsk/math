# Verification target: GRWTSK.Algebra.GroupTheory.Subgroup.Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3f616947b864516011c9c68fe6485ab10160bc0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/index.md) · [Full source](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3f616947b864516011c9c68fe6485ab10160bc0`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [sumCongrHom.decidableMemRange](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/declarations/sumcongrhom-decidablememrange--e666883501cb66a9ae82bd7c.md) | 39 | `declaration-track:e666883501cb66a9ae82bd7c3a3064f0bf7dc4ecb2fa47642153d2e259792f46` |
| 2 | `theorem` | [sumCongrHom.card_range](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/declarations/sumcongrhom-card-range--19e8d87bb4e42d453bc7f7d4.md) | 43 | `result-track:19e8d87bb4e42d453bc7f7d4170a4991f9bc14b0eaab71e5be3d77b219696591` |
| 3 | `instance` | [sigmaCongrRightHom.decidableMemRange](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/declarations/sigmacongrrighthom-decidablememrange--9e9348797fb8453afcdcdd1a.md) | 48 | `declaration-track:9e9348797fb8453afcdcdd1adea4d5d3ffa4179fd8238e794e38a76508a69113` |
| 4 | `theorem` | [sigmaCongrRightHom.card_range](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/declarations/sigmacongrrighthom-card-range--76a77663a2dae1eaf31b7032.md) | 53 | `result-track:76a77663a2dae1eaf31b70322a8e06e08b9e82c5ba9f7ce2d1b45aa0a92c0e2b` |
| 5 | `instance` | [subtypeCongrHom.decidableMemRange](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/declarations/subtypecongrhom-decidablememrange--90d6a8af19eecadd7d96e62a.md) | 58 | `declaration-track:90d6a8af19eecadd7d96e62ad49a79d9963042042cc0f9c46cc036f294207d90` |
| 6 | `theorem` | [subtypeCongrHom.card_range](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/declarations/subtypecongrhom-card-range--6040867b6f7c3a057af31333.md) | 63 | `result-track:6040867b6f7c3a057af31333ddcb7a35ac39f12893f75440de2d4aa68373cc9b` |
| 7 | `def` | [subgroupOfMulAction](../../../../../../Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean/declarations/subgroupofmulaction--77da85ead0597ca7f6819fe6.md) | 72 | `declaration-track:77da85ead0597ca7f6819fe67182f2ba5d53e3434656fcd3443daee006ba92fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f48ddabd9bd35d7a13f8bc76a7fc0cac6faa488c1f4601b041482bab0bd133f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Subgroup/Variant341891751cc29a880ca3794580ea7ca448be1002666be223b81ab1fdbf0cfc47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

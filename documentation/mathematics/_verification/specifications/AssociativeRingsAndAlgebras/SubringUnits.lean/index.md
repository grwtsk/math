# Verification target: Subring Units

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d32c5d0cbe4c45ac3faecea85cad88801730c3db",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SubringUnits.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SubringUnits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d32c5d0cbe4c45ac3faecea85cad88801730c3db`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Submonoid` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Units.posSubgroup](../../../../AssociativeRingsAndAlgebras/SubringUnits.lean/declarations/units-possubgroup.md) | 18 | `declaration-track:490f9b92eb43a173c435794be171531180f7e33d20d6c3a12039c73dcf9c52f6` |
| 2 | `theorem` | [Units.mem_posSubgroup](../../../../AssociativeRingsAndAlgebras/SubringUnits.lean/declarations/units-mem-possubgroup.md) | 25 | `result-track:59475d888c75dc34f5e7e4379003a190ecacaed4ea64bc61c2d416cf3f00f218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe518874080806cb438802fba7ac3c5edebbf25d042a8a9d36b4e6e6313ffa70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variant1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variant1a5002fd299d8772bb990b4536345d100b6b56d4c4784b4277c34737b7c61d90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

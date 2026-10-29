# Verification target: GRWTSK.Algebra.FieldTheory.FieldExtensions.FiniteCumulativeComposita

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d7cf1b46d6e024281ce0cc5de290b374d03432e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/FiniteCumulativeComposita.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/FiniteCumulativeComposita.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d7cf1b46d6e024281ce0cc5de290b374d03432e`.

Source path: `GRWTSK/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeField](../../../../AssociativeRingsAndAlgebras/FiniteCumulativeComposita.lean/declarations/cumulativefield.md) | 27 | `declaration-track:e7edda5ac0d821233c8c8bd0369106c20f66f9dcbf73e094bbc61b80698dfb81` |
| 2 | `theorem` | [cumulative_field_mono](../../../../AssociativeRingsAndAlgebras/FiniteCumulativeComposita.lean/declarations/cumulative-field-mono.md) | 31 | `result-track:3354faaae01d08a13044d2b6391f16c1143260c39d5a68b32cd62147033878c5` |
| 3 | `theorem` | [component_le_cumulative](../../../../AssociativeRingsAndAlgebras/FiniteCumulativeComposita.lean/declarations/component-le-cumulative.md) | 36 | `result-track:fbd418b9bfe9457135679bcc95496b154f996ea2a8612bbe5021e455d2f53e25` |
| 4 | `def` | [cumulativeInclusion](../../../../AssociativeRingsAndAlgebras/FiniteCumulativeComposita.lean/declarations/cumulativeinclusion.md) | 41 | `declaration-track:036538f39f0fdb79fedd05ff4aafe0658f442ac43236404dc5dbf11d967ef3ec` |
| 5 | `theorem` | [cumulative_inclusion_comp](../../../../AssociativeRingsAndAlgebras/FiniteCumulativeComposita.lean/declarations/cumulative-inclusion-comp.md) | 46 | `result-track:c248ab18f82f2c5d15c203033d6bfbe901d54c85ee8dad480888174f39b05ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0091346429aa07e9e489e82381e8905a4e26304f23471b06c532b30c3acd1714 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/FieldExtensions/FiniteCumulativeComposita.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

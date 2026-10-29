# Verification target: Source Proper Power Inventory Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ac32079a51818a8a083473af661561a61ced0e7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceProperPowerInventoryEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceProperPowerInventoryEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ac32079a51818a8a083473af661561a61ced0e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceProperPowerCell` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Pow` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailProperMass](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceProperPowerInventoryEdition1.lean/declarations/tailpropermass.md) | 18 | `declaration-track:df8f7109a358c2e332d7c7a5f7ffdce99ebbc640ec4d3810c7dc2e5d07e59d34` |
| 2 | `def` | [properExponentInventory](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceProperPowerInventoryEdition1.lean/declarations/properexponentinventory.md) | 22 | `declaration-track:f8740a39ad62a9d34cf5f3f2964495f784039e3a7cf27912acdffbc9e3c2aba1` |
| 3 | `theorem` | [tailProperMass_nonneg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceProperPowerInventoryEdition1.lean/declarations/tailpropermass-nonneg.md) | 25 | `result-track:817c329a0a62837f90a84cb25e8c5c4cd3382ab1601b28525f7e7898c644bcfd` |
| 4 | `theorem` | [tailProperMass_eq_exponent_sum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceProperPowerInventoryEdition1.lean/declarations/tailpropermass-eq-exponent-sum.md) | 32 | `result-track:0571538aa0862d42c0c529e62d64e965140eff54b00aa825618a8098357f5fbe` |
| 5 | `theorem` | [finite_geometric_proper_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceProperPowerInventoryEdition1.lean/declarations/finite-geometric-proper-le.md) | 96 | `result-track:5f312f9e13cc50abec67b5ab0053cbbd1e9db5ba01f9cc922f1974b7f9d1d256` |
| 6 | `theorem` | [tailProperMass_le_budget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SourceProperPowerInventoryEdition1.lean/declarations/tailpropermass-le-budget.md) | 140 | `result-track:92e874b104b44d5d5bd62c2f2a8fbcc243987090fb0dceb48323e7d064441532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d2fdb7ddc2639ba68c964de68ca8c9854ad6441b75ddcd0cb07eb15be9ecf88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

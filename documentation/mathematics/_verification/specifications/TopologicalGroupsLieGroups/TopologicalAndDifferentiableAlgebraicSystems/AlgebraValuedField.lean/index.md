# Verification target: Algebra Valued Field

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60018dfa547f52aecca1d71e0a42cfa58205705b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60018dfa547f52aecca1d71e0a42cfa58205705b`.

Source path: `GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Valuation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.WithZeroTopology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformField` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Valuation.inversion_estimate](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/valuation-inversion-estimate.md) | 51 | `result-track:01c83a3b4338866122a6b4053dd0ed3b0c1d41d905f5190712748cc3a9b9d3fb` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:9684de99e8bf870ea401169130b46895b16c625a04f591006b61e95a19edb7cc` |
| 3 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:6a13ae45be38b499e06ed62263a2b878bbf3d6bf8fcdbadf3f9839889e7d17bc` |
| 4 | `theorem` | [Valued.continuous_valuation](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/valued-continuous-valuation.md) | 117 | `result-track:f6efb232435626a84457e899f629547bcce31bdaffcb2afd2db30a943d2c5a93` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/instance.md) | 145 | `declaration-track:083da8a6bdba2d63a44b40a57a6840364c008d085feb97f9c05d8a60118fcb16` |
| 6 | `def` | [extension](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/extension.md) | 197 | `declaration-track:d43134895df8353c7438efa79507582c489ad4a36d8dab6d0a53ad6d76604637` |
| 7 | `theorem` | [continuous_extension](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/continuous-extension.md) | 201 | `result-track:88ba1ee2da7ec9a002954b819e9eefedab20f933183e22ef69e675a679e1fdae` |
| 8 | `theorem` | [extension_extends](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/extension-extends.md) | 277 | `result-track:e12d3a8ef9378e0282c3cf2f8f4b58f2081793c91492d205a7aa56458d385d45` |
| 9 | `def` | [extensionValuation](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/extensionvaluation.md) | 284 | `declaration-track:eaa923f56a848fab21b11a695e0de6bd1caa3778992b3afbe3c3873f0727ff8a` |
| 10 | `theorem` | [closure_coe_completion_v_lt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/closure-coe-completion-v-lt.md) | 320 | `result-track:b38cfcbcf4e22d3a8b211687142b82b149da652ec46719405e41fe44f0df5505` |
| 11 | `instance` | [valuedCompletion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/valuedcompletion.md) | 349 | `declaration-track:044964bab8d8119baf56e6ab9082cb37cf4053ddb14f9aeda71849ac1094138b` |
| 12 | `theorem` | [valuedCompletion_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedField.lean/declarations/valuedcompletion-apply.md) | 363 | `result-track:98b5d654c481c4560de03e26845efd0b0d8563722dfcc32c081380b7af792592` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=085e882f07a5567dee0ca3eb99a65faf6c7810c611e2272fc02eb08569cdb1ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

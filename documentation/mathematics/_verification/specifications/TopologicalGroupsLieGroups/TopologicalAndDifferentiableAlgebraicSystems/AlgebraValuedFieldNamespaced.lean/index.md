# Verification target: Algebra Valued Field Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaa3e86da26ba034441cd460067c4f6896efcbe0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaa3e86da26ba034441cd460067c4f6896efcbe0`.

Source path: `GRWTSK/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Valuation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.WithZeroTopology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformField` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Valuation.inversion_estimate](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/valuation-inversion-estimate.md) | 59 | `result-track:7358b68d7c700b65dac67306c2fd479b7ed1fc4b3b04e8041831caae0dd2da0a` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:db62644d323b61803c133915cff17dd44ff196ff2f8ffed47b0276b61894f400` |
| 3 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/instance-source-edition-2.md) | 108 | `declaration-track:8057965f5cda8f0dc2cd8f189113b3dba9a1a234d1652b6f0d08d7841a0e30b0` |
| 4 | `theorem` | [Valued.continuous_valuation](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/valued-continuous-valuation.md) | 125 | `result-track:219c971cbfb25a7bea05414f93453effbcb0ad4a4b871bdb1297da330a1e97fe` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/instance.md) | 153 | `declaration-track:449689f235afc9d2f47c19a19913c6f39081c97c0589b078cf76e1eda0adbfae` |
| 6 | `def` | [extension](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/extension.md) | 205 | `declaration-track:14facb9b563e27f9d7b0c9818c715b59c2a4909f4ccde4364c357bca6067e8a2` |
| 7 | `theorem` | [continuous_extension](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/continuous-extension.md) | 209 | `result-track:7a8de0e10774bbc5c56beedb64e2277f789da57cd9421781c195f2b2c3c6abfd` |
| 8 | `theorem` | [extension_extends](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/extension-extends.md) | 285 | `result-track:81aa38cf6447c9a5fe0f1b72d48e8009acca060ac3a1cf1a90ddcaef184526af` |
| 9 | `def` | [extensionValuation](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/extensionvaluation.md) | 292 | `declaration-track:2b3cb9b5b3922c5e310e220ba04ea1ab7bb7387233a4139eb749d64db6f4cec4` |
| 10 | `theorem` | [closure_coe_completion_v_lt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/closure-coe-completion-v-lt.md) | 328 | `result-track:7ea067fcc054e40e92fc6bfc79d5527359922fedb49b263852d3916e352af14d` |
| 11 | `instance` | [valuedCompletion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/valuedcompletion.md) | 357 | `declaration-track:1528ead888b2395cc666f5ad10e3a34411e6e83b563caa481417d2a1d25d57b3` |
| 12 | `theorem` | [valuedCompletion_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraValuedFieldNamespaced.lean/declarations/valuedcompletion-apply.md) | 371 | `result-track:c7f3fbe0362817c10790a27546d4ffe2633d20d9f848b1e93db998c772c357b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=788f3f589caffe3824647b239c4395441de1da4f995b33addb2234c5e9b3b53b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

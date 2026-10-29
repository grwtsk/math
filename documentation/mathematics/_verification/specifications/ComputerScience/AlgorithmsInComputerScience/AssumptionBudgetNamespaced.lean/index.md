# Verification target: Assumption Budget Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd6ddb29ee887d4906623fb261caeb72671e75b9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variantb797cc7f8997a8f244d394d11fef934bb332a159dc0a6083fa553b3b97a23745.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionBudgetNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionBudgetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd6ddb29ee887d4906623fb261caeb72671e75b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variantb797cc7f8997a8f244d394d11fef934bb332a159dc0a6083fa553b3b97a23745.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variantb797cc7f8997a8f244d394d11fef934bb332a159dc0a6083fa553b3b97a23745.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ProofSafety.Layer` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AssumptionBudgetEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionBudgetNamespaced.lean/declarations/assumptionbudgetentry.md) | 26 | `declaration-track:a2f8e2c5bc06cedb2f2346e233b6eac0657e5740acaabd0e66ac77e6ee10a479` |
| 2 | `structure` | [AssumptionBudget](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionBudgetNamespaced.lean/declarations/assumptionbudget.md) | 39 | `declaration-track:a8a0ef08739d9492335c8a72ea3b53c62a05517634e874e0c1ccea1951229d76` |
| 3 | `theorem` | [assumption_budget_no_contract_entries](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionBudgetNamespaced.lean/declarations/assumption-budget-no-contract-entries.md) | 52 | `result-track:e346e10558e7661fc53d863bc672ae9f9424a901092817dbf33a1b6d686984f7` |
| 4 | `theorem` | [assumption_budget_no_external_witness_entries](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionBudgetNamespaced.lean/declarations/assumption-budget-no-external-witness-entries.md) | 57 | `result-track:04def3ed86a9d6c8707d35e91f5b1e985cd38cb80044af08f0e830c122a69cef` |
| 5 | `theorem` | [assumption_budget_no_if_supplied_accessors](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionBudgetNamespaced.lean/declarations/assumption-budget-no-if-supplied-accessors.md) | 62 | `result-track:a085bfbe01dad1ba12ee65a352714f24fd9b735f7b7ac44f47cbffaf47b6cad2` |
| 6 | `theorem` | [assumption_budget_no_certified_projection_proofs](../../../../../ComputerScience/AlgorithmsInComputerScience/AssumptionBudgetNamespaced.lean/declarations/assumption-budget-no-certified-projection-proofs.md) | 67 | `result-track:5facae6fdfb82040614acfcd8c4499000f8ad193d8920428f78a84ffe8848033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93de377061a5728ce9809685db8ae17ec8f5407ff0ae4a1a1789084a9f1a4b06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variantb797cc7f8997a8f244d394d11fef934bb332a159dc0a6083fa553b3b97a23745.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AssumptionBudget/Variantb797cc7f8997a8f244d394d11fef934bb332a159dc0a6083fa553b3b97a23745.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

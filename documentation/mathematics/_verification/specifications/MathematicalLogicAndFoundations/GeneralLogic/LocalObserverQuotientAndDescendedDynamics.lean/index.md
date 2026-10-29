# Verification target: Local Observer Quotient And Descended Dynamics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6663036f120377d3275d31a23116ce581b0e3b50",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientPresentations/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/LocalObserverQuotientAndDescendedDynamics.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6663036f120377d3275d31a23116ce581b0e3b50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientPresentations/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/LocalObserverQuotientAndDescendedDynamics.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientPresentations/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/LocalObserverQuotientAndDescendedDynamics.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocalCausalEquivalent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalequivalent.md) | 56 | `declaration-track:6fc6b8d709d5e91ccd90cf2afb6a7d3dd95e757796498f404d536fc44f2a38d4` |
| 2 | `theorem` | [localCausalEquivalent_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalequivalent-refl.md) | 64 | `result-track:847ef8d63d10d72ffcc3cbf0b556a86831663569cef6fd2a79192848dc67561e` |
| 3 | `theorem` | [localCausalEquivalent_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalequivalent-symm.md) | 72 | `result-track:3de7141bff83e2a6352122bb3593197f53fd72c61c357f1c0897c7dbae28f4cb` |
| 4 | `theorem` | [localCausalEquivalent_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalequivalent-trans.md) | 80 | `result-track:8811f6d610c67c5fc9a087e1e097d8af806c2d51e8146fa4482b852a1bc0417b` |
| 5 | `def` | [localCausalSetoid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalsetoid.md) | 90 | `declaration-track:78eaf1194b07e21f47c96704c41631f568e0f47fdd70cf4366d0c22ab3315552` |
| 6 | `def` | [LocalCausalState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalstate.md) | 101 | `declaration-track:d3adc4aad8ba23a267442f8f0a9f933d71ae31e160708c0580604d230419b7d5` |
| 7 | `def` | [toLocalCausal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/tolocalcausal.md) | 107 | `declaration-track:24c3cae3308384c64d2ad25bd8e1dda63daf0f960d6fd6a5dc4093774951804b` |
| 8 | `theorem` | [toLocalCausal_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/tolocalcausal-eq-iff.md) | 114 | `result-track:ab68e507d92c543b8c3d3966cb78fc4ed3c9acd81ae02982952dba4f1e271136` |
| 9 | `theorem` | [localCausalEquivalent_step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalequivalent-step.md) | 127 | `result-track:1448e818a03a4f45dcdf611126e6412248a9fa64d246f253c347ca8d0e652063` |
| 10 | `def` | [localCausalStep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalstep.md) | 139 | `declaration-track:12e368c3137bf3a4e700475bb2c06418734172a22e011bd5682bb65d8bc1bd3e` |
| 11 | `theorem` | [localCausalStep_toLocalCausal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalstep-tolocalcausal.md) | 148 | `result-track:f7d19e2fab6cc2b2ae10c4af96006428c1e9d1da78b679d6c5cf4d307b690698` |
| 12 | `def` | [localCausalObserve](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalobserve.md) | 158 | `declaration-track:2ef9e0fb3ffa053eb88c4deb544083d6519ae5b58b19abce385d1c2837f2ab79` |
| 13 | `theorem` | [localCausalObserve_toLocalCausal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/declarations/localcausalobserve-tolocalcausal.md) | 167 | `result-track:92d2efd06abc675ce834c23e42a94f7c9bf30a1f2a815de57859037f76715a35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27f5e36b355c74fdd6dd412e0a7ea57f0df01935ad3211b9ba400733c52bc182 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientPresentations/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/LocalObserverQuotientAndDescendedDynamics.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientPresentations/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/LocalObserverQuotientAndDescendedDynamics.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Surjective Input And Iso Causal Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7088822257de90c1ba2cf8695b848217a148a822",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variantd017e5c17eee8065/SurjectiveInputAndIsoCausalTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7088822257de90c1ba2cf8695b848217a148a822`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variantd017e5c17eee8065/SurjectiveInputAndIsoCausalTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variantd017e5c17eee8065/SurjectiveInputAndIsoCausalTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.System` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Operations` — import line 23; external provider; requires a separately pinned dependency.
- [Full Future Trace Quotient](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FullFutureTraceQuotient.lean/index.md) — import line 24; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_causalEquivalent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/declarations/map-causalequivalent.md) | 61 | `result-track:2ed5941ae8622539f1943d3e6982a2e90aa092746a1f0cbd19e18cfb1e3dfbd2` |
| 2 | `def` | [causalStateMap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/declarations/causalstatemap.md) | 77 | `declaration-track:31f326abf3f8a8921eee6e4b7cdbe837ead7d3491dcd63f2e094d50265ba60a4` |
| 3 | `theorem` | [causalStateMap_toCausal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/declarations/causalstatemap-tocausal.md) | 85 | `result-track:43ec8df5298abd3b877d0d1018cb7caad6d87eb563c9b2420a18fef655099559` |
| 4 | `theorem` | [causalStateMap_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/declarations/causalstatemap-surjective.md) | 101 | `result-track:67b057c5ee0c2b4242fcf19956fb62fafaab5199582917c0d2bd5824574c5f9f` |
| 5 | `theorem` | [causalEquivalent_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/declarations/causalequivalent-iff.md) | 120 | `result-track:53a68bf3baad2d666c7e7a3b88e21388bb5b0cd01e73738d693e66bbe246d49a` |
| 6 | `def` | [causalStateEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/declarations/causalstateequiv.md) | 133 | `declaration-track:3662be39af59f90d803d45d2c25201f7fcd690e37e2018ef5e0b157fabf3acd5` |
| 7 | `theorem` | [causalStateEquiv_toCausal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SurjectiveInputAndIsoCausalTransport.lean/declarations/causalstateequiv-tocausal.md) | 151 | `result-track:437860632517e1acb6f5c38cd160e41431c55f7a9771c1371df2f2d3b502f9e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f723a2ab2add8643eea476ab9ac1e00a7f99708f872917afbcd93e4cce3a8cc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variantd017e5c17eee8065/SurjectiveInputAndIsoCausalTransport.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variantd017e5c17eee8065/SurjectiveInputAndIsoCausalTransport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

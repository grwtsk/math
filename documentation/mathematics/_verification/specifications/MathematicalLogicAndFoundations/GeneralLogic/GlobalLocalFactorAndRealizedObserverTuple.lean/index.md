# Verification target: Global Local Factor And Realized Observer Tuple

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81ae2b57b15a8a6806cd4d91ee016d3fd7b5be94",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/GlobalLocalFactorAndRealizedObserverTuple.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81ae2b57b15a8a6806cd4d91ee016d3fd7b5be94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/GlobalLocalFactorAndRealizedObserverTuple.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/GlobalLocalFactorAndRealizedObserverTuple.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.CausalState` — import line 21; external provider; requires a separately pinned dependency.
- [Local Observer Quotient And Descended Dynamics](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LocalObserverQuotientAndDescendedDynamics.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [causalToLocal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/causaltolocal.md) | 57 | `declaration-track:64a019bbd61a694c3ad855664d04d75820bcfa2a59e8e811705b84f972bdab6d` |
| 2 | `theorem` | [causalToLocal_toCausal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/causaltolocal-tocausal.md) | 64 | `result-track:bae2788082ec11238af60265c6e3405daaed8c48e291a7616e97b83a20802c18` |
| 3 | `theorem` | [causalToLocal_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/causaltolocal-surjective.md) | 73 | `result-track:6f9b1e18c44f052e6e45ef9e50a8cac75d00b46f4f124d844c4c15fafc940ef4` |
| 4 | `theorem` | [causalToLocal_step](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/causaltolocal-step.md) | 83 | `result-track:a310f17df09152523446cec89c9e1bd87d794cac07674538a6c77176acf105b7` |
| 5 | `theorem` | [causalToLocal_observe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/causaltolocal-observe.md) | 95 | `result-track:254ada97c5a5660d003b422e534b367fee3e36828d2fd400be82364fbc61100b` |
| 6 | `def` | [observerTuple](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/observertuple.md) | 108 | `declaration-track:23662f6d370ea0f92041075edf330fe3c3ccaa2a3169c2b9c64bf4b6d5a0adff` |
| 7 | `theorem` | [observerTuple_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/observertuple-injective.md) | 114 | `result-track:709dbcdd6315d2c90d3d7c1f83eab057a2c30465a0bc6df636b66cb9aab381df` |
| 8 | `def` | [ObserverTupleImage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/observertupleimage.md) | 128 | `declaration-track:dc68156314e4c6b730d405b8929c72f9628d48a40a503030106ea7b8bbfc7183` |
| 9 | `def` | [toObserverTupleImage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/toobservertupleimage.md) | 134 | `declaration-track:b9ec63385ff3419b28cd2d18bb1bcdb21fc2a8962fcb3547cbaad7ec87522fe5` |
| 10 | `def` | [causalStateEquivObserverTupleImage](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GlobalLocalFactorAndRealizedObserverTuple.lean/declarations/causalstateequivobservertupleimage.md) | 140 | `declaration-track:6cde3ffe1b66c959063c44d5397592f8de82cae174ef23aa501e6c324fdf5795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddef02c8f0e7c7537a936edcfa89259283b08aa3d6023940959dd2b65bdd723e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/GlobalLocalFactorAndRealizedObserverTuple.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/QuotientElimination/FiniteGraphAndObservationComponents/Variant580cc666770ddb3d/GlobalLocalFactorAndRealizedObserverTuple.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

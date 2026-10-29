# Verification target: GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3b690f74328227b786b867372039d61a92b44d2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FiniteProductResponseIdentification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3b690f74328227b786b867372039d61a92b44d2`.

Source path: `GRWTSK/NumberTheory/Moebius/FiniteProductResponseIdentification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FiniteProductResponseIdentification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.LogarithmicResponse`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/LogarithmicResponse.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct`](../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteTranslationProduct.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primeInventory_eq](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/primeinventory-eq.md) | 12 | `result-track:f004c3c77e4505651d1788f09d33936a28f5f942abe5722a497901b1fb027418` |
| 2 | `def` | [primeState](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/primestate.md) | 16 | `declaration-track:2c112de42e846e373f126910d452ac7c9a33aca391d968e45cf32895a9335566` |
| 3 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/sourceenergy.md) | 19 | `declaration-track:99d3fa67535c95beacac49a5bde2c04760c2bb1d28e665781e877defbdcd89df` |
| 4 | `theorem` | [atom_source_bridge](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/atom-source-bridge.md) | 22 | `result-track:f103c3e7060773f0f8ca9796b02bca211e2d6867ec4e3d1e7960fd6e789ffd09` |
| 5 | `theorem` | [completed_pickup_identification](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/completed-pickup-identification.md) | 25 | `result-track:30c68c1dc1db80420dd5315a408df1ca97f0aad275d4fd889d0396321850e378` |
| 6 | `theorem` | [completed_pickup_restriction](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/completed-pickup-restriction.md) | 30 | `result-track:0fe9ac0cd760a364c27dc8e05cb40db7c744d32646ac965e4ff966fddc112322` |
| 7 | `theorem` | [sourceEnergy_completed](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/sourceenergy-completed.md) | 37 | `result-track:175df40b0d2d7b2fe1f888f829c7a196a7fae905e8af7636e69326d182f424f5` |
| 8 | `theorem` | [primeState_empty](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/primestate-empty.md) | 45 | `result-track:3c12a481a952989c07ddf60f26fe22e7d449df6c509a596051f44f3a6501373f` |
| 9 | `theorem` | [sourceEnergy_nonneg](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/sourceenergy-nonneg.md) | 51 | `result-track:36a768087e83843ad9a968ab06b68133ef1811dd14a68d1dbcfe8cd4f6329b2d` |
| 10 | `theorem` | [baseWave_eq_atom_one](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/basewave-eq-atom-one.md) | 54 | `result-track:dd9ec112f546ac78593cf1ec7cd90c9deb8c947bb0a3289dd88f2f122e2ce8e7` |
| 11 | `theorem` | [sourceEnergy_empty_bound](../../../../MeasureAndIntegration/FiniteProductResponseIdentification.lean/declarations/sourceenergy-empty-bound.md) | 58 | `result-track:673bf3751a49aaf11bc0612a19b767d9b151f60031ea7d44556589759a2e9381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d3428ea565207fd421cb93eb228483031b8ac0a1f19524416b84f41608cb14b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/FiniteProductResponseIdentification.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/FiniteProductResponseIdentification.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

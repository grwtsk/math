# Verification target: GRWTSK.Analysis.InnerProductSpace.CausalIndividualRealization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c0b1f76322c939ccb53b82b4476615c43026ee4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CausalIndividualRealization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalIndividualRealization.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalIndividualRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c0b1f76322c939ccb53b82b4476615c43026ee4`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CausalIndividualRealization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CausalIndividualRealization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.NonzeroVectorRealization`](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceNonzeroVectorRealization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost`](../../../../../MeasureAndIntegration/CausalContactOperatorCost.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [response_pos_after_contact](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalIndividualRealization.lean/declarations/response-pos-after-contact.md) | 41 | `result-track:1e76e4d88be146f40bf0fd7b2902a438f82439754100709e233a8c96a2629fe1` |
| 2 | `theorem` | [gram_diagonal_pos](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalIndividualRealization.lean/declarations/gram-diagonal-pos.md) | 54 | `result-track:bcdd4bf0526b590228a53787ccdc688a0f68b6334ba733449593c8b98c743cd8` |
| 3 | `theorem` | [original_window_L2_ne_zero_of_strict_maturity](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalIndividualRealization.lean/declarations/original-window-l2-ne-zero-of-strict-maturity.md) | 71 | `result-track:ed35c688177cdcf5f9a2c721a07f9515cf66e5701961a2a08de4d61a7aca7928` |
| 4 | `theorem` | [bounded_individual_realization_exists](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalIndividualRealization.lean/declarations/bounded-individual-realization-exists.md) | 80 | `result-track:8fe9aa269eb431833c04e5e4b6f91f4f43e8b6a24b1c054c799aff02945c8f12` |
| 5 | `theorem` | [prescribed_horizon_individual_realization](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalIndividualRealization.lean/declarations/prescribed-horizon-individual-realization.md) | 96 | `result-track:9930afaeabe63ca66bb126976dfa11eded823b82cf47257382327d7903a5b3b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=503971fb87f2aa65750f33761638ca24a81530997cf307b8b1289204ab531584 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/CausalIndividualRealization.lean","GRWTSK/_verification/specifications/Analysis/InnerProductSpace/CausalIndividualRealization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

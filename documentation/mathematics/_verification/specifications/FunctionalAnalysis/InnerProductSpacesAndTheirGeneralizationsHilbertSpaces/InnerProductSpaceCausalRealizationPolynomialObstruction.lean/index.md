# Verification target: GRWTSK.Analysis.InnerProductSpace.CausalRealizationPolynomialObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bcf3f7d36074fae6a1360dbf88f960510396329",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalRealizationPolynomialObstruction.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalRealizationPolynomialObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bcf3f7d36074fae6a1360dbf88f960510396329`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination`](../../../../../RealFunctions/SpecialFunctionsExponentialPolynomialDomination.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost`](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalLastLabelOperatorCost.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Order.Bounds.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [last_label_realization_exceeds_polynomial](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalRealizationPolynomialObstruction.lean/declarations/last-label-realization-exceeds-polynomial.md) | 46 | `result-track:0acbcd98d233918ac34dd342efb6c58ec8a670f43a01a8bf652befb04ed62c92` |
| 2 | `theorem` | [whole_inventory_realization_exceeds_polynomial](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalRealizationPolynomialObstruction.lean/declarations/whole-inventory-realization-exceeds-polynomial.md) | 57 | `result-track:69069c325090f25c12510ba4767b84442b9b5d80825e799906a9de50b240c036` |
| 3 | `theorem` | [prescribed_horizon_realization_exceeds_polynomial](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalRealizationPolynomialObstruction.lean/declarations/prescribed-horizon-realization-exceeds-polynomial.md) | 68 | `result-track:6a63b13425bd1516c65ff7689b712fb235f2fac36e6374add322022002dc16b6` |
| 4 | `theorem` | [no_polynomial_individual_realization_on_unbounded_scales](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalRealizationPolynomialObstruction.lean/declarations/no-polynomial-individual-realization-on-unbounded-scales.md) | 87 | `result-track:03260cd52665aa835cd521bdba1554305792ddb9fc4f550089d7bfb58c89d6f7` |
| 5 | `theorem` | [no_polynomial_inventory_realization_on_unbounded_scales](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceCausalRealizationPolynomialObstruction.lean/declarations/no-polynomial-inventory-realization-on-unbounded-scales.md) | 106 | `result-track:2b231ff50320b399231f4f8bbe68562c96ce43099df940dc88bea439efc3006d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d5e5e4ace0ae9b626613fb076105e47f9e8e99c7826df71dc2d91a42a8c61b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean","GRWTSK/_verification/specifications/Analysis/InnerProductSpace/CausalRealizationPolynomialObstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

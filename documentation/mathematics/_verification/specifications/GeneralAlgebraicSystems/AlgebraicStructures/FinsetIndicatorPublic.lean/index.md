# Verification target: Finset Indicator Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b53392170be2282d8e58218c00aed4cb6592c56",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant4a476d53162384abc7a4b6b6d2e5b1ac201ae9fe6bb5bbf81a3120121382ec3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b53392170be2282d8e58218c00aed4cb6592c56`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variant4a476d53162384abc7a4b6b6d2e5b1ac201ae9fe6bb5bbf81a3120121382ec3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variant4a476d53162384abc7a4b6b6d2e5b1ac201ae9fe6bb5bbf81a3120121382ec3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_mulIndicator_subset_of_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/declarations/prod-mulindicator-subset-of-eq-one.md) | 34 | `result-track:eaad55c70d0d0d34331cf28283501f0a8ef574883a5e14601074d559e7d14403` |
| 2 | `lemma` | [prod_mulIndicator_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/declarations/prod-mulindicator-subset.md) | 45 | `result-track:bc950473f181e1a161deeb554d42c6f095e6a9fbc54973d998b05e76e0aa4a94` |
| 3 | `lemma` | [prod_mulIndicator_eq_prod_filter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/declarations/prod-mulindicator-eq-prod-filter.md) | 50 | `result-track:3b15ba524f4230030a84a209434a06476f3d9e33accc33c653ffdee47f5437b2` |
| 4 | `lemma` | [prod_mulIndicator_eq_prod_inter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/declarations/prod-mulindicator-eq-prod-inter.md) | 59 | `result-track:2589cc737dc22f1f34529ff04adad647c19a088c1440b0bac9348dd310e72315` |
| 5 | `lemma` | [mulIndicator_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/declarations/mulindicator-prod.md) | 64 | `result-track:a7dfd5a82c1b9d4d09210f44fd3fe0ac96657c660cb6eb6e0fee4ac76c28c772` |
| 6 | `lemma` | [mulIndicator_biUnion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/declarations/mulindicator-biunion.md) | 69 | `result-track:70b7c73d4ccbd43e3730a9fd2977c11223216ba40de6bdc420a2aaabe3e75057` |
| 7 | `lemma` | [mulIndicator_biUnion_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FinsetIndicatorPublic.lean/declarations/mulindicator-biunion-apply.md) | 82 | `result-track:cb1f2143ab6877c6a0f815ffb9ff5e7550be74a9af16880649b7ac0c34bba0db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2486598585c6ccc1b9237947aa9b9dc4d78c710ab9329cfded8e85bcd040650 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Indicator/Variant4a476d53162384abc7a4b6b6d2e5b1ac201ae9fe6bb5bbf81a3120121382ec3b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Indicator/Variant4a476d53162384abc7a4b6b6d2e5b1ac201ae9fe6bb5bbf81a3120121382ec3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

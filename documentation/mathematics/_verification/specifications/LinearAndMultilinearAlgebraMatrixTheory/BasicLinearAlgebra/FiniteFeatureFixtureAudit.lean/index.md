# Verification target: Finite Feature Fixture Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bab8452ee55b9af5bd5413216ec59866ce493968",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bab8452ee55b9af5bd5413216ec59866ce493968`.

Source path: `GRWTSK/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteFeatureGeometry` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twoCoordinateFeature](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/twocoordinatefeature.md) | 17 | `declaration-track:b0a5e1d93ab452626015b5b14a5f81f723f6d6a60bf92b237c4f0e063f816c38` |
| 2 | `def` | [rationalWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/rationalweight.md) | 27 | `declaration-track:eb34881801f1edaa9dcc818cae597b3dd363e80a245064e1db2e7e9a053aa265` |
| 3 | `theorem` | [rationalWeight_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/rationalweight-pos.md) | 29 | `result-track:c568fc414039ca118a93c49190eda5832b0ee4ed86036bb400758730f8e54bae` |
| 4 | `theorem` | [retained_energy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/retained-energy.md) | 33 | `result-track:167a4b3374a72f6e4a81a0f36091cd21a364e720079f1ecc410a8404922713eb` |
| 5 | `theorem` | [protected_null](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/protected-null.md) | 40 | `result-track:1a99602676c1e126eb697a910d105d5814b3c79b2684b50e6a0594b909a074f8` |
| 6 | `theorem` | [protected_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/protected-quotient.md) | 52 | `result-track:5fd1a71ff49ce96079ece63dc911bcf982346eb1649411acc81929f76caa527e` |
| 7 | `def` | [positiveOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/positiveoperator.md) | 65 | `declaration-track:13afdd62f9b5c6274109a87d1a87e87e6e0ebf57cf0e872fdcc8fddaa065872d` |
| 8 | `def` | [indefiniteOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/indefiniteoperator.md) | 68 | `declaration-track:fd65773ae6de7432caaf1832830984e0cdf70d153a0e0455b0b9c111e6818ca7` |
| 9 | `theorem` | [same_linear_kernel_different_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteFeatureFixtureAudit.lean/declarations/same-linear-kernel-different-sign.md) | 78 | `result-track:37f79a1ee91133a744b44af5650b8907ea1a75bd46665f5588fef9d864254f80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fa30b29b07462a4c74303e83441d97113b4c79fd1af7c1226a5d4f4c82e6352 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63FiniteFeatureFix/Variant320a5c7613c876ca5de25f89a4b020b443e679789bdf57084c4dc62bcc291f63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

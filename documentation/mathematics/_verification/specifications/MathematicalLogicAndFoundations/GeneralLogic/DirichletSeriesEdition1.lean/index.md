# Verification target: Dirichlet Series Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dc0b7069c6c63c9c7acd404b311ca2d2b78aba6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dc0b7069c6c63c9c7acd404b311ca2d2b78aba6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfPlane](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/declarations/halfplane.md) | 17 | `declaration-track:a2dfa6c743634e6068c7c2d8f23a18beb81f8326e2526d7dc268ca3ff8775c62` |
| 2 | `structure` | [DirichletSeries](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/declarations/dirichletseries.md) | 22 | `declaration-track:7d19be3b3c81887936b88287279f3137a423392f75e49499766fa75c38a770ac` |
| 3 | `structure` | [AbsoluteConvergenceCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/declarations/absoluteconvergencecertificate.md) | 27 | `declaration-track:117634413728fca5c52df0aa5eaee2cfb3f0229860db91b69dda0b1c2e7ebd21` |
| 4 | `structure` | [CauchyProductCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/declarations/cauchyproductcertificate.md) | 36 | `declaration-track:4c7549c45091b511ca41bb637bc6e1a48563d9f2389f14b61521548b103fedf8` |
| 5 | `theorem` | [absolute_convergence_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/declarations/absolute-convergence-sound.md) | 45 | `result-track:29a9a27f1514a7f318fcdce3a957dd75a8e0901db0c1992c31778f1912ef835b` |
| 6 | `theorem` | [cauchy_product_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/declarations/cauchy-product-sound.md) | 52 | `result-track:07322a0c1092663fd08df8bc639c7e53f08d668ac70d598a475f1c5e367c9903` |
| 7 | `def` | [DirichletSeriesOwnsConvergence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/declarations/dirichletseriesownsconvergence.md) | 63 | `declaration-track:66378f5e4c720abc0ebff7c8a31862059ba837fec8e362d3ded5a90038af3791` |
| 8 | `theorem` | [dirichlet_series_not_convergence_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesEdition1.lean/declarations/dirichlet-series-not-convergence-authority.md) | 67 | `result-track:81799954e5f11633d892773cad32b875c8048c82bd1a2ecfdfa7683e63fd6354` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b8f940f287fe53a83b84014ae18d3b7f39cd904927c6b22463fbc01adaf3fa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

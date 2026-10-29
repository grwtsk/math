# Verification target: Dirichlet Series Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5153d11272ba484b723356ead2ab3e9ee98d268",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant0bb8d0a7ffd4938e9f8c7ba4c3bee2fdc7b6d6e387c51d8be899b7b5eb8074bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5153d11272ba484b723356ead2ab3e9ee98d268`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant0bb8d0a7ffd4938e9f8c7ba4c3bee2fdc7b6d6e387c51d8be899b7b5eb8074bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant0bb8d0a7ffd4938e9f8c7ba4c3bee2fdc7b6d6e387c51d8be899b7b5eb8074bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.Certificate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfPlane](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/declarations/halfplane.md) | 25 | `declaration-track:3f09889712c8f0c1578677a8c7e144bb361856f6775015090b4408999e87d873` |
| 2 | `structure` | [DirichletSeries](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/declarations/dirichletseries.md) | 30 | `declaration-track:6b198bf8488fce52bd98dcf805928cd04e7af1ed9b524e14343df10bd0ae9f38` |
| 3 | `structure` | [AbsoluteConvergenceCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/declarations/absoluteconvergencecertificate.md) | 35 | `declaration-track:18c7674563f1838dba2619b5217cc8cd1360c66d6cd1d3831d66e1cb6ea770b7` |
| 4 | `structure` | [CauchyProductCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/declarations/cauchyproductcertificate.md) | 44 | `declaration-track:ac4d85e7388863a99e8e3d2d09dff97cea1171f52ff77269d0616fa7f899b792` |
| 5 | `theorem` | [absolute_convergence_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/declarations/absolute-convergence-sound.md) | 53 | `result-track:943dd5db937f2d0f728b79d466a25aa3718697cbf8c2bbbf0c7d0856df258721` |
| 6 | `theorem` | [cauchy_product_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/declarations/cauchy-product-sound.md) | 60 | `result-track:ba826ab0751470313fa6231ffae0e12761348f911c508e0bc5306009e9bdc7f1` |
| 7 | `def` | [DirichletSeriesOwnsConvergence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/declarations/dirichletseriesownsconvergence.md) | 71 | `declaration-track:678368070bd1a5882081e927da4b87338e6f727406ca8f1d26bf4a5f3c2dec3e` |
| 8 | `theorem` | [dirichlet_series_not_convergence_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DirichletSeriesNamespacedEdition1.lean/declarations/dirichlet-series-not-convergence-authority.md) | 75 | `result-track:83315a5e828053c0ecd9ff8d3720cf8e1d8ec2e594e77fe40bf0d5347106a16b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe41f086dfdc7b3ebab0e7523e0838caa2216084e84baaebb11d38267231f30f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant0bb8d0a7ffd4938e9f8c7ba4c3bee2fdc7b6d6e387c51d8be899b7b5eb8074bb.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletSeries/Variant0bb8d0a7ffd4938e9f8c7ba4c3bee2fdc7b6d6e387c51d8be899b7b5eb8074bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

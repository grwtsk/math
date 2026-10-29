# Verification target: Convergence In Distribution Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a21da7944b9948957408fd561a3883c7cd85441",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a21da7944b9948957408fd561a3883c7cd85441`.

Source path: `GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean.json)

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
| 1 | `structure` | [TendstoInDistribution](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution.md) | 64 | `declaration-track:e0255c1d59414a935df1739d4ecc3df324ee89d628f8cf785534cab984e7157f` |
| 2 | `theorem` | [tendstoInDistribution_iff_forall_integral_rclike_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-iff-forall-integral-rclike-tendsto.md) | 72 | `result-track:d9417c40cf3357a706df2653714ba92c5c8c60306e38480cfe5405d7b0d016aa` |
| 3 | `lemma` | [tendstoInDistribution_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-const.md) | 88 | `result-track:b0063295083d183b5da4fbb7ef908c6decefeb553b7540cf0ae70392a4c63299` |
| 4 | `lemma` | [tendstoInDistribution_of_identDistrib](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-of-identdistrib.md) | 94 | `result-track:904fda56b9b2a2a2923dacd2369571a2e23e843b5e423d7a527910ccda7e74a0` |
| 5 | `lemma` | [TendstoInDistribution.congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-congr.md) | 104 | `result-track:3eda88a3d69587d8c50806a060512490874a1cbdbca9c44ff9a93bb5e631763a` |
| 6 | `lemma` | [tendstoInDistribution_of_isEmpty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-of-isempty.md) | 116 | `result-track:c4075e29754cd74ae0aef7fd9e90246a00f184299c7e5d4189a0dddf11d791a1` |
| 7 | `lemma` | [tendstoInDistribution_unique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-unique.md) | 125 | `result-track:166fde7c5a10c5cc1ad3222dac28324eac2c0c85e9e0e73e458e8fda59728ba1` |
| 8 | `theorem` | [TendstoInDistribution.continuous_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-continuous-comp.md) | 136 | `result-track:8853ed3b8fc88980fb78903e7e114bbf0c62ca926388bcf63310d22a94e03031` |
| 9 | `theorem` | [tendstoInDistribution_of_ae_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-of-ae-tendsto.md) | 152 | `result-track:64bbac6f59f9486914705d0ec72d80bd4a817bcbfc144004954bb72bde28b55d` |
| 10 | `theorem` | [TendstoInMeasure.tendstoInDistribution](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoinmeasure-tendstoindistribution.md) | 175 | `result-track:4d03b636db8f84a96895c75f951cbd78c5154ca4ba57991cf60267ff26500cac` |
| 11 | `lemma` | [tendstoInDistribution_of_tendstoInMeasure_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-of-tendstoinmeasure-sub.md) | 192 | `result-track:5b1982dc25c2dea47778ec5864d982659bad07a93a8fc2363b56bd9138e1b891` |
| 12 | `lemma` | [TendstoInMeasure.tendstoInDistribution_of_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoinmeasure-tendstoindistribution-of-aemeasurable.md) | 304 | `result-track:58d2dc849dc39d6e4a79a7c00eb638e2dd6e44c74a2d39f10ef101141c7bb06c` |
| 13 | `theorem` | [TendstoInDistribution.prodMk_of_tendstoInMeasure_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-prodmk-of-tendstoinmeasure-const.md) | 313 | `result-track:68a423749c56e0e05602ae3c2a62d78a9c620ac730858740377c25e1b2b665bc` |
| 14 | `theorem` | [TendstoInDistribution.continuous_comp_prodMk_of_tendstoInMeasure_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-continuous-comp-prodmk-of-tendstoinmeasure-const.md) | 333 | `result-track:e813073ac4f173ffb132485479f92abe29e64bffb22d5a32326e5182981dd2be` |
| 15 | `lemma` | [TendstoInDistribution.add_of_tendstoInMeasure_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConvergenceInDistributionPublic.lean/declarations/tendstoindistribution-add-of-tendstoinmeasure-const.md) | 345 | `result-track:5f6d6ef53c3cb17de29195d9d918fa45c6d90bba386b927f590493e5ce584ff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5bf34b5f9f5e7cdf0081080f4e8aa7c993a5037d8e03d2e9552f5138055e15e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ConvergenceInDistribution/Variant11f09777bf2f054e6e1304ea481e1d4b991aaa43e36ef786407438093cf60ac9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

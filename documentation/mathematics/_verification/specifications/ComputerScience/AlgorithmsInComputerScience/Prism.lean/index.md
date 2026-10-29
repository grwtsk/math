# Verification target: Prism

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cff28f1a9ba2aeab3fc43dd61a97bd7317cc410d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variant331b8a16c58d66f182012850e1ea592f63928ba65570988e219c53e4442a7b7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cff28f1a9ba2aeab3fc43dd61a97bd7317cc410d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variant331b8a16c58d66f182012850e1ea592f63928ba65570988e219c53e4442a7b7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variant331b8a16c58d66f182012850e1ea592f63928ba65570988e219c53e4442a7b7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Prismatic.Distinguished` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeltaPair](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/deltapair.md) | 22 | `declaration-track:8557ca450868ee04a5975f5b6b7623f01332d89199785b2e4b52ae1e5757cc05` |
| 2 | `structure` | [Prism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/prism.md) | 28 | `declaration-track:22bb66793372059d59acaef1802931d94af75f00d2ec9f65b1dbe96186bc9643` |
| 3 | `theorem` | [prism_condition_unfold](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/prism-condition-unfold.md) | 34 | `result-track:cad0e3d7801f9e9edde5aaebea68f17e84c016f3edaf358e692fd58f7a1694f3` |
| 4 | `structure` | [BoundedPrism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/boundedprism.md) | 44 | `declaration-track:7cf4a1b839a27e467875dad260b84ee5df233b2594c3c81d61db3683e706de3a` |
| 5 | `structure` | [OrientablePrism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/orientableprism.md) | 49 | `declaration-track:10db20211ec449e004c163e8fcc170584976f82a09ed75a1a044a3fb2c0a76a8` |
| 6 | `def` | [orientable_prism_has_distinguished_generator](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/orientable-prism-has-distinguished-generator.md) | 54 | `declaration-track:c96347fd9d2e2bd97604e34dadaf828033a1bcdc5ca14de5ea204d46af265c90` |
| 7 | `structure` | [PerfectPrism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/perfectprism.md) | 60 | `declaration-track:6cf0532219828882f71eb67dba7430b0cbe8a380b85ad5de419738c56b42f10f` |
| 8 | `structure` | [CrystallinePrism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/crystallineprism.md) | 66 | `declaration-track:3662617f8b619b57705fef8917b2947cc18c3090e77dfbf951a9d661dad7a95c` |
| 9 | `structure` | [CrystallineConstructionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/crystallineconstructioncertificate.md) | 72 | `declaration-track:7e3b584467061d7e4edeba6a8293fac0b790a272fbb7f0894f982812952375a2` |
| 10 | `def` | [crystalline_prism_from_p_torsionfree_p_complete_frobenius_lift](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/crystalline-prism-from-p-torsionfree-p-complete-frobenius-lift.md) | 83 | `declaration-track:b9b0b26c97e3f4bde7ad9d11ea3abab98d7df3ff3011216a88aa17963f1e85fb` |
| 11 | `structure` | [PerfectPrismBoundedCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/perfectprismboundedcertificate.md) | 89 | `declaration-track:b30b4474b0cbc28e14be5a701cb520e49854b56353c940693288fc643fb1d361` |
| 12 | `def` | [perfect_prism_is_bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/perfect-prism-is-bounded.md) | 95 | `declaration-track:691fb3d3d37e25d16328ce0e002c9d8e540bf0d4c2f8f829565cb35619769e8d` |
| 13 | `def` | [unitPrism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/unitprism.md) | 102 | `declaration-track:3ec3fdaf33ee047b9e18dcb33f9dd723876a405f1c94401b150371cebddfd688` |
| 14 | `def` | [unitBoundedPrism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/unitboundedprism.md) | 126 | `declaration-track:b29a813349d54606f9ec404f8e22d0e2a9474b02a6db55bfdb8c96bf161acacb` |
| 15 | `def` | [unitOrientablePrism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prism.lean/declarations/unitorientableprism.md) | 136 | `declaration-track:f97bf70925984e4cd13b2392b7bf8c147d790f212ed8aaaaff7380ee9d91bef3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d19f83f01bdd0e72b58296153a2f4dd87d5c17078a6c3e7766557fb303a53b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variant331b8a16c58d66f182012850e1ea592f63928ba65570988e219c53e4442a7b7a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prism/Variant331b8a16c58d66f182012850e1ea592f63928ba65570988e219c53e4442a7b7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

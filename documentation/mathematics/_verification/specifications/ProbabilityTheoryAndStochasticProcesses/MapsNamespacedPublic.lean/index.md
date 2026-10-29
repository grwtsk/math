# Verification target: Maps Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ad570c3db434b0cb1d0c167fe77923cde195a56",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ad570c3db434b0cb1d0c167fe77923cde195a56`.

Source path: `GRWTSK/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IocProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iocprodioc.md) | 35 | `declaration-track:1305bfcfbf2482f9bd1a85076709533ead1762455e1e76a80c2842a89cc1e72b` |
| 2 | `lemma` | [measurable_IocProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/measurable-iocprodioc.md) | 41 | `result-track:799b6b9b6202aed16a43d6d7be35ec3b883d12abe6235d8cef2104c385c03730` |
| 3 | `def` | [IicProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iicprodioc-source-edition-2.md) | 52 | `declaration-track:cdb924d27573f21051868efc8fcd88d4051c7c63e32ec1939946c57d53658a00` |
| 4 | `lemma` | [IicProdIoc_def](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iicprodioc-def.md) | 60 | `result-track:4bd500c645d228f32cf8d1131ea3487a66be4e54a5a32b2775a2ec183b448701` |
| 5 | `lemma` | [frestrictLe₂_comp_IicProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/frestrictle-comp-iicprodioc.md) | 64 | `result-track:fc11f595242b9fd097006616cb696bbb58864f1e79b980e595f0b60ad0d3f620` |
| 6 | `lemma` | [restrict₂_comp_IicProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/restrict-comp-iicprodioc.md) | 69 | `result-track:5fd2a06d04a8ae71700321990f5ed00a22ed733241572f5484dbd156ad805f92` |
| 7 | `lemma` | [IicProdIoc_self](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iicprodioc-self.md) | 75 | `result-track:3e381744161b5b7fa268cffc15de1628be63f365695283770797362a5fdf40b7` |
| 8 | `lemma` | [IicProdIoc_le](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iicprodioc-le.md) | 79 | `result-track:3b63f7608f1f0ea69c856e4088bb6989bd115e0c64dfa07e3d3422f22a284b06` |
| 9 | `lemma` | [IicProdIoc_comp_restrict₂](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iicprodioc-comp-restrict.md) | 84 | `result-track:3013225bfde0eeccf15f694a43cb569a68102df603fef3276591e41fb8861c92` |
| 10 | `lemma` | [measurable_IicProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/measurable-iicprodioc.md) | 92 | `result-track:af2a405a811ea2645e77ef42119acb26e34c4aeaec292f0081abb0df051c7103` |
| 11 | `def` | [IicProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iicprodioc.md) | 102 | `declaration-track:422f3724748b2a9f5fdcc0bea750a4f203bdf4d381b08078e2ab93172c6eff4b` |
| 12 | `lemma` | [coe_IicProdIoc](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/coe-iicprodioc.md) | 119 | `result-track:90ba4b31c64348666db44b9a826816a336de4aada5dee32bda0efab3880ec1fb` |
| 13 | `lemma` | [coe_IicProdIoc_symm](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/coe-iicprodioc-symm.md) | 122 | `result-track:852d54548403b5e4dc20714cbcacc81b353918aa198c52c1b7965d10591806a6` |
| 14 | `def` | [IicProdIoi](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iicprodioi.md) | 128 | `declaration-track:cff7203ad7d23fdc6a90cf657669d62c0ce1fae16bb05f75dd5c46a233c1c263` |
| 15 | `def` | [MeasurableEquiv.piSingleton](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/measurableequiv-pisingleton.md) | 154 | `declaration-track:559d23c8fd18cadf4541b5305244d5cdb5d64ab1329168b8b9f7bcd3736d9e5d` |
| 16 | `lemma` | [Maps Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iocprodioc-preimage.md) | 172 | `result-track:b995e8f94878211c22841d749a013958b19536be3bd9b8da1a66eef4c71a0770` |
| 17 | `lemma` | [Maps Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/MapsNamespacedPublic.lean/declarations/iicprodioc-preimage.md) | 183 | `result-track:f34db797f58b5a3d61347e0db045619d1f989addf6c443fefb644941cdc9e81c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=285c029c96c443cf481eb324618213079883a339f53e1248e66069bc72b6fa86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Maps/Variant7bbae54de41d69f2afbdab9016d85a2bf06983ce56c4b68eb8b995ee73a29647.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

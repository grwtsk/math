# Verification target: Residual Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a042baee6b49b52299bf7369465c509ec8cf159e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant0a092f4bea9478092b8972b343635a6807765e65a783e82d25264f4f48f646bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a042baee6b49b52299bf7369465c509ec8cf159e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant0a092f4bea9478092b8972b343635a6807765e65a783e82d25264f4f48f646bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant0a092f4bea9478092b8972b343635a6807765e65a783e82d25264f4f48f646bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidualKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/residualkind.md) | 27 | `declaration-track:e16c21f8424e48463f0fb12337f57f46d9c19011e3e259fb4410066f3c777254` |
| 2 | `structure` | [ResidualBound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/residualbound.md) | 41 | `declaration-track:d1b082e6f6413894ebab214dbb062aa3056cd32acee7b62db94e49f4d7304070` |
| 3 | `def` | [advance](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/advance.md) | 52 | `declaration-track:0e12ffce7e77f538b687aef987fd9d139778d88f387a4b403100d8ae70dc4754` |
| 4 | `def` | [propagateFrom](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/propagatefrom.md) | 59 | `declaration-track:a6dadf21e9da672cb4156b4c552eb0b3875e8576a89d52ccfbe81d15ed3a2ff3` |
| 5 | `def` | [propagateResiduals](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/propagateresiduals-source-edition-2.md) | 66 | `declaration-track:d33bb3c0c9f7c5c0186da37566d11bc491834b32d7e25e5b97bf59ba937768b9` |
| 6 | `def` | [downstreamGain](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/downstreamgain.md) | 72 | `declaration-track:9933d05a799ad0edeae9c66905184ebde70dd55e2d494bb159ee5ccd692ef682` |
| 7 | `def` | [weightedResidual](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/weightedresidual.md) | 78 | `declaration-track:8b5e63b76737018661feb518ce62d33f834065c05b68dfa68089e57e5bf2a3d7` |
| 8 | `theorem` | [propagateFrom_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/propagatefrom-nil.md) | 86 | `result-track:5a745c97c3af47d4e35c408aa90dd071110ddf05d01d38ae8be30a59d83d5b8f` |
| 9 | `theorem` | [propagateFrom_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/propagatefrom-cons.md) | 91 | `result-track:f1f90d1f2882e46645170b3629620d752d9eeeea3b2babb8a471293ca4f774c5` |
| 10 | `theorem` | [propagateFrom_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/propagatefrom-append.md) | 99 | `result-track:3319442dc1157a3d4609935df8f6d15870f94264a9cbc4a085cd3556775cf39e` |
| 11 | `theorem` | [propagateFrom_closedForm](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/propagatefrom-closedform.md) | 114 | `result-track:76bbf2e50e3969246db68d5945798bce1321da1be30071166d7920ba88e8f5a6` |
| 12 | `theorem` | [propagateResiduals_closedForm](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/propagateresiduals-closedform.md) | 131 | `result-track:65a88ea62fd525397d5e0b4c8812560213b9b7b73d558416a09db26e5157c7b9` |
| 13 | `def` | [propagateResiduals](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/propagateresiduals.md) | 140 | `declaration-track:1350169c05590fdf03a24071e8d1fcb334d679e07a37c66e48779c1573c6967f` |
| 14 | `structure` | [ControlledApproximation](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/controlledapproximation.md) | 158 | `declaration-track:5294cada62aef2782f57a880a7efa31ed7b6001c6ff2d6a745a6b6068cc9f2fd` |
| 15 | `def` | [id](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/id.md) | 175 | `declaration-track:5a4738c69ebd012f2a2a1033dccd34383022f135074d808894c8fb8a5333a72f` |
| 16 | `def` | [comp](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/comp.md) | 190 | `declaration-track:d0b38c64df90ae72bafa3bab1aa12a6f0cd28f33028078dc8fd1ea4c11505f4a` |
| 17 | `theorem` | [comp_localError](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/comp-localerror.md) | 231 | `result-track:44d3698341fb5ea6064a9f2517622ebbed8c1c0f88f7d1685f3c972461c4d3e5` |
| 18 | `theorem` | [comp_lipschitz](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/comp-lipschitz.md) | 239 | `result-track:cd386c78096e135b9b6f16a55358af2730cf63e348e543ddecc306046e3621d5` |
| 19 | `theorem` | [comp_error_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/comp-error-assoc.md) | 246 | `result-track:d1882548da83e798050c0fb2eff94013a11f72a44d5931ebb14507a5bc7033e5` |
| 20 | `structure` | [ApproximationStep](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/approximationstep.md) | 266 | `declaration-track:a88d5e72b11b3eb54bcc73869d1936b8c9a275d0798355615fd41b7396b8314a` |
| 21 | `def` | [toResidualBound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/toresidualbound.md) | 282 | `declaration-track:1450a23a73ee98d62f3ace7bdb087c03e924b680d4b3e32457f9da009c3b44fd` |
| 22 | `theorem` | [one_step_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/one-step-bound.md) | 291 | `result-track:d8e90e9cc7a8056304e313513ad5462d5d3e8030f46506c534ce19eb14ac5e22` |
| 23 | `def` | [runReference](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/runreference.md) | 327 | `declaration-track:d7301b3d65bb7c1cf85053622a552bc4a9cb67fb0a8b48eadc6be4a96db9ba37` |
| 24 | `def` | [runImplementation](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/runimplementation.md) | 334 | `declaration-track:0b09114badc9e46a6c55e31fdf336075f9f379f0f522e4f8f6964268bdfc9ca7` |
| 25 | `theorem` | [run_error_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/ResidualNamespacedEdition1.lean/declarations/run-error-bound.md) | 341 | `result-track:6a81b6faedc5330f0b798ab54706ae80887b1e66cf9b52f653bd5535459f84c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9301c294cbb17de69874ddd96485e61834f1a55932cad76644defd5a4c4a01c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant0a092f4bea9478092b8972b343635a6807765e65a783e82d25264f4f48f646bc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant0a092f4bea9478092b8972b343635a6807765e65a783e82d25264f4f48f646bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

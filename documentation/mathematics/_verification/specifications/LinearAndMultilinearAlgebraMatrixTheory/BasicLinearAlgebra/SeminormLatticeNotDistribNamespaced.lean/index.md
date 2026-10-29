# Verification target: Seminorm Lattice Not Distrib Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f10a8e067d17f3c368e640726e4442d60606fe2d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormLatticeNotDistrib/Variant8254dfc14c4061683b190f9032b0c102df623dbdf4994db7ebc45ac4d485868a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SeminormLatticeNotDistribNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SeminormLatticeNotDistribNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f10a8e067d17f3c368e640726e4442d60606fe2d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormLatticeNotDistrib/Variant8254dfc14c4061683b190f9032b0c102df623dbdf4994db7ebc45ac4d485868a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormLatticeNotDistrib/Variant8254dfc14c4061683b190f9032b0c102df623dbdf4994db7ebc45ac4d485868a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Seminorm` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SeminormLatticeNotDistribNamespaced.lean/declarations/p.md) | 39 | `declaration-track:281def0262f8434aa71fbfa31fa5ba7c1628cdb72585c2a2c1fe738df365f7fd` |
| 2 | `def` | [q1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SeminormLatticeNotDistribNamespaced.lean/declarations/q1.md) | 43 | `declaration-track:4d1c2eaf1b3d2e81462d12f15b49224b7a3234137ff37bb645cd0e85cac98778` |
| 3 | `def` | [q2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SeminormLatticeNotDistribNamespaced.lean/declarations/q2.md) | 47 | `declaration-track:dc71d1bcb4eab1971734f8f1cace2cda7960f4e828ef24d2fed65fe082d51e7a` |
| 4 | `theorem` | [eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SeminormLatticeNotDistribNamespaced.lean/declarations/eq-one.md) | 50 | `result-track:48fadbaee9d105296d7b9ba11e45fd38c5cb6956fd5921368b4aefe710f56ca6` |
| 5 | `theorem` | [not_distrib](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SeminormLatticeNotDistribNamespaced.lean/declarations/not-distrib.md) | 56 | `result-track:3ce464fdd55e432de3946eb503088f295f7e689a69b1edb869a14597a8e4a4cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fbac578a8188262019a35776e5947e068755bed56de66a282a37aff7d480ac7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormLatticeNotDistrib/Variant8254dfc14c4061683b190f9032b0c102df623dbdf4994db7ebc45ac4d485868a.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormLatticeNotDistrib/Variant8254dfc14c4061683b190f9032b0c102df623dbdf4994db7ebc45ac4d485868a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

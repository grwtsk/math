# Verification target: GRWTSK.Topology.GeneralTopology.SpectralTopology.Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c02a514b18b65f0d1f216fb1243c4d8193b3c211",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c02a514b18b65f0d1f216fb1243c4d8193b3c211`.

Source path: `GRWTSK/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.FiniteFunctionAlgebra` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroIndicator](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/declarations/zeroindicator--6ec6baac5e04930a238fcad4.md) | 26 | `declaration-track:6ec6baac5e04930a238fcad4e13c3fce0204cd8c0dfdc48c5ef124f7df533051` |
| 2 | `theorem` | [zeroIndicator_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/declarations/zeroindicator-eq-zero-iff--2dd80bf50fc92cd5d74c766f.md) | 32 | `result-track:2dd80bf50fc92cd5d74c766f92854f17ead0c3f0022124a3418a9db4228f4fd3` |
| 3 | `theorem` | [every_set_is_zero_locus](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/declarations/every-set-is-zero-locus--7fb860190c4b6a5c2c2d3ac0.md) | 39 | `result-track:7fb860190c4b6a5c2c2d3ac067547349fd3b5dea79346850f4248f8baf74d1dc` |
| 4 | `def` | [finiteSpectralTopology](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/declarations/finitespectraltopology--ff4e2a0c768ee97f8beab99e.md) | 45 | `declaration-track:ff4e2a0c768ee97f8beab99e8e13082dfc7abac93d3008385e91623b2165db00` |
| 5 | `theorem` | [finiteSpectralTopology_isOpen](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/declarations/finitespectraltopology-isopen--90a595e0cc922db9a3f125db.md) | 57 | `result-track:90a595e0cc922db9a3f125dbd9fbde2a9e19e3e7e90c3b85c1cc7b8b2e160f52` |
| 6 | `theorem` | [finiteSpectralTopology_isClosed](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/declarations/finitespectraltopology-isclosed--fe3383e1d76848ade138e2b4.md) | 63 | `result-track:fe3383e1d76848ade138e2b4970c0ade8318cc2fb3a67d0e97d5d382aa10c5ee` |
| 7 | `theorem` | [singleton_clopen](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/declarations/singleton-clopen--a585f5a819e652ee78b7a56e.md) | 70 | `result-track:a585f5a819e652ee78b7a56e9cb9878dd43c9f8475d82f41b153286698921695` |
| 8 | `theorem` | [full_function_determining_sample_eq_univ](../../../../../mathematics/Topology/GeneralTopology/SpectralTopology/Variant37f2cb7931c6bb070fc86a7a962075006dc688d64ec5eec87f821efba75015f4.lean/declarations/full-function-determining-sample-eq-univ--d0d4e713a4f2b161cfc4de51.md) | 77 | `result-track:d0d4e713a4f2b161cfc4de5151263c3dc919fd3d5015685efca87fcd080fe519` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

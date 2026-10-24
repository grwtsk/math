# Verification target: GRWTSK.Topology.GeneralTopology.RealVectorSpace.Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "291475058122b0b2ab0036ffb18ac8d05f76ce6a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `291475058122b0b2ab0036ffb18ac8d05f76ce6a`.

Source path: `GRWTSK/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_real_smul](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/declarations/map-real-smul--7dccfaffdc65e7d5c14ae212.md) | 30 | `result-track:7dccfaffdc65e7d5c14ae2123c90ca19d3b27b27b22a0c270c36af53b20d66da` |
| 2 | `def` | [toRealLinearMap](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/declarations/toreallinearmap--4452a2f41ccba2d2944b838b.md) | 41 | `declaration-track:4452a2f41ccba2d2944b838b443892c827e6a6dd4f9c3ac3700549bb3bef5a2e` |
| 3 | `theorem` | [coe_toRealLinearMap](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/declarations/coe-toreallinearmap--f820647c20130fce919131d4.md) | 47 | `result-track:f820647c20130fce919131d4f00e196bcdec85a4697a97a656f9c67c4f4ba262` |
| 4 | `def` | [AddEquiv.toRealLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/declarations/addequiv-toreallinearequiv--31c888a021433a072d51ccf1.md) | 54 | `declaration-track:31c888a021433a072d51ccf1eca26ee27b56eb2062ec9c42073b6512f680c0c3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/declarations/instance--49bc3ec2328a912edeb44842.md) | 61 | `declaration-track:49bc3ec2328a912edeb448421c93897af16d6fe3a260f3e0d8e862d2ee4524d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.RealVectorSpace.Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fd3382672de66cd91d738b2915f8c9172ff268c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fd3382672de66cd91d738b2915f8c9172ff268c`.

Source path: `GRWTSK/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_real_smul](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean/declarations/map-real-smul--4a3f1c72ebd7ec92b961081b.md) | 22 | `result-track:4a3f1c72ebd7ec92b961081bbf4d21447c82b872a7bb85d5141824eb89e2e469` |
| 2 | `def` | [toRealLinearMap](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean/declarations/toreallinearmap--5bb5b92b0c31e5d668b03ae0.md) | 33 | `declaration-track:5bb5b92b0c31e5d668b03ae0b824de5fcbb0616aa2c8da2a932c72100e45147b` |
| 3 | `theorem` | [coe_toRealLinearMap](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean/declarations/coe-toreallinearmap--e3ba5bd1542e7f5b71cd5706.md) | 39 | `result-track:e3ba5bd1542e7f5b71cd5706a05636ea6895f4fc294a57b2288f0dda5bed1800` |
| 4 | `def` | [AddEquiv.toRealLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean/declarations/addequiv-toreallinearequiv--b3fd15b5df2755f46a8a8e81.md) | 46 | `declaration-track:b3fd15b5df2755f46a8a8e81cf2335a2a1522b732205742fd4c44911dfafb765` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/RealVectorSpace/Variant5f1655bb05d911c896d767aebbaede3f58a642be27cd3f69d0e90b5e8b7ac8f0.lean/declarations/instance--6e1c5a5f872d8627f2b31493.md) | 53 | `declaration-track:6e1c5a5f872d8627f2b31493ea695d566bfcbde8a3c6296ea87d980e61e8e5de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

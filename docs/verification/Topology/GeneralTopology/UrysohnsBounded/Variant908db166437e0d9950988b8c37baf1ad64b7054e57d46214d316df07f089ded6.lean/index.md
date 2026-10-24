# Verification target: GRWTSK.Topology.GeneralTopology.UrysohnsBounded.Variant908db166437e0d9950988b8c37baf1ad64b7054e57d46214d316df07f089ded6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bccd93354faf956a9113b9a3709006787f7937cf",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UrysohnsBounded/Variant908db166437e0d9950988b8c37baf1ad64b7054e57d46214d316df07f089ded6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UrysohnsBounded/Variant908db166437e0d9950988b8c37baf1ad64b7054e57d46214d316df07f089ded6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UrysohnsBounded/Variant908db166437e0d9950988b8c37baf1ad64b7054e57d46214d316df07f089ded6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bccd93354faf956a9113b9a3709006787f7937cf`.

Source path: `GRWTSK/Topology/GeneralTopology/UrysohnsBounded/Variant908db166437e0d9950988b8c37baf1ad64b7054e57d46214d316df07f089ded6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UrysohnsBounded/Variant908db166437e0d9950988b8c37baf1ad64b7054e57d46214d316df07f089ded6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UrysohnsLemma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_bounded_zero_one_of_closed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsBounded/Variant908db166437e0d9950988b8c37baf1ad64b7054e57d46214d316df07f089ded6.lean/declarations/exists-bounded-zero-one-of-closed--ba8a7da239c36c48068e9102.md) | 41 | `result-track:ba8a7da239c36c48068e9102559737720ddb0f0e6cfe6aa914507eef598fbb8f` |
| 2 | `theorem` | [exists_bounded_mem_Icc_of_closed_of_le](../../../../../mathematics/Topology/GeneralTopology/UrysohnsBounded/Variant908db166437e0d9950988b8c37baf1ad64b7054e57d46214d316df07f089ded6.lean/declarations/exists-bounded-mem-icc-of-closed-of-le--f3561272e78beacc676f5913.md) | 54 | `result-track:f3561272e78beacc676f59133c5a036b9b46f7a37b632096683d6b3609754db7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.UniformConvergence.Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cbf598174be47be71d2fa7d4c33a3fab10ed6ae",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformConvergence/Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cbf598174be47be71d2fa7d4c33a3fab10ed6ae`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformConvergence/Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformConvergence/Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformConvergence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [UniformFun.continuousSMul_induced_of_range_bounded](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011.lean/declarations/uniformfun-continuoussmul-induced-of-range-bounded--e589d58bc97162318282886a.md) | 66 | `result-track:e589d58bc97162318282886a698e480a58d7e9b0800687e439c12e8ac99a22b1` |
| 2 | `lemma` | [UniformOnFun.continuousSMul_induced_of_image_bounded](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011.lean/declarations/uniformonfun-continuoussmul-induced-of-image-bounded--f50fa90f07514bd704820492.md) | 101 | `result-track:f50fa90f07514bd704820492fe596140ac10d90620c9c3a66ef8c96f126a2531` |
| 3 | `theorem` | [UniformOnFun.continuousSMul_submodule_of_image_bounded](../../../../../mathematics/Topology/GeneralTopology/UniformConvergence/Variant5f208c1fe13df9eb643a9bc57b10666f3e58c758ab008d952e18294ae7d07011.lean/declarations/uniformonfun-continuoussmul-submodule-of-image-bounded--657a02d8ff1c9d1933eb7ba8.md) | 121 | `result-track:657a02d8ff1c9d1933eb7ba8d04807ece2fc0827686d951a6e102a7e567d231a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

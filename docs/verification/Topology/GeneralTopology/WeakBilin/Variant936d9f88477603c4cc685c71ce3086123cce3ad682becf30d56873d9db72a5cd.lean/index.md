# Verification target: GRWTSK.Topology.GeneralTopology.WeakBilin.Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b60dc7bddcd73b8e6136c134fe374efa9d4ca242",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b60dc7bddcd73b8e6136c134fe374efa9d4ca242`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [WeakBilin](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/weakbilin--200a22cc55a7bde3c8eea511.md) | 64 | `declaration-track:200a22cc55a7bde3c8eea51109230c1ce9971f48106e35a8594a609f0992625d` |
| 2 | `instance` | [instAddCommMonoid](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/instaddcommmonoid--4daf1c227670d9806e893d73.md) | 72 | `declaration-track:4daf1c227670d9806e893d7351941f61a444a4e5b53f2783d9ad8f82b56d1d79` |
| 3 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/instmodule--8a42dcb6ee4f472606a9ca34.md) | 75 | `declaration-track:8a42dcb6ee4f472606a9ca345bda7c8c5f7e7ef445a83f5587fbd6f86655afab` |
| 4 | `instance` | [instAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/instaddcommgroup--25add7ab80adea33c3df7004.md) | 78 | `declaration-track:25add7ab80adea33c3df700440101d338e9acd23a77aca7ee13e54123a146a32` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/instance--aef0f7c7baa223cbd02f10de.md) | 81 | `declaration-track:aef0f7c7baa223cbd02f10de13593628c01475d7de6652aaf57067758f3fb3b8` |
| 6 | `instance` | [instIsScalarTower](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/instisscalartower--5371c007b075bcc961c98dc6.md) | 85 | `declaration-track:5371c007b075bcc961c98dc6575ccdecb8e6c2f2539dd38526f6503d2b11d1a4` |
| 7 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/insttopologicalspace--f46943b17d2ad0680cc8d01e.md) | 96 | `declaration-track:f46943b17d2ad0680cc8d01e712d222325a9041520df17a4b52e588d96759562` |
| 8 | `theorem` | [coeFn_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/coefn-continuous--269fde041a9e929abfa0253f.md) | 100 | `result-track:269fde041a9e929abfa0253fa13d8c765d50199582f7058aa29e61e7e8c66e03` |
| 9 | `theorem` | [eval_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/eval-continuous--7273f8f9dfa720595eaaa807.md) | 104 | `result-track:7273f8f9dfa720595eaaa807cbbf534cb1b35c69c5c2939cab349da0aaa6f6ee` |
| 10 | `theorem` | [continuous_of_continuous_eval](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/continuous-of-continuous-eval--1544614dcc04f3cc37925f00.md) | 107 | `result-track:1544614dcc04f3cc37925f0026356fd7c16d2a901e802fc8c5cacc16b10c7d8f` |
| 11 | `theorem` | [isEmbedding](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/isembedding--ef093584cfc3ccd15bd0357f.md) | 112 | `result-track:ef093584cfc3ccd15bd0357f0a3c24cabe48a5938e5e307ef72f7240fdc9e9c4` |
| 12 | `theorem` | [tendsto_iff_forall_eval_tendsto](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/tendsto-iff-forall-eval-tendsto--360a5a63311ec9f76fa306cc.md) | 119 | `result-track:360a5a63311ec9f76fa306ccfc537097a3bddeda276826b1c30f4b0f51532e59` |
| 13 | `instance` | [instContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/instcontinuousadd--f1392b0f8185fa81bd92af3f.md) | 126 | `declaration-track:f1392b0f8185fa81bd92af3feb24216161564c3665390c5e67dd0ecff2dfbd91` |
| 14 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/instcontinuoussmul--270617cbf35df75f0698e277.md) | 135 | `declaration-track:270617cbf35df75f0698e2770124aeb98aea080b58129bbda7de2825b9381e83` |
| 15 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/eval--2a72cf944f76c2b057d7399a.md) | 145 | `declaration-track:2a72cf944f76c2b057d7399a2fb2314b85ae5356d35dfb2203b5b9fca9217cc8` |
| 16 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/WeakBilin/Variant936d9f88477603c4cc685c71ce3086123cce3ad682becf30d56873d9db72a5cd.lean/declarations/instistopologicaladdgroup--2f6fb3f326d94345f7d34295.md) | 164 | `declaration-track:2f6fb3f326d94345f7d342958883ad6e1d87aa2895bb92ba09293320335813a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

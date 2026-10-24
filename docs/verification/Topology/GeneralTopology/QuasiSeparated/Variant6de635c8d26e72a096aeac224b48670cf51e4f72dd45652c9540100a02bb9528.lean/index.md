# Verification target: GRWTSK.Topology.GeneralTopology.QuasiSeparated.Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e20d455f2ab89168a0eab7a80337338455addd59",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e20d455f2ab89168a0eab7a80337338455addd59`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Bases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NoetherianSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsQuasiSeparated](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/isquasiseparated--a1e6e8b2336cfde9c3896485.md) | 37 | `declaration-track:a1e6e8b2336cfde9c389648589d03eb92c919895f6c6a2ab13c7da9c4f9f4423` |
| 2 | `class` | [QuasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/quasiseparatedspace--109864db54e8920868322c5a.md) | 43 | `declaration-track:109864db54e8920868322c5a307dddb0666d5d8aab6f9d293b80a1dff2868258` |
| 3 | `theorem` | [isQuasiSeparated_univ_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/isquasiseparated-univ-iff--ec5e22442bb9ae5dc49336c4.md) | 48 | `result-track:ec5e22442bb9ae5dc49336c4bb2f4b6e2dd1fae55366c74db55d5f1faeff4a35` |
| 4 | `theorem` | [isQuasiSeparated_univ](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/isquasiseparated-univ--dcb869df847d42cb5ab48454.md) | 53 | `result-track:dcb869df847d42cb5ab4845473ac829e93ceaa6161ae68f05901dd5f69ac4087` |
| 5 | `theorem` | [IsQuasiSeparated.image_of_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/isquasiseparated-image-of-isembedding--74f575cc9be616f26911a9a0.md) | 57 | `result-track:74f575cc9be616f26911a9a031f138eebb54de67e829f72e3c6dca2f813ab94a` |
| 6 | `theorem` | [Topology.IsOpenEmbedding.isQuasiSeparated_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/topology-isopenembedding-isquasiseparated-iff--c3c3864c1b6d8664bde9e724.md) | 84 | `result-track:c3c3864c1b6d8664bde9e7243bdc56e482b0577bedc28e920b29980cee481d0a` |
| 7 | `theorem` | [isQuasiSeparated_iff_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/isquasiseparated-iff-quasiseparatedspace--ea8a4159afdcbffdda32b30c.md) | 93 | `result-track:ea8a4159afdcbffdda32b30c2a2c97bcf8642924a1eef31b293803b06597658a` |
| 8 | `theorem` | [IsQuasiSeparated.of_subset](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/isquasiseparated-of-subset--eae479191602fbd21c88333a.md) | 99 | `result-track:eae479191602fbd21c88333a75b5943183ce96537f6ec48bf36911f6f7073afd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/instance--e644454897be5b386ab0efe0.md) | 104 | `declaration-track:e644454897be5b386ab0efe0b2b4f7acd55f7a33d57b2217b27f26f6231fa8c6` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/instance--d66431251e5e84c69a3152fa.md) | 107 | `declaration-track:d66431251e5e84c69a3152fafbc7db953b210acba3e07f8058e736ee53cf7aef` |
| 11 | `lemma` | [QuasiSeparatedSpace.of_isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/quasiseparatedspace-of-istopologicalbasis--9fbab5d5476aa2337ec12250.md) | 111 | `result-track:9fbab5d5476aa2337ec122502053fbb8e795975aaefc5585408c910a8ebd36a7` |
| 12 | `lemma` | [IsQuasiSeparated.of_quasiSeparatedSpace](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/isquasiseparated-of-quasiseparatedspace--e06035801273209a515ea26f.md) | 125 | `result-track:e06035801273209a515ea26f7e08e70553ee8f450ad06090dc0554a0d8a5b60b` |
| 13 | `lemma` | [QuasiSeparatedSpace.of_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/quasiseparatedspace-of-isopenembedding--6c90f6319af5a3f76dd15afb.md) | 128 | `result-track:6c90f6319af5a3f76dd15afbccb015c5f81792f9bbcfd728faefe72220802ee1` |
| 14 | `lemma` | [IsCompact.inter_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/iscompact-inter-of-isopen--3a41c9523be5ad57d7ffc8c8.md) | 132 | `result-track:3a41c9523be5ad57d7ffc8c83814a9e81ac4383c7098ea1d93765ec6b1df95fd` |
| 15 | `lemma` | [quasiSeparatedSpace_congr](../../../../../mathematics/Topology/GeneralTopology/QuasiSeparated/Variant6de635c8d26e72a096aeac224b48670cf51e4f72dd45652c9540100a02bb9528.lean/declarations/quasiseparatedspace-congr--c05ae451848fabdf88617552.md) | 138 | `result-track:c05ae451848fabdf8861755274b7c9527bcc55be888cec6e072a6c13b6215af9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

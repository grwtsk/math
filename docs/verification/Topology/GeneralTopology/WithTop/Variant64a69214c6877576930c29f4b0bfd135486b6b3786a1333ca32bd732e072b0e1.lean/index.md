# Verification target: GRWTSK.Topology.GeneralTopology.WithTop.Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88fae060bbd92d743989cd8960fc5432219a1a36",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88fae060bbd92d743989cd8960fc5432219a1a36`.

Source path: `GRWTSK/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/instance--00959a6f56fc9a09eba304e4.md) | 26 | `declaration-track:00959a6f56fc9a09eba304e435232525fb5dedad62d9a832c93c21b37114adef` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/instance--f5ea487ae5ca75ceab1b89cb.md) | 32 | `declaration-track:f5ea487ae5ca75ceab1b89cb4edf7a56c5f035f345920bffeab301982f91ba95` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/instance--4aba57442f2306eda95ba428.md) | 34 | `declaration-track:4aba57442f2306eda95ba428e8f06d5c6b99d3de8e059189ef186ab36f981ecc` |
| 4 | `lemma` | [isEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/isembedding-coe--35cce516709dc0394a012821.md) | 191 | `result-track:35cce516709dc0394a012821d0361ea686858a094410838bf8d9e6d4bfcf2d12` |
| 5 | `lemma` | [isOpenEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/isopenembedding-coe--ab1adbf4281a9d79df82bbcf.md) | 197 | `result-track:ab1adbf4281a9d79df82bbcff9bf92b003dc7222ba3758c42b804e4a08b69b3a` |
| 6 | `lemma` | [nhds_coe](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/nhds-coe--ca95d5d1c09b34a31606c1b5.md) | 201 | `result-track:ca95d5d1c09b34a31606c1b5afd3071a634601ce1afb93e448a5ff54abf2760f` |
| 7 | `lemma` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/continuous-coe--b3a3e5e96481d30d32269e3c.md) | 205 | `result-track:b3a3e5e96481d30d32269e3c39b66bc29998bffeb3d242b094cf1ebf398023a6` |
| 8 | `lemma` | [tendsto_untopD](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/tendsto-untopd--fbb0a4e4735d2608e34ec8c2.md) | 212 | `result-track:fbb0a4e4735d2608e34ec8c218467acdee3c08f94632901bc14983dacffa5a3c` |
| 9 | `lemma` | [continuousOn_untopD](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/continuouson-untopd--7be76ae87c6ec22284acf1ab.md) | 219 | `result-track:7be76ae87c6ec22284acf1aba08649d0ded0605e0ba477fe4fc648e5569050da` |
| 10 | `lemma` | [tendsto_untopA](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/tendsto-untopa--7d5ff670a6f9990d68b10370.md) | 223 | `result-track:7d5ff670a6f9990d68b10370c3f7cebee46ef7ef6ed892f37c1b0b8525cbb77a` |
| 11 | `lemma` | [continuousOn_untopA](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/continuouson-untopa--9a9bc8fcf0ce68e5fc827722.md) | 227 | `result-track:9a9bc8fcf0ce68e5fc82772231bd0fc91e1676b3ae69dfef8484dceb45fdcf16` |
| 12 | `lemma` | [tendsto_untop](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/tendsto-untop--7585084243bf3f3dea8aab69.md) | 231 | `result-track:7585084243bf3f3dea8aab6941ff942b385af3ac8c2a48a2ae4a96dda7831883` |
| 13 | `lemma` | [continuous_untop](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/continuous-untop--87590ad96bbc0a9d63857b7c.md) | 238 | `result-track:87590ad96bbc0a9d63857b7c91f420494b62bc8e2c2196450a64368af5a98540` |
| 14 | `def` | [neTopHomeomorph](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/netophomeomorph--5df53fb11c1385cb106189fc.md) | 247 | `declaration-track:5df53fb11c1385cb106189fc60c448e6110faa78a20db5b6e82b65682aa74700` |
| 15 | `def` | [sumHomeomorph](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/sumhomeomorph--115e5491ed929b7b9ef7b4b0.md) | 256 | `declaration-track:115e5491ed929b7b9ef7b4b018236388b54360f68f7d084ab817a63630ea34a6` |
| 16 | `lemma` | [tendsto_nhds_top_iff](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/tendsto-nhds-top-iff--255f58653daa065d55b7ee90.md) | 276 | `result-track:255f58653daa065d55b7ee9088c4d7ec119d26a2cca3fd671d3e36a851035c8a` |
| 17 | `lemma` | [tendsto_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/declarations/tendsto-coe-attop--9f91c19808c8978d6a2d0d85.md) | 284 | `result-track:9f91c19808c8978d6a2d0d85f422ca58dce793456e2d833032f24edc87e4daab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

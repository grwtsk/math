# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.HeineCantor.Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1f3a2b8be3550e3e0a7a428c4615e184f342e72",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1f3a2b8be3550e3e0a7a428c4615e184f342e72`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CompactSpace.uniformContinuous_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/compactspace-uniformcontinuous-of-continuous--767098d519121b4aa5b85308.md) | 42 | `result-track:767098d519121b4aa5b853082db64464ada983569eee7f4f002fca4a6a0ebeef` |
| 2 | `theorem` | [IsCompact.uniformContinuousOn_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/iscompact-uniformcontinuouson-of-continuous--d1d1376f2dabba1ec44535f8.md) | 51 | `result-track:d1d1376f2dabba1ec44535f8dc21f7c75ed1535a2f7e30b6447c762ff3352e9c` |
| 3 | `theorem` | [IsCompact.uniformContinuousAt_of_continuousAt](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/iscompact-uniformcontinuousat-of-continuousat--9c2066ef489dc4eebc23a7b6.md) | 62 | `result-track:9c2066ef489dc4eebc23a7b6e792b274040b2e37a3455947406fd50052dfe632` |
| 4 | `theorem` | [Continuous.uniformContinuous_of_tendsto_cocompact](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/continuous-uniformcontinuous-of-tendsto-cocompact--0909081796a02971210379ce.md) | 76 | `result-track:0909081796a02971210379ce92611046020e947945af7a74c2e4b2daaa5162e6` |
| 5 | `theorem` | [HasCompactMulSupport.uniformContinuous_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/hascompactmulsupport-uniformcontinuous-of-continuous--f396142fcfbdb69b9c50bcc3.md) | 93 | `result-track:f396142fcfbdb69b9c50bcc3620ff0eed6e315ffb4c7467be5d0b44e597c16b8` |
| 6 | `theorem` | [ContinuousOn.tendstoUniformly](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/continuouson-tendstouniformly--4d784400d62268ad53996c1d.md) | 99 | `result-track:4d784400d62268ad53996c1ddf557401308d35bb5401b788db5a85b3a5669fe5` |
| 7 | `theorem` | [Continuous.tendstoUniformly](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/continuous-tendstouniformly--0b9db8647a3867d6197c1d9e.md) | 110 | `result-track:0b9db8647a3867d6197c1d9e00c5fe220919dbf52f52b8564326a5a5433c99cf` |
| 8 | `lemma` | [IsCompact.mem_uniformity_of_prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/iscompact-mem-uniformity-of-prod--8c43424b430d28c3d42bb8d8.md) | 120 | `result-track:8c43424b430d28c3d42bb8d8326d183f4f0f6a1acb2a78bcc863ef02b079dc7e` |
| 9 | `theorem` | [CompactSpace.uniformEquicontinuous_of_equicontinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/HeineCantor/Varianta651e4619986cf874f895b198c153f618fbccd4f6cc3ba54b932277486ab826e.lean/declarations/compactspace-uniformequicontinuous-of-equicontinuous--f1ac9025472e2d298dbda6c5.md) | 148 | `result-track:f1ac9025472e2d298dbda6c5e65515616e1fc06abdc97e96c68ce65350bbf713` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

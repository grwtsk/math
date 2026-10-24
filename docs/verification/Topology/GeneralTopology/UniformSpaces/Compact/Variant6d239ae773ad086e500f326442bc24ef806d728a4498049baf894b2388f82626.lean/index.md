# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Compact.Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41a3f0bf5d5798ac6c8ebebffda2b793f2c004aa",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41a3f0bf5d5798ac6c8ebebffda2b793f2c004aa`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Support` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nhdsSet_diagonal_eq_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/nhdsset-diagonal-eq-uniformity--41ed92cc785bd87758c22277.md) | 50 | `result-track:41ed92cc785bd87758c222778879c2182de9a1a78129628021f7ae4f6a7008e0` |
| 2 | `theorem` | [compactSpace_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/compactspace-uniformity--a11548ad3aada67ff2b6e2de.md) | 64 | `result-track:a11548ad3aada67ff2b6e2de91f478509195c7d7f918c484b4c3caa9a7cf3259` |
| 3 | `theorem` | [unique_uniformity_of_compact](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/unique-uniformity-of-compact--2d4ee323fdec3156511ad681.md) | 68 | `result-track:2d4ee323fdec3156511ad681c70a2189b4ba5adf5c7fcf3fb8e697c1a5bbae47` |
| 4 | `def` | [uniformSpaceOfCompactT2](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/uniformspaceofcompactt2--318d3d97ca644c184cf23448.md) | 78 | `declaration-track:318d3d97ca644c184cf234486b1137afde0fdc96a3b77ad4d45cd8d743cfbc20` |
| 5 | `theorem` | [CompactSpace.uniformContinuous_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/compactspace-uniformcontinuous-of-continuous--eb27957663fa38be64d7fcc3.md) | 167 | `result-track:eb27957663fa38be64d7fcc3a5f1e68b3732c5b4a0e3d28313f894f780700c70` |
| 6 | `theorem` | [IsCompact.uniformContinuousOn_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/iscompact-uniformcontinuouson-of-continuous--edce6b2d03adbe8e5dfc42fc.md) | 177 | `result-track:edce6b2d03adbe8e5dfc42fcfa1a3313750fef22a89347804a7726d953c06fbf` |
| 7 | `theorem` | [IsCompact.uniformContinuousAt_of_continuousAt](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/iscompact-uniformcontinuousat-of-continuousat--1d6f0477ef71240f0533ddac.md) | 189 | `result-track:1d6f0477ef71240f0533ddac03fc24359f995e96ced7edc6b0f604b3b9b86cf2` |
| 8 | `theorem` | [Continuous.uniformContinuous_of_tendsto_cocompact](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/continuous-uniformcontinuous-of-tendsto-cocompact--d67038482008280355d2357f.md) | 204 | `result-track:d67038482008280355d2357fbd8095468b2b0aef445a24336316b33790b23ae8` |
| 9 | `theorem` | [HasCompactMulSupport.is_one_at_infty](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/hascompactmulsupport-is-one-at-infty--92307f7382ea516f542ce55e.md) | 223 | `result-track:92307f7382ea516f542ce55e618fecdb2bbbe7f19fd2fa6be3f255248a1a08fb` |
| 10 | `theorem` | [HasCompactMulSupport.uniformContinuous_of_continuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/hascompactmulsupport-uniformcontinuous-of-continuous--b61e031262185495396a7ff3.md) | 237 | `result-track:b61e031262185495396a7ff32faca559b769a07bff947fbdc5c41883845d10b4` |
| 11 | `theorem` | [ContinuousOn.tendstoUniformly](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/continuouson-tendstouniformly--6140df3c6941ca4bd53b7796.md) | 245 | `result-track:6140df3c6941ca4bd53b779656be61522427aa73276cb26e497540de4ace5302` |
| 12 | `theorem` | [Continuous.tendstoUniformly](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/continuous-tendstouniformly--033fb0a6e58eef5b235985b1.md) | 257 | `result-track:033fb0a6e58eef5b235985b12dd6eebe06d1466a363e5763b3b1bc519ddc172b` |
| 13 | `theorem` | [CompactSpace.uniformEquicontinuous_of_equicontinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Compact/Variant6d239ae773ad086e500f326442bc24ef806d728a4498049baf894b2388f82626.lean/declarations/compactspace-uniformequicontinuous-of-equicontinuous--97793f88991a244cdbc4b6f6.md) | 266 | `result-track:97793f88991a244cdbc4b6f6b96febd40d6c654fdb60c5b8e8f94c1303f770ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.PivotCech.Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1f13fe7d0620709e27fa882da8e740d611cf7ba",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1f13fe7d0620709e27fa882da8e740d611cf7ba`.

Source path: `GRWTSK/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_columnSubmatrix](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/continuous-columnsubmatrix--ad7a64bd4ee1876501fd5802.md) | 39 | `result-track:ad7a64bd4ee1876501fd58020f7d2d4153e59fa662a96170cc59ef9e767f3f27` |
| 2 | `theorem` | [continuous_columnMinor](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/continuous-columnminor--b9fe5d5b5d3d51efe826de2d.md) | 46 | `result-track:b9fe5d5b5d3d51efe826de2dfe599aac2e02062d0339f2925fc270580e92c954` |
| 3 | `def` | [framePivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/framepivotdomain--7b3afb9bb2c2883e1f3ed780.md) | 51 | `declaration-track:7b3afb9bb2c2883e1f3ed7807d0112715a289d8b1c2693beaf80792703c41250` |
| 4 | `theorem` | [isOpen_framePivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/isopen-framepivotdomain--a183218b84860787c47495bb.md) | 55 | `result-track:a183218b84860787c47495bb77ae69908bf49d9f2cc4f93488a34932f73b1860` |
| 5 | `theorem` | [continuousAt_pivotNormalize](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/continuousat-pivotnormalize--4d836b0d19f1c8620f2cefef.md) | 59 | `result-track:4d836b0d19f1c8620f2cefef2f608fd7ebd8a6eb33f3d8591db5422d58dbde6b` |
| 6 | `theorem` | [continuousAt_pivotTransition](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/continuousat-pivottransition--33c97fbe0bac436829c9bb20.md) | 76 | `result-track:33c97fbe0bac436829c9bb2076ddcadd4eabd37d93b97e9eb90aa9e435f02db0` |
| 7 | `abbrev` | [NormalizedPivotFrame](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/normalizedpivotframe--498936847b45f4fb2ee0c330.md) | 87 | `declaration-track:498936847b45f4fb2ee0c330e7d3d70e93c9f9aed47318920badfb5049061aaf` |
| 8 | `theorem` | [normalizedPivotFrame_rank](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/normalizedpivotframe-rank--4add19dd4920cc069eebc975.md) | 91 | `result-track:4add19dd4920cc069eebc97585341e7ea91d43ca5e3db90f08c26d729cbd9c62` |
| 9 | `def` | [normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/normalizedpivotplane--690d80799fdf68bd8e4d347d.md) | 98 | `declaration-track:690d80799fdf68bd8e4d347d7f322612e69f32c4745b6d2488c84b1cc9386870` |
| 10 | `def` | [intrinsicAtlasMap](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/intrinsicatlasmap--f05474f59960514caa3d223b.md) | 103 | `declaration-track:f05474f59960514caa3d223bb8f1c070245be2820b31693e036838ecb5d46100` |
| 11 | `instance` | [intrinsicAtlasTopology](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/intrinsicatlastopology--98d8e1914a8f9326526b0bcb.md) | 107 | `declaration-track:98d8e1914a8f9326526b0bcb27a655763cd810e3246b9563802d831d149c48a9` |
| 12 | `theorem` | [continuous_normalizedPivotPlane](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/continuous-normalizedpivotplane--4125983d2a4c474258560afc.md) | 111 | `result-track:4125983d2a4c474258560afccc23f7d1af583cc70ffa372090093ced0513f6f0` |
| 13 | `def` | [intrinsicPivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/intrinsicpivotdomain--72928fe75139497383a57f81.md) | 120 | `declaration-track:72928fe75139497383a57f8110b7f7682dc263e15a01806d7d1d812f78cbd0c0` |
| 14 | `theorem` | [representedPlane_mem_intrinsicPivotDomain_iff](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/representedplane-mem-intrinsicpivotdomain-iff--021777c560639ea3e308bfc8.md) | 124 | `result-track:021777c560639ea3e308bfc85633f4deae6c6dc79d2438a517f64ca4dbae9579` |
| 15 | `theorem` | [isOpen_intrinsicPivotDomain](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/isopen-intrinsicpivotdomain--23f4aaf38f7b4d2b1737df17.md) | 144 | `result-track:23f4aaf38f7b4d2b1737df17369657bec1f9fb925fcaaffeb02df9823a66233e` |
| 16 | `theorem` | [intrinsicPivotDomain_cover](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/intrinsicpivotdomain-cover--982d0d0d81220c65652b2eb5.md) | 157 | `result-track:982d0d0d81220c65652b2eb55e836217dde9af96ab507cab2ba57f73a2cfee28` |
| 17 | `theorem` | [intrinsicAtlasMap_surjective](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/intrinsicatlasmap-surjective--77fa2e88d6d9e4c2b50fc237.md) | 166 | `result-track:77fa2e88d6d9e4c2b50fc2374455e96d7cfe6a82991ce34d7e55f98519f30de1` |
| 18 | `abbrev` | [NormalizedPivotOverlap](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/normalizedpivotoverlap--33ac9b45c121238712027540.md) | 173 | `declaration-track:33ac9b45c1212387120275404ae7d872d3fd0a8aecc6693a591c874ebb547d12` |
| 19 | `def` | [normalizedOverlapChange](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/normalizedoverlapchange--d4f7c212ede8d94daf137b9d.md) | 177 | `declaration-track:d4f7c212ede8d94daf137b9d1eaa9725e28b8af723b0585a2bbb8bfb4fda10e0` |
| 20 | `theorem` | [normalizedOverlapChange_inverse](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/normalizedoverlapchange-inverse--75ace54a40fd100f5cf62145.md) | 185 | `result-track:75ace54a40fd100f5cf621451347e24a228f695da3f8936230ec1e5c54e2b969` |
| 21 | `theorem` | [continuous_normalizedOverlapChange](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/continuous-normalizedoverlapchange--50ba24cefe544e656c7167cc.md) | 198 | `result-track:50ba24cefe544e656c7167cca7d95fff9c8eb75cca3d9abe334e326c710ea463` |
| 22 | `def` | [normalizedOverlapHomeomorph](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/normalizedoverlaphomeomorph--abc6c8c109a88cc964be5448.md) | 210 | `declaration-track:abc6c8c109a88cc964be5448123984b42c60bfbb6c22daccde950a792f567976` |
| 23 | `abbrev` | [OpenCoverCech](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/opencovercech--974ecfbb21e57f01a315f535.md) | 224 | `declaration-track:974ecfbb21e57f01a315f535ae18fdf19f7a2acd73872d4b3f56fc176cd2a8a8` |
| 24 | `instance` | [openCoverCechTopology](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/opencovercechtopology--e10975764d42a3c84b3ff15b.md) | 228 | `declaration-track:e10975764d42a3c84b3ff15bdeabf81252c8a83c1d20903430359464d2d419bd` |
| 25 | `def` | [cechReindex](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/cechreindex--432aeab27f0270ee4c57d395.md) | 233 | `declaration-track:432aeab27f0270ee4c57d39589919416f8a35df810f5d93cfa791502bf839c98` |
| 26 | `theorem` | [cechReindex_id](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/cechreindex-id--00be7f22fd471ed563463a0c.md) | 239 | `result-track:00be7f22fd471ed563463a0c4d9bdc19e7eb587ca27c90f0a8af7d280d6acf17` |
| 27 | `theorem` | [cechReindex_comp](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/cechreindex-comp--ec6f99031618ea99d01e3539.md) | 246 | `result-track:ec6f99031618ea99d01e3539879041549415dffd8f19fdddb65af154b3a1a1fc` |
| 28 | `theorem` | [continuous_cechReindex](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/continuous-cechreindex--f77cc960f5c4cd9937ceb645.md) | 252 | `result-track:f77cc960f5c4cd9937ceb645abe67477ad467d0e4c9bf7b639407bc2c79c208e` |
| 29 | `def` | [cechAugment](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/cechaugment--0da11a3975a5071cf3e2af96.md) | 265 | `declaration-track:0da11a3975a5071cf3e2af96e0af03706dc2d3957e93bfeb767970cb21e0ffcd` |
| 30 | `theorem` | [continuous_cechAugment](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/continuous-cechaugment--e0ef1a4bdf6580b80396c20a.md) | 268 | `result-track:e0ef1a4bdf6580b80396c20adebd2bf402128080df8cb44d9aa9eda64d81b254` |
| 31 | `theorem` | [cechAugment_surjective](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/cechaugment-surjective--7654dcf040296852e505809d.md) | 274 | `result-track:7654dcf040296852e505809db5c046adff905c841240aef25f04a82a5b2e5ec9` |
| 32 | `def` | [cechOverlapFiberEquiv](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/cechoverlapfiberequiv--063d9f0868e05da23eb7b847.md) | 281 | `declaration-track:063d9f0868e05da23eb7b847e5be4e7c397ed85de848c7439bc9f5354147ccbb` |
| 33 | `abbrev` | [IntrinsicPivotCech](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/intrinsicpivotcech--3a33e1c053e61a542e0a42b6.md) | 291 | `declaration-track:3a33e1c053e61a542e0a42b6b903e12d7e13186e718fb56f47a12a8774c30957` |
| 34 | `theorem` | [intrinsicPivotCech_augmentation_surjective](../../../../../mathematics/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean/declarations/intrinsicpivotcech-augmentation-surjective--0ff04db6e51495eae7f8bd2a.md) | 295 | `result-track:0ff04db6e51495eae7f8bd2a1faee23a54184d55e85e88985146afc6076a785d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: Multilinear Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8820927ec8132fc992ac591ea4a05149cd121503",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8820927ec8132fc992ac591ea4a05149cd121503`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Multilinear.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.UniformConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Section` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Hom.ContinuousEvalConst` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/touniformonfun.md) | 32 | `declaration-track:7478d9eed9c1f9e7dc7e2688c508d3442a05a22e9948e888746f014566a70035` |
| 2 | `lemma` | [range_toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/range-touniformonfun.md) | 37 | `result-track:109f6cf7959db76fcdf4d109b7c5dcfe8a69b404d811fc19018e202e31eb6b5d` |
| 3 | `lemma` | [toUniformOnFun_toFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/touniformonfun-tofun.md) | 53 | `result-track:412ac5e3092cb28faae59b3e56328dda624402ccc96ae08d4a19961684571837` |
| 4 | `instance` | [instTopologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/insttopologicalspace.md) | 57 | `declaration-track:c4417c9e13341296f5904527766143d9bee34aa75a377f63dd2bb2b97f2b80d9` |
| 5 | `instance` | [instUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instuniformspace.md) | 62 | `declaration-track:2f158874d685cb08b925952db9383d2df6b69c9b901fc90f7a796d36a5fbd30f` |
| 6 | `lemma` | [isUniformInducing_toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/isuniforminducing-touniformonfun.md) | 71 | `result-track:88c71f1e4aa7672e9082dac159b4baf29b265f80445aa2e52eb27b0db5dc508c` |
| 7 | `lemma` | [isUniformEmbedding_toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/isuniformembedding-touniformonfun.md) | 75 | `result-track:88b10224d4582adb89fdc0c0e771d59b073489aa74da5e4ef279013dab86f46a` |
| 8 | `lemma` | [isEmbedding_toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/isembedding-touniformonfun.md) | 79 | `result-track:8087930012ab51ed37db9a9e83bbc76dccce73f63d83110f0b4e2ee4a76b7b72` |
| 9 | `theorem` | [uniformContinuous_coe_fun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/uniformcontinuous-coe-fun.md) | 87 | `result-track:d7cbf507ee7dfc620e25cd75d3ca525e96ec1a190d2c1432dac8caacc1b948bf` |
| 10 | `theorem` | [uniformContinuous_eval_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/uniformcontinuous-eval-const.md) | 92 | `result-track:66417f315330c00bec908108f46e72c4851be58c3ed0bc007582cd08104047fa` |
| 11 | `instance` | [instIsUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instisuniformaddgroup.md) | 96 | `declaration-track:60cf9db600f28e20b96456d6582ddf501861873bd8722ad377591ccd7f43f5a1` |
| 12 | `instance` | [instUniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instuniformcontinuousconstsmul.md) | 101 | `declaration-track:1009847bdc53b20abf978089fe1cac42934c5f0d6c526a90f26ddb9e4a5feca0` |
| 13 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/isuniforminducing-postcomp.md) | 107 | `result-track:325d9476eb288791fdbee32e89839da021d40c6df6299334ac0b95df2311dbdb` |
| 14 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/completespace.md) | 120 | `result-track:9e2cb210a360e8e85d381fafd0710a7753302d402c82610eeac1804ffc336c39` |
| 15 | `instance` | [instCompleteSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instcompletespace.md) | 142 | `declaration-track:98fe6018733154d1103d2e42a975a641cfc1e6eba3d206c8cf7bfbfbe108b560` |
| 16 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/isuniformembedding-restrictscalars.md) | 154 | `result-track:b5492ffa8b0f0aa3f70c7e20c1d33a649c50ae7eab883b89e3fce7b7d65e5912` |
| 17 | `theorem` | [uniformContinuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/uniformcontinuous-restrictscalars.md) | 163 | `result-track:55b277572071317c66482aa606bac4b44571200b62a9f6af958217b8543a2539` |
| 18 | `instance` | [instIsTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instistopologicaladdgroup.md) | 174 | `declaration-track:dd2a88c25f9c45c15cb0f94539da7f28661d38ad1ce62d9cbf9611fba83257dd` |
| 19 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instcontinuousconstsmul.md) | 179 | `declaration-track:6e8a57d2302b0957425be1342b4eca321bcb1ef4506ce548834588ea77201586` |
| 20 | `instance` | [instContinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instcontinuoussmul.md) | 186 | `declaration-track:3ba554a793ed2e81b2d1e97aa5340e51213fdee380fde226993604b1348ccdc8` |
| 21 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 195 | `result-track:44c008498f92fb4973d5aa5b27fd7c1fc6b3335060573d52175d69692419cbcb` |
| 22 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/hasbasis-nhds-zero.md) | 207 | `result-track:ba797ae78cdc840b67eae3aae7bb9c017ea98d979768ca00814e5f158dc37322` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instance.md) | 215 | `declaration-track:23251300f1acb0cf0d637893fc3a34bf0cb2bedfd77088c8aa6c5e026b810ca7` |
| 24 | `instance` | [instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instt2space.md) | 221 | `declaration-track:6c6b450a3280d7d573765dc30c2a42e4fc691ad3acc5181aaf07cd5e1347afb3` |
| 25 | `instance` | [instT3Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/instt3space.md) | 224 | `declaration-track:6c72e27cabd6759e4f7adcea5e752436c850210a2dda29411ea3bf92909c95c6` |
| 26 | `theorem` | [isEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/isembedding-restrictscalars.md) | 232 | `result-track:019b49eda6e4f05d85b5868bc0641f9bf70a0c9a2c2d8f3ed99217f0d28c67c1` |
| 27 | `theorem` | [continuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/continuous-restrictscalars.md) | 243 | `result-track:4f941ecceacdf1214f91200333452cf87e984c8aa8535ea38c70e89007263d6b` |
| 28 | `def` | [restrictScalarsLinear](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/restrictscalarslinear.md) | 251 | `declaration-track:4f276a57309ae766ce08e42b22eb728dc24b51562ec585452553dee5263cb8c9` |
| 29 | `def` | [apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/apply.md) | 262 | `declaration-track:5db6c38809d3fb54e2bb852b1445d7f08281bc2af6066663ac1cce2b1896fd80` |
| 30 | `lemma` | [apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/apply-apply.md) | 271 | `result-track:ac8399cca19cc28c9549b4a675e52969757df97192e6ed19fe850d7a1dcabe27` |
| 31 | `theorem` | [hasSum_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/hassum-eval.md) | 274 | `result-track:f2f4aba172cf9e7e46f0fa9b650f633e8bfea3a4ac95fea609f6d3b65df4822c` |
| 32 | `theorem` | [tsum_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearTopology.lean/declarations/tsum-eval.md) | 279 | `result-track:99b81b1aab6d95930af3b21a36b31fd259c3664e2b7bbed58ce906772c5f5033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c08b1d86838eb613235e35a6da65fe2a0643276aed1a2258b5e0bb5225b2b26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

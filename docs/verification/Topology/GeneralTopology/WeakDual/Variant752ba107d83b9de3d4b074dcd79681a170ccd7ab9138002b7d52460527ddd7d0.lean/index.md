# Verification target: GRWTSK.Topology.GeneralTopology.WeakDual.Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92ebff7ea6f7f6a21d132c5091fb72e0b34fae86",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92ebff7ea6f7f6a21d132c5091fb72e0b34fae86`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakBilin` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [topDualPairing](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/topdualpairing--082e8876245db11e22fcf3a5.md) | 68 | `declaration-track:082e8876245db11e22fcf3a542798959bf79eccb945cefcf1a3604f4afe1b724` |
| 2 | `theorem` | [topDualPairing_apply](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/topdualpairing-apply--d988279b6d88e9c55c855f22.md) | 72 | `result-track:d988279b6d88e9c55c855f22f1d57c51aa31452ffbe4ada5120c3e4bcb14b885` |
| 3 | `def` | [WeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/weakdual--a6d981a0c3df607bab5e06c1.md) | 79 | `declaration-track:a6d981a0c3df607bab5e06c1735eeeb9a3aa87745821d2c43fbad67dbfae8ab8` |
| 4 | `instance` | [instAddCommMonoid](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instaddcommmonoid--05c40188876673872ac8dec0.md) | 94 | `declaration-track:05c40188876673872ac8dec04d3d9b6e13ba507e375e4b18696237d0dd042218` |
| 5 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instmodule--fd7e7586443e3b0081f32171.md) | 97 | `declaration-track:fd7e7586443e3b0081f32171639a3022a225d8c88f9e3612ea49ad10d9139475` |
| 6 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/insttopologicalspace--14c19b2e4a5d1659772774a5.md) | 100 | `declaration-track:14c19b2e4a5d1659772774a5270730e37945ad36a965b403d165c3adf209cc0a` |
| 7 | `instance` | [instContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instcontinuousadd--07dcab378d6abe5cd74b6bc3.md) | 103 | `declaration-track:07dcab378d6abe5cd74b6bc355533cb20426294febd26fffe28d09fd3f840a78` |
| 8 | `instance` | [instInhabited](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instinhabited--9d9154743d4b678baefe1782.md) | 106 | `declaration-track:9d9154743d4b678baefe178278e5a10009f0fb8532e58f310ae09d48a32631af` |
| 9 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instfunlike--d245d643eccc5c31e7ca4a04.md) | 109 | `declaration-track:d245d643eccc5c31e7ca4a04a4418846e9a61f4d2d2a2675435fb927f62a4bb4` |
| 10 | `instance` | [instContinuousLinearMapClass](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instcontinuouslinearmapclass--cab5ff796f473f67b2687cf5.md) | 112 | `declaration-track:cab5ff796f473f67b2687cf50d4b7a3b7b47e4bc9c29ebba7bf2022f2bb04ded` |
| 11 | `instance` | [instMulAction](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instmulaction--53a640642ad76ad42bc1d9d1.md) | 117 | `declaration-track:53a640642ad76ad42bc1d9d11bb36f5b9aa4958c94179417cd1c2f68673c7b8a` |
| 12 | `instance` | [instDistribMulAction](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instdistribmulaction--4af26c4f5e3bd730c67f6520.md) | 123 | `declaration-track:4af26c4f5e3bd730c67f652072ca4affde43831aa59df4c9e771d190efcb366d` |
| 13 | `instance` | [instModule'](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instmodule--b624b86c4d20710864053a43.md) | 129 | `declaration-track:b624b86c4d20710864053a43311f20b28504bf26cb75dfb347a1ed8bdf992477` |
| 14 | `instance` | [instContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instcontinuousconstsmul--4a8c17371f5cff21a26ce263.md) | 133 | `declaration-track:4a8c17371f5cff21a26ce2638d174f6fc213e49d8e15da4f8717ab7c442f4785` |
| 15 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instcontinuoussmul--1b50f8f29d7a0662a2c9fe50.md) | 140 | `declaration-track:1b50f8f29d7a0662a2c9fe501db6e3a8302b5139c2144a5d1cd7a701ab4dce01` |
| 16 | `theorem` | [coeFn_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/coefn-continuous--78ec2e665dcac90c218f099a.md) | 145 | `result-track:78ec2e665dcac90c218f099a342855fbb07e0118ef3eb4275a0c9003d6426ade` |
| 17 | `theorem` | [eval_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/eval-continuous--e4cc64270e96a3d5c0a7d645.md) | 148 | `result-track:e4cc64270e96a3d5c0a7d6459480f24fe5ea76dd01996f4bc59cb35f43b6589d` |
| 18 | `theorem` | [continuous_of_continuous_eval](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/continuous-of-continuous-eval--b0f43dda7cf47bd4c7086340.md) | 151 | `result-track:b0f43dda7cf47bd4c7086340a318a274dbcb0f4bc9150eebf7a58c0d7f2bdcba` |
| 19 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instt2space--89ea2cb94e0245888ebf2cd0.md) | 155 | `declaration-track:89ea2cb94e0245888ebf2cd0d61d6b21339d25c14f9055923bf6a7df38d67e7a` |
| 20 | `instance` | [instAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instaddcommgroup--b5ba2ff8e09430257be77947.md) | 165 | `declaration-track:b5ba2ff8e09430257be7794709e381c9d3b0f4d7c763496593f842d64a6bd4ee` |
| 21 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instistopologicaladdgroup--02d4df5e099da0d844c01fb5.md) | 168 | `declaration-track:02d4df5e099da0d844c01fb5c4cdb59563dc6b449671a42fcc72a576c0d4063c` |
| 22 | `def` | [WeakSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/weakspace--487ced60f806e940886f471f.md) | 177 | `declaration-track:487ced60f806e940886f471f2ca23ebbb62470e63a88a44c38a2052222b74edb` |
| 23 | `instance` | [instAddCommMonoid](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instaddcommmonoid--4d5990b84a3399abdc0cbd60.md) | 192 | `declaration-track:4d5990b84a3399abdc0cbd60039e15d69e0744684b722d8509eece075db65a80` |
| 24 | `instance` | [instModule](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instmodule--6496ea1b570d41ac09daaeaf.md) | 195 | `declaration-track:6496ea1b570d41ac09daaeafc86586bb26286fe042b68cb5253188f0e5aeb4aa` |
| 25 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/insttopologicalspace--2950bca4d9f0c2e97230723a.md) | 198 | `declaration-track:2950bca4d9f0c2e97230723a00e56ffeb910e92461e18a1e60cbb0a00f96db9d` |
| 26 | `instance` | [instContinuousAdd](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instcontinuousadd--8965dd9ed238d82f345c5e6d.md) | 201 | `declaration-track:8965dd9ed238d82f345c5e6ddc10b19a397874137739c94925a7cd0d818bfe47` |
| 27 | `instance` | [instModule'](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instmodule--62b0df5942c6e0f84c52afff.md) | 204 | `declaration-track:62b0df5942c6e0f84c52afff1c5af5c155138da4a7712e4e29fbbd8d0267a82f` |
| 28 | `instance` | [instIsScalarTower](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instisscalartower--66fbc1d1e2b324f4f0c98eac.md) | 207 | `declaration-track:66fbc1d1e2b324f4f0c98eac058532ca031590ec03c5886160bcac06c90cd92d` |
| 29 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/map--dc7ba3f95a7fe6caaafffc50.md) | 215 | `declaration-track:dc7ba3f95a7fe6caaafffc5039bef54f06fce143d743996c863245f1b08f169f` |
| 30 | `theorem` | [map_apply](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/map-apply--96ad1d338ea87dbbb4a87210.md) | 220 | `result-track:96ad1d338ea87dbbb4a8721099debff07a347afd93cf07e86f541d3f3eb8db3c` |
| 31 | `theorem` | [coe_map](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/coe-map--9b0e73f77d44628589869619.md) | 224 | `result-track:9b0e73f77d44628589869619b30b4017cbfa28297dc90f5c840ed6e6e6fff11f` |
| 32 | `def` | [toWeakSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/toweakspace--a6b52bec6101b277487286b5.md) | 232 | `declaration-track:a6b52bec6101b277487286b5a247c50dcdc436d7a084ea7959cae9452b99ab03` |
| 33 | `def` | [toWeakSpaceCLM](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/toweakspaceclm--ccf68841442a9cad3b0002d7.md) | 237 | `declaration-track:ccf68841442a9cad3b0002d700b6c817dce6fb802a8d83bb96deeb152fc0e327` |
| 34 | `theorem` | [toWeakSpaceCLM_eq_toWeakSpace](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/toweakspaceclm-eq-toweakspace--f333a0b511f625c3e375aa1e.md) | 245 | `result-track:f333a0b511f625c3e375aa1e942a335f5b01bb27142d6e78d7a68fd22df927c7` |
| 35 | `theorem` | [toWeakSpaceCLM_bijective](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/toweakspaceclm-bijective--88b50c6b0d46e3784a18bdda.md) | 248 | `result-track:88b50c6b0d46e3784a18bddaef0e31cbbb517c6eeab05ff914c90af5710c5290` |
| 36 | `theorem` | [isOpenMap_toWeakSpace_symm](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/isopenmap-toweakspace-symm--8ccba11f837e359417b23c03.md) | 253 | `result-track:8ccba11f837e359417b23c0310598248224b0945a125860b0fd7d52dc4d260f2` |
| 37 | `theorem` | [WeakSpace.isOpen_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/weakspace-isopen-of-isopen--08914eeab087bdb6a61fe02c.md) | 258 | `result-track:08914eeab087bdb6a61fe02ccb664a1c454880c6f3d84421b0c30c8a84776536` |
| 38 | `theorem` | [tendsto_iff_forall_eval_tendsto_topDualPairing](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/tendsto-iff-forall-eval-tendsto-topdualpairing--35f07342d9331142a08f8c7a.md) | 262 | `result-track:35f07342d9331142a08f8c7a5bad81fb8090f590a7f8485ce729026f58cf3a48` |
| 39 | `instance` | [instAddCommGroup](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instaddcommgroup--e5b94e56bff0da5d10f4c69c.md) | 277 | `declaration-track:e5b94e56bff0da5d10f4c69c8677c7d290c0d07aae4329a6641c4b017203e2be` |
| 40 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/declarations/instistopologicaladdgroup--6f06ea560f02f6f2442a0032.md) | 280 | `declaration-track:6f06ea560f02f6f2442a003282cb2b2f9d7b69167016a87205e02b88f9e61524` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

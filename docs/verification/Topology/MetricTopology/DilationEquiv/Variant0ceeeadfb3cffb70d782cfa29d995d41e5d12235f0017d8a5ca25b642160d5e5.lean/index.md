# Verification target: GRWTSK.Topology.MetricTopology.DilationEquiv.Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1890e9185c034383282ffa84639c6da12d433f65",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1890e9185c034383282ffa84639c6da12d433f65`.

Source path: `GRWTSK/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Dilation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DilationEquivClass](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/dilationequivclass--7f9ddc662d1b8746692758b4.md) | 32 | `declaration-track:7f9ddc662d1b8746692758b4c8b7f78944889e405f7a07a98a00a03731fdb792` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/instance--991c417a4dc0272eabba9c7d.md) | 35 | `declaration-track:991c417a4dc0272eabba9c7dc180dc528431cf4905cf702cb33892b33fb76aec` |
| 3 | `structure` | [DilationEquiv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/dilationequiv--570530c9585550a4e8076e19.md) | 42 | `declaration-track:570530c9585550a4e8076e195db34c9c78fa770f7ee6f49908b18be2f7fc16ea` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/instance--6ebeeaf10598100a344920fe.md) | 53 | `declaration-track:6ebeeaf10598100a344920fe3cfb92128caa246031165a6e2f7397e78e746a3a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/instance--b70130fd480b6e4a36ef7238.md) | 60 | `declaration-track:b70130fd480b6e4a36ef723882ba6231ca49e1db193b026dbb5989cb0cb50740` |
| 6 | `theorem` | [coe_toEquiv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/coe-toequiv--74201d3f8b8b4790c4d91186.md) | 63 | `result-track:74201d3f8b8b4790c4d91186e8029730538c0d60371e0348079ffa874958d78c` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ext--fadb58a4a4241a0db7569cb2.md) | 66 | `result-track:fadb58a4a4241a0db7569cb2eedfc217806cbc062a4b1f933d53a8eca1788d7d` |
| 8 | `def` | [symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/symm--937fa94c599157a9cc117fa8.md) | 70 | `declaration-track:937fa94c599157a9cc117fa8737fcb6a95bf36595cff9bd5732f0160e686b48b` |
| 9 | `theorem` | [symm_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/symm-symm--e6b0d3fbe914369db091028d.md) | 78 | `result-track:e6b0d3fbe914369db091028d8ccc6525aa6b0cb686d7d72cf2edd357948c4673` |
| 10 | `theorem` | [symm_bijective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/symm-bijective--9df388d21db51704e0d15cc8.md) | 80 | `result-track:9df388d21db51704e0d15cc8a1c9eb015b784025f2bcb6c9fb7a2ef47354207b` |
| 11 | `theorem` | [apply_symm_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/apply-symm-apply--42981c26c2ae6140a8e50095.md) | 83 | `result-track:42981c26c2ae6140a8e50095cc45f4ea57b44bf358bbaef7b15a6ae981532033` |
| 12 | `theorem` | [symm_apply_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/symm-apply-apply--6497f398a00d33d94e6bd415.md) | 84 | `result-track:6497f398a00d33d94e6bd415f014f34f7373fdb99c5c3efb6d6453f781fadc23` |
| 13 | `def` | [Simps.symm_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/simps-symm-apply--2db7370800954a86077579b1.md) | 87 | `declaration-track:2db7370800954a86077579b127c2ff04c66529965f4b87c6c7845cb91671ee95` |
| 14 | `lemma` | [ratio_toDilation](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ratio-todilation--647373d5d83790d77bbc84b2.md) | 91 | `result-track:647373d5d83790d77bbc84b2c0be001b9696d9867c10b3ab9b384fa8a1f219c1` |
| 15 | `def` | [refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/refl--c68d19430fe23cd95c3d368e.md) | 95 | `declaration-track:c68d19430fe23cd95c3d368ed7ee5b6373df1d807bba17f4005ce90bb6c9005f` |
| 16 | `theorem` | [refl_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/refl-symm--f127985ff18621d53f9218ff.md) | 99 | `result-track:f127985ff18621d53f9218ff4ca5baa8ad01eab4c71d45d35ce8fc1ee59dfcb2` |
| 17 | `theorem` | [ratio_refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ratio-refl--3be43e07c5e37e4f2ad9135f.md) | 100 | `result-track:3be43e07c5e37e4f2ad9135f02705c1b4b9c2cd872e3df09ced89545806c4111` |
| 18 | `def` | [trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/trans--625d08819623ffe75575a175.md) | 104 | `declaration-track:625d08819623ffe75575a175f952743a6a422eff4fb2842c0a5ee7ed603db9ef` |
| 19 | `theorem` | [refl_trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/refl-trans--fbfeed7eec39e8b00f5c063e.md) | 108 | `result-track:fbfeed7eec39e8b00f5c063ec1c9ca1634d439e0cefeda69f6a60f7e58e8c4aa` |
| 20 | `theorem` | [trans_refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/trans-refl--4157fb76f09f191ad71f85dc.md) | 109 | `result-track:4157fb76f09f191ad71f85dcff20ae5cfc5e1b64ef7bf526d1f673da2f902332` |
| 21 | `theorem` | [symm_trans_self](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/symm-trans-self--2a9ce4044916c3776506d4d3.md) | 111 | `result-track:2a9ce4044916c3776506d4d3d675352e6dd43e21b2d3210a483f56a3e932ddac` |
| 22 | `theorem` | [self_trans_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/self-trans-symm--89df4df7afd499ac3f72c1a4.md) | 114 | `result-track:89df4df7afd499ac3f72c1a4520f0a5ba5abc23e150b2d4fa5864d2d2fdce69e` |
| 23 | `theorem` | [surjective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/surjective--42f347dab7fb56b145a9bfc0.md) | 117 | `result-track:42f347dab7fb56b145a9bfc095c8d9d8ee3cf67f1032315b3f5a6a55593c22a4` |
| 24 | `theorem` | [bijective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/bijective--fc6cf360b97d06e61b3e8a29.md) | 118 | `result-track:fc6cf360b97d06e61b3e8a29e8fd0e29f8c50a42b2eaf87d6cc7cf9476c29aba` |
| 25 | `theorem` | [injective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/injective--7379723e9497bb15ddbbdf69.md) | 119 | `result-track:7379723e9497bb15ddbbdf699226a144b92b8534e51606f530b1256bb791aae9` |
| 26 | `theorem` | [ratio_trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ratio-trans--470254a036bc6b741781b8f6.md) | 122 | `result-track:470254a036bc6b741781b8f6d0d0e68464ef221cd60c26bc862df3cf189951f4` |
| 27 | `theorem` | [ratio_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ratio-symm--0387ebb0e154a7615b0677de.md) | 132 | `result-track:0387ebb0e154a7615b0677de2de1a14a1b06f0cbb1daf0713f8bb80f82edddb8` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/instance--669ee7b1bc4678345b89bca2.md) | 135 | `declaration-track:669ee7b1bc4678345b89bca221964b4e45136e7b96b4c431905305e23cc8fbdc` |
| 29 | `theorem` | [mul_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/mul-def--a156a5a5cb83023e7542df66.md) | 144 | `result-track:a156a5a5cb83023e7542df6672dc0842de853f34dbe7c37367fbb613ce1f7fe7` |
| 30 | `theorem` | [one_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/one-def--d8b4423e121360f997e9179a.md) | 145 | `result-track:d8b4423e121360f997e9179abf835ab2d91af8a3db471ef39b40741e054bf94e` |
| 31 | `theorem` | [inv_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/inv-def--4fe5012a7b1a04bb019bf014.md) | 146 | `result-track:4fe5012a7b1a04bb019bf01421a2c8d83e2fb907031f2486640ab8774b793ead` |
| 32 | `theorem` | [coe_mul](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/coe-mul--11b038f23a4c835359863a1b.md) | 148 | `result-track:11b038f23a4c835359863a1b2d8ada7bd918a1c0e70b15ed53de01602a3d6552` |
| 33 | `theorem` | [coe_one](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/coe-one--e77a31d428ae55bbc44a7aa9.md) | 149 | `result-track:e77a31d428ae55bbc44a7aa9f6d3172032db5d60539735ca67e0dce70b60962d` |
| 34 | `theorem` | [coe_inv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/coe-inv--015c36d2bc9f783de84d6847.md) | 150 | `result-track:015c36d2bc9f783de84d68473bb152f83fd820d36a413af87e45dca6d68c7404` |
| 35 | `def` | [ratioHom](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ratiohom--deccfbb1769bddd45e6e4f33.md) | 153 | `declaration-track:deccfbb1769bddd45e6e4f3389e4495da0c019d7949d3de5585565e150171c30` |
| 36 | `theorem` | [ratio_inv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ratio-inv--65e99e214a53b11fd39ec308.md) | 159 | `result-track:65e99e214a53b11fd39ec308729dc6e847c452c3adb1eb62d4dd9e33727c17b7` |
| 37 | `theorem` | [ratio_pow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ratio-pow--c78d2cdbe82977f8610a3621.md) | 162 | `result-track:c78d2cdbe82977f8610a36215232960f1973ae6782be68aab9b0b60953fc68f5` |
| 38 | `theorem` | [ratio_zpow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/ratio-zpow--8dab2345f5b8cb0982a92a67.md) | 166 | `result-track:8dab2345f5b8cb0982a92a67636ee62f9c9cd0f2fd906172d297da79c08cd935` |
| 39 | `def` | [toPerm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/toperm--8bd6e729111e57f87baa8cca.md) | 171 | `declaration-track:8bd6e729111e57f87baa8cca719c6728615d25f94140d90998d9767ed86b2929` |
| 40 | `theorem` | [coe_pow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/coe-pow--7c22accb6bf2bbfdb07b7077.md) | 177 | `result-track:7c22accb6bf2bbfdb07b707709ed2a94f900802d6190ac53abc82e430328fcd9` |
| 41 | `def` | [_root_.IsometryEquiv.toDilationEquiv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/root-isometryequiv-todilationequiv--8bc9727bf259cd6a778000c6.md) | 183 | `declaration-track:8bc9727bf259cd6a778000c6274df2090dd815ee55b3717baa2ddb884bb869a3` |
| 42 | `lemma` | [_root_.IsometryEquiv.toDilationEquiv_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/root-isometryequiv-todilationequiv-apply--bf9eb29ce453a9c2b4333d0c.md) | 188 | `result-track:bf9eb29ce453a9c2b4333d0c50276c92ffd7d8d89e6ee78f500bad2f23c63278` |
| 43 | `lemma` | [_root_.IsometryEquiv.toDilationEquiv_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/root-isometryequiv-todilationequiv-symm--6523b268be17a2b605bf3abc.md) | 193 | `result-track:6523b268be17a2b605bf3abcfaa76745ffa960f2a759af64577440a6bd1573c3` |
| 44 | `lemma` | [_root_.IsometryEquiv.toDilationEquiv_toDilation](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/root-isometryequiv-todilationequiv-todilation--034105eb14b6cad8c34d1237.md) | 198 | `result-track:034105eb14b6cad8c34d1237313b5c8ca8903e0a1b5f36124b174494cd86a262` |
| 45 | `lemma` | [_root_.IsometryEquiv.toDilationEquiv_ratio](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/root-isometryequiv-todilationequiv-ratio--6aad80e97cdc2b33ff6b1adb.md) | 203 | `result-track:6aad80e97cdc2b33ff6b1adbf3a1e263cb91a862e8cf34f50a1d4f04f62615b2` |
| 46 | `def` | [toHomeomorph](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/tohomeomorph--fc5abadaff2d79fcc4e8220d.md) | 207 | `declaration-track:fc5abadaff2d79fcc4e8220dfa3af233a3fc5469f9da848413738df804500fab` |
| 47 | `lemma` | [coe_toHomeomorph](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/coe-tohomeomorph--83b2876b7f478e775365630b.md) | 213 | `result-track:83b2876b7f478e775365630b70ea150e4e49b78bad23203702af476eaad75a07` |
| 48 | `lemma` | [toHomeomorph_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/tohomeomorph-symm--24d1859feae8e04fcfe5b7d4.md) | 217 | `result-track:24d1859feae8e04fcfe5b7d4a24d6a34b10c8e5f3260e3ccf4a62f6b02ed47e8` |
| 49 | `lemma` | [map_cobounded](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant0ceeeadfb3cffb70d782cfa29d995d41e5d12235f0017d8a5ca25b642160d5e5.lean/declarations/map-cobounded--fb8a393974b65586a1dd6387.md) | 228 | `result-track:fb8a393974b65586a1dd6387b2dbe9afc13bd091893f740e667de6da27b9af0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

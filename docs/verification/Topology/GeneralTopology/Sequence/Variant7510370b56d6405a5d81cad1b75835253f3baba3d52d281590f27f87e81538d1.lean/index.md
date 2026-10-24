# Verification target: GRWTSK.Topology.GeneralTopology.Sequence.Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d15b74f4501aadb602807806477e8d2351df0f4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d15b74f4501aadb602807806477e8d2351df0f4`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Light.EffectiveEpi` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Injective` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LightProfinite.fibre](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/lightprofinite-fibre--777c8ee1406c1d49f3de0206.md) | 38 | `declaration-track:777c8ee1406c1d49f3de02061dd0bae9fc5c0fbd824968f0e550873ffa78faf9` |
| 2 | `def` | [LightProfinite.fibreIncl](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/lightprofinite-fibreincl--3f7428ef2a6056a88f30706a.md) | 43 | `declaration-track:3f7428ef2a6056a88f30706a2d01f105acb512aed636f55418c5e90836a8bf79` |
| 3 | `def` | [fibres](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/fibres--bc2595875cfc5e9c3096ad51.md) | 55 | `declaration-track:bc2595875cfc5e9c3096ad51ff6d92505c5769222ec9508809cd56ad669c82ac` |
| 4 | `lemma` | [mem_fibres_iff](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/mem-fibres-iff--5c2f57f5e151bac8edebcfe7.md) | 59 | `result-track:5c2f57f5e151bac8edebcfe7f4c091bc97f1d1053b8242f219b6b7a9c70bf32d` |
| 5 | `lemma` | [fibres_compl_eq_iUnion](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/fibres-compl-eq-iunion--8a90eea725d08e46853ec64d.md) | 64 | `result-track:8a90eea725d08e46853ec64dd8ccc336ddc51084e271a03dee2f549b175d8728` |
| 6 | `lemma` | [fibres_closed](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/fibres-closed--7a8dd789f50f0073ce393f2b.md) | 81 | `result-track:7a8dd789f50f0073ce393f2b57548dae5270295240efbf8fce4673d861da2297` |
| 7 | `def` | [π_r](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/r--c4f6b9232ec97d4d0d39f4f6.md) | 92 | `declaration-track:c4f6b9232ec97d4d0d39f4f629a24df44a849d5aa0c617005b2b85b3b9db90e2` |
| 8 | `lemma` | [π_r_apply](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/r-apply--01e2dd938212ccafa3b319b5.md) | 97 | `result-track:01e2dd938212ccafa3b319b543258f61402bb343dd14268ddfd7f87dbad220d5` |
| 9 | `def` | [fibreIncl](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/fibreincl--9f145381cef99baa60255992.md) | 101 | `declaration-track:9f145381cef99baa60255992a95d6a04ec285db2afecdeca8a95cf610c99134f` |
| 10 | `lemma` | [fibreIncl_apply](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/fibreincl-apply--b48c2a7559598fbbf413e5ec.md) | 106 | `result-track:b48c2a7559598fbbf413e5ecfd15cdf3fb6c7a9c47557e6fac0ff744d517a61f` |
| 11 | `lemma` | [fibres_surjective](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/fibres-surjective--1b758d9d1eb96a7a7da93419.md) | 110 | `result-track:1b758d9d1eb96a7a7da93419c59337d79faaefd69c07cff8411d9fd16bd8fecd` |
| 12 | `def` | [coverToFun](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/covertofun--4bf90da3a9ece00a53bcd762.md) | 120 | `declaration-track:4bf90da3a9ece00a53bcd762df14a814dd793f66af24866a57c2fdff995f92f9` |
| 13 | `lemma` | [coverToFun_apply](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/covertofun-apply--3944834b1eb6b3915657b23e.md) | 125 | `result-track:3944834b1eb6b3915657b23e7fcea289dbf14e4f6455a66076b9c1ff9476d091` |
| 14 | `lemma` | [coverToFun_surjective](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/covertofun-surjective--3742f7b11f830e89a11c0cb0.md) | 131 | `result-track:3742f7b11f830e89a11c0cb0d7ccbac94675394f6dac56e118f8ebd7e96b7241` |
| 15 | `def` | [sectionOfFibreIncl](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/sectionoffibreincl--14e26564d284bb0e4454baa4.md) | 141 | `declaration-track:14e26564d284bb0e4454baa47abb0cf47d13934adb77b202b299bdf12e52ec41` |
| 16 | `def` | [S'](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/s--3f957340159086cb61275a39.md) | 156 | `declaration-track:3f957340159086cb61275a39bcb33b84af708bf73e2e05a83acc282bd402cfdd` |
| 17 | `lemma` | [mem_S'_iff](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/mem-s-iff--c74b1a753548478620b99b5f.md) | 160 | `result-track:c74b1a753548478620b99b5fcf1f9663db30a4f1b89f9f81520387c3ea09b93c` |
| 18 | `def` | [y](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/y--1b3e45b565cc372c1c351215.md) | 164 | `declaration-track:1b3e45b565cc372c1c35121571ce112ce9f345f403f67c8eb45c822dd6cd0cba` |
| 19 | `lemma` | [y_apply](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/y-apply--a990b0674a9e68aa5962da4a.md) | 167 | `result-track:a990b0674a9e68aa5962da4a528c003ff6e9ad39feb03ab3c85a7b7e1fc3926b` |
| 20 | `lemma` | [y_continuous](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/y-continuous--b124520765d0dbacbcfec68c.md) | 169 | `result-track:b124520765d0dbacbcfec68c58e097ad0be4ecfbd0c1b77a9abbe60f6a05b027` |
| 21 | `lemma` | [y_surjective](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/y-surjective--b9885986aa8e44b03cb4bda4.md) | 175 | `result-track:b9885986aa8e44b03cb4bda43ba4408e1777147d4db07698e87b63a680ec28e8` |
| 22 | `lemma` | [S'_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/s-compactspace--d9afda4cd05c1ab7dbb103df.md) | 182 | `result-track:d9afda4cd05c1ab7dbb103dff580795ffe2da46374a2241189da4339f4365153` |
| 23 | `def` | [cover](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/cover--d7b0ca65557280c0f214d0d9.md) | 199 | `declaration-track:d7b0ca65557280c0f214d0d9d1ec8d6ffb01e810057d9906c6e45cff25cf4db3` |
| 24 | `def` | [cocone](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/cocone--4e1b437b9790b252810adc18.md) | 213 | `declaration-track:4e1b437b9790b252810adc18c8e8b56dd3eb612b7dc80b962cebe52458bf27b9` |
| 25 | `lemma` | [aux](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/aux--b005655e057ced5c8d9f06cb.md) | 264 | `result-track:b005655e057ced5c8d9f06cbbd34b79d73b8e616b3f4608ababc6b43e7e59393` |
| 26 | `theorem` | [LightCondensed.internallyProjective_free_natUnionInfty](../../../../../mathematics/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/declarations/lightcondensed-internallyprojective-free-natunioninfty--016c236b025d0c44600c1cc5.md) | 310 | `result-track:016c236b025d0c44600c1cc529d71638f11e47a061bc3a732881d5ecd70f0f87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

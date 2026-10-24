# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformSpace.Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38ded74a06b4624a7eee26e3d40f733f87348f4d",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38ded74a06b4624a7eee26e3d40f733f87348f4d`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniformSpaceCat](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/uniformspacecat--2eb1411801796bb1e6e20506.md) | 27 | `declaration-track:2eb1411801796bb1e6e20506f9b7a317e08903cafc07dfaab3d2a2e60457f3f8` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instance--62d405e86fa9cb70042bd2e2.md) | 36 | `declaration-track:62d405e86fa9cb70042bd2e2c6589ed4ef3724bfdbbcd1518e120e7702efa2cc` |
| 3 | `abbrev` | [of](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/of--7e5ffeb3827e08705ee4e2d1.md) | 40 | `declaration-track:7e5ffeb3827e08705ee4e2d19f131118ac98d47599772065c958e6b0ae2268bc` |
| 4 | `structure` | [Hom](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom--4bf44e36993594d2282da90b.md) | 45 | `declaration-track:4bf44e36993594d2282da90bd265b71c59bdced3b54ae9d0ca2accceb0e02569` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instance--2a542032a7669fb146e28c07.md) | 49 | `declaration-track:2a542032a7669fb146e28c0784851f62a4c35df95b3182295c4cd5b8d9275fd4` |
| 6 | `instance` | [instFunLike](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instfunlike--f255adb38fafab6afd86a33d.md) | 57 | `declaration-track:f255adb38fafab6afd86a33d311e6d611cbbd7fb0792a3ee6e13e6703a3131e5` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instance--02c17e46a4c1738a3499ea0a.md) | 62 | `declaration-track:02c17e46a4c1738a3499ea0a05ed0e42ddfe07ee9db6602b0c70c40006c29044` |
| 8 | `abbrev` | [Hom.hom](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom-hom--b27039368bdfb856a00de041.md) | 67 | `declaration-track:b27039368bdfb856a00de0417f135e2a975da9ff1f929c80eb779a46e1a15d42` |
| 9 | `abbrev` | [ofHom](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/ofhom--f7e85b89f1432c8471a06d4f.md) | 71 | `declaration-track:f7e85b89f1432c8471a06d4f34c63299159a330b9c4932554657b52216b1692e` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instance--e2b083cb4c312fe3f5c033cd.md) | 75 | `declaration-track:e2b083cb4c312fe3f5c033cd64c3d94bcfea09ef6893d7874d3254534b23d0b6` |
| 11 | `theorem` | [coe_of](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/coe-of--d93dd033596d65ff245a4ede.md) | 78 | `result-track:d93dd033596d65ff245a4eded458cfaaff42f6842fcd5606223654c3807bbb1c` |
| 12 | `theorem` | [hom_comp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom-comp--6fd7ed5872af8f97a6aa1491.md) | 82 | `result-track:6fd7ed5872af8f97a6aa1491e09b6852c568663273c991124ca726870f21861f` |
| 13 | `theorem` | [hom_id](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom-id--887f87ca3b6174b0d1d6d7bf.md) | 87 | `result-track:887f87ca3b6174b0d1d6d7bfd3471ad01e7ede1362e1143a3ada2f482f184a87` |
| 14 | `theorem` | [hom_ofHom](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom-ofhom--f19dfc59166fb5bd2c6ecc50.md) | 91 | `result-track:f19dfc59166fb5bd2c6ecc507a7db42872488ca1bff2ea7d9ea1ff8055917b3e` |
| 15 | `theorem` | [coe_comp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/coe-comp--a951ada1b2c0c630b1825e67.md) | 95 | `result-track:a951ada1b2c0c630b1825e679317ad58dde04c5c0fe9f87b5341bdcb27ef74f7` |
| 16 | `theorem` | [coe_id](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/coe-id--d4809560a77eeb9bd8fecbf3.md) | 98 | `result-track:d4809560a77eeb9bd8fecbf39b7d5c8bf74c26e6904b01d273bd161ae49c3433` |
| 17 | `theorem` | [coe_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/coe-mk--871c9c539fdd32d00efe0aef.md) | 101 | `result-track:871c9c539fdd32d00efe0aeff50d6db9ccf3af130b4ecb3cf7470abaf0b083b1` |
| 18 | `theorem` | [hom_ext](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom-ext--653faec2943c8c21353f35bd.md) | 106 | `result-track:653faec2943c8c21353f35bdfa8a93a2196223007922d3342db7446525caaa82` |
| 19 | `instance` | [hasForgetToTop](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hasforgettotop--d237b96289daf80b77c69743.md) | 110 | `declaration-track:d237b96289daf80b77c697432c688671dfcf62002c0c475bf5a4af5b1dfa8696` |
| 20 | `structure` | [CpltSepUniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/cpltsepuniformspace--1d4bd91d0085f51e8d12936d.md) | 120 | `declaration-track:1d4bd91d0085f51e8d12936d4e60096611eea63d26a6df750a0f8de1cbec9786` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instance--7978fc669a3029fa07628d8a.md) | 129 | `declaration-track:7978fc669a3029fa07628d8a4ff9886b093d20f8da372af1221e10e54d9db3a0` |
| 22 | `def` | [toUniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/touniformspace--8893aa6394bda11df14863cc.md) | 135 | `declaration-track:8893aa6394bda11df14863cc9d751e11cfa64b2c84e09bdae9823aafb93c4745` |
| 23 | `instance` | [completeSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/completespace--1d27205394252d9b720ac3e1.md) | 138 | `declaration-track:1d27205394252d9b720ac3e16edf46fafad0b379a242d1a20109abe55c4b00dd` |
| 24 | `instance` | [t0Space](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/t0space--2f7eaeab5ce213797816b4ec.md) | 141 | `declaration-track:2f7eaeab5ce213797816b4ec1036e2b36c2ade39afdc0d302548dcdbc085d609` |
| 25 | `def` | [of](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/of--698640c0b21d2ff1bcd37fe2.md) | 145 | `declaration-track:698640c0b21d2ff1bcd37fe21632580d32f19efbdaa0f2bf172578dc9ce5686f` |
| 26 | `theorem` | [coe_of](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/coe-of--6eca7c2b33d9a90e8b22e664.md) | 149 | `result-track:6eca7c2b33d9a90e8b22e664ff2dd9daf0fcea5f58e12999c6d4507d56cab2b2` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instance--90de4795e3f344f8bf409c12.md) | 153 | `declaration-track:90de4795e3f344f8bf409c12ae7db58f7f2540dbaaa6b398344d4d2f5fb98ada` |
| 28 | `instance` | [category](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/category--edfdaea880b2a276a8270f1b.md) | 157 | `declaration-track:edfdaea880b2a276a8270f1ba66027328ca637a725507e8d24e2f16266a59fa9` |
| 29 | `instance` | [instFunLike](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instfunlike--4a0b9dc278cbf11713d830f3.md) | 160 | `declaration-track:4a0b9dc278cbf11713d830f3141619c4174176bfb9a3bfb506239cdc9dc4af90` |
| 30 | `instance` | [concreteCategory](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/concretecategory--9853ffceba5e2d03578629a9.md) | 166 | `declaration-track:9853ffceba5e2d03578629a9310e5e4d0a9784ba69d44e5ebc36c0927bc80bf8` |
| 31 | `instance` | [hasForgetToUniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hasforgettouniformspace--4908d3f750ba7196abad303c.md) | 170 | `declaration-track:4908d3f750ba7196abad303c1777877deccc02d61479f94e9406d95ecf94d9d3` |
| 32 | `theorem` | [hom_comp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom-comp--5baadaf0bc7aab922a518048.md) | 174 | `result-track:5baadaf0bc7aab922a518048996a0aa539f0dbdfd22e5cc7fd4dfd8f0a0c7356` |
| 33 | `theorem` | [hom_id](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom-id--6fdf9451d594ae5ecd8c05ff.md) | 179 | `result-track:6fdf9451d594ae5ecd8c05ff5f697cbe5a27da327da8d71ff1c61f4aabdd6199` |
| 34 | `theorem` | [hom_ofHom](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/hom-ofhom--8b1e08b920e5b3e318b8f8f7.md) | 184 | `result-track:8b1e08b920e5b3e318b8f8f715e2dbde2219a41d73df3e4b833a847826b0d4a2` |
| 35 | `def` | [completionFunctor](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/completionfunctor--b5df70dc33a583d9faa78d8f.md) | 198 | `declaration-track:b5df70dc33a583d9faa78d8fc641584e12cfe596ab96db5b09e98b9bc6e4849b` |
| 36 | `def` | [completionHom](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/completionhom--3ed0f67fab90053dedc83424.md) | 205 | `declaration-track:3ed0f67fab90053dedc83424c3f7e5b450656ea38927211b7772d3744d4e841c` |
| 37 | `theorem` | [completionHom_val](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/completionhom-val--af7e891b1a2b727e65487e65.md) | 211 | `result-track:af7e891b1a2b727e65487e65a1b919418a07d21f834758c8e7855cae437cb097` |
| 38 | `def` | [extensionHom](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/extensionhom--cc961a8950315740ceef602e.md) | 215 | `declaration-track:cc961a8950315740ceef602e756e1e1c4dde5c4ed7283ba337c3c64040165e1f` |
| 39 | `theorem` | [extensionHom_val](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/extensionhom-val--bdcaf149fa8549eb46c9c86b.md) | 222 | `result-track:bdcaf149fa8549eb46c9c86b4775a8d3bd8de0270ba92de4f3722f2d37f57b63` |
| 40 | `theorem` | [extension_comp_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/extension-comp-coe--586173a49c2948416e943691.md) | 227 | `result-track:586173a49c2948416e943691fbe4f5884f74ca46c3b65290fe62af628a62263c` |
| 41 | `def` | [adj](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/adj--fe384a0c4ec2f00e393c80ea.md) | 234 | `declaration-track:fe384a0c4ec2f00e393c80ea4a651280a1825cf9e744c5ab00ea41e2f28c6c2e` |
| 42 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/instance--6b980405c88d6634836c458f.md) | 251 | `declaration-track:6b980405c88d6634836c458f81b60c28547779efa960ac909fab5e17877b698e` |
| 43 | `example` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant0dfebcd5779228521a9ae879282fccbc942d2c64f26833c9afa137fa2019fcd1.lean/declarations/example--7f970dbe0854293867b918b2.md) | 259 | `declaration-track:7f970dbe0854293867b918b2b8dea9c1f8befbc0360e4013861a5ee6c4eba5ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

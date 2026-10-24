# Verification target: GRWTSK.Topology.MetricTopology.SpheroidBanach.Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "668935866a8b0d725b4dac3a7f49bba54f624171",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `668935866a8b0d725b4dac3a7f49bba54f624171`.

Source path: `GRWTSK/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean.json)

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
| 1 | `structure` | [FiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/finitespheroidchart--be875de0ba87fd243616d0f1.md) | 46 | `declaration-track:be875de0ba87fd243616d0f1b50ed2f80b27659839d5d1978116eeab41ddb6ba` |
| 2 | `def` | [coordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/coordinates--b084d5092a3351aa407ed4aa.md) | 55 | `declaration-track:b084d5092a3351aa407ed4aa78104a337cdae30b0e270b81fc84da5e1228b277` |
| 3 | `def` | [ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/ofcoordinates--a8f4c4e2871dc0bacc63bcd8.md) | 61 | `declaration-track:a8f4c4e2871dc0bacc63bcd85c34a751379138ac5c28cc5b143e15cf10ff8c4d` |
| 4 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/ext--c24aeda8c5ff30c28ea8ed83.md) | 66 | `result-track:c24aeda8c5ff30c28ea8ed834d4f8217aa4931bd5ef72041f21f038b27f9a76f` |
| 5 | `def` | [chartEquiv](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/chartequiv--6177f29b4f0b7092cbf59ac4.md) | 74 | `declaration-track:6177f29b4f0b7092cbf59ac4f64c90560bd8d26de0d95c046403b24193a4c607` |
| 6 | `theorem` | [chartEquiv_apply](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/chartequiv-apply--6492ec9898ecaeefece0a7ef.md) | 84 | `result-track:6492ec9898ecaeefece0a7ef1bea6997220509420c23865d05c507d5e6e1dc7f` |
| 7 | `theorem` | [chartEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/chartequiv-symm-apply--d6a4484b556f216b762b8d73.md) | 89 | `result-track:d6a4484b556f216b762b8d739bc9cb79a6cef5f6ae7a5888bb43f76562efaa0e` |
| 8 | `theorem` | [coordinates_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/coordinates-ofcoordinates--33839c30feb890afd63d7d53.md) | 95 | `result-track:33839c30feb890afd63d7d53d0930ba48adcd91731b53243b122cba82b826394` |
| 9 | `theorem` | [ofCoordinates_coordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/ofcoordinates-coordinates--1ac8ff11d06d8d277adeb293.md) | 100 | `result-track:1ac8ff11d06d8d277adeb2931cf1793c401f3931a02e65d64b317fbcbc0f044a` |
| 10 | `instance` | [instAddCommGroupFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/instaddcommgroupfinitespheroidchart--8f645d8cefc84ced4a4c2240.md) | 108 | `declaration-track:8f645d8cefc84ced4a4c2240c2afa3fcdb2cda64879d9c14f693ccfc9314f98e` |
| 11 | `instance` | [instModuleFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/instmodulefinitespheroidchart--c84b4c381206047a7e999f47.md) | 112 | `declaration-track:c84b4c381206047a7e999f47bc0ca3acb2a8e9aba7d79a760bee7c8a151bfa4c` |
| 12 | `instance` | [instNormedAddCommGroupFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/instnormedaddcommgroupfinitespheroidchart--97fae203ca4dfdd37b235cb6.md) | 115 | `declaration-track:97fae203ca4dfdd37b235cb60bb4133d2f0c7fe5517e894d2ff6cfaf43e090a2` |
| 13 | `instance` | [instNormedSpaceFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/instnormedspacefinitespheroidchart--9414087f5054731df29477ec.md) | 119 | `declaration-track:9414087f5054731df29477ecc9781f2e7e5e03977c26b7187bab757ebf5d3326` |
| 14 | `def` | [chartLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/chartlinearisometryequiv--e5063706a3a54d4cbdfce487.md) | 124 | `declaration-track:e5063706a3a54d4cbdfce48716505abed430ec3b1f09e1044fc4ab1a0beee98c` |
| 15 | `theorem` | [chartLinearIsometryEquiv_apply](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/chartlinearisometryequiv-apply--d8ce6919469a59a461683195.md) | 130 | `result-track:d8ce6919469a59a461683195f8ef242bc7c298facf7e6b70645d17c24b9d4a00` |
| 16 | `theorem` | [chartLinearIsometryEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/chartlinearisometryequiv-symm-apply--b26ea1673c3abf889acb745a.md) | 136 | `result-track:b26ea1673c3abf889acb745a9e4856ee9dd6f335dca2ea3352485de9dd1d80b2` |
| 17 | `instance` | [instCompleteSpaceFiniteSpheroidChart](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/instcompletespacefinitespheroidchart--c4a652601057683e85a82ee6.md) | 144 | `declaration-track:c4a652601057683e85a82ee6a9bae84a8681f9457613a44ef57d2ba29f661e49` |
| 18 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/completespace--a5e964bc9346d67cd0b3ff41.md) | 149 | `result-track:a5e964bc9346d67cd0b3ff4116b9d79378afd0d824f1f527777f93521b63a4fb` |
| 19 | `theorem` | [finiteSpheroidChart_isComplete_univ](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/finitespheroidchart-iscomplete-univ--327b3d4fae4c6584652f740a.md) | 156 | `result-track:327b3d4fae4c6584652f740ac3d8375c8b40444d9d341e33f5bef42282b20373` |
| 20 | `theorem` | [coordinates_zero](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/coordinates-zero--1f96c57c13d6def67f388667.md) | 161 | `result-track:1f96c57c13d6def67f388667ef76f9b31e699f695d4c053a7a58d9edb6218171` |
| 21 | `theorem` | [coordinates_add](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/coordinates-add--129dbaf9e17ae98dd351a68a.md) | 166 | `result-track:129dbaf9e17ae98dd351a68ad67ef6f5ec9351d7ae743bb04059584c6ef0fc3e` |
| 22 | `theorem` | [coordinates_neg](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/coordinates-neg--a682c4955451516d859dd11c.md) | 171 | `result-track:a682c4955451516d859dd11c6df1a659e3a86a94d6d4b0e6f06330b22dc8fc24` |
| 23 | `theorem` | [coordinates_sub](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/coordinates-sub--055b67abb7bce46c0ba93782.md) | 176 | `result-track:055b67abb7bce46c0ba93782d79b8fdf16c96eb9e4232b480e6691d2ddea827f` |
| 24 | `theorem` | [coordinates_smul](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/coordinates-smul--1724c525370bb428d02320ca.md) | 181 | `result-track:1724c525370bb428d02320cacd0bdbd48f9115d41f34a596cde6b28a9dcaa17c` |
| 25 | `theorem` | [zero_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/zero-eq-ofcoordinates--9cff0f8c869967104290c570.md) | 189 | `result-track:9cff0f8c869967104290c5706349aa6fe219676c0067519ae49fbc619ccc420b` |
| 26 | `theorem` | [zero_ambient_eq_south](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/zero-ambient-eq-south--0ab8d9c627d6cc1f1cc4a02e.md) | 197 | `result-track:0ab8d9c627d6cc1f1cc4a02ef8cd75b02f36bb1e117bd0c39af0131d8a678c15` |
| 27 | `theorem` | [add_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/add-eq-ofcoordinates--5ee334ba42f668e014304204.md) | 205 | `result-track:5ee334ba42f668e014304204471662a1bc1cd6b2d908d89c2f1e5b5f950f6785` |
| 28 | `theorem` | [neg_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/neg-eq-ofcoordinates--e23ba3d6260fb9d4db09b616.md) | 212 | `result-track:e23ba3d6260fb9d4db09b6163198c99e1b71b6814f87daaca38defd6bf764176` |
| 29 | `theorem` | [sub_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/sub-eq-ofcoordinates--fd876a0c0dc28ede902def73.md) | 219 | `result-track:fd876a0c0dc28ede902def733e764dd8a3bf2209cb459e746fed70283c21e7e3` |
| 30 | `theorem` | [smul_eq_ofCoordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/smul-eq-ofcoordinates--3e6ad44d31e85a4dad2caa81.md) | 226 | `result-track:3e6ad44d31e85a4dad2caa819bca390b31f8a6767e5c3994e1b5afa5cd85e2ec` |
| 31 | `theorem` | [norm_eq_coordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/norm-eq-coordinates--8251f665a5f96ed544f455b8.md) | 234 | `result-track:8251f665a5f96ed544f455b830607564c1359cfc943c1ca943388225a8c094ba` |
| 32 | `theorem` | [norm_eq_polar_formula](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/norm-eq-polar-formula--40b14a1f4d6231147fa2e4f0.md) | 242 | `result-track:40b14a1f4d6231147fa2e4f0d6baa7e5a74d51897d13e2f08ede1bd87926e669` |
| 33 | `theorem` | [dist_eq_coordinates](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/dist-eq-coordinates--bd009bca5bf9e0be6429ccf0.md) | 253 | `result-track:bd009bca5bf9e0be6429ccf09e0a1e9c24555c41bca0b5c952006eb2898fdcd7` |
| 34 | `theorem` | [polar_eq_norm_formula](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/polar-eq-norm-formula--801072670186463f1ded8435.md) | 260 | `result-track:801072670186463f1ded8435f7718aa6049cb29554233e520eb47a94adbba5fa` |
| 35 | `theorem` | [northGap_eq_norm_formula](../../../../../mathematics/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/declarations/northgap-eq-norm-formula--4f27cd10b144b1da4ed351fd.md) | 278 | `result-track:4f27cd10b144b1da4ed351fdd2c23abb9c03f455b022058b9157037ccc3684e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

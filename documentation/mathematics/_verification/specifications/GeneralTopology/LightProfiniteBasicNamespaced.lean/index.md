# Verification target: Light Profinite Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bd2bef8a41a8fed99ac85b9acc566a36c713814",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bd2bef8a41a8fed99ac85b9acc566a36c713814`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Countable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.AsLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.CofilteredLimit` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ClopenBox` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LightProfinite](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightprofinite.md) | 46 | `declaration-track:a9f7ac7a51ad17f1d85b2a3f93cbf661252a990a86c0218e0b70c63e772e2473` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 51 | `declaration-track:37270c677ab94c70be12df11696557c26041351aaab9be4e8942041c91a72639` |
| 3 | `abbrev` | [of](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/of.md) | 60 | `declaration-track:a672c3d3d20d96c106084371512eec8af1ec168f56ec20a8127839423cdb658f` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 64 | `declaration-track:39f61def40fcfae28e5015d0a719bf4199774cb2ab42d8b889ece29a5ef390b1` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-25.md) | 67 | `declaration-track:db293d49d167751ba7eb26b9b4fa35b9997dac8e361eb2e39cc5452c3a798b28` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-23.md) | 70 | `declaration-track:d5d6cabf1e2d891c2e2d0f0d8400a4c2511d1fa1c4f081d513666eff46fca92b` |
| 7 | `abbrev` | [lightToProfinite](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lighttoprofinite.md) | 76 | `declaration-track:5755a30a01a42b94dd11c79ec98c4b299d2aa14694d216ef57794e8f2dc6bc77` |
| 8 | `abbrev` | [lightToProfiniteFullyFaithful](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lighttoprofinitefullyfaithful.md) | 80 | `declaration-track:e51e96b3ce3c8f7bfcad468bf8207d724d55f45c4ed0fc91a011e3848f261b6e` |
| 9 | `abbrev` | [lightProfiniteToCompHaus](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightprofinitetocomphaus.md) | 84 | `declaration-track:d3523152c2d981583fd01b3bfa1212d50e36ae22dac36d90a913e70e4857dd28` |
| 10 | `abbrev` | [LightProfinite.toTopCat](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightprofinite-totopcat.md) | 89 | `declaration-track:5f3dd81c22bac046485593851e0340446bc5fd8793c57e44fe6f5cf2002e2c1a` |
| 11 | `def` | [FintypeCat.toLightProfinite](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/fintypecat-tolightprofinite.md) | 100 | `declaration-track:419bf8bd46aabf09f41b3c05354352eadddab75576242778b69a0793b5fd6929` |
| 12 | `def` | [FintypeCat.toLightProfiniteFullyFaithful](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/fintypecat-tolightprofinitefullyfaithful.md) | 105 | `declaration-track:742fd2019f937b939e2037f0526ee68c0e23b230b7cd6693f45620ec69562033` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance.md) | 110 | `declaration-track:14332d2bf80a4b3e9aee66a47147f9aa9759a625b8c8291f5872e634b1c57bc5` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 113 | `declaration-track:51afd7e9f5757d76e3429cffb80f07ebcf5b7d375fe193e93d162dcb05ea1261` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-26.md) | 116 | `declaration-track:eb17a385502d67503af9f98243f6a47404c6b606c08c6874b63ff4afb96c9519` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 119 | `declaration-track:4f5785eeab88e021980a5a3c912137fe7333b49de84815b8f51aea56bd4b0624` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 125 | `declaration-track:938d871fca55915e73a37e037f770ac14d1ba58e1f7e193782c95134b2eb2a89` |
| 18 | `def` | [limitCone](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/limitcone.md) | 133 | `declaration-track:16ac24c740a1d27379a8c2d31e8a858881e737a85ebc80fb18c42e95c6c30aca` |
| 19 | `def` | [limitConeIsLimit](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/limitconeislimit.md) | 151 | `declaration-track:d95806cc97d8b4bac9b923f4c1122f20146081e62c00ec014bae5ac233ae6234` |
| 20 | `instance` | [createsCountableLimits](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/createscountablelimits.md) | 159 | `declaration-track:a3d3f04bd917cd3b782e341284e29c64b13d5a8a8b0ceec79c8d547e1857f0e8` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-18.md) | 166 | `declaration-track:ab068fbf9f9f24dc03ecd595d7df1f7c2d8f0c9a2935586422f8b4ee394b03c5` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-17.md) | 169 | `declaration-track:a6c9b318294d4922be998e6cd64636f18b4223a8d246bd148e9236b1ebc3f7e7` |
| 23 | `theorem` | [isClosedMap](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/isclosedmap.md) | 176 | `result-track:86f5fc6e2e07f40d497ad7a66018ad1c518265e61f34a456492395cca6ba9bf6` |
| 24 | `theorem` | [isIso_of_bijective](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/isiso-of-bijective.md) | 180 | `result-track:30b5a51383b63146faaad9d6d74b9364fb0bd4ba8bd6dba93e8f59984048c2a0` |
| 25 | `def` | [isoOfBijective](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/isoofbijective.md) | 185 | `declaration-track:43fa1fc567db637fbac39ca4b60c637285184c165bdfefcfa78cffe0e8129584` |
| 26 | `instance` | [forget_reflectsIsomorphisms](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/forget-reflectsisomorphisms.md) | 189 | `declaration-track:3e5ef02bf78fc3e0bd1353704155a7ef985b63c02f0c8bf33b5dcf71532613e5` |
| 27 | `theorem` | [epi_iff_surjective](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/epi-iff-surjective.md) | 195 | `result-track:48cc425e5f0c84e5ecd4978c4cd614f2a76e40cc33b71e2eafcdde9698b8fbfc` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-22.md) | 231 | `declaration-track:c7073222e75ac371f3d3a298e2bf611b25374bd69b204a8c4de2d30b781049ff` |
| 29 | `structure` | [LightDiagram](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightdiagram.md) | 237 | `declaration-track:533b494344994f7f4b443976bd270b0c7e6d6a30daa776afbad8d796258f1fd2` |
| 30 | `def` | [toProfinite](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/toprofinite.md) | 248 | `declaration-track:c188058fb451bd6486d1fb415cc4c73edbd1c63d841fd19d86db4c94884279b3` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-20.md) | 251 | `declaration-track:b5c5cd823d1bb7528d5dd82e360db6b4965ff8f22df678e852f0bba358e471f6` |
| 32 | `instance` | [hasForget](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/hasforget.md) | 253 | `declaration-track:68faf9f6c82454d0ed200e16216abbefa2a0014032b1899fabca815ab7b32c0e` |
| 33 | `def` | [lightDiagramToProfinite](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightdiagramtoprofinite.md) | 260 | `declaration-track:fab78d57ff91271b582025fe4dbd9ed4b2e17448c0d0661c28ea6b54a5a5ec6f` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 262 | `declaration-track:4872aa1cfa98d9638f4cb2ae09d7ca680327cfe49992f98bbe877cb6e8207213` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 264 | `declaration-track:a0864522cd74d0fa8b6cece51986c11bee640ffb140e72535828670657a4bfcb` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 268 | `declaration-track:2ee2e06c395dc18f9b301324755f89d2efca779b891dfcd2e275144dbeeea28d` |
| 37 | `instance` | [instCountableDiscreteQuotient](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instcountablediscretequotient.md) | 272 | `declaration-track:88d8c8fe123c749dc6c764f044ecf2e6bcb4ba178f2c9aa811f9b56626b5dbfc` |
| 38 | `def` | [toLightDiagram](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/tolightdiagram.md) | 277 | `declaration-track:583069576f246a7bfae7847b9675acda983a458ee295bc3c76820188f5e2b8e1` |
| 39 | `def` | [lightProfiniteToLightDiagram](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightprofinitetolightdiagram.md) | 288 | `declaration-track:29f383f457aa59c44a858e8e76edeb9402c2926428927fdebca762b4ccc00875` |
| 40 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-24.md) | 293 | `declaration-track:d762aca5b1f6de04106c5e5d13870a8fdc9d49f91d4dd0de3d76bbb6c18d34ce` |
| 41 | `def` | [lightDiagramToLightProfinite](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightdiagramtolightprofinite.md) | 313 | `declaration-track:d4ec61e6245257badeed1528bd20f0c3d99a00b6d57246d21bedf3c76d4927e2` |
| 42 | `def` | [LightProfinite.equivDiagram](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightprofinite-equivdiagram.md) | 318 | `declaration-track:bfedec740cbee41286bc89141ef2c6741c7d4a35d858233d7030bdd3e1a333db` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 333 | `declaration-track:3b651fbb71f7ebf1b751d10d79218f91b6d86627ac6fee1059f86c810aa71eed` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-19.md) | 336 | `declaration-track:b07aedb7cd4bd856de7404b1d1369fb9885b99dc8b87f3bb057eb124767d2cd8` |
| 45 | `structure` | [LightDiagram'](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightdiagram-source-edition-2.md) | 350 | `declaration-track:eb4ed9e94e0169bcfc599c65cf2f4ee4a06ea402dda0131b3640ed13bdb9b2f8` |
| 46 | `def` | [LightDiagram'.toProfinite](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightdiagram-toprofinite.md) | 355 | `declaration-track:a3545a855e41583e6a8850cc6c9b9a8f9d9123f6d7ec73f8d2e6f36bfc2a024b` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-16.md) | 358 | `declaration-track:a394fda94ddb0f690827a407ea8e4ea78fbe84b0c2341ee435e9a316eb155ddb` |
| 48 | `def` | [LightDiagram'.toLightFunctor](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightdiagram-tolightfunctor.md) | 361 | `declaration-track:388cd7af59cf991009e3e9b06894306a1b54aec5fee9075d021e955e3d3f3f83` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 365 | `declaration-track:54850f9baa27f059f48bb2f24a8b6d9bd3f66c9cdff6d678def2f826660de884` |
| 50 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 367 | `declaration-track:6e303006481f0f4ca77193711ebd0bd851177aa17571f8b09a4ef16bc6b44544` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 370 | `declaration-track:55f52ec378d227c5c85eee664638b21d7a1fe538244a8f9e5e66dbcf9b9d9343` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-21.md) | 377 | `declaration-track:b65da39f296d264693c5553bf1f157361c7c013067fd86d73bae60a4dbaf2aa7` |
| 53 | `def` | [LightDiagram.equivSmall](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/lightdiagram-equivsmall.md) | 380 | `declaration-track:f6d24554d90786aa1bd2b8a2fc68a300d8435343ce5e508e3a6c83595d37aaa6` |
| 54 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 383 | `declaration-track:1b423706ccaeb03d5972c084fa2af684d295cf3e3f1887d13259b7b8e5208dd4` |
| 55 | `instance` | [(anonymous)](../../../../GeneralTopology/LightProfiniteBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 386 | `declaration-track:5ef9c636040adf8abeb161b366ac0a4a8e28b58126441a96be1e8cb82e45a38c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51298ebfc6770468f2f8cda1b550be110bb09f723d3b04f11674961a19b9e4b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

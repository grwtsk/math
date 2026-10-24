# Verification target: GRWTSK.Topology.GeneralTopology.SpheroidStereographic.Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72e021039990e072da279bbfed404bfb08e00e71",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72e021039990e072da279bbfed404bfb08e00e71`.

Source path: `GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Ambient](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/ambient--c49a81328703ea14c010068a.md) | 33 | `declaration-track:c49a81328703ea14c010068a31d4e37061c6157c62be11536a0a5ebe1da8ceac` |
| 2 | `def` | [OnSpheroid](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/onspheroid--e5abcd87f703388dddf13781.md) | 37 | `declaration-track:e5abcd87f703388dddf137816b0c3190352a56d57af2b283d62bd27450b5b4ec` |
| 3 | `abbrev` | [Spheroid](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/spheroid--98c4ee022173440013ef5a70.md) | 41 | `declaration-track:98c4ee022173440013ef5a7098d1af6d47c1ee5c9bb92add4fc1cf2c7c73bbb4` |
| 4 | `def` | [north](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/north--2fe8301978bc9ee8ccc5b5fd.md) | 44 | `declaration-track:2fe8301978bc9ee8ccc5b5fd5856de97ce98dda5a0ff369dfb9c8dd17612ed3e` |
| 5 | `abbrev` | [PuncturedSpheroid](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/puncturedspheroid--6ee5f888c0d7356dca40121f.md) | 47 | `declaration-track:6ee5f888c0d7356dca40121f5ea4f7098677c524b4ebfe2f76d24d48a88a0efa` |
| 6 | `def` | [inverseDenominator](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inversedenominator--e89579d69d0901168b2588be.md) | 51 | `declaration-track:e89579d69d0901168b2588bef0498ba39d1f2b19bad04c8658ce93b9217a2164` |
| 7 | `theorem` | [inverseDenominator_apply](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inversedenominator-apply--5c9357e324a97d530efc2c7e.md) | 56 | `result-track:5c9357e324a97d530efc2c7e8658a64d3146e2dc2b52cfb14ade02d08c873e29` |
| 8 | `theorem` | [inverseDenominator_pos](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inversedenominator-pos--92f650d55563167e1853578d.md) | 61 | `result-track:92f650d55563167e1853578da472476ede074946d2ed433b3a0484665b7c1317` |
| 9 | `def` | [inverseRaw](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inverseraw--2f2bb4a20e1b830682159083.md) | 68 | `declaration-track:2f2bb4a20e1b830682159083ae86c08a6042a30916764f67f0378c5309a38b45` |
| 10 | `def` | [project](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/project--9479401d9e969c3ea3de316e.md) | 73 | `declaration-track:9479401d9e969c3ea3de316eab62ffe902518fb17df621c67865b2798c3e80fd` |
| 11 | `theorem` | [project_apply](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/project-apply--e62300d382a7db4b179ca21a.md) | 79 | `result-track:e62300d382a7db4b179ca21aec17731c4876189507d52c55f8d862d6510744c1` |
| 12 | `theorem` | [spheroid_polynomial](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/spheroid-polynomial--dde477d7199bce1202b449be.md) | 83 | `result-track:dde477d7199bce1202b449be1bc529eac736f88fff3d562bbe239ea5940d6ea5` |
| 13 | `theorem` | [polar_lt_radius](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/polar-lt-radius--e9e6501c4238197e351d4c37.md) | 93 | `result-track:e9e6501c4238197e351d4c3730e935213c1cde94ebb61fcf002e246a35c3131d` |
| 14 | `theorem` | [projectDenominator_pos](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/projectdenominator-pos--1b6f41998d4230f7028fc547.md) | 115 | `result-track:1b6f41998d4230f7028fc5477f21be2f4471537514fcd9054be59c7c4c7697e8` |
| 15 | `theorem` | [inverseRaw_onSpheroid](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inverseraw-onspheroid--f64752ba067fd0a64ad4637d.md) | 122 | `result-track:f64752ba067fd0a64ad4637d683935f69ceec92283aca80994a027ada4850ea3` |
| 16 | `theorem` | [inverseRaw_ne_north](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inverseraw-ne-north--f7acaf048f8a6306422fcbf6.md) | 137 | `result-track:f7acaf048f8a6306422fcbf6c43ac371be8e7670249a93883b9ff030c57775d8` |
| 17 | `def` | [inverse](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inverse--5d76779c3351ed834bb195d6.md) | 150 | `declaration-track:5d76779c3351ed834bb195d6133fcdebb51975d046e2e2076d42d2c81a39b2aa` |
| 18 | `theorem` | [inverse_val](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inverse-val--50681be9997e3e005e6cb738.md) | 157 | `result-track:50681be9997e3e005e6cb738f9c685c0ce281fc3b905c0137f328ee3d489577a` |
| 19 | `theorem` | [inverse_polar](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inverse-polar--930cef3f9e8313fb64f754ff.md) | 164 | `result-track:930cef3f9e8313fb64f754ff1380686fbd9fd990b02415af0dcf0454020af0a0` |
| 20 | `theorem` | [inverse_zero](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inverse-zero--2232cb4b91192c565406b9a5.md) | 172 | `result-track:2232cb4b91192c565406b9a5b1863076429e7cec121cf3fe2401f4df97388d30` |
| 21 | `theorem` | [project_inverse](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/project-inverse--2383e75f72d9f1d3cfd0d2c1.md) | 183 | `result-track:2383e75f72d9f1d3cfd0d2c1cf78451e2d8baedc3bf03b1ab81cd115fb1caec0` |
| 22 | `theorem` | [inverse_project](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/inverse-project--80fcace0c96e4496eaec974f.md) | 202 | `result-track:80fcace0c96e4496eaec974f775028e53ba412e24f1eb175a9e3b708c97a71a9` |
| 23 | `def` | [angularRaw](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/angularraw--1f58b1db9b1edb14a4242bf5.md) | 245 | `declaration-track:1f58b1db9b1edb14a4242bf5ae51facb5c90129f3677eaee29c667ad7c654509` |
| 24 | `theorem` | [angularRaw_onSpheroid](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/angularraw-onspheroid--65bb6bba9d1328bff7616cca.md) | 250 | `result-track:65bb6bba9d1328bff7616ccae9232b363b34ca9aedcc23bc6af3f50a1e9264de` |
| 25 | `theorem` | [one_add_cos_pos_of_angle](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/one-add-cos-pos-of-angle--9703a74e41fb893a9145a0fd.md) | 259 | `result-track:9703a74e41fb893a9145a0fd90124eb5e172bea11852bf8067b5ab709c5f44c6` |
| 26 | `theorem` | [angularRaw_ne_north](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/angularraw-ne-north--e848614c565587b190c0db1b.md) | 270 | `result-track:e848614c565587b190c0db1ba1f2dcea3eba1b074dd39202b4faf54c8911cb31` |
| 27 | `def` | [angularPoint](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/angularpoint--79091c69a9a3c6b306e0e627.md) | 286 | `declaration-track:79091c69a9a3c6b306e0e627c567e99a42f79ca731fca863aefe1163ccaa6877` |
| 28 | `theorem` | [project_angularPoint](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/project-angularpoint--7172c0543817576aa227ad39.md) | 295 | `result-track:7172c0543817576aa227ad3969422d012e94fe6c72835c5e6c620d8dfa19cb0f` |
| 29 | `theorem` | [norm_project_angularPoint](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/norm-project-angularpoint--ba2aec835e9f788c6424f4a8.md) | 318 | `result-track:ba2aec835e9f788c6424f4a830f8b72b9087069b32bee7e28c623f80392a6362` |
| 30 | `theorem` | [tendsto_chartRadius_at_north](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/tendsto-chartradius-at-north--2a44e3e51404d31020da73f8.md) | 333 | `result-track:2a44e3e51404d31020da73f850599906ed34bb4adad5f3d7fb26003812f009ea` |
| 31 | `def` | [chartEquiv](../../../../../mathematics/Topology/GeneralTopology/SpheroidStereographic/Variantd946b756dcbb541ba7e2894973e6b1c6e6beb9b955530a5de2d81c11fb4ec697.lean/declarations/chartequiv--7ea136cf7f98a6783ef2e9cc.md) | 351 | `declaration-track:7ea136cf7f98a6783ef2e9cc526287fdc88ec0afaf74c76cd956e2198b632058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

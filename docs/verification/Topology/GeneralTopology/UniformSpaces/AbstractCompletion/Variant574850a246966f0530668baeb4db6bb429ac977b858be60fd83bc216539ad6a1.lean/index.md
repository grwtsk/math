# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.AbstractCompletion.Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffb6a067e1db9cb6db068f5274512c12fe1f9ee6",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffb6a067e1db9cb6db068f5274512c12fe1f9ee6`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbstractCompletion](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/abstractcompletion--db7438b0904a487fa102231b.md) | 55 | `declaration-track:db7438b0904a487fa102231b903d32c673547c470d44173b586f491e36b3cc88` |
| 2 | `def` | [ofComplete](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/ofcomplete--e232bd22cd5e86a2f8e1a34a.md) | 83 | `declaration-track:e232bd22cd5e86a2f8e1a34aa8c1d648bbee7aad39c09d31e0c427996e23f509` |
| 3 | `theorem` | [closure_range](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/closure-range--b50de3d03879eeb5fcbf78b5.md) | 86 | `result-track:b50de3d03879eeb5fcbf78b5357eb4396ce773e1ded867e8b6fee47cfcaefc59` |
| 4 | `theorem` | [isDenseInducing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/isdenseinducing--a025b7217d02bb48c2666602.md) | 89 | `result-track:a025b7217d02bb48c2666602c3af66ab5c40b37d4cdf3c7666c7715c8ace686d` |
| 5 | `theorem` | [uniformContinuous_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/uniformcontinuous-coe--450bf98b86e91baa9711d8af.md) | 92 | `result-track:450bf98b86e91baa9711d8afad4553ac2ebfcc52f0ca24288cfe95ab156b9eb5` |
| 6 | `theorem` | [continuous_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/continuous-coe--5fc8776af00e3eeeaae70234.md) | 95 | `result-track:5fc8776af00e3eeeaae7023403cf14b2a041a43e7ed46b9777d3bab8064f030d` |
| 7 | `theorem` | [induction_on](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/induction-on--6471d7398f04526ca302fb4e.md) | 99 | `result-track:6471d7398f04526ca302fb4e777dda7c0595d431a8be3cc778629ac416efd7ba` |
| 8 | `theorem` | [funext](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/funext--0fc17263e4285adb03d49bf7.md) | 105 | `result-track:0fc17263e4285adb03d49bf70caebf60162ab2a5192cf392395b48eaa3183057` |
| 9 | `def` | [extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/extend--67791afce4d7027099f07cdc.md) | 114 | `declaration-track:67791afce4d7027099f07cdcddf9829138da5427b7737aee046517cba9874e95` |
| 10 | `theorem` | [extend_def](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/extend-def--c37d0dabbccfb863d2ddf4a9.md) | 120 | `result-track:c37d0dabbccfb863d2ddf4a95615b9573326bee79792dbb6c0eb1875e43cc2a9` |
| 11 | `theorem` | [extend_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/extend-coe--9b9c70855b5b2f469b61c1d8.md) | 123 | `result-track:9b9c70855b5b2f469b61c1d85ba81f86d3fe19c4f4ca2c7be3fd5e5ba333d9ee` |
| 12 | `theorem` | [uniformContinuous_extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/uniformcontinuous-extend--6ece352878007c912ebd66f1.md) | 129 | `result-track:6ece352878007c912ebd66f1397aa74a5fd6c4180cfae609728d262e1b49b31c` |
| 13 | `theorem` | [continuous_extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/continuous-extend--8c6d11f0eaefc5c7f896a524.md) | 137 | `result-track:8c6d11f0eaefc5c7f896a52478deaf512e23814280ac7801326dd5fe5c7b2c3b` |
| 14 | `theorem` | [extend_unique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/extend-unique--340016a95356f3414678e629.md) | 142 | `result-track:340016a95356f3414678e62999437a47f1caf4c01570e16cd1b4727add903cdf` |
| 15 | `theorem` | [extend_comp_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/extend-comp-coe--a5598b463a0e2518b19e7e70.md) | 148 | `result-track:a5598b463a0e2518b19e7e70ce5e0de888e01c1d3ba03689354bdff480a40cc5` |
| 16 | `def` | [map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/map--81a5daa2c7fad66dfbfd2834.md) | 164 | `declaration-track:81a5daa2c7fad66dfbfd283448b19a413c2db1d9070fb8f7191a1e6e7925f9e6` |
| 17 | `theorem` | [uniformContinuous_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/uniformcontinuous-map--d5d987520c821a129a654dc7.md) | 171 | `result-track:d5d987520c821a129a654dc751219c73661506d17fd832be2820f5b8c2bb0eb7` |
| 18 | `theorem` | [continuous_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/continuous-map--f61676045f868b63dfc53513.md) | 175 | `result-track:f61676045f868b63dfc53513974114189ed975e9517eac0dbbcf8056ac476d93` |
| 19 | `theorem` | [map_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/map-coe--b820642b73365081ac308b3d.md) | 181 | `result-track:b820642b73365081ac308b3d8765ed5c52a3f12c1de617037fb182b362290c15` |
| 20 | `theorem` | [map_unique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/map-unique--84605e6b33eaeebfe2435a34.md) | 184 | `result-track:84605e6b33eaeebfe2435a341b3b314a5b575b4ce750caa3f8cf7afc7431294e` |
| 21 | `theorem` | [map_id](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/map-id--fc92204cc96165cf07652110.md) | 193 | `result-track:fc92204cc96165cf07652110080a938d5fab76d758aff3e1c92d2ee524c1171e` |
| 22 | `theorem` | [extend_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/extend-map--34a4e30cadc6db7c5c893b0c.md) | 198 | `result-track:34a4e30cadc6db7c5c893b0caebc1e135401f022bce7b68e90471de8392b255a` |
| 23 | `theorem` | [map_comp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/map-comp--4547e1014b517062b7dc747a.md) | 208 | `result-track:4547e1014b517062b7dc747a41ed831edefbef72d886037b3443a1f164bb4c16` |
| 24 | `def` | [compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/compare--b7a68121bac5af1c2dc5c582.md) | 220 | `declaration-track:b7a68121bac5af1c2dc5c5829c1eab54cbe9b7e4f65320ade1f0ae94256cc6df` |
| 25 | `theorem` | [uniformContinuous_compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/uniformcontinuous-compare--69d881c38be8ac5b8f7aac7f.md) | 223 | `result-track:69d881c38be8ac5b8f7aac7f13f2c2899ef48b0b87e362068f01356946fe5a25` |
| 26 | `theorem` | [compare_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/compare-coe--4f29d1e22a64b389f966a394.md) | 226 | `result-track:4f29d1e22a64b389f966a394833655aa8909346380d78d4953f03fe7b850cff8` |
| 27 | `theorem` | [inverse_compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/inverse-compare--576db9ee4e1f42da1eda930a.md) | 229 | `result-track:576db9ee4e1f42da1eda930a3a1ce0409e3bc329197a8f82d7f6c0ca551bc364` |
| 28 | `def` | [compareEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/compareequiv--a4c34141a53ff7a331fff296.md) | 238 | `declaration-track:a4c34141a53ff7a331fff2960c1229701355c0ea8c3e147015656ec9bbed7f85` |
| 29 | `theorem` | [uniformContinuous_compareEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/uniformcontinuous-compareequiv--e733b38062ed5efa3dd755b1.md) | 246 | `result-track:e733b38062ed5efa3dd755b1e08e14467ab607f653aa83547fda0390d463466a` |
| 30 | `theorem` | [uniformContinuous_compareEquiv_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/uniformcontinuous-compareequiv-symm--15bf039a0dce744baf31d6e2.md) | 249 | `result-track:15bf039a0dce744baf31d6e2d5b9d9853c6f5acf57243b3ebd30a93de238e215` |
| 31 | `theorem` | [compare_comp_eq_compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/compare-comp-eq-compare--5401e7c080a034b102e18369.md) | 273 | `result-track:5401e7c080a034b102e18369ce75bbb4fb81aecc4512b06a19408e7ae239afdf` |
| 32 | `def` | [prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/prod--eaf1a67400035e091e37a921.md) | 301 | `declaration-track:eaf1a67400035e091e37a9213ede755318e16ba1d1d66bddfdfb6ee14c3f5647` |
| 33 | `def` | [extend₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/extend--023e27f12975cdb0abf5ff65.md) | 325 | `declaration-track:023e27f12975cdb0abf5ff65370ed15efd85e693a913f6cdaafbb94b1c35d2eb` |
| 34 | `theorem` | [extension₂_coe_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/extension-coe-coe--15bef63f56ad3aa960e8fb16.md) | 332 | `result-track:15bef63f56ad3aa960e8fb161301b0f981b9e4389b3e6f07db718019c97afa65` |
| 35 | `theorem` | [uniformContinuous_extension₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/uniformcontinuous-extension--353dee1d01d8c31fd03ed67b.md) | 342 | `result-track:353dee1d01d8c31fd03ed67b16f1b691cd372fa9f76eb400a85704a030e92684` |
| 36 | `def` | [map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/map--373c4f12c085014a4f577ced.md) | 365 | `declaration-track:373c4f12c085014a4f577ced955566e68b347ca3a4f42760b1a122c2337c7c16` |
| 37 | `theorem` | [uniformContinuous_map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/uniformcontinuous-map--ff8580cee6b532afd1bf8682.md) | 368 | `result-track:ff8580cee6b532afd1bf8682bca2751df8ac5089a0d97a8145cf504edf0fd048` |
| 38 | `theorem` | [continuous_map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/continuous-map--144ac7b457ee7f6ee8eb5dc3.md) | 371 | `result-track:144ac7b457ee7f6ee8eb5dc3a7c8b5add6c2676e6ea5780a0b36c67ac1f5eb09` |
| 39 | `theorem` | [map₂_coe_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/declarations/map-coe-coe--38af54d19b065c74ae3da499.md) | 376 | `result-track:38af54d19b065c74ae3da499c9e1195ef57387c2dd3a136093570eae0ef3b75a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

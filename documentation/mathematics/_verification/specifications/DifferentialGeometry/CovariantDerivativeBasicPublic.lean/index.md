# Verification target: Covariant Derivative Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c9563d266d97b9201d51fce894db3958bc18e43",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c9563d266d97b9201d51fce894db3958bc18e43`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCovariantDerivativeOn](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/iscovariantderivativeon.md) | 92 | `declaration-track:7eaf92dcce30255d276789a3961946baa3ec33b360770ab957e4f7f1d433d22e` |
| 2 | `class` | [ContMDiffCovariantDerivativeOn](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/contmdiffcovariantderivativeon.md) | 108 | `declaration-track:e922c07230ddc70364455d3afb968c8d9af070285420c1ed50774430b0ddfd30` |
| 3 | `lemma` | [mono](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/mono.md) | 128 | `result-track:068a776a70cb3891add19e2b014597b4152bf4187fa6cb46b91866f9e083c130` |
| 4 | `lemma` | [iUnion](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/iunion.md) | 134 | `result-track:9d392aac5f99324bb687d997ef7c16334c14350d7cf1484690aa00fc667998b2` |
| 5 | `lemma` | [congr_of_eqOn](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/congr-of-eqon.md) | 153 | `result-track:170b698e7f87b165fe53b7f8170d5f3c0fb743a2cd8d0be54afd726fd7b9fb00` |
| 6 | `lemma` | [congr_of_eventuallyEq](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/congr-of-eventuallyeq.md) | 188 | `result-track:7131e34ced6307d69a0d83bd565f51636e6aebbacdbb695359513caf12a00a7b` |
| 7 | `lemma` | [zero](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/zero.md) | 205 | `result-track:3cda2711091db4755cccc942ad61fe008e522e7cff5d44f7da13a0c1ca0d69f7` |
| 8 | `theorem` | [smul_const](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/smul-const.md) | 211 | `result-track:34cb55dcfbcff6d0a1322885e1149e31513b713fb4f15a21c09625ccb68bc35c` |
| 9 | `lemma` | [affine_combination](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/affine-combination.md) | 238 | `result-track:c5b6909a32e7975671ba10669b452e7f733837fea075bd29779e5c685e320f06` |
| 10 | `lemma` | [_root_.ContMDiffCovariantDerivativeOn.affine_combination](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/affine-combination-source-line-250-occurrence-2.md) | 250 | `result-track:8145c699532865fdff63d205773913fe676fbb6bf8d9f6d21243a30a217c3ef2` |
| 11 | `lemma` | [finite_affine_combination](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/finite-affine-combination.md) | 263 | `result-track:7d7934e943f47dc8dd75c0c2fc518f1930fc69e8762628e9c30be590ef810c4b` |
| 12 | `lemma` | [_root_.ContMDiffCovariantDerivativeOn.finite_affine_combination](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/finite-affine-combination-source-line-284-occurrence-2.md) | 284 | `result-track:929465fe76e45e29cfbb2cfdeb457a3006f84b3affeec0ca8239d43a5014bc0e` |
| 13 | `lemma` | [add_one_form](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/add-one-form.md) | 296 | `result-track:20e581ba39a7e037f7e5d1410ec0ad73ab9056324ad49ec0c90d592c673e079e` |
| 14 | `def` | [differenceAux](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/differenceaux.md) | 310 | `declaration-track:b36259907ee06c5f7c0f150fab37489a231c0e68c4e255a59133ddb1aff8af23` |
| 15 | `theorem` | [differenceAux_tensorial](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/differenceaux-tensorial.md) | 321 | `result-track:9a3811aa62ac102a8452b1e3eb42694dd65c7334457594b03cbc398246bcc7bb` |
| 16 | `def` | [difference](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/difference.md) | 339 | `declaration-track:0b4f54147baecf9dc9051640e2eed33a2cadcef56681531deefc6bcd91f8ccf7` |
| 17 | `lemma` | [difference_apply](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/difference-apply.md) | 346 | `result-track:4dc512ff34ad35fc46dd599898b1e9273ca51c93918283dc16ce5131c5464702` |
| 18 | `structure` | [CovariantDerivative](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/covariantderivative.md) | 366 | `declaration-track:5fdb27faee27421a9d6790f218da8ed9012a1750d0797b02213a7ac13b802bde` |
| 19 | `instance` | [(anonymous)](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/anonymous-instance.md) | 376 | `declaration-track:c756e99688bd5f9cf40a7944e460066bcb3a31b5035c4195b5eec8f32ab64a01` |
| 20 | `lemma` | [isCovariantDerivativeOn](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/iscovariantderivativeon-source-line-380-occurrence-2.md) | 380 | `result-track:8480973a8c4d68c0ae7809c3407bf31b68f0cda39b526aa8f6c628e25bd8108e` |
| 21 | `lemma` | [zero](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/zero-source-line-385-occurrence-2.md) | 385 | `result-track:6f1617709e4554ee3e3d8cf19fb6690ff08273ebc765e75d1d9d2ca2d79dc2b3` |
| 22 | `def` | [ofIsCovariantDerivativeOnOfOpenCover](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/ofiscovariantderivativeonofopencover.md) | 391 | `declaration-track:50570240458fd565b4e9a1a3f471f63527f4a6211a1716146c0e6f0c4c338efc` |
| 23 | `lemma` | [of_isCovariantDerivativeOn_of_open_cover_coe](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/of-iscovariantderivativeon-of-open-cover-coe.md) | 401 | `result-track:e276cb94fcb383a218d428c0146819432b5fa2ec16175659c7f171a55c33c1c8` |
| 24 | `class` | [ContMDiffCovariantDerivative](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/contmdiffcovariantderivative.md) | 412 | `declaration-track:97455ee5e9070593144b44324d453293c9c0c444632e4726e13d29c9ba10eeb8` |
| 25 | `lemma` | [contMDiffCovariantDerivativeOn_univ_iff](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/contmdiffcovariantderivativeon-univ-iff.md) | 417 | `result-track:30ecac1743c9d51ddb459711908138ce68aaf3c90d12c52cf75c8df9bfaff8ee` |
| 26 | `def` | [affineCombination](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/affinecombination.md) | 440 | `declaration-track:9c953055bf920835d526b82e85f56d407b79e8a5e25ed3f44be87619999e5af8` |
| 27 | `def` | [finiteAffineCombination](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/finiteaffinecombination.md) | 449 | `declaration-track:cca88010b2f336a8ecad92b293a849ba133383903797a0a65cec8e19b9902415` |
| 28 | `lemma` | [ContMDiffCovariantDerivative.affineCombination](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/affinecombination-source-line-459-occurrence-2.md) | 459 | `result-track:638522a62337d3de5f0ac80f0112047c2418b7c5fab6379351af4bd3641fa8ef` |
| 29 | `lemma` | [ContMDiffCovariantDerivative.finiteAffineCombination](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/finiteaffinecombination-source-line-472-occurrence-2.md) | 472 | `result-track:bcadad8345899be533cd5ae244e2632cdcb8574aff6816530d4efbd779a13265` |
| 30 | `def` | [addOneForm](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/addoneform.md) | 490 | `declaration-track:7bf60526fda338731a9a8002c5dad3872d4b19c32256abad0205952b150ac565` |
| 31 | `def` | [difference](../../../../DifferentialGeometry/CovariantDerivativeBasicPublic.lean/declarations/difference-source-line-504-occurrence-2.md) | 504 | `declaration-track:46dc4d23d55853fe1c25ed09b8c45ff032b9509a99239bfff6a96b89fa1cff57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7efc143bbf0c2bf2dfc0821e73d26b7c13dce14c60e1775db30f01018cfc176 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Basic/Variant01a92be9100970091d3c67a83f1acad2142bcdb73133339ac2a250577bf379a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

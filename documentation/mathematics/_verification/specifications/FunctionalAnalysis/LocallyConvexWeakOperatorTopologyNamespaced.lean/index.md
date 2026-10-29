# Verification target: Locally Convex Weak Operator Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4bd693bab61ae686a5b6fcd17bea90aaf072a09",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4bd693bab61ae686a5b6fcd17bea90aaf072a09`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.SeparatingDual` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContinuousLinearMapWOT](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/continuouslinearmapwot.md) | 63 | `declaration-track:7cf51f40d502815fbd8e3be24b44e4531b6856055f8853d40b5eecf3da87cbce` |
| 2 | `instance` | [instAddCommGroup](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instaddcommgroup.md) | 103 | `declaration-track:00ca294932e3b37230ab5075e3790d126204cb93023f47391ed12640523dc98f` |
| 3 | `instance` | [instModule](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instmodule.md) | 107 | `declaration-track:97d003ea2cabd39ee2a309a9f536ffb7839f4d08c35103339c910bfd8b771fe3` |
| 4 | `def` | [Locally Convex Weak Operator Topology Namespaced](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/towot.md) | 115 | `declaration-track:ef51d5f0ea7a372c282df80d8e69a3ae2c01ffa03ce428d9d2c1a141d6e66117` |
| 5 | `instance` | [instFunLike](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instfunlike.md) | 121 | `declaration-track:b04f1bea075116eee854d48e7b8e75ef9d3ed4f794c7b4c44b70547772a96f42` |
| 6 | `instance` | [instContinuousLinearMapClass](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instcontinuouslinearmapclass.md) | 125 | `declaration-track:d158ab3e5bed12610af433347d95258d5b90850c70580d87a6d7fde25f1ae5bb` |
| 7 | `lemma` | [Locally Convex Weak Operator Topology Namespaced](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/towot-apply.md) | 130 | `result-track:748de77648b3e6e9327838dc09ffed226d0108c613e4b210c6a28649b2c7208e` |
| 8 | `lemma` | [ext](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/ext.md) | 134 | `result-track:15c54a006b41d697abf1bbb93a96bc10ba7a9ebc6ddde746ac24f6ed47eba238` |
| 9 | `lemma` | [ext_iff](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/ext-iff.md) | 137 | `result-track:83144ad6625df31a66368e0931043d8d15d7ff00ea93e3a693451fa9d0355b6d` |
| 10 | `lemma` | [ext_dual](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/ext-dual.md) | 143 | `result-track:e7adca915c309cf0e2d8b55253fe64669e26cb6cb5b1a4830f461f744e8a4e32` |
| 11 | `lemma` | [zero_apply](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/zero-apply.md) | 148 | `result-track:07b9f7fcf23e52cf64c44f93ee4186d5f34d0ccb961fc47949baec81fe9e2749` |
| 12 | `lemma` | [add_apply](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/add-apply.md) | 151 | `result-track:ac5f358d0a05f80516fbacb2317cba265a193a9391097d70783bae782d1c9c11` |
| 13 | `lemma` | [sub_apply](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/sub-apply.md) | 155 | `result-track:9ca36a36f44adf576bb0b6972c45b336c9b733cef774e8d2a31df15bd355594a` |
| 14 | `lemma` | [neg_apply](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/neg-apply.md) | 159 | `result-track:21ef06959e82f5ab34e1a6926fc31264f76f838c60fd0f46aaab04e642ea3ea4` |
| 15 | `lemma` | [smul_apply](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/smul-apply.md) | 163 | `result-track:8ebb86b23377130c179cf52f8e192091ebccf93fd13515f5f8a65e9b359c343b` |
| 16 | `def` | [inducingFn](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/inducingfn.md) | 182 | `declaration-track:327684d1082c87e05fd1ed4b83a3e496d5eb9d1ecfab9ccfdfd3c86a42ad7502` |
| 17 | `lemma` | [inducingFn_apply](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/inducingfn-apply.md) | 188 | `result-track:05c5c66c87c93f20e0a487b62c87c29f5a84f0e30d8df88fc265997cd5cf044d` |
| 18 | `instance` | [instTopologicalSpace](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/insttopologicalspace.md) | 194 | `declaration-track:021b4165c7ba9c20c13f85a0bc5f712215beb7c106e10fe748efdbd5341a4927` |
| 19 | `lemma` | [continuous_inducingFn](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/continuous-inducingfn.md) | 198 | `result-track:6f4a2aa763c257e1b1b777a90997b5606492781fd1e9aee587be0666c060eac6` |
| 20 | `lemma` | [continuous_dual_apply](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/continuous-dual-apply.md) | 201 | `result-track:457cac61ad32db7baf3d6b53bd73cfec892cd3dbb26769629600a8d5001b5ca8` |
| 21 | `lemma` | [continuous_of_dual_apply_continuous](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/continuous-of-dual-apply-continuous.md) | 205 | `result-track:52d66c078f1455b197a5165e4944a6cdb332fc7736244fac90cf1c3333d24ca2` |
| 22 | `lemma` | [isInducing_inducingFn](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/isinducing-inducingfn.md) | 209 | `result-track:93458bba899c82695d6672ee0f36c225a97143795477491dfdd0352d570cb1dd` |
| 23 | `lemma` | [isEmbedding_inducingFn](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/isembedding-inducingfn.md) | 211 | `result-track:024b6420b2d460c2eb0c01b6428f475e8c5b6b68bd8f6ce20f813040054ff602` |
| 24 | `lemma` | [tendsto_iff_forall_dual_apply_tendsto](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/tendsto-iff-forall-dual-apply-tendsto.md) | 222 | `result-track:e0ae38a2567c8be681d4f2c26ace9645a135b318f416f93a4ecf6daee2dc40cd` |
| 25 | `lemma` | [le_nhds_iff_forall_dual_apply_le_nhds](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/le-nhds-iff-forall-dual-apply-le-nhds.md) | 227 | `result-track:2cc3ba35727768d0370cd8d047936a9a48eeca75a90b71bbd685203dfed7a172` |
| 26 | `instance` | [instT3Space](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instt3space.md) | 231 | `declaration-track:a2217b6e653fe02893278b025e2f1d98ac0984b795ad07c3c5f800b1417415a4` |
| 27 | `instance` | [instContinuousAdd](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instcontinuousadd.md) | 233 | `declaration-track:d7cbc00e364e7a592d4b44524471e812b02243f686a392b0bbcd05583db23e62` |
| 28 | `instance` | [instContinuousNeg](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instcontinuousneg.md) | 234 | `declaration-track:4ed54c192ed03ab0f23509001e6e671a32ac32fd19f2e31886eadf85af8fb808` |
| 29 | `instance` | [instContinuousSMul](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instcontinuoussmul.md) | 235 | `declaration-track:47316c0d11917394257d91ce58a4451a1101b39c1cc2d86d7ccce7b3a1c135ee` |
| 30 | `instance` | [instIsTopologicalAddGroup](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instistopologicaladdgroup.md) | 239 | `declaration-track:dd79836d013525b0fbbfdb2b3986e8ed846cc15c5ee37fcde581500520770750` |
| 31 | `instance` | [instUniformSpace](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instuniformspace.md) | 243 | `declaration-track:fab5548c02064d31ea51bb7f07179d2628c77306cc7ae617cceeb10bf105b802` |
| 32 | `instance` | [instIsUniformAddGroup](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instisuniformaddgroup.md) | 245 | `declaration-track:95539268e0ad9262acb8f4cd3a00149bd6e2f2588e307bee314ea88ebb776440` |
| 33 | `def` | [seminorm](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/seminorm.md) | 259 | `declaration-track:5e0ff46652c7592eaada6c79e5d6c8bb6ca20cbf56a843b79f88c2c5f72e0cdf` |
| 34 | `def` | [seminormFamily](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/seminormfamily.md) | 269 | `declaration-track:a2dd031cdce6595a441746ad171b541f6adb7e027a7a438e0367a37e0d3087bb` |
| 35 | `lemma` | [withSeminorms](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/withseminorms.md) | 272 | `result-track:56a1a71c672015b3860dd2f3179e5f91710dcc5fa8941d736063daf8875ae19e` |
| 36 | `lemma` | [hasBasis_seminorms](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/hasbasis-seminorms.md) | 278 | `result-track:8dfa662c11debf12b85f1d2f658edd3b90f0b0dea11a655793170917a97013a7` |
| 37 | `instance` | [instLocallyConvexSpace](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/instlocallyconvexspace.md) | 281 | `declaration-track:2f11592e005d2d2f240a6fad378eada948a210e98561c805e4a1d081447a220c` |
| 38 | `lemma` | [ContinuousLinearMap.continuous_toWOT](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/continuouslinearmap-continuous-towot.md) | 295 | `result-track:f8cdd927a931a605609ab8562cd7fc83546abebefe21f1b61f80e6b2ea3f8f20` |
| 39 | `def` | [ContinuousLinearMap.toWOTCLM](../../../../FunctionalAnalysis/LocallyConvexWeakOperatorTopologyNamespaced.lean/declarations/continuouslinearmap-towotclm.md) | 301 | `declaration-track:bf790c925df0c2feacf3ac7657c9319ce409b4205cdc9c29d013904eb5280b98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=951b9accc7320f3228d6c1586c35dcfcea637acc5df0167893b00d8dff8c00fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant90d331a49c5d80b768f73ac80c81bb4bcd9167679e450780d8d2d913e40a9d9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

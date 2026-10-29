# Verification target: Exp Deriv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a87945918ddd256699b6cbe64c6091e422c082b",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant80326f97eb27502b543c48e3cedd3cf1c004ee11e4bb7158d975de22224c402c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a87945918ddd256699b6cbe64c6091e422c082b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant80326f97eb27502b543c48e3cedd3cf1c004ee11e4bb7158d975de22224c402c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant80326f97eb27502b543c48e3cedd3cf1c004ee11e4bb7158d975de22224c402c.lean.json)

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
| 1 | `theorem` | [analyticOnNhd_cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticonnhd-cexp.md) | 52 | `result-track:9dabdb96f27ce578da8deaf9b3356e780851a64696f6eaa5d4448e0ab7fbd078` |
| 2 | `theorem` | [analyticOn_cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticon-cexp.md) | 57 | `result-track:23a86faa941f58bfe754c069e1f0a715de00ab1c578badece988f01bdc060555` |
| 3 | `theorem` | [analyticAt_cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticat-cexp.md) | 61 | `result-track:15288ad24a89c13712908359a33f035695ee72555256e22abfbc24ecfcf22bef` |
| 4 | `lemma` | [analyticWithinAt_cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticwithinat-cexp.md) | 65 | `result-track:4886348fbe6df7ea4b695abc26ba5fd3c3937824f51646495f66eb37f88380ce` |
| 5 | `theorem` | [AnalyticAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticat-cexp-source-edition-3.md) | 71 | `result-track:dda6896fb674fc08f6e1963347fed4234c474505d2bc60c2b5ec5e2753e5bf38` |
| 6 | `theorem` | [AnalyticAt.cexp'](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticat-cexp-source-edition-2.md) | 76 | `result-track:cf99a5a2b06a0a9332ae903a9fa4596ccfb54d23a86f7f21c639a64c2a2b9417` |
| 7 | `theorem` | [AnalyticWithinAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticwithinat-cexp-source-edition-2.md) | 79 | `result-track:7ab5e3e1456ba58d87138fbcc6b7ec6a3fcd6c8fbf975d7d1f07fea5fb00bc38` |
| 8 | `theorem` | [AnalyticOnNhd.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticonnhd-cexp-source-edition-2.md) | 84 | `result-track:f117286b859044250b856677e97d69746fd9c81a0d9f94cc001dc1ef09f93927` |
| 9 | `theorem` | [AnalyticOn.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticon-cexp-source-edition-2.md) | 87 | `result-track:41584c5b2d5275e493ad7c79b0a675b482a646b4bfa86e257277283e61216ad9` |
| 10 | `theorem` | [hasDerivAt_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasderivat-exp-source-edition-3.md) | 97 | `result-track:7967405491135b304a07e603caa309839749311929482a0adcd975454bb3ac4a` |
| 11 | `theorem` | [differentiable_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiable-exp-source-edition-3.md) | 106 | `result-track:8e103e0d572b44149a3a66c2562ade7bd0ac9c61db70cb1464c830a5aaa904bb` |
| 12 | `theorem` | [differentiableAt_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiableat-exp.md) | 110 | `result-track:20b94988851c509be01c04e10f495ab800a0f36085aaa83605ad6d1ace8e79bb` |
| 13 | `theorem` | [deriv_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/deriv-exp-source-edition-2.md) | 114 | `result-track:6eff70416b5d0cdc316f5b771844d4409589e6bf32299988ba4aee8a0bd102cb` |
| 14 | `theorem` | [iter_deriv_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/iter-deriv-exp-source-edition-2.md) | 118 | `result-track:f34b84e1ab9dc197785f8522137eb6ef428c43a4d27dbb15dec0fb0593aa33ba` |
| 15 | `theorem` | [contDiff_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiff-exp-source-edition-3.md) | 123 | `result-track:bf379b8b6566ebd8c992dc4f3a6fd49746257d4f0c4dcea5f3e754b4265f894b` |
| 16 | `theorem` | [hasStrictDerivAt_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasstrictderivat-exp-source-edition-3.md) | 126 | `result-track:89fd3f25354988e0847a1b96d7c30b3f54d0888a14df3d668bceb76e7e5c21c0` |
| 17 | `theorem` | [hasStrictFDerivAt_exp_real](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasstrictfderivat-exp-real.md) | 129 | `result-track:d100c7e22698424f00158c0b88168c31742ced85e1fb2b95bfcfe8e8b913a44e` |
| 18 | `theorem` | [HasStrictDerivAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasstrictderivat-cexp.md) | 139 | `result-track:dc633e20792400ae38cbfba8d65ae1dd46b3861bf0db50084f8009aabdec3cd9` |
| 19 | `theorem` | [HasDerivAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasderivat-cexp.md) | 143 | `result-track:3fcc4dc0d725d0ca3e5a2ae7cf29053ba888d212ad2324bca237e2e42a969fde` |
| 20 | `theorem` | [HasDerivWithinAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasderivwithinat-cexp.md) | 147 | `result-track:4700dcf6010c12644e0998f125d5ef377cb9199f126f21a0fc4c4c1f4dda54bf` |
| 21 | `theorem` | [derivWithin_cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/derivwithin-cexp.md) | 151 | `result-track:cca4837957f30c4fd70c795525b345938a59c446cb35f8a15387daca1c0bd9f6` |
| 22 | `theorem` | [deriv_cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/deriv-cexp.md) | 156 | `result-track:275db856ea190077cb82d2634603cae64ad1230ed8f28d456458589fb606f74d` |
| 23 | `theorem` | [HasStrictFDerivAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasstrictfderivat-cexp.md) | 167 | `result-track:9eedd4f5ddd10fb5784cdc8ee97ba355ab9709c004c9e47a18997fc1b848b0a5` |
| 24 | `theorem` | [HasFDerivWithinAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasfderivwithinat-cexp.md) | 171 | `result-track:ba6b89ab5b343487733429a9ab426c735939fced896b8491063cea62ad28051c` |
| 25 | `theorem` | [HasFDerivAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasfderivat-cexp.md) | 175 | `result-track:1ac0f4afe4d7b5538a75614ad63a159b1004b7e904edd7a04449e22203c2b727` |
| 26 | `theorem` | [DifferentiableWithinAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiablewithinat-cexp.md) | 179 | `result-track:26b7ef729a0f35ff3cf08bfa1894330e0b30be5655562dd5ec11816f5991a8c6` |
| 27 | `theorem` | [DifferentiableAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiableat-cexp.md) | 184 | `result-track:f0bdadda43332fd2576d6a9da3df86e70db95ba72958d3efdc00a11036a4ced1` |
| 28 | `theorem` | [DifferentiableOn.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiableon-cexp.md) | 188 | `result-track:a8b457280d5e3bb28af217f830ca5ecedca977aef9b170126743d776f88ebe20` |
| 29 | `theorem` | [Differentiable.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiable-cexp.md) | 192 | `result-track:9c3e8aeb2903b3be91a8c32e5b59cd7a4cae96c15a444b98e4c457f251b4b805` |
| 30 | `theorem` | [ContDiff.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiff-cexp.md) | 196 | `result-track:86e99ae92fabf0576bc7dec50e6deaf344186006b2f40dea0b3333cfa3037024` |
| 31 | `theorem` | [ContDiffAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiffat-cexp.md) | 200 | `result-track:bb98e8735fdbc15303f3c2965b1a3a1aa8b69a5f09250e8bf36c159f55a72ce0` |
| 32 | `theorem` | [ContDiffOn.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiffon-cexp.md) | 205 | `result-track:fc1315460625ffd60bf5077ad970890939e612c97f04d81bd6bf535783287c73` |
| 33 | `theorem` | [ContDiffWithinAt.cexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiffwithinat-cexp.md) | 210 | `result-track:eb7f36a9aa980d2f4c33da4c90f34ba67a6762743c35f196c3a4f6aca10eedad` |
| 34 | `theorem` | [iteratedDeriv_cexp_const_mul](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/iteratedderiv-cexp-const-mul.md) | 218 | `result-track:c4e36dd3b7186ae98894ec748b5523ffb00064d86681dfcc832767b00af138aa` |
| 35 | `theorem` | [analyticOnNhd_rexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticonnhd-rexp.md) | 232 | `result-track:40f7c979d3473ff5037071e5427ada6fbea1e2b8d6e702e7894606987c73d056` |
| 36 | `theorem` | [analyticOn_rexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticon-rexp.md) | 237 | `result-track:9f264504b3176492fcbc102e62124e08fb8c46cc12cfbec1ae73608e2af22583` |
| 37 | `theorem` | [analyticAt_rexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticat-rexp-source-edition-2.md) | 241 | `result-track:75f6872f6d2ad069ffc6f0928e62b4e6b493034f2b83661e0213664f3c294d72` |
| 38 | `lemma` | [analyticWithinAt_rexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticwithinat-rexp-source-edition-2.md) | 245 | `result-track:99cb1b917a972a3e28fc36ce0d2d138b333929f8c06fe4adf0eb14d284616be3` |
| 39 | `theorem` | [AnalyticAt.rexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticat-rexp.md) | 250 | `result-track:5f85676780496666b78baff85d164e23759aeb2cb45213df61bada42ed7f53a7` |
| 40 | `theorem` | [AnalyticAt.rexp'](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticat-rexp-source-edition-3.md) | 255 | `result-track:8bfe495384bebe1e2ebb6c0c8fd35bf1a2008d2f5a518f978383552e76b72210` |
| 41 | `theorem` | [AnalyticWithinAt.rexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticwithinat-rexp.md) | 258 | `result-track:371b657f55efea147625b0b442dc60ea6a749833c8b6ab8b7ad44dc51e103b03` |
| 42 | `theorem` | [AnalyticOnNhd.rexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticonnhd-rexp-source-edition-2.md) | 263 | `result-track:81a5b06d6debcb7afedb6542b081accc66d01e017b259302e4b95d83cf5dc7f4` |
| 43 | `theorem` | [AnalyticOn.rexp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/analyticon-rexp-source-edition-2.md) | 267 | `result-track:f3f05f21f15312a7f7476640e424b00ff4e38e871603ae3707ec617cf31e3f61` |
| 44 | `theorem` | [hasStrictDerivAt_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasstrictderivat-exp.md) | 274 | `result-track:00e12064045afd46aa30eca3ad79362db163c42bdd58d81827d6d104c928b787` |
| 45 | `theorem` | [hasDerivAt_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasderivat-exp-source-edition-2.md) | 277 | `result-track:2156701c1dfd2c2788692825881542970185272a8320b612a7ec005e82a6728b` |
| 46 | `theorem` | [contDiff_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiff-exp-source-edition-2.md) | 281 | `result-track:bedd4ebae6ccbafa0a4af10aa905d0d49a3bbed403f68576dab9335d8198fda5` |
| 47 | `theorem` | [differentiable_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiable-exp-source-edition-2.md) | 285 | `result-track:6acd9f5a4a044652b3dbe111bf801075f50bff4f9ce90b32ee16a5842895731e` |
| 48 | `theorem` | [differentiableAt_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiableat-exp-source-edition-3.md) | 288 | `result-track:e861f00445303d65a07cba4be7b9fb4458448640af5313ec2fb3d162fe8147c2` |
| 49 | `theorem` | [deriv_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/deriv-exp-source-edition-3.md) | 292 | `result-track:bb8546bec19477db2ab9621b12c70b222b4ab3210d0e03344bcf22fc0c755318` |
| 50 | `theorem` | [iter_deriv_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/iter-deriv-exp.md) | 296 | `result-track:d728bed70aea810b4f3425c308113779c1ce61d797c178f8bf61d0febf429c04` |
| 51 | `theorem` | [HasStrictDerivAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasstrictderivat-exp-source-edition-2.md) | 310 | `result-track:1a571c4d56602f143e7e4ea7fcf03332a4719f5d60dc7be1ab52d31e5ef6e38e` |
| 52 | `theorem` | [HasDerivAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasderivat-exp.md) | 314 | `result-track:01efca6dd8a15b3534bb07630281cf2605d7db642920d0801ae36baf9dfd1a55` |
| 53 | `theorem` | [HasDerivWithinAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasderivwithinat-exp.md) | 318 | `result-track:c251ddc0c559cd5a08f328d6095623e46168f413d959af44af7e28b3704741a3` |
| 54 | `theorem` | [derivWithin_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/derivwithin-exp.md) | 322 | `result-track:1680533bd2c9dc9a5464072e24354f0f4137e08f24281955e8b36fab6f31922e` |
| 55 | `theorem` | [deriv_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/deriv-exp.md) | 327 | `result-track:1bdd997eb543277707c0b8c123b817906b3860fadf5f5f2da11c0cce855a89b6` |
| 56 | `theorem` | [ContDiff.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiff-exp.md) | 343 | `result-track:887f9f386dc0e5dba4b339742f22ca5d7a126d558f1eae52f2810bd5c0c1a800` |
| 57 | `theorem` | [ContDiffAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiffat-exp.md) | 347 | `result-track:00a478ed8d471a73c41aec39512171f78de36ef29f5b47731916579e64b7f005` |
| 58 | `theorem` | [ContDiffOn.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiffon-exp.md) | 351 | `result-track:fc941673ed263a29bf602b27b8ee6f456606059baaf7936c3b0b268847f2bb52` |
| 59 | `theorem` | [ContDiffWithinAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/contdiffwithinat-exp.md) | 355 | `result-track:33cdebae2d5282c2e12e60db95dc0fbeedb17701926ad89e9547da8cba2dba84` |
| 60 | `theorem` | [HasFDerivWithinAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasfderivwithinat-exp.md) | 359 | `result-track:9f93e25fabbc0e6413de88dc32794ab243d3ebc34da313278ce32497eaf94e87` |
| 61 | `theorem` | [HasFDerivAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasfderivat-exp.md) | 363 | `result-track:700c0cd19610060e28f7075f6f3e454fdd34fad9d9d8a4d89b83bf04891e6920` |
| 62 | `theorem` | [HasStrictFDerivAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/hasstrictfderivat-exp.md) | 367 | `result-track:cb2107fbbe66da3a7e20427ee00f1cd75969ca1cb48920e498893ad58756ce60` |
| 63 | `theorem` | [DifferentiableWithinAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiablewithinat-exp.md) | 371 | `result-track:6db9d438427d05cf0915fc086873aec9aef95a731afb0fc27978ed674e3467e0` |
| 64 | `theorem` | [DifferentiableAt.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiableat-exp-source-edition-2.md) | 376 | `result-track:35b1bc82ae834b7ea6b3454ddc78c9803184d482bc3f1fc86975254689343105` |
| 65 | `theorem` | [DifferentiableOn.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiableon-exp.md) | 381 | `result-track:79c00a43665c176ff647b2d46975eb07733ee66af2049a4062ea26638d1bfcfc` |
| 66 | `theorem` | [Differentiable.exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/differentiable-exp.md) | 385 | `result-track:6549b79fe79178a50be14d3f5c18fff7cbbd76d766053547f7acf06472cfe683` |
| 67 | `theorem` | [fderivWithin_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/fderivwithin-exp.md) | 388 | `result-track:51cf876ebb0b12c37c0d7a02d98c01050f0b5eb910fba2aae87305a56e50cae8` |
| 68 | `theorem` | [fderiv_exp](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/fderiv-exp.md) | 393 | `result-track:4b3b9470e3a409ac7d5b4e3349a3ff4b7ae4fc5e82c26829c65347377f53251a` |
| 69 | `theorem` | [iteratedDeriv_exp_const_mul](../../../../SpecialFunctions/ExpDerivNamespacedPublic.lean/declarations/iteratedderiv-exp-const-mul.md) | 401 | `result-track:48271d59ea093fac1fba486ab0ac05b3bfa7c1355d1f613c9c6218b1ea43ff99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52c26a3fed3a38a37f2e902ab08af1a6a0185ee24b59de77dea084dce71a5631 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant80326f97eb27502b543c48e3cedd3cf1c004ee11e4bb7158d975de22224c402c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ExpDeriv/Variant80326f97eb27502b543c48e3cedd3cf1c004ee11e4bb7158d975de22224c402c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

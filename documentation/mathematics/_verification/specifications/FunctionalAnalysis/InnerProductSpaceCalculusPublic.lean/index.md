# Verification target: Inner Product Space Calculus Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a876761210bfeca3103c9dbcd0722a57f96f3f6f",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variantaf415a4e0fb388b7c90edf47159f2552566eb6573e0482d5663d500beb38cf50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a876761210bfeca3103c9dbcd0722a57f96f3f6f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variantaf415a4e0fb388b7c90edf47159f2552566eb6573e0482d5663d500beb38cf50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variantaf415a4e0fb388b7c90edf47159f2552566eb6573e0482d5663d500beb38cf50.lean.json)

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
| 1 | `def` | [fderivInnerCLM](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/fderivinnerclm.md) | 48 | `declaration-track:05e656eb50cf73399bfea95cc4fe45415f2bd7be6878aa44a0f6a8487c49a03b` |
| 2 | `theorem` | [fderivInnerCLM_apply](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/fderivinnerclm-apply.md) | 52 | `result-track:b606b3f35ba8fb325c4268fed747f12aa02adaa8b37e7cc4d57da30fd8bb39e6` |
| 3 | `theorem` | [contDiff_inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-inner.md) | 57 | `result-track:867636fc9f54161542385e6e06f5a8837b5f30d8ec98c458ee18a91ee02f7cd5` |
| 4 | `theorem` | [contDiffAt_inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffat-inner.md) | 60 | `result-track:4c832c55e9af7661a51928aedc0c547a3a9786f48edda040f14bd8bbb85f9e70` |
| 5 | `theorem` | [differentiable_inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiable-inner.md) | 63 | `result-track:18d3f8a76cba58f271082283c77bc9fe40551ac70a44418f321d26ffe447c0ef` |
| 6 | `theorem` | [ContDiffWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffwithinat-inner.md) | 70 | `result-track:68285ac05a89ce3f878ad3f6b7d4840a9dec8750f0bedec017999baa7c23d1fc` |
| 7 | `theorem` | [ContDiffAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffat-inner-source-edition-2.md) | 74 | `result-track:b2d59c8a3d2cd6340cfec1a468a7cfed2c116d587f8f5a7781a7a02e39baf9b4` |
| 8 | `theorem` | [ContDiffOn.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffon-inner.md) | 78 | `result-track:90f0adc3bcd8d2d2baae4ea37fe5678f1cd5bdbaa292ff14c9ce02af62b68f5c` |
| 9 | `theorem` | [ContDiff.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-inner-source-edition-2.md) | 81 | `result-track:8a4e30f6d0eebc94cb832e9a341c4e6f43c5e8df18c2ebf395848bbe35ab9bec` |
| 10 | `theorem` | [HasFDerivWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasfderivwithinat-inner.md) | 85 | `result-track:673b7bcdc2d4f407633f91083e8663fe781a924a038b71337551606e1fc4a756` |
| 11 | `theorem` | [HasStrictFDerivAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasstrictfderivat-inner.md) | 93 | `result-track:0020d362174b7357e377bc1043fb8f5c6087eb361fc882ce0d02bf8ab068e85f` |
| 12 | `theorem` | [HasFDerivAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasfderivat-inner.md) | 98 | `result-track:9a4a2512438e3883e670dc4a9720c33ed0632fcc094ebdc63213df328a100445` |
| 13 | `theorem` | [HasDerivWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasderivwithinat-inner.md) | 104 | `result-track:7eb7147c06ae0acd19ad57b03632517e61ebfff2158c5996c2ffd7e56a1e6f73` |
| 14 | `theorem` | [HasDerivAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasderivat-inner.md) | 109 | `result-track:35d03e9317d9f9e3c4030d0bddab314649633fb5e81043f1bee547fdc7622437` |
| 15 | `theorem` | [DifferentiableWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiablewithinat-inner.md) | 114 | `result-track:016bd87a18ba731cebefcea18ff3ab3f6bfb7b54c23bf0c411c587dbce62a438` |
| 16 | `theorem` | [DifferentiableAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableat-inner.md) | 118 | `result-track:c3facc01456814799efdb79248dee89378bfa7ce1f9ff9af863b6eb8861b5f4c` |
| 17 | `theorem` | [DifferentiableOn.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableon-inner.md) | 122 | `result-track:eb6f8c8e4e264828caafa96df22979ad0ef1bfe2bf420438ee139297b846f91a` |
| 18 | `theorem` | [Differentiable.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiable-inner-source-edition-2.md) | 125 | `result-track:5b73315ae6f7a9b42f7f3cb9b7809c3074cb66cdd12a38206e2e1b081df3b88f` |
| 19 | `theorem` | [fderiv_inner_apply](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/fderiv-inner-apply.md) | 128 | `result-track:e96a4d4ed7707265a5c788bb752f2ed9b65dc5d110fcf5f23645f9f3a032bbe4` |
| 20 | `theorem` | [deriv_inner_apply](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/deriv-inner-apply.md) | 132 | `result-track:a2c79c536e1eab58380429de532310e95b0e3449788eb79fa54eec3592fc7048` |
| 21 | `theorem` | [contDiff_norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-norm-sq-source-edition-2.md) | 140 | `result-track:711ec8dff2da2836fd7ae7a73dfbc701ab34f6ea7d33ec97ee30fc57b2fbd89c` |
| 22 | `theorem` | [ContDiff.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-norm-sq.md) | 144 | `result-track:66d801011c107611b13dca148ca52a720a300ea0e73a76631b834cfa50e00034` |
| 23 | `theorem` | [ContDiffWithinAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffwithinat-norm-sq.md) | 147 | `result-track:b521bd1c6590372dc12e461fd6d36e2762aedf70e0dca220c0b95c323bc31c6a` |
| 24 | `theorem` | [ContDiffAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffat-norm-sq.md) | 151 | `result-track:af3b00d6bd5db40ed26ae1a5083b398789440d70939adf46eb9027deec278355` |
| 25 | `theorem` | [contDiffAt_norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffat-norm-source-edition-2.md) | 154 | `result-track:dfb5c29716a0633e8f9f473f04ce88b7eebbdb376fdcd3650ebd00182fc07333` |
| 26 | `theorem` | [ContDiffAt.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffat-norm.md) | 158 | `result-track:d1a8e701fd2912a3c2dba148139c986d593ea11a74bf0884db2d7057badc6a8a` |
| 27 | `theorem` | [ContDiffAt.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffat-dist.md) | 162 | `result-track:a22394cfafc819fb11b233ccccf3d45bc160c4ca559e22d1ae6b052ab4f03392` |
| 28 | `theorem` | [ContDiffWithinAt.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffwithinat-norm.md) | 167 | `result-track:4dc7d34b8a6e1a2459a367290410a9f4c00343c4479baf4bfce025579a8a4d9f` |
| 29 | `theorem` | [ContDiffWithinAt.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffwithinat-dist.md) | 171 | `result-track:cc3a6cec172672c57f5184ea11cf8ffe78a33e0e8d31132180b959db72ae5348` |
| 30 | `theorem` | [ContDiffOn.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffon-norm-sq.md) | 175 | `result-track:6099f3556875ec9287ce59f2e62c54d88496edcbb9b94ee716736ab282168c5e` |
| 31 | `theorem` | [ContDiffOn.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffon-norm.md) | 178 | `result-track:831f7c79619b7a8c0ae94a7c246292435bb471eea8863d246dae628c5db660fe` |
| 32 | `theorem` | [ContDiffOn.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffon-dist.md) | 181 | `result-track:eb9036782d0c2b1dab8490774560307faa614067b5bc775f5c544023a83db9bb` |
| 33 | `theorem` | [ContDiff.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-norm.md) | 185 | `result-track:13d6132b8822cef96125866001ff6e4ee22100a2d243c0228c6d309532f99894` |
| 34 | `theorem` | [ContDiff.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-dist.md) | 188 | `result-track:3e456e3d393a866955e9e80815c5d830cd929969eda98e6249c32e43a9a64db5` |
| 35 | `theorem` | [hasStrictFDerivAt_norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasstrictfderivat-norm-sq.md) | 197 | `result-track:119ee4027dad32120bbdaf41b33a28eb7cacbd8dd740cd9e0e27efaad89483c1` |
| 36 | `theorem` | [fderiv_norm_sq_apply](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/fderiv-norm-sq-apply.md) | 205 | `result-track:76bd8a96598d1ef7a432306b1ce6ee9609d630dc32fb2d3468158028e75db9b8` |
| 37 | `theorem` | [fderiv_norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/fderiv-norm-sq.md) | 208 | `result-track:208d5bfa96466a191c3d4b3f5c1e9201591281e5402bdfc3dc5549543ed005b0` |
| 38 | `theorem` | [HasFDerivAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasfderivat-norm-sq.md) | 211 | `result-track:797141926316c3ca38f7216ddefa2de981cb9641e95d4ac49d943121228b7008` |
| 39 | `theorem` | [HasDerivAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasderivat-norm-sq.md) | 215 | `result-track:2d3c1e04ffeca2fac8dbfb1489f26a9f0ef676209819101fa40ec3db3169443d` |
| 40 | `theorem` | [HasFDerivWithinAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasfderivwithinat-norm-sq.md) | 219 | `result-track:a29f28253e13c1e095c1a0a00dfef537211c84a392ca0d9f3a07eb06bc2eb2d0` |
| 41 | `theorem` | [HasDerivWithinAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasderivwithinat-norm-sq.md) | 223 | `result-track:14118251c7703a6f940297acf698671e2e78ab70e6d1d0eb96c48f59567fc3b0` |
| 42 | `theorem` | [DifferentiableAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableat-norm-sq.md) | 233 | `result-track:a031209eec2ff5ee94c6f7c6843ef76c15dcc19310788a5a054871888df2be27` |
| 43 | `theorem` | [DifferentiableAt.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableat-norm.md) | 237 | `result-track:96adb7c0635a27f41ab2bd687842941bfad0beb3348b81b44d51f7e66acafbee` |
| 44 | `theorem` | [DifferentiableAt.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableat-dist.md) | 241 | `result-track:c546bd8d34a5b69da193523aa2891fec8d98c07ec04aee822f020f2812089ed2` |
| 45 | `theorem` | [Differentiable.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiable-norm-sq.md) | 245 | `result-track:376b51e4d60c1b0c5d83ad488fe320c3ba885bc7cf36df55204efff7a8697bf3` |
| 46 | `theorem` | [Differentiable.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiable-norm.md) | 248 | `result-track:f40f553c8f6d1b3b62b12d77e6c5ba7c3b0c2de5644e2e712ec1acbc32d0865b` |
| 47 | `theorem` | [Differentiable.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiable-dist.md) | 251 | `result-track:54b06e0354c8a40b9c41c0a7f1788044d15a77b53a35f6cf346f716db7b516c9` |
| 48 | `theorem` | [DifferentiableWithinAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiablewithinat-norm-sq.md) | 255 | `result-track:8ba0be7d36d001e36663cbc28c083f8e0c773963d2778d3a1724c813b092d372` |
| 49 | `theorem` | [DifferentiableWithinAt.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiablewithinat-norm.md) | 259 | `result-track:4ea9f3f5dbd0915196497e01a04b1cd0d8639556d333b1a3faaa038b1cc7e727` |
| 50 | `theorem` | [DifferentiableWithinAt.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiablewithinat-dist.md) | 263 | `result-track:52c536119b7193f0c97b624ba1168b3fe1fbfdc9394926c40334b9dab04fdeb0` |
| 51 | `theorem` | [DifferentiableOn.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableon-norm-sq.md) | 269 | `result-track:2b46b9e14395eca287fb116873ec6c1ec20fb2a349a59bb1ce7edc5675b3a67c` |
| 52 | `theorem` | [DifferentiableOn.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableon-norm.md) | 272 | `result-track:64fd290b81cc0d89c417520924f874493a48ced37cae51aa3a9ad9932be26665` |
| 53 | `theorem` | [DifferentiableOn.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableon-dist.md) | 275 | `result-track:0bbdc92fc5d865515e46ce70210c3db3573fd2456d2c694c501d8c45833f3545` |
| 54 | `theorem` | [differentiableWithinAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiablewithinat-euclidean.md) | 296 | `result-track:3ef0a6adfe05da00c69af1ff955ed963a85f166e052ab47a24296da87f866b17` |
| 55 | `theorem` | [differentiableAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableat-euclidean.md) | 300 | `result-track:02bb865444f418cd20cc3e6180e07320883576039b6c82b7f7b7edaad7ff3fab` |
| 56 | `theorem` | [differentiableOn_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiableon-euclidean.md) | 304 | `result-track:e35c028992806371df56a51cf4926b6a12ea61dcf85129396a688c814666dfbd` |
| 57 | `theorem` | [differentiable_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/differentiable-euclidean.md) | 308 | `result-track:ee4f3552d0fa742fd57c2522af09ca86ba1357e94d8e37a230198dcbe921ae7a` |
| 58 | `theorem` | [hasStrictFDerivAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasstrictfderivat-euclidean.md) | 311 | `result-track:9f43295384edff2be453517f10cd8d4bd721af53087cb68ef269ed38d6a863a2` |
| 59 | `theorem` | [hasFDerivWithinAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/hasfderivwithinat-euclidean.md) | 316 | `result-track:6b7c0c293a3d4d55df018e45ce07579faf3a1091ac357faa2a6f113666e1e7d4` |
| 60 | `theorem` | [contDiffWithinAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffwithinat-euclidean.md) | 327 | `result-track:43dfd8c29055dfa5e352bb25e5881f8e2a0e0198d575ba8368213a6a8b0ee9be` |
| 61 | `theorem` | [contDiffAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffat-euclidean.md) | 331 | `result-track:f76233e8cee5c9a68e2443b40a0dc6d0646db7a3f80206400f0f4b2b00133842` |
| 62 | `theorem` | [contDiffOn_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffon-euclidean.md) | 335 | `result-track:0fb35b8d752eaed0155eb3d20282792158d7b052dd2e6e8053c97ef97949387d` |
| 63 | `theorem` | [contDiff_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-euclidean.md) | 339 | `result-track:b61b77abf86463baad83ef59095691afb76477b2277e69f07cb44924333c2c27` |
| 64 | `theorem` | [OpenPartialHomeomorph.contDiff_univUnitBall](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/openpartialhomeomorph-contdiff-univunitball.md) | 352 | `result-track:b3d4065c12a4f2ff837e073c5a044660365317e86a9cbd28472244005a8f46a5` |
| 65 | `theorem` | [OpenPartialHomeomorph.contDiffOn_univUnitBall_symm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/openpartialhomeomorph-contdiffon-univunitball-symm.md) | 358 | `result-track:71c36bb4a6dc8d11332f5b77acec55f44873ca64ec62f1d556df7f8417207941` |
| 66 | `theorem` | [Homeomorph.contDiff_unitBall](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/homeomorph-contdiff-unitball.md) | 369 | `result-track:d2d116ee595f16d5ccc9d19c694d0a4a2cbd67a4803e23358a87664c407694d9` |
| 67 | `theorem` | [contDiff_unitBallBall](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-unitballball.md) | 376 | `result-track:df921fda0f6df60a87d424f4bf2427dee011c0389e0109b5550388cb439a38fc` |
| 68 | `theorem` | [contDiff_unitBallBall_symm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-unitballball-symm.md) | 379 | `result-track:8ef104368ee1efd9bd47c834267bef9c70a8d93b441674e4c5b0b0b2c70c6f36` |
| 69 | `theorem` | [contDiff_univBall](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiff-univball.md) | 382 | `result-track:885044476e38edce668efc36d2df872bac707526c9316540a90ba9f471d96e0e` |
| 70 | `theorem` | [contDiffOn_univBall_symm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusPublic.lean/declarations/contdiffon-univball-symm.md) | 387 | `result-track:6ed2e9cedf9a2759c3df477d10f20ec9620ef95a5c31255082ac7013dbca0142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f152682bda5674b3361e2ed401477d8da3fbcecd0bee28a2a268129028a01a79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variantaf415a4e0fb388b7c90edf47159f2552566eb6573e0482d5663d500beb38cf50.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variantaf415a4e0fb388b7c90edf47159f2552566eb6573e0482d5663d500beb38cf50.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

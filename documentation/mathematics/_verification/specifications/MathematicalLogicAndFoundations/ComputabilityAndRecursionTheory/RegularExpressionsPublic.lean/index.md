# Verification target: Regular Expressions Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ac618fd9416df1ae333dcf7a0a08d3720553a52",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantb049e7be8cddf4e011811d040f12aacedf6c155e4ebaab2089d8f12817bfa2c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ac618fd9416df1ae333dcf7a0a08d3720553a52`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantb049e7be8cddf4e011811d040f12aacedf6c155e4ebaab2089d8f12817bfa2c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantb049e7be8cddf4e011811d040f12aacedf6c155e4ebaab2089d8f12817bfa2c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RegularExpression](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/regularexpression.md) | 47 | `declaration-track:38f0a3701ea6c11fe03f7b447efa0e1532525958e0bd54b4daccc431906160ab` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/instance-source-edition-7.md) | 59 | `declaration-track:e9c292261a70a053af13ce62e6ef725688b777877830e723f77b4fe8a89f3b71` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:c4e923e3dca666b1d693b00e763d9f06c3330488f91dd29cd97143fd2acaa825` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/instance-source-edition-4.md) | 65 | `declaration-track:85f740c7f91ab28172a0f304d36357ec81c212bdcad58ddb034f766b71521cc5` |
| 5 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/instance-source-edition-6.md) | 68 | `declaration-track:c92815a5e9c0c5bb8f40691f85e44829021e6719d431da115b66afa9f956243a` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:59e2445be6fb6455770d4a30b6d82702ee1fd6d1ce1d11068def1238bc8d2eb1` |
| 7 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/instance.md) | 74 | `declaration-track:0865b5bdfec0d99fcaf2df61870d493af9f226fce0bfaf7d6a42978cd21b4660` |
| 8 | `theorem` | [zero_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/zero-def.md) | 78 | `result-track:2a814461914e9ccddb2f0df55c0ced16e269b2341bc6555a3964fed1d6a452bb` |
| 9 | `theorem` | [one_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/one-def.md) | 82 | `result-track:c1112d8096d45f50b420c9df1d7d8f5c2e1b4babcae9510aa51d8ba8f614201d` |
| 10 | `theorem` | [plus_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/plus-def.md) | 86 | `result-track:e8a63475665db82a61ae1ef7a26b45a4e1a7f363c62f0e82a5cba350aa26ffa4` |
| 11 | `theorem` | [comp_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/comp-def.md) | 90 | `result-track:54b5324e56a2ae274ccb62bc7e6217300a8954ea0d0878f067f8299e7d72a25f` |
| 12 | `def` | [matches'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches.md) | 98 | `declaration-track:a7e3106b29c1150ddfb09a56110245249bcd163a25d731dfd60f68250f2b1590` |
| 13 | `theorem` | [matches'_zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches-zero.md) | 106 | `result-track:446ae5ab4a2113031873e7d067a68003aee1bd7ef69998c374c4abd56824af88` |
| 14 | `theorem` | [matches'_epsilon](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches-epsilon.md) | 109 | `result-track:74f37b48058b504f554799d1462b04c9d7fc4cfd96ece93d2c6633c3b1c94140` |
| 15 | `theorem` | [matches'_char](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches-char.md) | 112 | `result-track:8b6b6c5d9416cc7122b263525f571990bf41ef5ed26fe59670fe3034363ef362` |
| 16 | `theorem` | [matches'_add](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches-add.md) | 115 | `result-track:03eb33992828b7a3046c429a7871575ed7af184d454aa49ed3b5e5cfa0cadd69` |
| 17 | `theorem` | [matches'_mul](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches-mul.md) | 118 | `result-track:7cd80dbabdb80cb525d9129b4a12140606acf640e4c4b2cb044becdb84d9953a` |
| 18 | `theorem` | [matches'_pow](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches-pow.md) | 122 | `result-track:ae043a21c753314e6dccd2dbc938307a83b5121267310307ff29faf365c1ef6a` |
| 19 | `theorem` | [matches'_star](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches-star.md) | 128 | `result-track:c655264bb214024308c925ee43aca2c5d2fa8c253ebb76d73a647e8b18df5130` |
| 20 | `def` | [matchEpsilon](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matchepsilon.md) | 132 | `declaration-track:73607992bb1936b9280cb8c2c90f99b72c67e810ec2a66a5b2016c1cac51efbd` |
| 21 | `def` | [deriv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/deriv.md) | 145 | `declaration-track:8c32f781026bb29545b3fa5a1ecb7d07828419f769a3affe629b4caf805f7b57` |
| 22 | `theorem` | [deriv_zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/deriv-zero.md) | 154 | `result-track:83499841563d285ff07c670247438fb38427bf0daabbe78fbb8867cb749cf3bd` |
| 23 | `theorem` | [deriv_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/deriv-one.md) | 158 | `result-track:b312c1dc3ae9c6431c29f074202bb35ce21782d043951220765336f3d4bf771e` |
| 24 | `theorem` | [deriv_char_self](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/deriv-char-self.md) | 162 | `result-track:f0fd770652d75ba7488c02d208b7cc0ade87dd9d274025863b13d62fa7168f95` |
| 25 | `theorem` | [deriv_char_of_ne](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/deriv-char-of-ne.md) | 166 | `result-track:025807a6d8cf947ce86bb1c26bcecc3ab990d83a279caa3a5f3e9efd75062692` |
| 26 | `theorem` | [deriv_add](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/deriv-add.md) | 170 | `result-track:0b3fd526f3407f44ec58612a33b9113a9f6eb63c4fe9e40ba25c1c4356800b4f` |
| 27 | `theorem` | [deriv_star](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/deriv-star.md) | 174 | `result-track:8148c5556074e18b72ce237a6ffaa3c3acf54ec711e09569a6ad8546c9ff7a03` |
| 28 | `def` | [rmatch](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/rmatch.md) | 179 | `declaration-track:39fb1ea676bd36348161549da30dd6ff1bd78c99362cdcb8da488b8f49b91194` |
| 29 | `theorem` | [zero_rmatch](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/zero-rmatch.md) | 184 | `result-track:d84e666be3e6ff64436882de25a20771ad00d469b6f27ab11199e49711026e94` |
| 30 | `theorem` | [one_rmatch_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/one-rmatch-iff.md) | 187 | `result-track:7f51ba51244e1fbde8372a8198c994a2266e505cbdc08ee4ee3d2589cbc08aa7` |
| 31 | `theorem` | [char_rmatch_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/char-rmatch-iff.md) | 190 | `result-track:853dfc5978a2a22f9f874d6f5ee74426fb0143dcd656347167141f17af81594d` |
| 32 | `theorem` | [add_rmatch_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/add-rmatch-iff.md) | 201 | `result-track:0538145977798c2d5cac250cf4731885d0fcc66c1a721362685946a05714ddb1` |
| 33 | `theorem` | [mul_rmatch_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/mul-rmatch-iff.md) | 209 | `result-track:6b1bec8d37f86398043df9ba8cde6d265ac9df68b68939de8cc5e89171a863be` |
| 34 | `theorem` | [star_rmatch_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/star-rmatch-iff.md) | 254 | `result-track:d8f7aa5800c8fddd787d2830a7026bea49c1997fe6fb06bdfe0bfaba302d482d` |
| 35 | `theorem` | [rmatch_iff_matches'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/rmatch-iff-matches.md) | 299 | `result-track:da69fd2ccb9745896e3451afbd036dd7598c43cb3e79b7d58d25affe3b684b77` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/instance-source-edition-2.md) | 319 | `declaration-track:2f8bb71ad673561aa1cff9ae8d7ffc53ad89e415f1c0284ffdc20e08b41f7d70` |
| 37 | `def` | [map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/map.md) | 326 | `declaration-track:3833b463743d91c6b5120a529731e6d529982c5547af035258c828c51c1f5aae` |
| 38 | `theorem` | [map_pow](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/map-pow.md) | 335 | `result-track:00658abfd0460cf2a9c087d7257d4a353f618533e8f420f1a42c843f3f067999` |
| 39 | `theorem` | [map_id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/map-id.md) | 341 | `result-track:933445f904bb12106041d2869533ef412080fd78ab3603f776fc05aebf30b656` |
| 40 | `theorem` | [map_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/map-map.md) | 350 | `result-track:2d84c559e025b8186a73f4a7edfb7ce8797fec41bf83d956ef176201c20079b3` |
| 41 | `theorem` | [matches'_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/RegularExpressionsPublic.lean/declarations/matches-map.md) | 360 | `result-track:1c8b3c71f424e0ca19aa8449f3689a40e480183dfdf55435a5189d3dddbb5b4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e2985e457934dcda1bbc47ce24a1da2a85f389e7bb8e28b14e5b5c76b052967 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantb049e7be8cddf4e011811d040f12aacedf6c155e4ebaab2089d8f12817bfa2c3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantb049e7be8cddf4e011811d040f12aacedf6c155e4ebaab2089d8f12817bfa2c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

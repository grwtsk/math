# Verification target: Examples Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb1bb68f0976ac8196f1b7f688a6e36e383f7bc4",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variant8ee94d125166c05bf5b0d1acafa7746383cc14631e3d566a6d76283d369db43a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb1bb68f0976ac8196f1b7f688a6e36e383f7bc4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variant8ee94d125166c05bf5b0d1acafa7746383cc14631e3d566a6d76283d369db43a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variant8ee94d125166c05bf5b0d1acafa7746383cc14631e3d566a6d76283d369db43a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Atomize.Formal.Boundary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ToyJudgment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyjudgment.md) | 59 | `declaration-track:da6233dfd82eb2ab71aadb19ebad9b29f383b89cea63c85f4904529e2821aaba` |
| 2 | `abbrev` | [ToyJudgmentAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyjudgmentat.md) | 61 | `declaration-track:b135a8069238fa1d34b6ee8fc1a7a3b874755d0b0851cbea9e85909df28fc9c9` |
| 3 | `inductive` | [ToyOrigin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyorigin.md) | 64 | `declaration-track:ae3a6de5be495aa9526149a8e258dec4be7dc58968854a182d9e5440a6301d9c` |
| 4 | `inductive` | [ToyRuleKey](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyrulekey-source-edition-2.md) | 70 | `declaration-track:f3e15552bc6cf3f87a102eff81741ae023e27bedd862cd7405b5e4173c1dcdfb` |
| 5 | `inductive` | [ToyRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyrule.md) | 79 | `declaration-track:008877b3f3198c2daa589e25f5fa1723deb22c381b15a850595d2af4afcfe78b` |
| 6 | `def` | [toyRuleConstants](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyruleconstants.md) | 88 | `declaration-track:8ec1f3f96c8a739c815db1d131552de044627f2954933cdc40776b71db67aead` |
| 7 | `def` | [toyRuleRoots](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyruleroots.md) | 97 | `declaration-track:bdbe9af0c5f3f53d26b6e48cb07850f94d6040001edc805dbd185da5d4d7351e` |
| 8 | `def` | [toyRuleKey](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyrulekey.md) | 106 | `declaration-track:b6b919aa349d96ff35728b58b2944f3936d0c6ae9cc9ede5a4a2056218e7352c` |
| 9 | `def` | [toyLeafOrigin?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyleaforigin.md) | 115 | `declaration-track:8e2f69dd29539ae20b90b8c4c22749b7c5044240e609fd9fb1a5eab3b360510c` |
| 10 | `inductive` | [ToyCtxMorphism](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyctxmorphism.md) | 122 | `declaration-track:97981c73b4f9152aa7492f9cb3a306fbe7f0f9c2f97d425349c3c15b9df8dd53` |
| 11 | `def` | [toyActJudgment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyactjudgment.md) | 125 | `declaration-track:20697efcf94c5b152aa64d9639b1f7acadc553393110a249f2cdec26a5a7828c` |
| 12 | `theorem` | [toyActJudgment_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyactjudgment-id.md) | 131 | `result-track:48ac9a191fbfe052c7c8206fd0be208cb46ea0f998d853ea75274c15dc7553b7` |
| 13 | `theorem` | [toyActJudgment_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toyactjudgment-comp.md) | 141 | `result-track:4c36ef1e00c0ac2f8f03419accd4d133a750f38198672f6fb19cb4a34f81b490` |
| 14 | `abbrev` | [toyPresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/toypresentation.md) | 151 | `declaration-track:66d18e6b763d26b0fe7173e2845609f505585db34fd531ceaf09254a8c412b0e` |
| 15 | `def` | [propositionP](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/propositionp.md) | 195 | `declaration-track:1f33257a27b66e0b74fe55d1592011b407db77a2cf7f8de8a36922fc354a3900` |
| 16 | `def` | [boundP](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/boundp.md) | 196 | `declaration-track:ef45f1f925529a4af8af606a6076c6cedb9b826c764063cf269479a069e9fdf9` |
| 17 | `def` | [identityTerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/identityterm.md) | 197 | `declaration-track:13223e07f304ba6ec07e2c150fd209dc33c4348612e90049fd250307a404cdb6` |
| 18 | `def` | [identityType](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/identitytype.md) | 198 | `declaration-track:c4dffaa383a7b2846edd60d9faaa86da5bfa6f3d4b32684b44a814a2e2bec15f` |
| 19 | `def` | [identityBody](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/identitybody.md) | 200 | `declaration-track:18e8ce5ac5433794c975b83400a50ae7e57afc4abe2648cf843185f3296efc35` |
| 20 | `def` | [identityConclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/identityconclusion.md) | 203 | `declaration-track:97e5d5cf2137b33a2493d8d7cc5c794249d5ed639877cf0a5ca384377f05781d` |
| 21 | `def` | [identityBodyLeaf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/identitybodyleaf.md) | 208 | `declaration-track:2e261735225b5f1cea1926c9d6babd93a820d3face6cca9d274c2df518b854d9` |
| 22 | `def` | [identityDerivation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/identityderivation.md) | 213 | `declaration-track:206ff5e77d31d3d4a41773424459054acf82822f6cc6af8a3edefe948e6b8ec9` |
| 23 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-7.md) | 216 | `declaration-track:a215b20fef24a5e9f8c0615776dc3a013a85b2ffd5f8d1429eea1eff57d5452c` |
| 24 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example.md) | 219 | `declaration-track:1a87ebe43db522c4da9bddf9c0aebb462a3d7cd11f4982ce8538ae91e386765f` |
| 25 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-4.md) | 223 | `declaration-track:2123efb69d0a4c4c3aacc1c15796c61791cafeb7f6c9b5951aaa594e42f3f752` |
| 26 | `def` | [rootTelescopeJudgment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/roottelescopejudgment.md) | 226 | `declaration-track:95165f66cf8c4303b033d7a08ca502a229c5a6ca1cf18bc11fcc2abb1012abdb` |
| 27 | `def` | [rootTelescopeLeaf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/roottelescopeleaf.md) | 229 | `declaration-track:00fd726e1c56510c74fccf032c63dcada608b53435b6a52aa17411e1d0d42446` |
| 28 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-3.md) | 234 | `declaration-track:1ff5ed0216580d9e1be49cd56a9e94569a11616e573eba44d269337fe03276e1` |
| 29 | `def` | [closedRootJudgment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/closedrootjudgment.md) | 237 | `declaration-track:7e8fad8734c8947d77103e0ce9ea8af74a316e1dd0e0339f5094f28b96ff0a8f` |
| 30 | `def` | [closedRootJudgmentAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/closedrootjudgmentat.md) | 240 | `declaration-track:3a259eea705bcae61993c3fe7acb2edeffc5e4c164413bc48948f366eba6d09c` |
| 31 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-8.md) | 244 | `declaration-track:a8cabbf2cf9d6abbfdb1053b0fcefdda37604e8aec8695d30e516a8eec84dfd2` |
| 32 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-6.md) | 252 | `declaration-track:65d46df64e79683936f150f7208ec9c27b6af95477d60a18191a931fd31116cd` |
| 33 | `def` | [wrongSourceJudgment](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/wrongsourcejudgment.md) | 268 | `declaration-track:47740feb3b022826da5251499e992e0caf0d4cae30fbc3bce7d577f838d14cab` |
| 34 | `def` | [wrongSourceJudgmentAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/wrongsourcejudgmentat.md) | 271 | `declaration-track:75b02c92a63c76b6ac1181a980e71b31bd44b11de6dab0dcc66f1bc9513db804` |
| 35 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-2.md) | 277 | `declaration-track:1d6e09b543b06b36279e996a8f2f2d85e9f9c10049a69341ea0e0af8c43add8e` |
| 36 | `def` | [premise](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/premise.md) | 284 | `declaration-track:0d40e26eefa0908cd4585041e70f76e613600d0c33c9ee9d41bc0cc7ff94485a` |
| 37 | `def` | [conclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/conclusion.md) | 285 | `declaration-track:90b6ad8fe97261a5f3c510527a629b241df2d0a6e9a5df00fbcfe196cd88d102` |
| 38 | `def` | [internalLeaf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/internalleaf.md) | 287 | `declaration-track:c3c849c4220ccfaa1d18ac49e0dc1d862bebd603d1b2a00e1f27e097208ac20c` |
| 39 | `def` | [derivation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/derivation.md) | 290 | `declaration-track:e9a51f1c18593aa00af772e3865459c5f4e267b79fc9b1292aafad810e6146f1` |
| 40 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-5.md) | 293 | `declaration-track:40df2468f6c35fe7c4d9a71e2684ccb23d7ffa0b68f0d518e7b081ff1a5b7868` |
| 41 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-9.md) | 295 | `declaration-track:d7fadbba419faf4f5c8393f22d6da807991637b9f2ecf1ac5fd58e51fd6825c1` |
| 42 | `theorem` | [derivation_closed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/derivation-closed.md) | 298 | `result-track:68bef80b90b3a6be5db9ffc0f930ab827ae777493bee820654c545ec4d76a94f` |
| 43 | `def` | [restrictedPlan](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/restrictedplan.md) | 304 | `declaration-track:51d1c545e121b930487aa68c100469b77fcfb332d227ef105fbd21afddc90827` |
| 44 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExamplesNamespaced.lean/declarations/example-source-edition-10.md) | 307 | `declaration-track:fd3fac235abc1895dae04c31316e32a6f193e665b90defe749c985c9d74123f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a3a24c2d21e9c88e616aa4868c6fe3d31a463da2f61f9ea1b0ecb8c37de1090 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variant8ee94d125166c05bf5b0d1acafa7746383cc14631e3d566a6d76283d369db43a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/Examples/Variant8ee94d125166c05bf5b0d1acafa7746383cc14631e3d566a6d76283d369db43a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Pred Trans Public Apply

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "069e5ed47c9264fbbf04820a6b1ff3548b975f6f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `069e5ed47c9264fbbf04820a6b1ff3548b975f6f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PredTrans.Monotonic](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/predtrans-monotonic.md) | 41 | `declaration-track:63b870a566cbaf0715ac1051b187e8c952fa796c380e76bc211a681c9e3d4109` |
| 2 | `def` | [PredTrans.Conjunctive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/predtrans-conjunctive.md) | 48 | `declaration-track:20799e08b7af2cbf7531feb02a6bd0123a5dcf66357042eb2e22c87e38380af9` |
| 3 | `theorem` | [PredTrans.Conjunctive.mono](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/predtrans-conjunctive-mono.md) | 52 | `result-track:0275390f459c31fb9dbf3b4ff6c786518941301e50beb3394b6390e4a93c2f27` |
| 4 | `structure` | [PredTrans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/predtrans.md) | 63 | `declaration-track:0d7fc749e1489eaff272b3dbdb041ba14727ec9fc12978960f32e949c0110fd6` |
| 5 | `def` | [apply](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply.md) | 79 | `declaration-track:0653496f18b04805e1ad213fb0d6ab1ba14d8608c583212d1bf088b44743b494` |
| 6 | `theorem` | [conjunctive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/conjunctive.md) | 85 | `result-track:f67e877e8f62fcd60b18ae51f2c8b26f6cfc94e36fed7dd87e9aa8c21e4f4a10` |
| 7 | `theorem` | [mono](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/mono.md) | 88 | `result-track:2e4723032481920a55c32b2dcb63b22d5ad54ebc09447c1832b39ae4b0fd4b9f` |
| 8 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/ext.md) | 92 | `result-track:8bb24163c33e371a801fa632f536361d6945287f12864b9378b58c81957c3d85` |
| 9 | `def` | [le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/le.md) | 100 | `declaration-track:c3ca0f84ca91ab61a4f4e4d91bb692db8120a0742c737dd22e9a76d3eb01e70b` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/instance-source-edition-2.md) | 102 | `declaration-track:caa61fe0587f0f3b7780b7aa1398c15f7932ab610f0fea3d84b9a186fcad57a3` |
| 11 | `def` | [pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/pure.md) | 108 | `declaration-track:e3fa9160b08add2fae6ed49bb4ec0f68012fa2181a5cecf06a6a5a46b20839be` |
| 12 | `def` | [bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/bind.md) | 114 | `declaration-track:d1743e1185225b8aefd99319a3e1bfb4341fc863050c86b766293e9c3e4c236f` |
| 13 | `def` | [const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/const.md) | 127 | `declaration-track:dd949aa24ddb0c2dc8e58c0d914e695ba1f7138548218fa9aca8df14be51c95e` |
| 14 | `def` | [throw](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/throw.md) | 133 | `declaration-track:b7bb088032719573dd3c8326ad6c9ee73366e2cb7b4b235ec8a6ff6702ddc834` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/instance.md) | 136 | `declaration-track:095441c5633ba33d94900b6f9200e2d702bed95b80b05a847bc26a1486f8384d` |
| 16 | `theorem` | [apply_Pure_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-pure-pure.md) | 141 | `result-track:e56335f7dc1e14dc13ec2ecae4a7efd491a97e18f3dbbe757f513dd3f0e15813` |
| 17 | `theorem` | [apply_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-pure.md) | 145 | `result-track:4eb89b0208f4d68f471d45c9e9f2f3255ba2c0ad7c84f1aaf74b3588ea3598bb` |
| 18 | `theorem` | [apply_Functor_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-functor-map.md) | 149 | `result-track:ff40170fa4416edddc08d82fbb26179b844c9f38b5632ac4ff923730fa651423` |
| 19 | `theorem` | [apply_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-bind.md) | 153 | `result-track:817f33bd97fde519b23c66ac9fc2ca1342adab9f143ab4ca57f23e4c60deff86` |
| 20 | `theorem` | [apply_Bind_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-bind-bind.md) | 157 | `result-track:9a62ec90accb94d23d6da4af5c65c27cb42c60f9ab7e3be383134ec3c8386b2d` |
| 21 | `theorem` | [apply_Seq_seq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-seq-seq.md) | 161 | `result-track:a5524b3063897789db4a69bd81ab9d8d9136378a77b08e558a40ded60b1ce5de` |
| 22 | `theorem` | [apply_const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-const.md) | 165 | `result-track:0cb919e3e79e77d284406664b865dc5d7cd63a2ef31547f40bdb6ca836641210` |
| 23 | `theorem` | [apply_throw](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-throw.md) | 169 | `result-track:31471e2a50ba4573aa30f0edd13ed3f39f58600bf4aa85b4fa622eb507a744a1` |
| 24 | `theorem` | [bind_mono](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/bind-mono.md) | 172 | `result-track:f0e452aa16a5699f15d586dcf10f04b06d657ff7f9dbca2809cf17cd5676eaf5` |
| 25 | `instance` | [instLawfulMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/instlawfulmonad.md) | 175 | `declaration-track:85382f6545d0adb6775b16da25aa706fe75354c8543ee5ba5b5e3f402dde5d95` |
| 26 | `def` | [pushArg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/pusharg.md) | 188 | `declaration-track:99657361fa09d113555d618b6a08a8cf6ea10a62ffee3a45d5c604609cd25848` |
| 27 | `def` | [pushExcept](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/pushexcept.md) | 205 | `declaration-track:cedaf40a0e192a1faf2d0754d2a32cc69410327a1b5f0e16f6698bde50dd3f6d` |
| 28 | `def` | [pushOption](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/pushoption.md) | 222 | `declaration-track:9329e9f486d5379489f7875080f581ec3f41e67edcb56c91722769060974d965` |
| 29 | `theorem` | [apply_pushArg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-pusharg.md) | 234 | `result-track:0695b79379a28e935d199cdf20ba2bc1db5e2e81886496ff71c907c5fc93f5d5` |
| 30 | `theorem` | [apply_pushExcept](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-pushexcept.md) | 238 | `result-track:1298667c9a3f08f8ff7a9e28f4661821a300c9987399e585a1dd08f130b87afc` |
| 31 | `theorem` | [apply_pushOption](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-pushoption.md) | 242 | `result-track:f57cbde4854c17c34889183617a6cdc1da4184bfcc619fff9c380b51a628bd45` |
| 32 | `theorem` | [apply_dite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-dite.md) | 246 | `result-track:38921983139bb6f3eadcbc0065a212ab8696f12f29e6cfedf95e45cca7a074ed` |
| 33 | `theorem` | [apply_ite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PredTransPublicApply.lean/declarations/apply-ite.md) | 250 | `result-track:cd83fa5ab93f1201d0503356054ff16d987f2d1602db37b2c5704ca042c92356` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fabadbf0070e24c4ebd3888d076e8f8b4d1f9c52d915ad929def16c9c24aa63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantf85424f0a6eb31a008e71b3686ffc69454ca5e0582aaec6832c76f0c3d77f8e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Test Discovery

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/TestDiscovery.lean/index.md) · [Full source](../../../../MeasureAndIntegration/TestDiscovery.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ca1b5383ea35e3bcfdbd2d844f5952447aff1b0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.Discovery` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I_neg1_1](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/i-neg1-1.md) | 28 | `declaration-track:e732abbfa24afda1e70a8f1ab90576e9fb576357c518efd4191c81caaf1c61bd` |
| 2 | `def` | [I_0_2](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/i-0-2.md) | 29 | `declaration-track:f4dc3353d33115a6bbb07ed048b0e5efa2d9acf168e329f66460f42ffff53457` |
| 3 | `def` | [I_1_2](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/i-1-2.md) | 30 | `declaration-track:7cf4b07f4f1d7ab8295bb90ba8eeb698bfb0efaea1e2c1859ed42134dde99268` |
| 4 | `def` | [I_3_4](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/i-3-4.md) | 31 | `declaration-track:b67ebecb0891cbf2357cb545bb75531a1fc133ff372037d58018aa0a4f7e289d` |
| 5 | `def` | [I_0_1](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/i-0-1.md) | 32 | `declaration-track:be93c4c542be1a7a0b92f57f012df4c0683fb562a57725e6966ab7f9c16da283` |
| 6 | `def` | [defaultCfg](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/defaultcfg.md) | 35 | `declaration-track:9a306645cbb6c72578e589d43d43f5a5c3beb2287ebe32ec1a29ea85322d051a` |
| 7 | `theorem` | [test_x_root](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-x-root.md) | 39 | `result-track:6ac5793c4ba5dd8a064ab54b3393ccb0c29504efbf229fcb524ccfc1ccf17259` |
| 8 | `theorem` | [test_sqrt2_exists](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-sqrt2-exists.md) | 49 | `result-track:f25fd5bcb52172f286881a4fcd5561123aae31133e9f442d8e9f1ece6db2bc0a` |
| 9 | `theorem` | [test_sin_root](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-sin-root.md) | 64 | `result-track:76ee23bdba6662093f62d4e117003adb1e621c8ddf1b5b57eca3c1b125555538` |
| 10 | `theorem` | [test_exp_root](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-exp-root.md) | 73 | `result-track:42e528ad3271dd9b86c0a0e64007f37d04b19da2ddd155abef22d861c1c923c3` |
| 11 | `theorem` | [test_cos_root](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-cos-root.md) | 88 | `result-track:fe6f76c408901137bec93d9f7dc505ddf469cb08a008a278921ceea83b4bd28a` |
| 12 | `theorem` | [test_tactic_x_root](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-tactic-x-root.md) | 106 | `result-track:451051568f4eabfc7fa64ff1c0819211adec24fb9814258da51a8ffe2a06ec04` |
| 13 | `theorem` | [test_tactic_sqrt2](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-tactic-sqrt2.md) | 110 | `result-track:fb485ca234b85cfbd0ec9467d397c2e900ddeab8a1fdd0800e174e7781918c06` |
| 14 | `theorem` | [test_tactic_sin](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-tactic-sin.md) | 115 | `result-track:468337e3a4905de3f9196a74f833f2352117296e43d38b97254d01b55c9e4c7c` |
| 15 | `theorem` | [test_tactic_exp](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-tactic-exp.md) | 119 | `result-track:02a69d64ee43def60c4db3c92fcb467ea41bb1dffde17584cc35b99699bd1536` |
| 16 | `theorem` | [test_tactic_cos](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-tactic-cos.md) | 124 | `result-track:7acb1b256d7ca16420dcb4d5d6aeba80efc7d23c2d528c6196a646ba0bf65d39` |
| 17 | `theorem` | [test_minimize_x2](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-minimize-x2.md) | 142 | `result-track:d95ed31baaa200ce30fd913dfcce33b79ad00f4343e413450abb1e98bfe524fd` |
| 18 | `theorem` | [test_maximize_x2](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-maximize-x2.md) | 148 | `result-track:c9d473930c9300329d4e91351ce24c2e5f0b1b0ae87e26a5946cf25d154a78ef` |
| 19 | `def` | [I_0_7](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/i-0-7.md) | 153 | `declaration-track:4c0afaec08ae122a666c18dc8f96cad27bf0bba338dfc810b851c09f0795033f` |
| 20 | `theorem` | [test_minimize_sin](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-minimize-sin.md) | 155 | `result-track:d2524a63e9c9eaf103a83e4efa4965657acbe90207a16e78a9391a69d1795196` |
| 21 | `theorem` | [test_maximize_exp](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-maximize-exp.md) | 160 | `result-track:197a341191ced451777145ae63eb4fe50c42e366e3c2cb092940c59de29e7ad0` |
| 22 | `theorem` | [test_unique_sqrt2](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-unique-sqrt2.md) | 202 | `result-track:2c85448dda71d80f5564248de61f14b93da005f6fe9a1ab0cd16ef2b55f51526` |
| 23 | `theorem` | [test_unique_ln2](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-unique-ln2.md) | 208 | `result-track:1fa00b98d72a267b3e4089ea7c84b280fa3ed65312d6dcc67b6a05d86ac1181f` |
| 24 | `theorem` | [test_integrate_x](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-integrate-x.md) | 224 | `result-track:70be548290e7daf53db859e2ced9d32ae8d0e8f31fe61a4067a55596ac744350` |
| 25 | `theorem` | [test_integrate_const](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-integrate-const.md) | 230 | `result-track:a83779bf4138c4f21cc0a6b5d87029795f1e1507e13a0201165fdb388abcaf74` |
| 26 | `theorem` | [test_integrate_x2](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-integrate-x2.md) | 236 | `result-track:2915edf77344935922b89fb28dfdc7780bcf1a451d30d4384a8d99a7b0adc63e` |
| 27 | `theorem` | [test_integrate_exp](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-integrate-exp.md) | 242 | `result-track:5ba610b88aaa73ad8bd581f5f0737e0636775826fc0337f9d24561a16c15283f` |
| 28 | `theorem` | [test_integrate_sin](../../../../MeasureAndIntegration/TestDiscovery.lean/declarations/test-integrate-sin.md) | 248 | `result-track:f612fafd8d6715304fa74b5b492ef9f00bc1f1081778edfa33b00fbed697d659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5c22964180c1ffb350b666d22bacb07c881e3b6cb01dbf909bc02fc2513e8b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestDiscovery/Variant6bc47939ab59984839f1d3796d6151484dd8ea3c075c3a7ce095df9af8290e89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

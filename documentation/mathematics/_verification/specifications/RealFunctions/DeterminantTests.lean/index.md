# Verification target: Determinant Tests

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dc22c503e06cd148c4d69c3c5593acec36935d2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DeterminantTests/Variant997280044d4fb0bbb0c92c3619e37de528424890caf2a9c6967f297a34af0922.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DeterminantTests.lean/index.md) · [Full source](../../../../RealFunctions/DeterminantTests.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dc22c503e06cd148c4d69c3c5593acec36935d2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DeterminantTests/Variant997280044d4fb0bbb0c92c3619e37de528424890caf2a9c6967f297a34af0922.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DeterminantTests/Variant997280044d4fb0bbb0c92c3619e37de528424890caf2a9c6967f297a34af0922.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Determinant.ScalarExtension` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [intModel](../../../../RealFunctions/DeterminantTests.lean/declarations/intmodel.md) | 21 | `declaration-track:24ad5c26f2485d16d9b6d8c65410b075205c6907e38d37cf1631630e93e78d7f` |
| 2 | `abbrev` | [intDeterminantTheory](../../../../RealFunctions/DeterminantTests.lean/declarations/intdeterminanttheory.md) | 23 | `declaration-track:46d2a7747b895ee3aa40ccb32c2d77961c2f4d19b62f941d0264b8fa069ed2e3` |
| 3 | `def` | [intObject](../../../../RealFunctions/DeterminantTests.lean/declarations/intobject.md) | 26 | `declaration-track:f300ac220cf231957d615b79719d66fbbb537e3c6e66fa37a94fea0c5320cec3` |
| 4 | `def` | [intNeg](../../../../RealFunctions/DeterminantTests.lean/declarations/intneg.md) | 29 | `declaration-track:c60283f0a3634bd3edc97ba262433fb4060953a3e731a2a69238ffb59c1f9110` |
| 5 | `example` | [(anonymous)](../../../../RealFunctions/DeterminantTests.lean/declarations/example-source-edition-4.md) | 32 | `declaration-track:b8d2159ad77eb8cef79361d7f2f17824985714132d6944deb5ed053a397162d3` |
| 6 | `example` | [(anonymous)](../../../../RealFunctions/DeterminantTests.lean/declarations/example-source-edition-6.md) | 40 | `declaration-track:eda8caddf0e203904d42264a8288581d76997a7c00078aaf2612e288fee13a1b` |
| 7 | `def` | [intNegChain](../../../../RealFunctions/DeterminantTests.lean/declarations/intnegchain.md) | 52 | `declaration-track:ffd79d965fcd063bfc2e8bdc6adea58fb2632b1a04b6c6b7ce22434d17aeddc7` |
| 8 | `example` | [(anonymous)](../../../../RealFunctions/DeterminantTests.lean/declarations/example-source-edition-5.md) | 57 | `declaration-track:bb9268dd5787760edfa00635e71b78f2a392fda3843a66d1fe8ce63bab14d76d` |
| 9 | `def` | [scalarToyModel](../../../../RealFunctions/DeterminantTests.lean/declarations/scalartoymodel.md) | 68 | `declaration-track:d3e201c10ed0a2e6b3d23a74cd09bfff4b0f12dc4698058a6b059a355b2538c5` |
| 10 | `def` | [scalarToyTheory](../../../../RealFunctions/DeterminantTests.lean/declarations/scalartoytheory.md) | 107 | `declaration-track:6d0484d43c80c648c3ffd6776b92a5a9e1bd1ae5fd7b43602324fab7ff931bb1` |
| 11 | `def` | [intToRat](../../../../RealFunctions/DeterminantTests.lean/declarations/inttorat.md) | 126 | `declaration-track:e248fce16f0fe63215bee5a5ca346bf75b724223a5a72f47f8596233b6fdb31f` |
| 12 | `def` | [intToRatScalarExtension](../../../../RealFunctions/DeterminantTests.lean/declarations/inttoratscalarextension.md) | 136 | `declaration-track:773cc2c8f9af255942770d4a5be308cf910a038e018fe085f339c8aeb4d9664f` |
| 13 | `abbrev` | [rationalToyTheory](../../../../RealFunctions/DeterminantTests.lean/declarations/rationaltoytheory.md) | 151 | `declaration-track:1c898586c0da896d204c030323c74025660c9caf0364da3fc0f3de67f1252199` |
| 14 | `def` | [toyObject](../../../../RealFunctions/DeterminantTests.lean/declarations/toyobject.md) | 154 | `declaration-track:74e5564ac73fbde2b5f2d6fad56d4f3df9ec0712755ce0e7d6170e280ed51308` |
| 15 | `def` | [toyIntegralIdentity](../../../../RealFunctions/DeterminantTests.lean/declarations/toyintegralidentity.md) | 157 | `declaration-track:0fd09ff6a240f4b8d53ba5f28530e6d16a767af4fc6d408e12f84f78dae6cd48` |
| 16 | `example` | [(anonymous)](../../../../RealFunctions/DeterminantTests.lean/declarations/example-source-edition-2.md) | 162 | `declaration-track:23e258de4342057dd9da02a5e9269dd2fc4a3ed56ccf6c117c2ddda5aec20768` |
| 17 | `example` | [(anonymous)](../../../../RealFunctions/DeterminantTests.lean/declarations/example.md) | 170 | `declaration-track:068261a9abf8f0e1d6828fd8d0e13c48c52457190824c922474a117475ece87e` |
| 18 | `def` | [intToRatLineCompatibility](../../../../RealFunctions/DeterminantTests.lean/declarations/inttoratlinecompatibility.md) | 177 | `declaration-track:4eea716fc436d816dbc49678b771fb630f07ae34f8fb692bd8371230e83cd0e6` |
| 19 | `example` | [(anonymous)](../../../../RealFunctions/DeterminantTests.lean/declarations/example-source-edition-3.md) | 187 | `declaration-track:ac56e85c54d05b3d2733aa0823eacef00c3a53b98e99f1c3db6545ef57949498` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0a1484a16e46f4449023294e8142456b5a5e1df8383bc17a09501e7954c2339 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/DeterminantTests/Variant997280044d4fb0bbb0c92c3619e37de528424890caf2a9c6967f297a34af0922.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/DeterminantTests/Variant997280044d4fb0bbb0c92c3619e37de528424890caf2a9c6967f297a34af0922.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

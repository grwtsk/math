# Verification target: Adadic Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "465ed420fe290c7ee432921afd00994bc36e0b4f",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `465ed420fe290c7ee432921afd00994bc36e0b4f`.

Source path: `GRWTSK/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Adadic.Stratum](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-stratum.md) | 42 | `declaration-track:0f6063b265b5779fe50252af3e3de8fe1e214f5cadb608ebe203376628f2558e` |
| 2 | `inductive` | [Adadic.Bit](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit.md) | 54 | `declaration-track:ff63615e2b10781896e1cfaf49aa6c7078b224b79909c235beaa13750363e5ac` |
| 3 | `def` | [Adadic.Bit.order](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit-order.md) | 65 | `declaration-track:5f5e0e1a8f7de298d62414d25f5aefae1c7375606aa7478860b3e92d13a7aead` |
| 4 | `def` | [Adadic.Bit.indexNat](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit-indexnat.md) | 76 | `declaration-track:c2e029f68c3c132b397119aae80b71df8ab8de0524bca3c68fe425fd149a6884` |
| 5 | `def` | [Adadic.Bit.index](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit-index.md) | 86 | `declaration-track:f9e1960711afe837e6b31684c6c66f63168c6d3b80d12cf8eaf9f9a61462a870` |
| 6 | `def` | [Adadic.Bit.ofFin7](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit-offin7.md) | 96 | `declaration-track:5020e6ded154b0a936a87a6aa979aec09cb098e32cd31ecefc59a5e9addb7669` |
| 7 | `def` | [Adadic.Bit.stratum](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit-stratum.md) | 107 | `declaration-track:b870e7ef326df48afb4e1a1f2615088c82edeedbdf8c164d21e4cafc061bfc72` |
| 8 | `def` | [Adadic.Bit.precedes](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit-precedes.md) | 117 | `declaration-track:3f1c79fee382f2676781c8acc4a2f3d8b7c3446ccf70d6e9ca1b091b75cfd2ee` |
| 9 | `theorem` | [Adadic.Bit.kernelAdmission_precedes_handshake](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit-kerneladmission-precedes-handshake.md) | 121 | `result-track:836d054b5d1942bf0d2f11d4b3e7a909d3da9b0928d44a8914966ccaae28ec59` |
| 10 | `theorem` | [Adadic.Bit.controlFlow_precedes_kernelAdmission](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bit-controlflow-precedes-kerneladmission.md) | 127 | `result-track:b9888d633bd6a3f93346736dae11ad110b52d1e64d4e23dae95321d08f496253` |
| 11 | `abbrev` | [Adadic.Frame](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame.md) | 133 | `declaration-track:484a158c1dc9f8b2c0a00760b521c4121cd72f7277a2715f1cacfc086627eee5` |
| 12 | `def` | [Adadic.Frame.empty](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-empty.md) | 137 | `declaration-track:862cecd1c2ac85fd172c9994075423d78235ab98e7277092a03f1b681c4a7fbe` |
| 13 | `def` | [Adadic.Frame.full](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-full.md) | 141 | `declaration-track:84674f0898c859ee9ed9972102848521de9ef2d79f3c480869740c7a8f3aa4f7` |
| 14 | `def` | [Adadic.Frame.standard](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-standard.md) | 149 | `declaration-track:2b2cfb8bb8ac9a45d420abeb0ad17ea08ac9ecebe77f62c86633b60de45eb174` |
| 15 | `structure` | [Adadic.TopologicalCover](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-topologicalcover.md) | 153 | `declaration-track:676d96e7f3005b2ad148cf0168064ef57fbc314f658c77e44aaf2e178a503136` |
| 16 | `structure` | [Adadic.ArithmeticCore](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-arithmeticcore.md) | 159 | `declaration-track:84805becbf7b85c3cf337351325f00f1421ac823a50c1e1f713f550de85e57be` |
| 17 | `structure` | [Adadic.ControlFlow](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-controlflow.md) | 165 | `declaration-track:80c494626b686cdeb8a7a198008c6447fa043d5a536f4fc123d8d752afc7a868` |
| 18 | `def` | [Adadic.Frame.topologicalCover](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-topologicalcover.md) | 172 | `declaration-track:692ae85fc0f597ca02c2227c13f8bdbdb2200d2434e6065d7dbd2cefce786abd` |
| 19 | `def` | [Adadic.Frame.arithmeticCore](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-arithmeticcore.md) | 179 | `declaration-track:1b66f266f4bd3cc5438747c6506df4674318a651b76324e8849475203b6da3f4` |
| 20 | `def` | [Adadic.Frame.controlFlow](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-controlflow.md) | 186 | `declaration-track:9054e43a78c18620f30dac88b721c3da8980c00d2c4b80ea8f3a6db61c9ce158` |
| 21 | `def` | [Adadic.Frame.topologicalCoverComplete](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-topologicalcovercomplete.md) | 194 | `declaration-track:384e1fdbe85184dc73f5dd8bacc1807b009ebe2c993230403f045be07c9ed023` |
| 22 | `def` | [Adadic.Frame.arithmeticCoreComplete](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-arithmeticcorecomplete.md) | 200 | `declaration-track:94cb65e734d2ebf3547f3a1cf706b709e259c0499780928f3b7f44a0c93c4457` |
| 23 | `def` | [Adadic.Frame.controlFlowComplete](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-controlflowcomplete.md) | 206 | `declaration-track:d91884e633210ef73038b71a28c4ee41487477b3f15778462ab655a8675a83bb` |
| 24 | `def` | [Adadic.Frame.kernelAdmissible](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-kerneladmissible.md) | 219 | `declaration-track:71671c96a9c00f1860686b5cdd8330d04e497b734cd7d53bd8d1c775440417bb` |
| 25 | `theorem` | [Adadic.Frame.standard_kernelAdmissible](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-standard-kerneladmissible.md) | 227 | `result-track:fd094558720adfee08935a386a6a2c0cc09b6b09ff35a847a9c703de73a2ceb0` |
| 26 | `def` | [Adadic.Frame.toMatrix](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-tomatrix.md) | 232 | `declaration-track:fdd2b17014f7ab9405ee82abc5a09faaf00fc92290d2f0885e4588bddd6b7b1e` |
| 27 | `def` | [Adadic.Frame.ofMatrix](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-ofmatrix.md) | 238 | `declaration-track:4d531b7a050047233e97f4ca4810dea82e9aa4933dafacc52415d2b25e867c35` |
| 28 | `abbrev` | [Adadic.Bitstream](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bitstream.md) | 244 | `declaration-track:a13a66663dd41d908c65ab094abe902e2acda87215de89fb6a3180056dd25c84` |
| 29 | `def` | [Adadic.Bitstream.getD](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-bitstream-getd.md) | 248 | `declaration-track:50e8e7beef5ff8461b3be8a8ee2715c8a98fc33407029d79382f5a8803ba0b97` |
| 30 | `def` | [Adadic.Frame.toBitstream](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-tobitstream.md) | 254 | `declaration-track:248609d28d8d188300b73e4fc14c81dfdd78f15aa61c2a97f049e84c98362460` |
| 31 | `def` | [Adadic.Frame.ofBitstream](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-frame-ofbitstream.md) | 260 | `declaration-track:72b62bf09f7ed225ae1e6f2f5d7224ba5b96d0ea571afc049f5a97d50b2e701b` |
| 32 | `abbrev` | [Adadic.Cursor](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-cursor.md) | 266 | `declaration-track:20f298d257e8b9b5f436aac94e9ccd2e7c46b2882a8c9514fbe9661c908fe5da` |
| 33 | `def` | [Adadic.Cursor.standard](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-cursor-standard.md) | 270 | `declaration-track:0801530162bef1eab5f276068ca3096abed4212349d11032dd4eb488007c0935` |
| 34 | `def` | [Adadic.Cursor.strictlyOrdered](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-cursor-strictlyordered.md) | 274 | `declaration-track:8503f86e171403bdbe1cd78954bd558b1e3cbf15f09f77ca9464dfa45fe06bca` |
| 35 | `def` | [Adadic.Cursor.handshakePrecedence](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-cursor-handshakeprecedence.md) | 285 | `declaration-track:ad99a4b950debe138047fa92eaf94e553471153f56ce8ada1dc321f366c385ed` |
| 36 | `theorem` | [Adadic.Cursor.standard_strictlyOrdered](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-cursor-standard-strictlyordered.md) | 292 | `result-track:263046975e853d0d8672fe61674053e8ef90bc56a4e50dfa26987f1750fe990b` |
| 37 | `theorem` | [Adadic.Cursor.standard_handshakePrecedence](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-cursor-standard-handshakeprecedence.md) | 297 | `result-track:9f145bbdcfde991558a4b4181cdba4070a2591d9abef73379120b17ccb3ae055` |
| 38 | `structure` | [Adadic.CursorOrderCertificate](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-cursorordercertificate.md) | 302 | `declaration-track:e06ed0835ba7cbef48973f4199f2249c55a9a0ea39bc843ab1661f6a9b401db5` |
| 39 | `structure` | [Adadic.HandshakeCertificate](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-handshakecertificate.md) | 318 | `declaration-track:bd7949fdda0f29e550be9da0ad609287720170652dbec71f4d96946bb74d21ce` |
| 40 | `def` | [Adadic.CursorOrderCertificate.standard](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-cursorordercertificate-standard.md) | 326 | `declaration-track:c3cfd14ab1d17e451fdb1045815232f6ffe51d78efd74ef385124f2ba56288ab` |
| 41 | `def` | [Adadic.HandshakeCertificate.standard](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-handshakecertificate-standard.md) | 336 | `declaration-track:3a826f15d53d143d783ce6b319abb53abd7fb6a6f45f78fd6db61636943bcc83` |
| 42 | `structure` | [Adadic.HomologicalSubstrate](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-homologicalsubstrate.md) | 342 | `declaration-track:e5e1af825e289598de78c3b4cc0c1d8cdf639327d26f8b3a77c97066e9ec2723` |
| 43 | `def` | [Adadic.HomologicalSubstrate.standard](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-homologicalsubstrate-standard.md) | 350 | `declaration-track:dd75746caf0ac36c0955c76a797ffe9e07d3cbee0c53bc7cae6652399ee12a2c` |
| 44 | `def` | [Adadic.HomologicalSubstrate.native](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-homologicalsubstrate-native.md) | 358 | `declaration-track:0d9db3ed4b2728d233acad1cac3c09fb6ea89f3cf8ad0b1a2bca6faf872d5fc8` |
| 45 | `theorem` | [Adadic.HomologicalSubstrate.standard_native](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-homologicalsubstrate-standard-native.md) | 367 | `result-track:d9af286fc7ae9b61bc5c58968068520d586d97fb6a86c29f5ba92722ba89c9e7` |
| 46 | `structure` | [Adadic.Admission](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-admission.md) | 382 | `declaration-track:c511171fd456b167a91ca092f27e2e9264455b5f1cb84d225e9a23f2aaca50a5` |
| 47 | `def` | [Adadic.Admission.standard](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-admission-standard.md) | 393 | `declaration-track:9e22dbe16cdd26e45f8c79cfbf3aa89810800b037c7b6c58c60bb7136d529961` |
| 48 | `structure` | [Adadic.NativeAdmission](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission.md) | 402 | `declaration-track:a41df95582c62aa3d558fd391078a29165eb0a5bab115fb9f9a8f10c30254ce0` |
| 49 | `def` | [Adadic.NativeAdmission.standard](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-standard.md) | 409 | `declaration-track:93c8e19d008f0ac32b33ad956b3a00dd12881a10d3c196ec06232b06502fbd7b` |
| 50 | `theorem` | [Adadic.NativeAdmission.frame_kernelAdmissible](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-frame-kerneladmissible.md) | 416 | `result-track:1efc7d5a063f6e5711565c725c2327d05ab4a3ed363dfe1e9ffd349c9e597f7b` |
| 51 | `theorem` | [Adadic.NativeAdmission.substrate_is_native](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-substrate-is-native.md) | 422 | `result-track:2a70d42064884686dec6536bdf3b435d5b5bb4b60fc25d0a398ab5aefb4ef900` |
| 52 | `theorem` | [Adadic.NativeAdmission.standard_frame_kernelAdmissible](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-standard-frame-kerneladmissible.md) | 428 | `result-track:0aaa9d650c68756de1bc1a55d0df6c22244e72c1aeab6f90f2727eb180a22730` |
| 53 | `theorem` | [Adadic.NativeAdmission.standard_handshakePrecedence](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-standard-handshakeprecedence.md) | 435 | `result-track:020837ab2ee15887422e52da66ad794274449fe87e040c01fcecc7d7f635aeac` |
| 54 | `theorem` | [Adadic.NativeAdmission.standard_cursor_strictlyOrdered](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-standard-cursor-strictlyordered.md) | 441 | `result-track:bd8280ee1eb8025e83089acb9bfe2342d2087c3253a252b8b1f64af667c309b1` |
| 55 | `structure` | [Adadic.LedgerEntry](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-ledgerentry.md) | 447 | `declaration-track:d61913a687be779b486b5d92e6f4e4adaf5986eaf13038ea8ccc457c7cde7a97` |
| 56 | `def` | [Adadic.NativeAdmission.toLedgerEntry](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-toledgerentry.md) | 453 | `declaration-track:7f52506a7ff68292caf837a9ecfecfbb5860018031b5bbd2018a8d7c0893b597` |
| 57 | `theorem` | [Adadic.NativeAdmission.standard_ledger_accepted](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-standard-ledger-accepted.md) | 461 | `result-track:b97d269b1dcc5f8ded98dcddcd91cc35fecdea626a4698b8ccc161ee89238cc1` |
| 58 | `structure` | [Adadic.Layout](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-layout.md) | 472 | `declaration-track:55123e6b9e98325318a98a22ba1852052d3fc13c1b9449ad05d0cc2441d2b938` |
| 59 | `def` | [Adadic.Layout.ofFrame](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-layout-offrame.md) | 480 | `declaration-track:cf2190e8fb363ee851a6221c9ab6d9f0a0b86a07642e779906baf70bd8d42664` |
| 60 | `def` | [Adadic.Layout.standard](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-layout-standard.md) | 491 | `declaration-track:8930403457c58aabcc64dc7d1bfb7cafb012f6db0f6cd589702d95cded413cd1` |
| 61 | `theorem` | [Adadic.Layout.standard_topological_active](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-layout-standard-topological-active.md) | 498 | `result-track:f8dcaafe854338e80b63c4dc64b2212186074b85072720b4d9a22842f52b350e` |
| 62 | `theorem` | [Adadic.Layout.standard_arithmetic_active](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-layout-standard-arithmetic-active.md) | 504 | `result-track:7b5206eeed81cdbae861b4d3628c64acb1fb20edf490ad57195a00e3ee53b29e` |
| 63 | `theorem` | [Adadic.Layout.standard_control_active](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-layout-standard-control-active.md) | 510 | `result-track:c835355013d1e75002ccfbd824f2634062e04d61a283fedb823fa4debaf75d7e` |
| 64 | `theorem` | [Adadic.NativeAdmission.handshake_precedence_law](../../../../GeneralTopology/AdadicNamespacedEdition1.lean/declarations/adadic-nativeadmission-handshake-precedence-law.md) | 523 | `result-track:33dd4a07d5233348b573c86f977e7c7c5d6de48684c03b9a2fdb31f62a0be345` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d12514ef1a4c24c428d2b603d2f9814ec88e2df6ea0fc729fef7b8a842c850e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Adadic/Variant2477cb90a5f2937a46ec524a12a0da6869767fbb146a097bb46fe30011cfc90f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

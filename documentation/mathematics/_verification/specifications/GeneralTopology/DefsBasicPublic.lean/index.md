# Verification target: Defs Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "326105821a5a8ce5041ccf8dce22779bd55fa923",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DefsBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/DefsBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `326105821a5a8ce5041ccf8dce22779bd55fa923`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean.json)

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
| 1 | `class` | [TopologicalSpace](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/topologicalspace.md) | 73 | `declaration-track:e17ab55eee2bf267496cc24d393ae72911ee8f1b2eba92e34ef75db8b873fac7` |
| 2 | `def` | [IsOpen](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isopen.md) | 95 | `declaration-track:bfbafd7a5b7124d5004f29e7e57be3f93bdc278ee75e670b0dc52c8d66ee4754` |
| 3 | `theorem` | [isOpen_univ](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isopen-univ.md) | 97 | `result-track:8744d43419f6d95fc1c08ccd5dd91f218370852014f156c66c2fd63328e14cde` |
| 4 | `theorem` | [IsOpen.inter](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isopen-inter.md) | 99 | `result-track:ca2f2f05d54d126705edd71ad082b838eab6931574e74ddd9d78ab0f35da767d` |
| 5 | `theorem` | [isOpen_sUnion](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isopen-sunion.md) | 102 | `result-track:f723b92e56926dc50553213fe97e1d0b6ffe8497e492bd74b189a2d510520676` |
| 6 | `class` | [IsClosed](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isclosed.md) | 107 | `declaration-track:0fe016b2d274a6a34c397d4290182d183ddb41f77bc676bf9d344b6310f6589a` |
| 7 | `def` | [IsClopen](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isclopen.md) | 112 | `declaration-track:f1625052db82f6a7e521e9b318de29493e40a59562fb221d68f1b7c8b8727e80` |
| 8 | `def` | [IsLocallyClosed](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/islocallyclosed.md) | 119 | `declaration-track:6e35c42bf3abf50833ab60b5d8580f30260aa24170dcab1d0cc66cfb634b7e4a` |
| 9 | `def` | [interior](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/interior.md) | 122 | `declaration-track:5c162170303cbf545aa5b66aec0d17a0248b46e85f6104030ef1b1622d971b16` |
| 10 | `def` | [closure](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/closure.md) | 126 | `declaration-track:17c4d140c627d270f6a8dcc205a03cd2ed2546977c158501a949a659650aecfc` |
| 11 | `def` | [frontier](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/frontier.md) | 130 | `declaration-track:4c7b34843b610ef3ed942d164d70584eb0b0c8f551566aa622633a8daed99c3a` |
| 12 | `def` | [coborder](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/coborder.md) | 142 | `declaration-track:b1d7d0c5dfaadcc6b1547e3978d18c752be0a3129d08714ea4f31c93c393c3bf` |
| 13 | `def` | [Dense](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/dense.md) | 146 | `declaration-track:880b685f7da104034c569812574a74a1cf7cd17a28fcdffe12f97bd8997a645e` |
| 14 | `def` | [DenseRange](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/denserange.md) | 150 | `declaration-track:0820131aea39f8fea13809dc0a15854783b5a78049d295d36a88d89282d7f4c5` |
| 15 | `structure` | [Continuous](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/continuous.md) | 155 | `declaration-track:6a331ffee7d88692abaf1edc2d17e90b459753ba2f2c6b02a8881bba29aaa9ce` |
| 16 | `def` | [IsOpenMap](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isopenmap.md) | 162 | `declaration-track:8c3380f2c1b9513326a6df6b0d3e3a4ffa3c5a987f91cdc2bf38e874ff419f2a` |
| 17 | `def` | [IsClosedMap](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isclosedmap.md) | 166 | `declaration-track:b42a0fcd7ca754db15187ad56187c497ff05a3e4bc3843f48b7c02143a32e10d` |
| 18 | `structure` | [IsOpenQuotientMap](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/isopenquotientmap.md) | 182 | `declaration-track:5fe4d88d1f7ffe6bc9ecd48480bf0ce236c681bdaea3cee6fc0c03ee48e96c32` |
| 19 | `def` | [delabIsOpen](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/delabisopen.md) | 215 | `declaration-track:8c543bf1a364f3dcc5162fb2ffa772299a0b94b67ebb797710a7cb65270d8dc1` |
| 20 | `def` | [delabIsClosed](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/delabisclosed.md) | 219 | `declaration-track:5347a9ccf185ca66a11b05454a8915cf8a521e637bfb0a0e26e6c12a842ae559` |
| 21 | `def` | [delabIsClopen](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/delabisclopen.md) | 223 | `declaration-track:3c964bc262a47cbc97f2a4615a216249b8a988699b228a5310ff8c4d383c05f9` |
| 22 | `def` | [delabClosure](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/delabclosure.md) | 226 | `declaration-track:f3300042661c2d2f85e44b302a07e31dc7a8ce6f0c9b6ec601c68332c8226a25` |
| 23 | `def` | [delabContinuous](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/delabcontinuous.md) | 230 | `declaration-track:1f55b9cc9f069afab4969dfaddfdbe873c469290f355c2be499f60c2b131db28` |
| 24 | `class` | [BaireSpace](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/bairespace.md) | 239 | `declaration-track:6a2f55b53c3fd72d85e05bf91bc297ac4b74c783862ddc3036b65b90fa61b4f8` |
| 25 | `structure` | [WithTopology](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/withtopology.md) | 244 | `declaration-track:66fc7c957de7b8e74b620e5bb001cd0cd7b11cc4dab9f277421db63731915de6` |
| 26 | `def` | [WithTopology.delabToTopology](../../../../GeneralTopology/DefsBasicPublic.lean/declarations/withtopology-delabtotopology.md) | 257 | `declaration-track:e6687dd1f4eb1d75e87ebbb7e32a82c9062fc7c2f0c377c0f1167adc72cfe978` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=089c633a68e6eda7954e82df87b1775a14d880c630aebf137112ea4b8673392b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant6a16294b9ce69e6f245f45abc59d45db011f2a1c545b4d5d403ccaca5b17c99c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

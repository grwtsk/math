# Verification target: Boundary Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12252d80fecbb2ee1bb3a749af598ff1decc7e13",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Boundary/Variantf65593fa7f2e670dfc34c7ecd117cf6b49d2fa12758925bcdc21efdccc143ba5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BoundaryPublic.lean/index.md) · [Full source](../../../../GeneralTopology/BoundaryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12252d80fecbb2ee1bb3a749af598ff1decc7e13`.

Source path: `GRWTSK/Topology/GeneralTopology/Boundary/Variantf65593fa7f2e670dfc34c7ecd117cf6b49d2fa12758925bcdc21efdccc143ba5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Boundary/Variantf65593fa7f2e670dfc34c7ecd117cf6b49d2fa12758925bcdc21efdccc143ba5.lean.json)

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
| 1 | `inductive` | [InterfaceKind](../../../../GeneralTopology/BoundaryPublic.lean/declarations/interfacekind.md) | 19 | `declaration-track:e7e03728c295a29777b75913a8ddfea3ac64af375f66d38de851b5cb95aff35c` |
| 2 | `structure` | [InterfaceAtom](../../../../GeneralTopology/BoundaryPublic.lean/declarations/interfaceatom.md) | 30 | `declaration-track:e67f165884234bedcc58e03a1df38a644911882220f8d74a4232b0e3061eae62` |
| 3 | `structure` | [BoundaryTerm](../../../../GeneralTopology/BoundaryPublic.lean/declarations/boundaryterm.md) | 38 | `declaration-track:528009d97507d67b7c83db56317e3dd9a93b433f6a18a04a2304d21a3c7d802f` |
| 4 | `abbrev` | [BoundaryLedger](../../../../GeneralTopology/BoundaryPublic.lean/declarations/boundaryledger.md) | 43 | `declaration-track:93f3c8527b34e2d2ed80bef35718c72d39a7d1d0dd9415054db71ad2b5ebd92c` |
| 5 | `def` | [zero](../../../../GeneralTopology/BoundaryPublic.lean/declarations/zero.md) | 47 | `declaration-track:23fded62c36f065ecd5d989a1190419f7dcb4270a2ca35c4740a402f5a8c4306` |
| 6 | `def` | [add](../../../../GeneralTopology/BoundaryPublic.lean/declarations/add.md) | 49 | `declaration-track:1c48ece8c343c2c658f8d693715891a2528874f09ccd26972d6f6a711aedf7ea` |
| 7 | `def` | [neg](../../../../GeneralTopology/BoundaryPublic.lean/declarations/neg.md) | 52 | `declaration-track:edf88a66d90fc9524dbbc2a7aa1bc950a8ddc90f553b8f87b169f6635161bc41` |
| 8 | `def` | [sub](../../../../GeneralTopology/BoundaryPublic.lean/declarations/sub.md) | 55 | `declaration-track:93d181013056380fbfdb967dbf2a8bdf383688aa99d4234898c1fb74e41bf54b` |
| 9 | `def` | [coefficient](../../../../GeneralTopology/BoundaryPublic.lean/declarations/coefficient.md) | 58 | `declaration-track:cdf6f5003a88638ce469ef7a4c7e4aaeddd8f2972205cc295ba10a57d7177d19` |
| 10 | `def` | [support](../../../../GeneralTopology/BoundaryPublic.lean/declarations/support.md) | 62 | `declaration-track:e0d42ddeae2b1a45d66796a27ce347b2b6fcb21de0be1b31734ac38cd008e5aa` |
| 11 | `def` | [IsZero](../../../../GeneralTopology/BoundaryPublic.lean/declarations/iszero.md) | 66 | `declaration-track:e113c43258ca2e141e13257b952d744d61825300b3dcfee44d48f96e888aeb8b` |
| 12 | `theorem` | [coefficient_zero](../../../../GeneralTopology/BoundaryPublic.lean/declarations/coefficient-zero.md) | 69 | `result-track:57f09c6bf693e233d8892be63c675934a8f3b66f578ab2c4f93eab3c7cb7709b` |
| 13 | `theorem` | [add_zero](../../../../GeneralTopology/BoundaryPublic.lean/declarations/add-zero.md) | 73 | `result-track:5cc97d910b2ba4474f123acd73ac4cb5c8eca0edebfabe4d29cd6f5b84291e76` |
| 14 | `theorem` | [zero_add](../../../../GeneralTopology/BoundaryPublic.lean/declarations/zero-add.md) | 76 | `result-track:47e00f2dcca1abd681518fd458da1561c7ca4202ff14d3913dae6e60ebcfb057` |
| 15 | `structure` | [PreparedBoundaryLedger](../../../../GeneralTopology/BoundaryPublic.lean/declarations/preparedboundaryledger.md) | 82 | `declaration-track:35e39e19b5824ca35da7e350a3a2ee659a817ae0de9e3ff512357e6b44276179` |
| 16 | `def` | [PreparedBoundaryLedger.totalBoundary](../../../../GeneralTopology/BoundaryPublic.lean/declarations/preparedboundaryledger-totalboundary.md) | 88 | `declaration-track:0da2a54fc4ecac06c5ba86c4c90445079c0d004b4f8c3c927ab99b9761d3b722` |
| 17 | `def` | [BoundaryBalanced](../../../../GeneralTopology/BoundaryPublic.lean/declarations/boundarybalanced.md) | 93 | `declaration-track:91fd9eee123ab9ca17502c8069c1d7c6624f66c6e9c4ba124e7242f1d988a3ad` |
| 18 | `theorem` | [boundaryLedger_zero_of_balanced_excision_graft](../../../../GeneralTopology/BoundaryPublic.lean/declarations/boundaryledger-zero-of-balanced-excision-graft.md) | 97 | `result-track:90b4331a8d8267196c34ccf8e7585912afee8927a215ecf4a0f24f39f80a3142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7e0e1936ae650c8f911c72ba77c90906c28a36e1119c1ccfb264f998ead85b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Boundary/Variantf65593fa7f2e670dfc34c7ecd117cf6b49d2fa12758925bcdc21efdccc143ba5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Boundary/Variantf65593fa7f2e670dfc34c7ecd117cf6b49d2fa12758925bcdc21efdccc143ba5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Contract Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5117dbdaf270c56e520714e54b1bc68dffd54545",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ContractNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/ContractNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5117dbdaf270c56e520714e54b1bc68dffd54545`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean.json)

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
| 1 | `def` | [transportSchemaVersionV1](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/transportschemaversionv1.md) | 27 | `declaration-track:ad133a1d9024f4da1fffd5840522273c4f06b1f1d5acd611d47c1992fc66fe9b` |
| 2 | `def` | [transportSerializationVersionV1](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/transportserializationversionv1.md) | 28 | `declaration-track:6c514a06d9a2396c81f32903f61e95764512f652555bd5a21666d053df289991` |
| 3 | `def` | [transportRevisionWidthV1](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/transportrevisionwidthv1.md) | 29 | `declaration-track:62422002ce7bb42fa525a8913f83090a3c0b2622fc61a1b93bcb6378bf740c9d` |
| 4 | `def` | [traversalModeCode](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/traversalmodecode.md) | 31 | `declaration-track:f18a11185bfe177c738661d5410df928f78851062b729134f135a7849689eeec` |
| 5 | `structure` | [TransportContract](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/transportcontract.md) | 36 | `declaration-track:8c7f0416ad01e46d82a02d635ee1ac53a16b05bc016d79c6b1f68f6c2d5488ca` |
| 6 | `def` | [hostTableMaterial](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/hosttablematerial.md) | 52 | `declaration-track:be8d311810328c9891f54eaf7b4c0dd21cf896639d0b9d2a086710e320471ea7` |
| 7 | `def` | [edgeTableMaterial](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/edgetablematerial.md) | 57 | `declaration-track:9d9721836b31e4bb9fbc3afbf3b45b668ade30b546d1a06c7c302996c9ca8328` |
| 8 | `def` | [canonicalMaterial](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/canonicalmaterial.md) | 68 | `declaration-track:577c3a6e121a62f93bb217dbf476d32c9f095bdc0e1416f09531d54beae2fa60` |
| 9 | `def` | [Valid](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/valid.md) | 93 | `declaration-track:cc2b10060f193a9e5a4209ca097ce123ef56608117b92bf8e5a454a8798350e7` |
| 10 | `instance` | [(anonymous)](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/instance.md) | 104 | `declaration-track:2a954969cfba219e89503e5e8ad045257faa1120665cf80d7c5994198b7ccf5c` |
| 11 | `def` | [verifyTransportContract](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/verifytransportcontract.md) | 109 | `declaration-track:8ea8a34bc2944323241484bd4502aa7e3e683376e5fde1afc64321e3e1768cb5` |
| 12 | `theorem` | [verifyTransportContract_sound](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/verifytransportcontract-sound.md) | 115 | `result-track:e91d0abd73b30da823619c25e6766bd75db7d470f3c27c2504c11dc15a651134` |
| 13 | `theorem` | [canonicalMaterial_deterministic](../../../../Combinatorics/ContractNamespacedPublic.lean/declarations/canonicalmaterial-deterministic.md) | 123 | `result-track:a2629e9f901509d686dd902aa105f93dd7444868a219794e1b94505414b9fdb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=493e3a9793ecfea10ba9619e4c2a3797d69b01ff0fe1834643991ace7755cf67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Contract/Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

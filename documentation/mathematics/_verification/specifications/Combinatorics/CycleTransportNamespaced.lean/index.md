# Verification target: Cycle Transport Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4e32e796f5cfd63530f1204f61d94bba90d5a38",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CycleTransportNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/CycleTransportNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4e32e796f5cfd63530f1204f61d94bba90d5a38`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.InvolutiveCycle` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgePermAt](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/edgepermat.md) | 34 | `declaration-track:f9d69102509f591868a729c2cde04bbaebd65c988a4ff93b119ef2d853e80622` |
| 2 | `def` | [forwardTransport](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardtransport.md) | 38 | `declaration-track:daa03039527d6d15fb8bec823ab843fa32467a4729b21157ec98fee01bd0184c` |
| 3 | `def` | [reverseTransport](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/reversetransport.md) | 43 | `declaration-track:7806075d81849d36f2ec179b6e2060339bd9db1528127d197bb26a758bccb611` |
| 4 | `def` | [forwardSegment](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardsegment.md) | 48 | `declaration-track:55ab597cc749f4822e64a50ba82d8d7e5867823b80b259f9de24d38e174b34ba` |
| 5 | `def` | [forwardPrefix](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardprefix.md) | 54 | `declaration-track:0a65fa9b9dfd99fbd0ec07a073106e782c8c3f06849085301eae8ca8f5004369` |
| 6 | `def` | [reversePrefix](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/reverseprefix.md) | 59 | `declaration-track:97d15193b62c0a31575abfd6ce97ab1f28352ce37555c0829846e699eb20b4b9` |
| 7 | `def` | [orderedTransport](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/orderedtransport.md) | 64 | `declaration-track:9a89e2363f9fdc85d6a33d70e9b95c277ce0807206aeeff7cbd019a29c92e649` |
| 8 | `theorem` | [orderedTransport_zero](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/orderedtransport-zero.md) | 70 | `result-track:75db663978791b1b1fb823a9232703aa0139e9495b9d1a8c8e56a781550d7e22` |
| 9 | `theorem` | [forwardTransport_zero](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardtransport-zero.md) | 76 | `result-track:843ef326e43fe104f2478c6592b90a0de83424355fd22322e1d9301bd94f3dd4` |
| 10 | `theorem` | [reverseTransport_zero](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/reversetransport-zero.md) | 81 | `result-track:8b9a2a443d6fd8543e8c70ecc6a1e2aea378b7a9725bd6e016ca3c4616597054` |
| 11 | `theorem` | [forwardTransport_succ](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardtransport-succ.md) | 85 | `result-track:512b656f6e221e4f2fdd1773bb12435aa08b96614a23ff0734e56d678c6a919a` |
| 12 | `theorem` | [reverseTransport_succ](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/reversetransport-succ.md) | 90 | `result-track:1f52c4f6e35386df80ab280945e60ba200c11113b16178854174542b8108e8ef` |
| 13 | `theorem` | [forwardSegment_zero](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardsegment-zero.md) | 96 | `result-track:404fb5348e8db4fccc3b104a19dd27355a28d97ecdcb74b3b7f03f80d9b5bbbe` |
| 14 | `theorem` | [forwardSegment_succ](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardsegment-succ.md) | 100 | `result-track:3f7d20a377b59f9649a32e4ffd0c19a3bdafd1a38e3de62eb736286ee0e54840` |
| 15 | `theorem` | [forwardTransport_add](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardtransport-add.md) | 107 | `result-track:cdabb773738da4f2ccc839ab09dcd8a399c336b906d833ebc4f18a8a9854a21e` |
| 16 | `theorem` | [forwardTransport_succ_apply](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardtransport-succ-apply.md) | 117 | `result-track:31ebf7c2347fc1d27d631e3eb38461e1cf81242799a25ec4797dadb54ec018f9` |
| 17 | `theorem` | [reverseTransport_succ_apply](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/reversetransport-succ-apply.md) | 123 | `result-track:776068638bc1669561a84c40c7b421499e45722ea9def9bca54063e8f1143687` |
| 18 | `theorem` | [edgePermAt_symm](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/edgepermat-symm.md) | 130 | `result-track:edb28073426e0b3948c0c501855fbd271107af720f01184ecb8f043f90ed52e4` |
| 19 | `theorem` | [reverseTransport_eq_symm_forward](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/reversetransport-eq-symm-forward.md) | 135 | `result-track:1430a7b0d5aa652084e0c4f1ee87ef0d32d18cb4edfbbd072ad2cfc5f9db8773` |
| 20 | `theorem` | [reverseTransport_forwardTransport](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/reversetransport-forwardtransport.md) | 148 | `result-track:6f88a6b2a1667bb0c768a687610d100a1e1e16b7ae09eecdc92d3003b9a75e99` |
| 21 | `theorem` | [forwardTransport_reverseTransport](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/forwardtransport-reversetransport.md) | 155 | `result-track:af9018ae3cd598a8c2e079975e84329e6ae24d547b631541edba71a78c61d79b` |
| 22 | `theorem` | [reversePrefix_eq_symm_forwardPrefix](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/reverseprefix-eq-symm-forwardprefix.md) | 161 | `result-track:d73fdc226ec63689c48d7f5876e885d497384b5792abd0ab3394ed99d89fed74` |
| 23 | `theorem` | [orderedTransport_forward](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/orderedtransport-forward.md) | 167 | `result-track:c8c852d26ff0b7b4b94418efd57442c691c243f9258513cffe6a25e872e6dade` |
| 24 | `theorem` | [orderedTransport_reverse](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/orderedtransport-reverse.md) | 173 | `result-track:fcac7e0b4d87455fb26785f48e0d46667474181b2411d16359d125ccd4f39d91` |
| 25 | `theorem` | [transport_forward_apply](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/transport-forward-apply.md) | 179 | `result-track:29ba9f309422c6bdb0f7ad9a0dcb5348333c8b394e1da51bec9186d65fd0f48d` |
| 26 | `structure` | [CyclicReindexing](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/cyclicreindexing.md) | 196 | `declaration-track:15acf4bbbfc5295fcfdd2df18024bfea97ea18fb0b5d92be409954016e3302e2` |
| 27 | `def` | [cycle](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/cycle.md) | 205 | `declaration-track:ec3490c58f6ab5a9d2edc7f6e4a6d977e58ffaf53d68dfc46339ec19bef11ba1` |
| 28 | `theorem` | [cycle_orbit](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/cycle-orbit.md) | 226 | `result-track:f4ade99e69c6cbae78173c3e130a9db78ae7eb1d9b75c371daa487f3f771983a` |
| 29 | `theorem` | [cycle_edge](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/cycle-edge.md) | 234 | `result-track:a5e2f96154fd07a07c8cd0ad5e97f96571dc12e4a8108a989e57cf47c0bead8a` |
| 30 | `theorem` | [cycle_direction](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/cycle-direction.md) | 242 | `result-track:951a9940803e5e01f5d87beea5d734b00975207af5196136959fe245a1040b3b` |
| 31 | `structure` | [CompleteCycleOrderWitness](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/completecycleorderwitness.md) | 255 | `declaration-track:55e4068794a58f4222d61644eeec55d276b128d798ffc9018eebd9149d062b73` |
| 32 | `theorem` | [completeCycleTransport_not_involutive](../../../../Combinatorics/CycleTransportNamespaced.lean/declarations/completecycletransport-not-involutive.md) | 262 | `result-track:dc141db6e7dcafd7af92d1b4285f1ad06098bb078e9ed4e5df3eac7609f2e862` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe2458a3d23e74d6864134bc39aef580f4866b91f94653b2294e4683c3998e89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

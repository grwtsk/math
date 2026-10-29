# Verification target: Network Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "044ae2532687927e8fa519e705756d6514a61b48",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `044ae2532687927e8fa519e705756d6514a61b48`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308.lean.json)

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
| 1 | `structure` | [FiniteProjectionOrigin](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/finiteprojectionorigin.md) | 22 | `declaration-track:f2ebbd90078e013cb99a7acd4f236dd29d6466f4faa8be0617bf10340bd130b3` |
| 2 | `def` | [FiniteProjectionOrigin.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/finiteprojectionorigin-valid.md) | 30 | `declaration-track:b7f5da0797048e7ccefca71655cddc153ba7752132307b0b51dc07f904a8074a` |
| 3 | `inductive` | [NetworkNodeKind](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/networknodekind.md) | 37 | `declaration-track:21e9f7463e5e0342373aad95e5bb4e5cf282e4f806b2c826c6f4544d6b8e0b39` |
| 4 | `structure` | [NetworkNode](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/networknode.md) | 49 | `declaration-track:940b19acd521caa928052fc7fddce52f3695fb05aa00a96ab1016a480be1f541` |
| 5 | `def` | [NetworkNode.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/networknode-valid.md) | 58 | `declaration-track:91dfe32e6e2a1e98704a40ce6f7db4c13734f4ac6db8568af3e958787f29ae8c` |
| 6 | `structure` | [NetworkEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/networkedge.md) | 67 | `declaration-track:624bd1a95d00896713dec605bd674d480680244cb3060cedb75fc3f9f0080754` |
| 7 | `def` | [NetworkEdge.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/networkedge-valid.md) | 73 | `declaration-track:c1525ee73312296ae1aa8adbb0732264d8cba5dc554fade8066b7b7c6a4468c4` |
| 8 | `structure` | [SelfAnnealedProjectionNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/selfannealedprojectionnetwork.md) | 83 | `declaration-track:5b75137ff3ead1d5d11062f2e1bd3973432360c1d8dff670e479d1bc54597937` |
| 9 | `def` | [SelfAnnealedProjectionNetwork.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/selfannealedprojectionnetwork-valid.md) | 89 | `declaration-track:4d2befd2e28f7f68c41c49bf50309d307d3f3f578360ac572dd28c15cd557e95` |
| 10 | `def` | [SelfAnnealedProjectionNetwork.CreatesTheoremAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/selfannealedprojectionnetwork-createstheoremauthority.md) | 98 | `declaration-track:d3be6bea87f995ed0b8c43e9bbaad9f1cd2fda3bcb39607b36ba52dd383f27de` |
| 11 | `theorem` | [selfAnnealedProjectionNetwork_has_no_theorem_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/selfannealedprojectionnetwork-has-no-theorem-authority.md) | 103 | `result-track:7e57c707d79df687e383247d216dc732cdf8939e18e85681a0f8a9db63b752cf` |
| 12 | `theorem` | [validSelfAnnealedProjectionNetwork_route_is_generic](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/validselfannealedprojectionnetwork-route-is-generic.md) | 109 | `result-track:c97e27ed7f5ce2e3adfb7fa685e7cdb02e0350dd867a316e69202f58c309582b` |
| 13 | `theorem` | [validSelfAnnealedProjectionNetwork_uses_admitted_final_snapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/NetworkPublic.lean/declarations/validselfannealedprojectionnetwork-uses-admitted-final-snapshot.md) | 116 | `result-track:a4ab14d6a96d5a8c63e431c9d8ceb82816197510be0607e3bbf43bd554b69dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=132a1bab83c95c4ccdd46292c516fa35274e83eef36892308d7ee7c28a629bd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Network/Variant90069a7dc6afc6f8464ae75cc2588e4f977d2758353352f48a670ce3e0b34308.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Basic Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90057dba8382f38a681cce5df48ac427c5c941e6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BasicBasic.lean/index.md) · [Full source](../../../../GeneralTopology/BasicBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90057dba8382f38a681cce5df48ac427c5c941e6`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TargetKind](../../../../GeneralTopology/BasicBasic.lean/declarations/targetkind.md) | 8 | `declaration-track:b641300c2103553a8760ba51c0fbfd17a2fb13b3cbe61143bcf2e5b21c4b48e2` |
| 2 | `inductive` | [PrimitiveKind](../../../../GeneralTopology/BasicBasic.lean/declarations/primitivekind.md) | 19 | `declaration-track:8ec3f77f80305d5a047e787dc56f4816b72d809ce250d789b97bd17e25002c99` |
| 3 | `def` | [TargetKind.isOpen](../../../../GeneralTopology/BasicBasic.lean/declarations/targetkind-isopen.md) | 25 | `declaration-track:1f7dcf237379601a9de15c0abaf55d165e9f8d71c8db643f48c8542c95921cd5` |
| 4 | `structure` | [SurveyTarget](../../../../GeneralTopology/BasicBasic.lean/declarations/surveytarget.md) | 30 | `declaration-track:9b938d811e4e20d85fe8d75519330907d9c2965e6b5376ce45c5f0f75e1d78a5` |
| 5 | `structure` | [FrameworkPrimitive](../../../../GeneralTopology/BasicBasic.lean/declarations/frameworkprimitive.md) | 38 | `declaration-track:6ddef16495748a517b29ed33fa0f3aa1ac4e916275212d0fefd26ed9270d6412` |
| 6 | `structure` | [OpenMention](../../../../GeneralTopology/BasicBasic.lean/declarations/openmention.md) | 46 | `declaration-track:0579d2c619d55170362f430308f3673e2d6265f615d37bd27772f25de4270a46` |
| 7 | `structure` | [PaperSource](../../../../GeneralTopology/BasicBasic.lean/declarations/papersource.md) | 52 | `declaration-track:bffda92103e9b7b37454e351c7ee61ea3d92fb6e8d73f8051ed84d2193b3a352` |
| 8 | `inductive` | [StatementTranslationStatus](../../../../GeneralTopology/BasicBasic.lean/declarations/statementtranslationstatus.md) | 60 | `declaration-track:addbc49076a264dade37484878016befccc0a2951fb7fe10cee34d0a716806d4` |
| 9 | `def` | [SurveyTarget.statementSurface](../../../../GeneralTopology/BasicBasic.lean/declarations/surveytarget-statementsurface.md) | 67 | `declaration-track:736a5043295e4242f187e7f513f8b2bb39754ebe807b074edf6c51af795e774f` |
| 10 | `structure` | [SurveyTargetStatement](../../../../GeneralTopology/BasicBasic.lean/declarations/surveytargetstatement.md) | 73 | `declaration-track:fd4f991686255a799e00aa4c6a44b4b9a8ab6932d2b39f67ded67e2149dcfc18` |
| 11 | `def` | [noProofHolePolicy](../../../../GeneralTopology/BasicBasic.lean/declarations/noproofholepolicy.md) | 79 | `declaration-track:d55aed9b915ea8361f2572dc5a171367e03a687112e702cc265b7802ce79706c` |
| 12 | `def` | [targetResidue](../../../../GeneralTopology/BasicBasic.lean/declarations/targetresidue.md) | 81 | `declaration-track:3903f19e0f513c14546285419378f8eccad4d86092a3f2f3ed60bdf376dd87b4` |
| 13 | `def` | [targetChecked](../../../../GeneralTopology/BasicBasic.lean/declarations/targetchecked.md) | 88 | `declaration-track:a510cd1c6dccedfebc21c86f0bb51d324f7ab3c08c26e577061524d65a530cdd` |
| 14 | `theorem` | [targetChecked_hasResidue](../../../../GeneralTopology/BasicBasic.lean/declarations/targetchecked-hasresidue.md) | 91 | `result-track:0a7001fda42f7e8bf3f2a72f242c758660aefe4554d8af3f580ff474e4134a13` |
| 15 | `def` | [targetStatement](../../../../GeneralTopology/BasicBasic.lean/declarations/targetstatement.md) | 95 | `declaration-track:c8a22f1fd78974ae48df4a2a18dd61ddbfcb8a82162dcaa2d224942db775c9e7` |
| 16 | `def` | [targetStatementChecked](../../../../GeneralTopology/BasicBasic.lean/declarations/targetstatementchecked.md) | 101 | `declaration-track:b65943abfb3b3e35924c187c393412afca61c370184300afe0998616b5ad987c` |
| 17 | `theorem` | [targetStatementChecked_hasResidue](../../../../GeneralTopology/BasicBasic.lean/declarations/targetstatementchecked-hasresidue.md) | 105 | `result-track:ef25b48f66084531b66a3c1777ad74e75549640fb3891c95eb91db305a8b8d68` |
| 18 | `theorem` | [targetStatement_status](../../../../GeneralTopology/BasicBasic.lean/declarations/targetstatement-status.md) | 109 | `result-track:a6b01f2f7a6390d9919d2d376b2087742cd7606776cd00681d538a1e58cfa40d` |
| 19 | `def` | [primitiveResidue](../../../../GeneralTopology/BasicBasic.lean/declarations/primitiveresidue.md) | 114 | `declaration-track:d2c23b49760102e098a550d70aef0a301a243195eb94f25a65fc04e198ecc358` |
| 20 | `def` | [mentionResidue](../../../../GeneralTopology/BasicBasic.lean/declarations/mentionresidue.md) | 121 | `declaration-track:b046bc8e0bb93ad867e56f7f218a58cfef87f86a132c02584068559c4b1e9430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ab7ac4ed309fcd6269f8fbc8855069adcff0668eda3d797abb4f65336b2f781 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant9334017f9f6a290a6d7952747f0a767ca2d2322b3f417e446e0d24c9e14d3797.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

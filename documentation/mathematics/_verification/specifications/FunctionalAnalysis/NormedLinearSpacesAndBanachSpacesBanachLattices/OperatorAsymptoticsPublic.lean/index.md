# Verification target: Operator Asymptotics Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfb16ba41f4228af919a76c67c53c21acd5f3029",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant03cd447c312821659dc41e015c7567e0add089c9dd64e51f7ee228ebaa98efd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfb16ba41f4228af919a76c67c53c21acd5f3029`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant03cd447c312821659dc41e015c7567e0add089c9dd64e51f7ee228ebaa98efd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant03cd447c312821659dc41e015c7567e0add089c9dd64e51f7ee228ebaa98efd8.lean.json)

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
| 1 | `theorem` | [isBigOWith_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigowith-id.md) | 31 | `result-track:93fb61df66fdca9200376f46fb81d8db706930da784b2b98d48095f9ba772a64` |
| 2 | `theorem` | [isBigO_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigo-id.md) | 34 | `result-track:7e0fc2438b9480758d3208bb5367e04529441c65d348aae712ce88dd5dbf5b13` |
| 3 | `theorem` | [isBigOWith_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigowith-comp.md) | 37 | `result-track:2641ddd3a7ce1cbc1f00855cd2f7cd43053b51b1dc93668495c6403ec510ea52` |
| 4 | `theorem` | [isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigo-comp.md) | 41 | `result-track:59f4def807062ba918dd090d29f629374cbbab105ddd71ddb47d42328402266d` |
| 5 | `theorem` | [isBigOWith_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigowith-sub.md) | 45 | `result-track:b849475282595879612a9e428ee29794ab34506e30e0ef25e720048dedcdfc38` |
| 6 | `theorem` | [isBigO_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigo-sub-source-edition-2.md) | 49 | `result-track:b098ba677a354ff53a943e448fdc60dece5c9eaf5d806ed3f7279cfbcef498e8` |
| 7 | `theorem` | [isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigo-comp-source-edition-2.md) | 63 | `result-track:b8a0094d5c55c59f380ff9a7d59e0c98cb89a82859e1133091ce4ec1899dbef3` |
| 8 | `theorem` | [isBigO_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigo-sub.md) | 66 | `result-track:68169d24e91645818b7af7bfdcac2c7195d1d639838e633a4ae92ece79dc177c` |
| 9 | `theorem` | [isBigO_comp_rev](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigo-comp-rev.md) | 75 | `result-track:9616d7b2c40f556a22a7c3d5df8eaee21f0ef1f0b59d634d6ce394f9147fe58d` |
| 10 | `theorem` | [isBigO_sub_rev](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorAsymptoticsPublic.lean/declarations/isbigo-sub-rev.md) | 78 | `result-track:5c7065e016ec73dfdce7e0ed7741c1aa6c9b37642c6fe3eea76341ac6f77b957` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9efbdcdf186634db9c413a8867b1c1f3b0bddea5414f1b14d9529744df9ec8ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant03cd447c312821659dc41e015c7567e0add089c9dd64e51f7ee228ebaa98efd8.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Asymptotics/Variant03cd447c312821659dc41e015c7567e0add089c9dd64e51f7ee228ebaa98efd8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

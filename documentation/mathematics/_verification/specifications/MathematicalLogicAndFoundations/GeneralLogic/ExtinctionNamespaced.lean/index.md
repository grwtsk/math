# Verification target: Extinction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d88517dff52d05b3460b985e5f786a9d02ed1585",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variantcbcdb6f73753095fe24fc49b389b42824514fa013bdcd9fbda98ece62d0b19d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d88517dff52d05b3460b985e5f786a9d02ed1585`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variantcbcdb6f73753095fe24fc49b389b42824514fa013bdcd9fbda98ece62d0b19d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variantcbcdb6f73753095fe24fc49b389b42824514fa013bdcd9fbda98ece62d0b19d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.Ricci.SurgeryFlow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FundamentalGroupDescriptor](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/declarations/fundamentalgroupdescriptor.md) | 14 | `declaration-track:04dcdadc9e1f7769f351ffdea8ed517e8c203a59cf4be467c79cd6be9769b0f9` |
| 2 | `structure` | [FreeProductFiniteAndCyclicFundamentalGroup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/declarations/freeproductfiniteandcyclicfundamentalgroup.md) | 18 | `declaration-track:2a227057ccf5f9ebb2fbce259035e52e627f9ec7da3ac76346bfac923a53299e` |
| 3 | `structure` | [FiniteTimeExtinctionHypotheses](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/declarations/finitetimeextinctionhypotheses.md) | 23 | `declaration-track:3e5124bc898012792f627b139a4382292f425210b2d466eb18d6c6a8813dbeb3` |
| 4 | `def` | [TimeSliceEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/declarations/timesliceempty.md) | 32 | `declaration-track:55c9e2f5af96ec9278b53556934a904bfe9fc666bed2d05cbf01d3e5c3654c4c` |
| 5 | `structure` | [FiniteTimeExtinctionCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/declarations/finitetimeextinctioncertificate.md) | 36 | `declaration-track:1c9d2f415710ce7fa8f533a846faf50ba83ab2166f8c80f42e218e82c82ae658` |
| 6 | `theorem` | [ricciFlowWithSurgery_finiteTimeExtinction_under_hypotheses](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/declarations/ricciflowwithsurgery-finitetimeextinction-under-hypotheses.md) | 44 | `result-track:da31b3320db54bbb21dd7635fc3604335ae925859c5690be0a30f2cdae1b68e9` |
| 7 | `structure` | [ClaimsFiniteTimeExtinction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/declarations/claimsfinitetimeextinction.md) | 57 | `declaration-track:1b85d8e2411b41aeb5386129b48f6190de1f36d352c8d8c109dd2886c6fabd94` |
| 8 | `theorem` | [finiteTimeExtinction_not_automatic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExtinctionNamespaced.lean/declarations/finitetimeextinction-not-automatic.md) | 61 | `result-track:514000a0fa56b5b10a70732b18bd74deb0759f6bf55f6411584b3bb013f5c704` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1aaf7c7c8e1ca43c53aa7228a598c5eef7d790b0e68a8a9e5b6ee0a3ba2484f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variantcbcdb6f73753095fe24fc49b389b42824514fa013bdcd9fbda98ece62d0b19d0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variantcbcdb6f73753095fe24fc49b389b42824514fa013bdcd9fbda98ece62d0b19d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

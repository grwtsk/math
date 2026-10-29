# Verification target: Extinction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ed0a2ee81967249023d75b30d41fb1859e4690b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ed0a2ee81967249023d75b30d41fb1859e4690b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.Ricci.SurgeryFlow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FundamentalGroupDescriptor](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/declarations/fundamentalgroupdescriptor.md) | 6 | `declaration-track:706c04487c05f82cb0746f097bc2553ef4ca1c6c7105821f371bd220e88a8230` |
| 2 | `structure` | [FreeProductFiniteAndCyclicFundamentalGroup](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/declarations/freeproductfiniteandcyclicfundamentalgroup.md) | 10 | `declaration-track:c511fa1ebe3abefbfc3c3c6a7158af5511336498475f9fc67a788cdc109c5900` |
| 3 | `structure` | [FiniteTimeExtinctionHypotheses](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/declarations/finitetimeextinctionhypotheses.md) | 15 | `declaration-track:2a07a9fe9a05fe11f07ff0c55784f6aa5c1e08edf2f9f84b90368776a0d49ea4` |
| 4 | `def` | [TimeSliceEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/declarations/timesliceempty.md) | 24 | `declaration-track:9518105a31b875a3f1d44458381693bca5270b03b17f0c9e5cb5ca898ba45b68` |
| 5 | `structure` | [FiniteTimeExtinctionCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/declarations/finitetimeextinctioncertificate.md) | 28 | `declaration-track:98ca1362652abe1c18f4a4e2c63de853286e77d6f0c14a37fc7d5de8236a1146` |
| 6 | `theorem` | [ricciFlowWithSurgery_finiteTimeExtinction_under_hypotheses](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/declarations/ricciflowwithsurgery-finitetimeextinction-under-hypotheses.md) | 36 | `result-track:94a139ac8cfc610d0b6cf154623f16c10dec947ba395e7b04b50843be39b6973` |
| 7 | `structure` | [ClaimsFiniteTimeExtinction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/declarations/claimsfinitetimeextinction.md) | 49 | `declaration-track:a22d33cbd80c2d27f148d709f09b92095f44e7d7db104773645ff99e6e0ce2bf` |
| 8 | `theorem` | [finiteTimeExtinction_not_automatic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Extinction.lean/declarations/finitetimeextinction-not-automatic.md) | 53 | `result-track:70d13154adde762d639ead8b2b99782a401320f77418955754bfbd2a83052956` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5696930ceb07bface3c557aaaa6060f171017073657f0c6838879c854cebce87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

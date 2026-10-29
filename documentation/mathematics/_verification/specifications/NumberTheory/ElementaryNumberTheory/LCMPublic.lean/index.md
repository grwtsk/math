# Verification target: LCMPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae4240824e7fe25f933673639318a75168bcf61a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae4240824e7fe25f933673639318a75168bcf61a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean.json)

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
| 1 | `lemma` | [factorizationLCMLeft_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcmleft-zero-left.md) | 26 | `result-track:78a92c7f1b552eaa6139422e7fca9904235d57cbeba9cfa1d1ff4f13f9658ca3` |
| 2 | `lemma` | [factorizationLCMLeft_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcmleft-zero-right.md) | 29 | `result-track:4e35edcc968fbc993133453004725192d3531e79705f8e6cebe06fecf37bc2f4` |
| 3 | `lemma` | [factorizationLCRight_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcright-zero-left.md) | 32 | `result-track:1c8d168b5112e572bbfc761712e58359f52f1ad0628c71c76ba9c5f77e653b59` |
| 4 | `lemma` | [factorizationLCMRight_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcmright-zero-right.md) | 35 | `result-track:7841eba73ca3439819a548328dd30d35696c83557390e93ffd24c4f679cad1f7` |
| 5 | `lemma` | [factorizationLCMLeft_pos](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcmleft-pos.md) | 38 | `result-track:ebef65b15c5dec46c5d9fd113b088fe5444f7e5b164ec8d2ca73bf32e27717c1` |
| 6 | `lemma` | [factorizationLCMRight_pos](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcmright-pos.md) | 47 | `result-track:c72cef51f3fd8e282889346c8388e9de8713ec38ed9982eaf8d867ef914a70f8` |
| 7 | `lemma` | [coprime_factorizationLCMLeft_factorizationLCMRight](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/coprime-factorizationlcmleft-factorizationlcmright.md) | 56 | `result-track:436e808b07fdb261c7e613e1b2fd14a65be0e0833883c224d21b9646e20f533c` |
| 8 | `lemma` | [factorizationLCMLeft_mul_factorizationLCMRight](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcmleft-mul-factorizationlcmright.md) | 67 | `result-track:a8d50f370ab0a6ff9ec69d561b5feb1e3e73fa94effb1da1db721a10c28e11aa` |
| 9 | `lemma` | [factorizationLCMLeft_dvd_left](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcmleft-dvd-left.md) | 75 | `result-track:2ba73967130ff825c131b4f27ff631b30a54d4e02a37b2030ff657018a9840b2` |
| 10 | `lemma` | [factorizationLCMRight_dvd_right](../../../../../NumberTheory/ElementaryNumberTheory/LCMPublic.lean/declarations/factorizationlcmright-dvd-right.md) | 89 | `result-track:eff546921e58d6540ecb2308645089e69cb18778bd9e8ae51d0832946c8a4aaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef898332a74af27a1fbda86b8b6b69f28023bd44ea1ceeb2ae34cad07a40146b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/LCM/Varianta95009177bd085ff3084bd84de6438fd6e9fdb15d544bc661c97edb8e765f06e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

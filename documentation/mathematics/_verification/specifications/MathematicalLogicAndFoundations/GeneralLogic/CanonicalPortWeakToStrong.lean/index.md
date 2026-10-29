# Verification target: GRWTSK.Logic.CanonicalPortWeakToStrong

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c0d321e0dd9b66fbf0aaf19905cc995689436db",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/CanonicalPortWeakToStrong.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CanonicalPortWeakToStrong.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CanonicalPortWeakToStrong.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c0d321e0dd9b66fbf0aaf19905cc995689436db`.

Source path: `GRWTSK/Logic/CanonicalPortWeakToStrong.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/CanonicalPortWeakToStrong.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.ExternalPTSSystemTransport`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalPTSSystemTransport.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CanonicalPortWeakToStrong.lean/declarations/refl-source-edition-2.md) | 10 | `declaration-track:bcc9655c863e8f2041a81cae9771c6d3290838adebfe2de271def68ed0f44150` |
| 2 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CanonicalPortWeakToStrong.lean/declarations/refl.md) | 20 | `declaration-track:2ad4da8b72de9237e6008d62ac0afc239746b8f99b608d80ec431d185726a3b0` |
| 3 | `def` | [canonicalPortSource](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CanonicalPortWeakToStrong.lean/declarations/canonicalportsource.md) | 37 | `declaration-track:05f144837bce345cf1dbc6a5b1bb3038fd7cc891b5fe65ae0c7938ceb0bdee64` |
| 4 | `def` | [canonicalPortWeakToStrong](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CanonicalPortWeakToStrong.lean/declarations/canonicalportweaktostrong.md) | 49 | `declaration-track:2233fd509e112e06b13a81d39c9172f5a031bfecec7c923bcf8316e248da15a3` |
| 5 | `theorem` | [canonicalPortStrong_of_weak](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CanonicalPortWeakToStrong.lean/declarations/canonicalportstrong-of-weak.md) | 58 | `result-track:e010bb8075a37b1afc7aa8587a670a11c633103936152379ff5e5cd16e8de6d1` |
| 6 | `def` | [canonicalPortWeakToStrong_identityTransport](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CanonicalPortWeakToStrong.lean/declarations/canonicalportweaktostrong-identitytransport.md) | 64 | `declaration-track:c240ba955ef3698686418bc634a9c5504d0f8abb9fe4822a8e0684eba476ff4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18c89d7c93565a32c9e1321920452e8f37c99179eba790626672d0c9f1473868 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/CanonicalPortWeakToStrong.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/CanonicalPortWeakToStrong.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

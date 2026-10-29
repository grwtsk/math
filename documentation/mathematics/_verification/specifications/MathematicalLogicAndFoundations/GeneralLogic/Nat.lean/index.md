# Verification target: Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "773962c05f6cf8d3b2dda607ba3eea17951e01d5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variant823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Nat.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Nat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `773962c05f6cf8d3b2dda607ba3eea17951e01d5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variant823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variant823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Bits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pairing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boolProdNatEquivNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Nat.lean/declarations/boolprodnatequivnat.md) | 27 | `declaration-track:f8a683a5fc7144204d50b099b45d281b0cd2adb45741b1cee232025b23cbacca` |
| 2 | `def` | [natSumNatEquivNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Nat.lean/declarations/natsumnatequivnat.md) | 37 | `declaration-track:e22d30cd141b33e537ba6d8a390948cc2556876679ac76a116f4e46e3ba83685` |
| 3 | `theorem` | [natSumNatEquivNat_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Nat.lean/declarations/natsumnatequivnat-apply.md) | 41 | `result-track:3d282e0a8261af9c7d64ffa342ce24d183dcad456c5a759a75be9d3d5b6b391e` |
| 4 | `def` | [intEquivNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Nat.lean/declarations/intequivnat.md) | 46 | `declaration-track:bc39de47cc235d14a3ccc71a1da84371de8402ac7416b644954dd21dd3d9d1c5` |
| 5 | `def` | [prodEquivOfEquivNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Nat.lean/declarations/prodequivofequivnat.md) | 51 | `declaration-track:42758082433443f2719e8a31bc15c9feb880ed3a3d71ee2f13cf01f94c644e84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d11b5ec8d0ea483861711bf7ff9fee75b0b9caa3671b624211d3555f1fd79a52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variant823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variant823e8f488ea0e122fddf4dbe884666089dbccd4cd42cce8074bd5b97f9f0abb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Twisted Bitfield Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccfd47eccad66b465c6c6ddcad13c981a3506801",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variantb82db6c4f2b7cc986c977d144387c1ceeb1a07401c6cd7489ae092fbdebd4a1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccfd47eccad66b465c6c6ddcad13c981a3506801`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variantb82db6c4f2b7cc986c977d144387c1ceeb1a07401c6cd7489ae092fbdebd4a1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variantb82db6c4f2b7cc986c977d144387c1ceeb1a07401c6cd7489ae092fbdebd4a1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BooleanBitfield](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/booleanbitfield.md) | 22 | `declaration-track:9ea789c64525c9d27cd07710bf6622fbe31cace4ca1d370bb2e50e9a630dd6ed` |
| 2 | `structure` | [BitfieldInvolution](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/bitfieldinvolution.md) | 25 | `declaration-track:6b66ac81403c8fb0816474c096cd1d3bb6146f1dfc133bc30599697f69c8196c` |
| 3 | `def` | [complementInvolution](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/complementinvolution.md) | 29 | `declaration-track:c9e8bb7efe1f61fb507517cfb33429fc9e26f4efcc9928bf0692e269b81ba95a` |
| 4 | `structure` | [MobiusMappingTorus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/mobiusmappingtorus.md) | 38 | `declaration-track:dc5f8fd7e55b487651eb104956bc261aef31288d7be069c28992d1485613c5ef` |
| 5 | `def` | [bitfieldMappingTorus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/bitfieldmappingtorus.md) | 43 | `declaration-track:2c3f08e747ee51de681ecd989ca2d9678eca0774fc11b6e8beee61571d71db53` |
| 6 | `structure` | [EquivariantEncoding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/equivariantencoding.md) | 55 | `declaration-track:846a9e71c470c56c3592881dbfe79f91a1290ca492c789537f6c5525b0b5b513` |
| 7 | `structure` | [MinimalBitWidthCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/minimalbitwidthcertificate.md) | 66 | `declaration-track:e16bbddda16e3be46e6ccc6ae1e78b53f852d35a3634ca4d8f749e7aba74dc0c` |
| 8 | `structure` | [BooleanTransitionRealization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/booleantransitionrealization.md) | 75 | `declaration-track:5c9cc82e7beecefda56995ac6f77bbc85c6730cc3bbf21e7d5dce3117663cd7d` |
| 9 | `def` | [phaseValue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/phasevalue.md) | 88 | `declaration-track:ac0585a292df454b050c9b8bf134b8e1b8895069934c94544da092363bbef999` |
| 10 | `theorem` | [complement_phase_equation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/complement-phase-equation.md) | 91 | `result-track:85f5aad0bbb50b0d7d79ead52844b41b4b88f29523a8d06da5dc12d08d185eae` |
| 11 | `structure` | [PhaseCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/phasecertificate.md) | 96 | `declaration-track:c5914200b41f9221d642af5e8aa06b64052d36e789ea613662cf19ae8825d4cd` |
| 12 | `theorem` | [PhaseCertificate.phaseEquation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfieldNamespaced.lean/declarations/phasecertificate-phaseequation.md) | 106 | `result-track:274ca182d5c3c11a72fa35efabab7dc91216c8cea89ee1c1f91491ef3cc1bc82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49dc2fe8b3a8875835796ea240c796849e7775f3ac69a8e48e84e2ff499cc084 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variantb82db6c4f2b7cc986c977d144387c1ceeb1a07401c6cd7489ae092fbdebd4a1c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variantb82db6c4f2b7cc986c977d144387c1ceeb1a07401c6cd7489ae092fbdebd4a1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

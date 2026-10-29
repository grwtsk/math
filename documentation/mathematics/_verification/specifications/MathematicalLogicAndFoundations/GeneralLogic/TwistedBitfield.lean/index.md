# Verification target: Twisted Bitfield

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b4c8a3ecaaf7f272c64ae6694fee5b8f62ced4c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variant6be3b5beffe4d44de3a2569fa14c8a46a890be08cf65199bf1b7e2c18e06c525.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b4c8a3ecaaf7f272c64ae6694fee5b8f62ced4c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variant6be3b5beffe4d44de3a2569fa14c8a46a890be08cf65199bf1b7e2c18e06c525.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variant6be3b5beffe4d44de3a2569fa14c8a46a890be08cf65199bf1b7e2c18e06c525.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BooleanBitfield](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/booleanbitfield.md) | 14 | `declaration-track:63062f9b2fed2f3385087a8b8aac110d32dafaf901d12fc57d0dac067f22ab7f` |
| 2 | `structure` | [BitfieldInvolution](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/bitfieldinvolution.md) | 17 | `declaration-track:bcc200d4560a439f5eb3e0d1035211dccb976a33c58520ea31597674a3cdbeaa` |
| 3 | `def` | [complementInvolution](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/complementinvolution.md) | 21 | `declaration-track:e3e9c3376527f071d299b98e0aadec24808742c4f2e48ad01af8cc6a9fe8336b` |
| 4 | `structure` | [MobiusMappingTorus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/mobiusmappingtorus.md) | 30 | `declaration-track:873d904ad041b18c357daa054e86ec79a29dff3dce1dba11628166460760c712` |
| 5 | `def` | [bitfieldMappingTorus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/bitfieldmappingtorus.md) | 35 | `declaration-track:72dc366e93f71961fa7697e79a1ff6cfb17c0fef561467f7a77f496a606ecf47` |
| 6 | `structure` | [EquivariantEncoding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/equivariantencoding.md) | 47 | `declaration-track:827f3a69bafa15f1b209deecabb5c44da120d6fc8922ec508f801001e8f7f5d4` |
| 7 | `structure` | [MinimalBitWidthCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/minimalbitwidthcertificate.md) | 58 | `declaration-track:2f18dd69dc5ad56575a29bb9ea7099dc5ff969719c4021eecb77d846ce286931` |
| 8 | `structure` | [BooleanTransitionRealization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/booleantransitionrealization.md) | 67 | `declaration-track:e2abb8d5f51475cba429c52bba139e166f3f02e51d338911ba04bc65cb3d93db` |
| 9 | `def` | [phaseValue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/phasevalue.md) | 80 | `declaration-track:4e258ed66d5b48d3e4e831b38b4ecd5133616bfee85d3aac06aec2d9afb49787` |
| 10 | `theorem` | [complement_phase_equation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/complement-phase-equation.md) | 83 | `result-track:5a43ef225b108435bbfe32a16597a30d48ee39d996509852eb8362f6efa3863c` |
| 11 | `structure` | [PhaseCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/phasecertificate.md) | 88 | `declaration-track:6540287ab9bbd286bed7610db951d7d0cc06e0ca2451bbee3e79dd644255086e` |
| 12 | `theorem` | [PhaseCertificate.phaseEquation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwistedBitfield.lean/declarations/phasecertificate-phaseequation.md) | 98 | `result-track:2f7038c774d127593643e3a633f6603e057726ad2251e61ce2cd01b1ea568b6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8bda671b840c33673028b2fc4a3baf9186d5ca69aa193d62bc0419fee65046e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variant6be3b5beffe4d44de3a2569fa14c8a46a890be08cf65199bf1b7e2c18e06c525.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/TwistedBitfield/Variant6be3b5beffe4d44de3a2569fa14c8a46a890be08cf65199bf1b7e2c18e06c525.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

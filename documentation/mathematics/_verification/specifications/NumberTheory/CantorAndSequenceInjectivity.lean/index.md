# Verification target: Cantor And Sequence Injectivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "072f48cedd17cff743b19705732244d481b21f46",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/index.md) · [Full source](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `072f48cedd17cff743b19705732244d481b21f46`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [Axis Expansion](../../../../NumberTheory/AxisExpansion.lean/index.md) — import line 20; pinned internal source present.
- `BitMatrix.Carrier.Address` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangular](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/triangular.md) | 43 | `declaration-track:ccd14ff12247e4138b156236de03a57680f85ec49a74e0a5ba22e6e2bd44de96` |
| 2 | `theorem` | [triangular_formula](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/triangular-formula.md) | 46 | `result-track:0c549ed33f2441d8ccc6d3a2df605947105a5ba760aa97c77616b16c39f2e692` |
| 3 | `theorem` | [triangular_succ](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/triangular-succ.md) | 52 | `result-track:fea07b92deb60e3808cefcf6a776bc1ab89d75457f519deb103e95829823bb1c` |
| 4 | `theorem` | [triangular_strictMono](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/triangular-strictmono.md) | 56 | `result-track:e1996a0e25e1f5f3e8602e37223169738a13fa320e8384c5ef2b27467f9a072c` |
| 5 | `theorem` | [pair_eq_triangular](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/pair-eq-triangular.md) | 61 | `result-track:17a894b08de5b38ab8a73e29a16ed68e825f3e06be26ee905526c2eec536eb3c` |
| 6 | `theorem` | [pair_lower](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/pair-lower.md) | 65 | `result-track:e2b2f182c30b4f9fc97db621b809c777266fe6c0d69da020cd3770d94da489ae` |
| 7 | `theorem` | [pair_upper](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/pair-upper.md) | 70 | `result-track:45f8f922dbf647af9bc231328f82d3bd9d8841ca0ccf3ad24d41a6c9e886bf59` |
| 8 | `theorem` | [pair_injective](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/pair-injective.md) | 75 | `result-track:7fe549e756c301bedfd8ca1851ad98d0b3dd2af3c6e3d0cef03325c230fa2663` |
| 9 | `theorem` | [pair_injective₂](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/pair-injective-source-edition-2.md) | 103 | `result-track:a0e5c9a02b67d2164373e3e67540bf4fe9a88a49051725c073113f3573f234ff` |
| 10 | `theorem` | [finiteSequenceCode_injective](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/finitesequencecode-injective.md) | 113 | `result-track:54a6a2bc3fa930c21872b597dc5dcdfb733419c3b32e139fb4bd9d5f42977139` |
| 11 | `theorem` | [specificationCode_injective](../../../../NumberTheory/CantorAndSequenceInjectivity.lean/declarations/specificationcode-injective.md) | 137 | `result-track:ea208277e735aff9feb11f556214469771465ed0f7ccb4b1007b2ac7dc144cee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=979588a11c4bb27910ccf48dd91596b718cc27acc26fc0ca70582187892ae568 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

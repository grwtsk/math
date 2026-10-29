# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalEndpointJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2f5f44f38e29ac1f1dd6d1e7bdd55cfa161b5ea",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2f5f44f38e29ac1f1dd6d1e7bdd55cfa161b5ea`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.EndpointCorrectedJet`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EndpointCorrectedJet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic`](../../../../../RealFunctions/RationalDyadicArithmetic.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverse](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/inverse.md) | 28 | `declaration-track:cf04608f94cd1b14c9d4bfdf24bcbdc09fe021251809a785fff6e9bde23fe433` |
| 2 | `theorem` | [inverse_refines](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/inverse-refines.md) | 31 | `result-track:6715e5bb6ec47e2957819787db7f348f13636a3beb5d447f8cfabe361df27a53` |
| 3 | `def` | [risingJet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/risingjet.md) | 53 | `declaration-track:c7e4351ad81450a5eb118a12339c72653d42ff7cffee7d4c8255af86efe27f7d` |
| 4 | `theorem` | [risingJet_refines](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/risingjet-refines.md) | 60 | `result-track:4f2da7d2c0a69eeb44908a032d531a280515c934c5a8f87bc80d6aae8f12aa2d` |
| 5 | `def` | [coefficientJet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/coefficientjet.md) | 71 | `declaration-track:d4d4bfd91051bcaae53b5a6be46553152f3beb523aa4f3ad632f7c6c0ca9873a` |
| 6 | `theorem` | [coefficientJet_refines](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/coefficientjet-refines.md) | 81 | `result-track:9e87fcd1f9605f62b364a737ce7a665ede7e7b9a220d2823bf09b8222fec6e11` |
| 7 | `def` | [point](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/point.md) | 101 | `declaration-track:ed2fcfe429322f7b53cce5e0fa7880ca2acc7d22d3ff4e969c76b18a1f0e53c6` |
| 8 | `theorem` | [point_sound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/point-sound.md) | 103 | `result-track:eb10d34ecb9599cfd14c24df3d73fa0db601b97d677530fff791c84c95addf72` |
| 9 | `def` | [prefix](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/prefix.md) | 107 | `declaration-track:0daa3e5abea999967e41e9f1c4e55530050a20cce90849f8a00e930847a49c8f` |
| 10 | `theorem` | [prefix_sound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/prefix-sound.md) | 116 | `result-track:d5c59ddac34dcfe3e72125904f8208abdcadea816e3323774fba206615f93112` |
| 11 | `def` | [assemble](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/assemble.md) | 148 | `declaration-track:74c541d70be8cc0ff54579d4250fca21652db083bf157249a7dc9ebc480f9a10` |
| 12 | `theorem` | [assemble_sound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/assemble-sound.md) | 156 | `result-track:5b5857830d8c8d69e4d166449ebf3b19ba64857eb1e2b710fea8e52105dce0d4` |
| 13 | `theorem` | [presented_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/presented-error.md) | 184 | `result-track:a2606eed00c4e5637ade860d63612ab3f7254d95bcd55bd51d1969470f720789` |
| 14 | `theorem` | [rising_zero_control](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalEndpointJet.lean/declarations/rising-zero-control.md) | 195 | `result-track:a9de67fd407e691e8146c07c6922b75f6831f793019473dc096304e50e692a38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38806e949d192bbb5d209ac4b274890eab466a5eb0c5969e58d7d94177996d81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/RationalEndpointJet.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Zeta

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54e04a9e889944134dd288a51947f2555b951806",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant75efb19cd0317b49ef560f0d297c1b0840561fd7ac3451561b4f16773789af62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54e04a9e889944134dd288a51947f2555b951806`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant75efb19cd0317b49ef560f0d297c1b0840561fd7ac3451561b4f16773789af62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant75efb19cd0317b49ef560f0d297c1b0840561fd7ac3451561b4f16773789af62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mobius` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ZetaSymbol](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zetasymbol.md) | 16 | `declaration-track:575270ec3f7c52607ed9f4fa7e1043f5db86b240232ac030e430891dfe7eced6` |
| 2 | `structure` | [CompletedZetaSymbol](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/completedzetasymbol.md) | 20 | `declaration-track:559d5a18ee69eef73100c65fb613c82dbf7973a35549a44e20bed6d8eeb69215` |
| 3 | `structure` | [ZetaMobiusIdentityAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zetamobiusidentityauthority.md) | 24 | `declaration-track:16d7c81aa5af30e7c711232c54871da2a4972a62bdfcbe2186283426d053787c` |
| 4 | `structure` | [ZetaAnalyticContinuationAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zetaanalyticcontinuationauthority.md) | 38 | `declaration-track:097eec54e2f9cb677783c66c1023bca38a02b8959ab2c10214288df5cd527779` |
| 5 | `structure` | [ZetaZeroLocationAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zetazerolocationauthority.md) | 47 | `declaration-track:e120375d17173252e218ec612db14bd1ad2957321ef424059a6732f429529c35` |
| 6 | `theorem` | [zeta_mobius_identity_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zeta-mobius-identity-authorized.md) | 54 | `result-track:6acad4816e51339401e1792d21a9897de1b89163814bfd566abee6269161a84c` |
| 7 | `theorem` | [zeta_continuation_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zeta-continuation-authorized.md) | 59 | `result-track:f2141576358e9c933512ba2bad9a06ae396be0fae61a294e7c067a307e9c517b` |
| 8 | `theorem` | [zeta_zero_location_authorized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zeta-zero-location-authorized.md) | 64 | `result-track:ac8e63146dda1a7ae4febeac1422255141c8f98cd9d2b9115e774531c04fd75e` |
| 9 | `def` | [ZetaSymbolOwnsAnalyticContinuation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zetasymbolownsanalyticcontinuation.md) | 70 | `declaration-track:ee6c4cdf23e2b16f9a650a25082240a50bb78d6c20e1d5af3c95cfabb69d09b8` |
| 10 | `def` | [ZetaSymbolOwnsZeroLocation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zetasymbolownszerolocation.md) | 75 | `declaration-track:b5a41405fde09b406a2f186170d31e86383a410f908e46f7f21827913a3e6633` |
| 11 | `theorem` | [zeta_symbol_not_continuation_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zeta-symbol-not-continuation-authority.md) | 79 | `result-track:db22cbacde54f01e307d7a2bf184e157996cc676896e892475d2ca5c373e06c0` |
| 12 | `theorem` | [zeta_symbol_not_zero_location_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Zeta.lean/declarations/zeta-symbol-not-zero-location-authority.md) | 85 | `result-track:7bd1f3cb92170968dd162e007687dc513922b06732781e7da508d273c417ecd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2efb9e72ff2a227038412795cda4191eeb7cb231e9d103da2138f449c473e410 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant75efb19cd0317b49ef560f0d297c1b0840561fd7ac3451561b4f16773789af62.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant75efb19cd0317b49ef560f0d297c1b0840561fd7ac3451561b4f16773789af62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

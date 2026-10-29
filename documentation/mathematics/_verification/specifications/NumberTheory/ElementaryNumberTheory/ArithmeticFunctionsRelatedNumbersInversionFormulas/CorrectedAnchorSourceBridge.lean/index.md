# Verification target: GRWTSK.NumberTheory.Moebius.CorrectedAnchorSourceBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33a8506cd5071c138f64306149aa0bc28606e122",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33a8506cd5071c138f64306149aa0bc28606e122`.

Source path: `GRWTSK/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.FiniteAnchorLogObservation`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteAnchorLogObservation.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyUnmatchedKernel`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyUnmatchedKernel.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correctedAnchorSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/correctedanchorsource.md) | 18 | `declaration-track:04f60e55a286c0b23e204f277e33aca907ba7060fad0b213b80f2399e3d6d4a4` |
| 2 | `theorem` | [correctedAnchorSource_eq_moebius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/correctedanchorsource-eq-moebius.md) | 25 | `result-track:c57d462fdbbd83b7eebac2ff0887ad34698123e33c52d3f36fb276a1a3e74f67` |
| 3 | `def` | [anchorLift](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/anchorlift.md) | 35 | `declaration-track:88ca82e66d2f0aea6f24d84e699306f55fd7374e6f534de944af6c0f930a6f89` |
| 4 | `theorem` | [anchorLift_selected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/anchorlift-selected.md) | 40 | `result-track:a40f4d4d8102b3873a10a6869ed3c0509f55feeabc940fe13b28a2347d011869` |
| 5 | `def` | [centeredAnchorDebt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/centeredanchordebt.md) | 56 | `declaration-track:935889ba5832e1ae2a4af0bf9ea8ee99b848e24192ce8c74a0a72ac73cfe4574` |
| 6 | `theorem` | [centeredSource_eq_anchor_add_debt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/centeredsource-eq-anchor-add-debt.md) | 59 | `result-track:0d421c1f2c7001e0d20d905441f75670075c41328ac0326e0d877bb773ee0e57` |
| 7 | `theorem` | [centeredAnchorDebt_selected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/centeredanchordebt-selected.md) | 66 | `result-track:2733b1302016aa3ff83f045b569960f7623c600fd5c7ccb69c0a6dfda9e62925` |
| 8 | `theorem` | [anchorLift_unmatched](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/anchorlift-unmatched.md) | 78 | `result-track:7555dcb5fdb0a9224237a2de8fa66e704d27fe4b59fe912dc70e3fea266e0748` |
| 9 | `theorem` | [centeredAnchorDebt_ten](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/centeredanchordebt-ten.md) | 93 | `result-track:151c91d4d77267ffb0a378712e82e65c1902b2acfd3e971bd0ee7e59d2951342` |
| 10 | `theorem` | [correctedAnchor_observation_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/correctedanchor-observation-injective.md) | 98 | `result-track:386fbbd2c4d3c0d82dd2190b2c6f5bda65494dd14fe5f9ec90f6b960d7df0d70` |
| 11 | `theorem` | [correctedAnchor_observation_actual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CorrectedAnchorSourceBridge.lean/declarations/correctedanchor-observation-actual.md) | 104 | `result-track:df67020a5ea39508522813a70daa3a2aea92cccc7e4a561a077b81ac0263414f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05dd65f6342bd49f4ff36ba05692c7fb625b7960d939b6196a0ab98cdf6a0ca0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CorrectedAnchorSourceBridge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyArithmeticRestrictions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d16fe5e6d37bd0b9eef28ca51b16c0b767dbb8c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d16fe5e6d37bd0b9eef28ca51b16c0b767dbb8c`.

Source path: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyRestrictedObservability`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyRestrictedObservability.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalFourFamilyCells](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilycells.md) | 23 | `declaration-track:22e4ed6e0c3e823fd1150a102b86efd7e9f55398843e09e9cd23333960c0967d` |
| 2 | `abbrev` | [CanonicalFourFamilyRestrictionConfig](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictionconfig.md) | 26 | `declaration-track:71365928ac1ee02ff6b9d931094b9709f82c6da218d218417090c6b7bfc3aef4` |
| 3 | `def` | [canonicalFourFamilyRestrictionPacket](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictionpacket.md) | 29 | `declaration-track:814922f3f582c73e4d3520ff44144fa475c7731df6db5cef2ef9290611c98a92` |
| 4 | `def` | [canonicalFourFamilyEmptyRestriction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyemptyrestriction.md) | 33 | `declaration-track:15ee88579b9a70e651fb287ffb7aed9178f7723a6c414bf28b229c07096dbbf8` |
| 5 | `def` | [canonicalFourFamilyFullRestriction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyfullrestriction.md) | 36 | `declaration-track:59c8dcb37d36478d210a788ec4664b44865c5bc7fe30c3c4096851fbbc68d119` |
| 6 | `theorem` | [canonicalFourFamilyRestrictionPacket_empty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictionpacket-empty.md) | 39 | `result-track:2d3ec7a67c9ecf40f9ec5147310548f441fc8dffbd2df50af4acb36dcb6cd94b` |
| 7 | `theorem` | [canonicalFourFamilyRestrictionPacket_full](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictionpacket-full.md) | 44 | `result-track:8140908d6cc10d6caf68d14d4266a4d2db05ff7ede018019dbd8493c2d02e974` |
| 8 | `theorem` | [canonicalFourFamilyRestrictionPacket_support_admissible](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictionpacket-support-admissible.md) | 51 | `result-track:1567ad704a7c6fd56a9afef6514af15e3cbe23ac8d0fdce90192c9912cc96309` |
| 9 | `def` | [CanonicalFourFamilyRestrictionDifferenceSet](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictiondifferenceset.md) | 67 | `declaration-track:ea3b9dcb9c6269d663e68ff1197dc182920b2f0d7c88d3ea4c644f86263ff8c4` |
| 10 | `theorem` | [canonicalFourFamilyRestrictionDifference_support_admissible](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictiondifference-support-admissible.md) | 72 | `result-track:f686c418d2d06b5d9c275932780f62920ebb0f4f39d56ae44acebe68cb41807b` |
| 11 | `def` | [canonicalFourFamilyRestrictionOmittedPacket](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictionomittedpacket.md) | 85 | `declaration-track:59c697d377025f159f6835196d2281da7cded657d961016bdee9b4fe76ccb696` |
| 12 | `def` | [canonicalFourFamilyRestrictionSignedCorrection](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictionsignedcorrection.md) | 90 | `declaration-track:d3e10c22fc22f3a736f545c7e08d81a032bc7579b7c8e6f5707527d3eb7429f9` |
| 13 | `theorem` | [canonicalFourFamilyRestriction_omitted_matrix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestriction-omitted-matrix.md) | 95 | `result-track:902f78510be7d2f2815d8e715d99e87f0fd4c737737bb928432fb49e0f13f634` |
| 14 | `theorem` | [vonMangoldt_eq_restriction_corrected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/vonmangoldt-eq-restriction-corrected.md) | 103 | `result-track:e216d10eb14a0bbb166909231cbc4c4b4d67fc8d3d5b16f57faebf8b8f629492` |
| 15 | `def` | [canonicalFourFamilyRestrictionCorrectedGreenCoordinate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyrestrictioncorrectedgreencoordinate.md) | 116 | `declaration-track:1381977d07e43cab7197cf0ef5723062a773e87214eebf9bec7f93c222efd016` |
| 16 | `theorem` | [centeredGreenPrimeCoordinate_eq_restriction_corrected](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/centeredgreenprimecoordinate-eq-restriction-corrected.md) | 124 | `result-track:f896519c3aaf6f49a940c31236dda6506025ef530edbeae9290e5b55fdd52e2b` |
| 17 | `def` | [canonicalFourFamilyTerminalRestriction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyterminalrestriction.md) | 134 | `declaration-track:fc23b5efdec1cb211fa392a264e1febaa76a63f2c2ec339c2a4d658ed34ff330` |
| 18 | `theorem` | [canonicalFourFamilyTerminalRestriction_mem_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyterminalrestriction-mem-difference.md) | 144 | `result-track:343dfab2fef7bcf2af6866a7887aec3d8d5f9087e851cc8a0c9c72244bbaa747` |
| 19 | `theorem` | [canonicalFourFamilyTerminalRestriction_erasure](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyterminalrestriction-erasure.md) | 153 | `result-track:24ce6f2e6632e447889725b062065c0a49c4365df09cc95d23f2f71acea64a4f` |
| 20 | `theorem` | [canonicalFourFamilyTerminalRestriction_output_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyterminalrestriction-output-zero.md) | 164 | `result-track:d296e7d9ff4943091fcda009ada771490b72a6f5af930c16b6a456d3405ff100` |
| 21 | `theorem` | [canonicalFourFamilyTerminalRestriction_source_energy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamilyterminalrestriction-source-energy.md) | 173 | `result-track:f1f674660aae6ccd634668f0e83670b6cd60467630b70e25a824140a1ef4c640` |
| 22 | `theorem` | [not_restrictionLowerFrame_of_terminal_amplitude_ne_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/not-restrictionlowerframe-of-terminal-amplitude-ne-zero.md) | 189 | `result-track:936212e61a514298f2354ef7680fa27ecffece2f65f72c811c6cd7c962079d7d` |
| 23 | `theorem` | [canonicalFourFamily_terminal_amplitude_three](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/canonicalfourfamily-terminal-amplitude-three.md) | 203 | `result-track:1643cd50b557fbaa920a430f93a3800142377a036996c07f912e829a98b313b7` |
| 24 | `theorem` | [not_restrictionLowerFrame_three](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/not-restrictionlowerframe-three.md) | 226 | `result-track:48c963d581d836c17b7789c352c0146418340342e2b91b4f9b76d100b22767c6` |
| 25 | `theorem` | [restriction_three_realizable_kernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/restriction-three-realizable-kernel.md) | 236 | `result-track:0e7ec5a5b41632f8ed1e478be479057e86b80b3806c67bf8b6cc0dc64bdbaea3` |
| 26 | `theorem` | [no_restriction_lower_frame_at_all_scales](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CanonicalFourFamilyArithmeticRestrictions.lean/declarations/no-restriction-lower-frame-at-all-scales.md) | 247 | `result-track:b1a1b808e0382a0d93bf42be7bc18d4c8a441cb5d416616be0cc308a31997153` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17e63a709355a6a3b908b1d2126bfef8eb24c5bcdc080ff1998439073b94a2bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

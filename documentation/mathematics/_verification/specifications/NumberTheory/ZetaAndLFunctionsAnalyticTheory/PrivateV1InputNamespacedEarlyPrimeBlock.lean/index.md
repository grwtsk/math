# Verification target: Private V1 Input Namespaced Early Prime Block

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14ae066d409c98d84bdcbec04d3e2107a675a22f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant6b48f4e45259984b99db01863a872e69e1a3c736a613ad6d0894da6b494d199c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14ae066d409c98d84bdcbec04d3e2107a675a22f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant6b48f4e45259984b99db01863a872e69e1a3c736a613ad6d0894da6b494d199c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant6b48f4e45259984b99db01863a872e69e1a3c736a613ad6d0894da6b494d199c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [earlyPrimeBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/earlyprimeblock.md) | 34 | `declaration-track:22301d69c64cc10735d9f7974f1ec7ef9d8372ab8aa94519dc1cbc94861eb0c9` |
| 2 | `def` | [complementaryPrimeBlocks](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/complementaryprimeblocks.md) | 38 | `declaration-track:d1efbf72ef75432c0c4516ca3e13f829118a4131d45076c05917abff14b1d27b` |
| 3 | `theorem` | [earlyCorrelation_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/earlycorrelation-ge.md) | 43 | `result-track:2ba15e7441a586160f5c7cfdc111032100e73b7a91f8707008f94e697b4e0022` |
| 4 | `theorem` | [earlyTailTest_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/earlytailtest-le.md) | 53 | `result-track:c8a629f6a3e2c9b404045072d79fa92e2cc5716213a4725022d876e291b98c60` |
| 5 | `theorem` | [earlyPrimeBlock_le_mass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/earlyprimeblock-le-mass.md) | 78 | `result-track:3e90964adb9f778acb75afe437a239587bfbb0204da5c0ef6c3ec6a695bea3ea` |
| 6 | `theorem` | [earlyPrimeMass_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/earlyprimemass-ge.md) | 97 | `result-track:84c9e0cec6023bd70a03ba0ffc20761b32764a42d91201eccae90d2d7d631f55` |
| 7 | `theorem` | [earlyPrimeBlock_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/earlyprimeblock-le.md) | 106 | `result-track:09a261f084e45a9d7da3b87259ea7538405902a37c911d32d5c8cfdab9b347ad` |
| 8 | `theorem` | [earlyPrimeBlock_eventual_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/earlyprimeblock-eventual-bound.md) | 118 | `result-track:6934b0f30c309488a34083c3f0500864b22a11d9ab7b429cf2981353e5a3799a` |
| 9 | `theorem` | [primeSum_eq_early_add_complement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/primesum-eq-early-add-complement.md) | 128 | `result-track:ae9089643b0b33468ec1b9b73e4ba3d00fc7aa288b681cf8932ea9055bff56ca` |
| 10 | `theorem` | [complementary_repayment_of_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputNamespacedEarlyPrimeBlock.lean/declarations/complementary-repayment-of-tail.md) | 137 | `result-track:5d32b7ba1a53c173fe0003d7751e1f5537db98851b83080707b54fd04ff8b626` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be49fb7f7be2dc372c7fe802d34a9119df63485e2260009757fa4bde5d2bf402 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant6b48f4e45259984b99db01863a872e69e1a3c736a613ad6d0894da6b494d199c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant6b48f4e45259984b99db01863a872e69e1a3c736a613ad6d0894da6b494d199c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

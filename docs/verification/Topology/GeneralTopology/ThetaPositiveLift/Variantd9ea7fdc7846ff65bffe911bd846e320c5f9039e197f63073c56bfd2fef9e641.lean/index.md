# Verification target: GRWTSK.Topology.GeneralTopology.ThetaPositiveLift.Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4c772affe713513a5bd8e67e361a9c7a8da00d7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4c772affe713513a5bd8e67e361a9c7a8da00d7`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiInfiniteDerivativeTape` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiDerivativeModeWeight](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiderivativemodeweight--ca3317121560ae0d78f87979.md) | 37 | `declaration-track:ca3317121560ae0d78f87979e2d5f180d73a3d0e3a6a13d2cb9da6d82584442b` |
| 2 | `theorem` | [thetaPhiDerivativeModeWeight_pos](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiderivativemodeweight-pos--b462d7cc201e5d33c7ef3d60.md) | 42 | `result-track:b462d7cc201e5d33c7ef3d6068f347622de420aded17ace5eb672a4745902798` |
| 3 | `theorem` | [thetaPhiGaussianTerm_scaled_eq_modeWeight](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphigaussianterm-scaled-eq-modeweight--4d5e39c4e2bd7a44ebbbde1b.md) | 49 | `result-track:4d5e39c4e2bd7a44ebbbde1bf89c8e45c0a979708d67b4a9e9f454522b25a8ad` |
| 4 | `def` | [thetaPhiDerivativeModeValue](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiderivativemodevalue--b326cde7740bf0f63de747aa.md) | 68 | `declaration-track:b326cde7740bf0f63de747aa26e667f3bafe3a7e45874835923806e09fc37f94` |
| 5 | `theorem` | [thetaPhiDerivativeModeValue_summable](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiderivativemodevalue-summable--a5cbb0ae46c97bdf02ed9a4c.md) | 75 | `result-track:a5cbb0ae46c97bdf02ed9a4c6a52e575b2f9c1f0135a7245ecf932024c70798a` |
| 6 | `theorem` | [thetaPhiDerivativeTapeValue_eq_tsum_mode](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiderivativetapevalue-eq-tsum-mode--8ebb3c2bdfc18f542a8618f6.md) | 114 | `result-track:8ebb3c2bdfc18f542a8618f6cf58edafe11ae057e7d02b0b4b4df40bad8133f6` |
| 7 | `def` | [thetaPhiDerivativeTapeTruncation](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiderivativetapetruncation--c525ffb2d66669e9ecd54357.md) | 173 | `declaration-track:c525ffb2d66669e9ecd5435774e9b79be5c7eb89e0fc40bc49a9abd06bd1c4f6` |
| 8 | `theorem` | [thetaPhiDerivativeTapeTruncation_tendsto](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiderivativetapetruncation-tendsto--46f07970e08f9e25fc1d7bc4.md) | 179 | `result-track:46f07970e08f9e25fc1d7bc4cb94841f46cb57848890c3ea257d88c2cafb1a43` |
| 9 | `theorem` | [det_column_fintype_sum](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/det-column-fintype-sum--152fb8876226e8127b55f907.md) | 206 | `result-track:152fb8876226e8127b55f907996006649f0a15ce129a4adaaaa7b397966cd314` |
| 10 | `def` | [thetaPhiModeChoiceSignedDet](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphimodechoicesigneddet--91d2c9b5f3bc322bac7598bd.md) | 222 | `declaration-track:91d2c9b5f3bc322bac7598bd6955f68a7397e225032156a1976e6fb3578838bc` |
| 11 | `theorem` | [signedJetDet_truncation_eq_mode_sum](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/signedjetdet-truncation-eq-mode-sum--22339802792d776a80ac66b5.md) | 232 | `result-track:22339802792d776a80ac66b5438b464df9081e644786f077230cf9ad5b7b70d2` |
| 12 | `def` | [ThetaPhiModeChoiceSignedNonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphimodechoicesignednonnegative--46d7584d9a965244e9ef02c3.md) | 272 | `declaration-track:46d7584d9a965244e9ef02c3656be12fef3565f785cb00b0ac6c2be10404358c` |
| 13 | `theorem` | [signedJetDet_truncation_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/signedjetdet-truncation-nonnegative--7823145a81c50d5b942d0b59.md) | 279 | `result-track:7823145a81c50d5b942d0b5943cb0fdd159ba5ca620a7fff5667c6c111dc468a` |
| 14 | `theorem` | [signedJetDet_truncation_tendsto](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/signedjetdet-truncation-tendsto--09ead694003422b73bee3395.md) | 295 | `result-track:09ead694003422b73bee339546a7169c9c54f2d2071cae2d791bc06cde0f871a` |
| 15 | `theorem` | [thetaPhiInfiniteSourceJet_signedRegular_of_modeChoice](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiinfinitesourcejet-signedregular-of-modechoice--06939690c4417fe3cd885689.md) | 338 | `result-track:06939690c4417fe3cd88568982b4a61c374e1404ab14f4a2fa8372557e016913` |
| 16 | `theorem` | [thetaPhiAllRankSignedJetCriterion_of_modeChoice](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantd9ea7fdc7846ff65bffe911bd846e320c5f9039e197f63073c56bfd2fef9e641.lean/declarations/thetaphiallranksignedjetcriterion-of-modechoice--fa19f99b40faa8d5f3d0c790.md) | 353 | `result-track:fa19f99b40faa8d5f3d0c790ec18ca4fac7f6b88434d8b2ad8bf3ed7ea617a96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

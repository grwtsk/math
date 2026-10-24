# Verification target: GRWTSK.Topology.GeneralTopology.ThetaPositiveLift.Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "520bd44ad1867a6a9fce65fc325d6f919dcac3b5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `520bd44ad1867a6a9fce65fc325d6f919dcac3b5`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiInfiniteDerivativeTape` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiDerivativeModeWeight](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiderivativemodeweight--f35534547a832c9b5a69985c.md) | 29 | `declaration-track:f35534547a832c9b5a69985c290da2d84b47b246e42de43db57e9f4e2445e0b5` |
| 2 | `theorem` | [thetaPhiDerivativeModeWeight_pos](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiderivativemodeweight-pos--343811800eaac8e9aa5b5b65.md) | 34 | `result-track:343811800eaac8e9aa5b5b65d148d9de5828b4dc9663af130924a4b47998dd2e` |
| 3 | `theorem` | [thetaPhiGaussianTerm_scaled_eq_modeWeight](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphigaussianterm-scaled-eq-modeweight--90b5a243cdb20a9ff5fb4cee.md) | 41 | `result-track:90b5a243cdb20a9ff5fb4cee88f25ecfcc49b9395f1f974bcd0ea44222a2fad4` |
| 4 | `def` | [thetaPhiDerivativeModeValue](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiderivativemodevalue--6845c85043ea7756448d6d3e.md) | 60 | `declaration-track:6845c85043ea7756448d6d3edc88940113b5c415e3e5ec70a66c16f98a80240a` |
| 5 | `theorem` | [thetaPhiDerivativeModeValue_summable](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiderivativemodevalue-summable--22fd3c37f837238dda58c04a.md) | 67 | `result-track:22fd3c37f837238dda58c04a9e7bdb2b44b8e1135f0d126f2f2d8e1e1b5df837` |
| 6 | `theorem` | [thetaPhiDerivativeTapeValue_eq_tsum_mode](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiderivativetapevalue-eq-tsum-mode--92b9065d9b7bb8d16d93b57d.md) | 106 | `result-track:92b9065d9b7bb8d16d93b57d863d9afe271c51ead3d7039bec80856ddf96147d` |
| 7 | `def` | [thetaPhiDerivativeTapeTruncation](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiderivativetapetruncation--3edb52f623660bb6acbe0031.md) | 165 | `declaration-track:3edb52f623660bb6acbe0031555e8363885f15700065b3cdab3e6b71abd86a5a` |
| 8 | `theorem` | [thetaPhiDerivativeTapeTruncation_tendsto](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiderivativetapetruncation-tendsto--1dd702c6b0841cbd7eafcc5c.md) | 171 | `result-track:1dd702c6b0841cbd7eafcc5c990ab2b0e432c1b79e9270abcb7da742a8ee7a6c` |
| 9 | `theorem` | [det_column_fintype_sum](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/det-column-fintype-sum--02a88e4fca16cbdf7d1bcf86.md) | 198 | `result-track:02a88e4fca16cbdf7d1bcf8699e849820d3706c03c91b92d2abada6bc2f2a63e` |
| 10 | `def` | [thetaPhiModeChoiceSignedDet](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphimodechoicesigneddet--987e91316bebdccc033ca2dd.md) | 214 | `declaration-track:987e91316bebdccc033ca2ddf89668b9c561ba6c0713446f09b1accc9a88336d` |
| 11 | `theorem` | [signedJetDet_truncation_eq_mode_sum](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/signedjetdet-truncation-eq-mode-sum--82bdff434e3ec53e807340e0.md) | 224 | `result-track:82bdff434e3ec53e807340e018c66ddb90632560e717e3aa9f936d41af069ea2` |
| 12 | `def` | [ThetaPhiModeChoiceSignedNonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphimodechoicesignednonnegative--1245c3d044905be3b8381429.md) | 264 | `declaration-track:1245c3d044905be3b8381429e988950d6e9d67c2b6df39cc214e5899f922fef4` |
| 13 | `theorem` | [signedJetDet_truncation_nonnegative](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/signedjetdet-truncation-nonnegative--8bfa09320432c12d21000fd4.md) | 271 | `result-track:8bfa09320432c12d21000fd4df059c05f625c5847c67b1887f42605f11af7200` |
| 14 | `theorem` | [signedJetDet_truncation_tendsto](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/signedjetdet-truncation-tendsto--a7c31049f25847542aeb2ed7.md) | 287 | `result-track:a7c31049f25847542aeb2ed71b1c5c0122b6d5836f505980a3bacd23ba9e8981` |
| 15 | `theorem` | [thetaPhiInfiniteSourceJet_signedRegular_of_modeChoice](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiinfinitesourcejet-signedregular-of-modechoice--8ddcc6c95ebcf4b6d1ca368d.md) | 330 | `result-track:8ddcc6c95ebcf4b6d1ca368d5ec52dddd50884e123305181c71930191bfecf34` |
| 16 | `theorem` | [thetaPhiAllRankSignedJetCriterion_of_modeChoice](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/declarations/thetaphiallranksignedjetcriterion-of-modechoice--9e7385f40a46c54d94c18557.md) | 345 | `result-track:9e7385f40a46c54d94c18557b3c5c9fb11ba89b7ae5169ba851131ed117b1615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

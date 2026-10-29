# Verification target: GRWTSK.NumberTheory.Height.WeierstrassJetDenominator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa69112d19301b64b957e771f64bc721fb4d76cb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa69112d19301b64b957e771f64bc721fb4d76cb`.

Source path: `GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Height/WeierstrassJetDenominator.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet`](../../../../CommutativeAlgebra/WeierstrassRescaledJet.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Height.RationalVectorAffineHeight`](../../../../NumberTheory/RationalVectorAffineHeight.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficients](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/coefficients.md) | 24 | `declaration-track:9034ae22287ea972a2a64c49c89905fe088f034fd7b0a18af05fd7f0596db478` |
| 2 | `theorem` | [coefficient_den_dvd](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/coefficient-den-dvd.md) | 28 | `result-track:1b60582b44e39b08a2d77326b80ef29c72df0c13a40fc56015b5590584cb5b37` |
| 3 | `theorem` | [common_den_dvd](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/common-den-dvd.md) | 42 | `result-track:b5b169939bc2c323dbfe9f05c358ed5b2cbdec7b855395bc25f34cb5263d56cc` |
| 4 | `theorem` | [coeff_X_mul_at](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/coeff-x-mul-at.md) | 51 | `result-track:61c4ef993fef5560a8e4285836b54d57721a0b10184ec6bc2369933371910d26` |
| 5 | `theorem` | [geometric_coefficient](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/geometric-coefficient.md) | 58 | `result-track:6cff7cf0bea4ec96e3b7feee6e17e3733f0e7f06baabb2813178985eebe39618` |
| 6 | `theorem` | [numerator_one_mod](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/numerator-one-mod.md) | 76 | `result-track:ea182d58a2bf69f13b7365f800415c5021a60f5d4f0f04d194d07e503b4c4e20` |
| 7 | `theorem` | [cancel_power](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/cancel-power.md) | 89 | `result-track:6afde4b7c4637bc13c7d93f91153718f3332b9ce2c1153fd5c2d8266aa9c750e` |
| 8 | `theorem` | [one_mod_clears](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/one-mod-clears.md) | 112 | `result-track:b4b2e9b42a2cb06f8357cd672f1bc2e426b6a4bc6a482295a5910ad6ac9dfde5` |
| 9 | `theorem` | [one_mod_denominator](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/one-mod-denominator.md) | 135 | `result-track:1e86283b0c8466f0a47217df9a91180466ac62e410aa89ebb925608a5d399ae2` |
| 10 | `theorem` | [sharp_coefficient_denominator](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/sharp-coefficient-denominator.md) | 143 | `result-track:c86cf304f524cf7ad173027360cc389473fdb6a87c875a78bd719c28a81cbd6c` |
| 11 | `theorem` | [sharp_common_denominator](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/sharp-common-denominator.md) | 153 | `result-track:77d39eb369508eecac73562c74b6924620ab239120b0a8d753ca94f8ad6a921f` |
| 12 | `theorem` | [power_exceeds](../../../../CommutativeAlgebra/WeierstrassJetDenominator.lean/declarations/power-exceeds.md) | 165 | `result-track:2fe4d56f68f985b18118445cf3f545282a157d7c6c60f68ad2851c9791ffd311` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8493077e8acb47c71d36ed89ffd6f1f1ca8e7ffd7bd036d031df5db3e40a523 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean","GRWTSK/_verification/specifications/NumberTheory/Height/WeierstrassJetDenominator.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

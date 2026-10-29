# Verification target: Boolean Space Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ca7d3b65a6971b1390b107986406a1ee91222a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variantfb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ca7d3b65a6971b1390b107986406a1ee91222a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variantfb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variantfb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitStream](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/bitstream.md) | 16 | `declaration-track:e2b49bc76f30cf9dc559f3a6d3461c21fe083fd30e23740ccac223a883a8e07d` |
| 2 | `abbrev` | [BooleanState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/booleanstate.md) | 19 | `declaration-track:36411d50b463cdb14d94eda4afb1f16c07e02933723e714f04e8f0ec7b5b76a1` |
| 3 | `def` | [xorBit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/xorbit.md) | 22 | `declaration-track:910658689edac55a8f2d13763cedfdd06c2c23b4fd55949eda906621f5cc2d8d` |
| 4 | `theorem` | [xorBit_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/xorbit-self.md) | 25 | `result-track:dc8feb70b87a257689a5b9e15a9bef5af8322aebb75393cdf94d30fbd5be2a68` |
| 5 | `theorem` | [xorBit_false_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/xorbit-false-right.md) | 29 | `result-track:03471e505e704ae55df839992fd436c924b86ed8289baf752b3b9aeca353ec83` |
| 6 | `theorem` | [xorBit_cancel_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/xorbit-cancel-left.md) | 33 | `result-track:7b97032cfa90642fcb12f00ff14d99297d00f7aabeb6f37a6ffdd5db7fb10d19` |
| 7 | `structure` | [DesignatedCantorRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/designatedcantorrepresentation.md) | 42 | `declaration-track:393b4b69feea2e5ecd6c12c37c6b80df28df5c71e1f008b0c7db77729e829585` |
| 8 | `def` | [symbolicCantorRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/symboliccantorrepresentation.md) | 52 | `declaration-track:c04a433da18dbf9d70ee8f133bcfb91bd06ba2c5b0d602d429bb843ab92602ef` |
| 9 | `theorem` | [symbolicCantorRepresentation_theta](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/symboliccantorrepresentation-theta.md) | 57 | `result-track:09267f46025690c441bc67c1b8dbb528c07c71304fdfd816e24701fcbeb7a5c4` |
| 10 | `def` | [digits](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/digits.md) | 64 | `declaration-track:eb3bc6934345c49c6a40f5619c2c25373962399c4412cef5e2b35c4eb9a8deb6` |
| 11 | `theorem` | [theta_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/theta-injective.md) | 68 | `result-track:5350e389a348d2b332f24297b22edcb1dee8639833b1e27fcd1081e1cf2249f2` |
| 12 | `theorem` | [theta_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/theta-surjective.md) | 72 | `result-track:eac40f4cf7f217e18d0cb97cec95ae689c6428c78dac8c4a3cab60c47550c51d` |
| 13 | `theorem` | [digits_theta](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/digits-theta.md) | 77 | `result-track:387a82723c887f38f801f9943d238c6deb8d8da5f5d0237e3356609882bbba1d` |
| 14 | `theorem` | [theta_digits](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/theta-digits.md) | 84 | `result-track:ac0932429340da05ba2c508880e0ccc3c5b110a91955be9789af8a8fe96d43f9` |
| 15 | `def` | [zeroScalar](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/zeroscalar.md) | 97 | `declaration-track:a1060465c43e2266754b1bed5b8d1716a8f223a8467f7255a9edacae013fa34d` |
| 16 | `theorem` | [DesignatedCantorRepresentation.digits_zeroScalar](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/designatedcantorrepresentation-digits-zeroscalar.md) | 102 | `result-track:9ab1245a68b4400dc13ff167190cfcf33fba38e823d420e19dc060f734b3e8b5` |
| 17 | `def` | [distinguishedInterpreter](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/distinguishedinterpreter.md) | 108 | `declaration-track:2239c383286e8d28b8cd73ba8a271469949a1a56dafd6e2f1fc5dda687cd8034` |
| 18 | `def` | [discrepancy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/discrepancy.md) | 120 | `declaration-track:a7f66ec61c7b8453277bac6ac8594730a6e35f9a000d0a9f6f7545d176ad0e42` |
| 19 | `def` | [baselineEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/baselineequiv.md) | 132 | `declaration-track:2a1ae2223b82842f25ece902d8716451d0e28a51f26377a597b006f691da0fee` |
| 20 | `theorem` | [baselineEquiv_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/baselineequiv-apply.md) | 157 | `result-track:b6405eb778d4e01ca02805253ce23b5a094afed61f38f2baddef16d7b50b8e40` |
| 21 | `theorem` | [baselineEquiv_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/baselineequiv-symm-apply.md) | 168 | `result-track:78ce0ad1556262de4716642a859d78f5f64ba7b878e8be61d65ef80b53ef26a7` |
| 22 | `theorem` | [distinguishedInterpreter_eq_baseline_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BooleanSpaceEdition3.lean/declarations/distinguishedinterpreter-eq-baseline-iff.md) | 182 | `result-track:370f01339b9eb9329aaf34b20b92d09edad8dfd4b8c2573a323dfb03388edb5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85a4c78c758141d7420629311167fa3dfbb8d03899d4b2d9ec79b76c819d6f12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variantfb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSpace/Variantfb5d94b6c442d4b2d2b98351eb68e2aed534836bb4c2c01e392c417442c8c776.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

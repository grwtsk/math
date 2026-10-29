# Verification target: Continuous Map Interval Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d4076e5690878047b39bc5a7f83fc473504a0ba",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d4076e5690878047b39bc5a7f83fc473504a0ba`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ProjIcc` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IccInclusionLeft](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/iccinclusionleft.md) | 32 | `declaration-track:8609a9e8636d20f27e959801ed8538f1ecce4a54a23fe6fd2e42bbf0fe5012a8` |
| 2 | `def` | [IccInclusionRight](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/iccinclusionright.md) | 36 | `declaration-track:365f08c4e13e297f530874ba379655e24fda0b3ddaa55a3eb0b68076ddd9b6fb` |
| 3 | `def` | [projIccCM](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/projicccm.md) | 40 | `declaration-track:30c839263164268c0a11be3839a1c246f80ecb212f8c3800caba94155c723e1b` |
| 4 | `def` | [IccExtendCM](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/iccextendcm.md) | 45 | `declaration-track:bfc3cccf0883e9d0bbc4659498cd00662ba36ee8f7e1aed7d31aa3f38dc018d4` |
| 5 | `theorem` | [IccExtendCM_of_mem](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/iccextendcm-of-mem.md) | 50 | `result-track:16693d7d89a4a3bb3d5220138d85e95e3e4f37f9f62b4301aca5fc2bed02804f` |
| 6 | `def` | [concat](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/concat.md) | 57 | `declaration-track:2be74f08a0e9803023eed48528597af83ffcaaafd327dd805701dd669d9a9430` |
| 7 | `theorem` | [concat_comp_IccInclusionLeft](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/concat-comp-iccinclusionleft.md) | 69 | `result-track:fdaea5007b4561be9083da50bb9cf5137837ba457d7db1374e6a4120836333fd` |
| 8 | `theorem` | [concat_comp_IccInclusionRight](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/concat-comp-iccinclusionright.md) | 74 | `result-track:33e519883ecc38b4abf72a1c8372ea19683c0b383eb6f9a23491d990e40a3ccc` |
| 9 | `theorem` | [concat_left](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/concat-left.md) | 83 | `result-track:ee9ca3a40dbad4e20c8f0bbfb94550364829b4cb95d9c8a36114cb7fade8d29e` |
| 10 | `theorem` | [concat_right](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/concat-right.md) | 89 | `result-track:24de1089b26d0fb80eb845d19a970ad1b1b8d1cce711992a59ab3ed927b910f0` |
| 11 | `theorem` | [tendsto_concat](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/tendsto-concat.md) | 94 | `result-track:7d4bdd5cf9badc77f3bb331d0982f89a5cea896986f0165be1d74fb4067209a6` |
| 12 | `def` | [concatCM](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/concatcm.md) | 129 | `declaration-track:5db10ce68089ac5b676db70f385e1d564aedcb70507eefe966e74bb95e9efc39` |
| 13 | `theorem` | [concatCM_left](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/concatcm-left.md) | 142 | `result-track:c4ef6421ff9a41bd5f8137987880f1188f99ca675bd0834a37929de062cd5d5e` |
| 14 | `theorem` | [concatCM_right](../../../../GeneralTopology/ContinuousMapIntervalNamespaced.lean/declarations/concatcm-right.md) | 148 | `result-track:d17bef28ecd4323edcced416457b581d0ee35d850dc057c03569345fda51ddc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90adf2c98afbe0160ce3bd94459a3da72218669289147380fa5212c71a9a969c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Interval/Variant0c0bc557feb331f674c20862dd182d2dec46396ccd00483d3fb758b58f430524.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

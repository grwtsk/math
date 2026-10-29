# Verification target: Away

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a954896f6d07858f13853b918602b2b2ddc148f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Away/Variant51b9eb299ca3b99251f4e07f7abc44a93420428f62729b04617867456abe31a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Away.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Away.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a954896f6d07858f13853b918602b2b2ddc148f`.

Source path: `GRWTSK/Algebra/GroupTheory/Away/Variant51b9eb299ca3b99251f4e07f7abc44a93420428f62729b04617867456abe31a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Away/Variant51b9eb299ca3b99251f4e07f7abc44a93420428f62729b04617867456abe31a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AwayMap](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap.md) | 43 | `declaration-track:1d4f48cd719d731b25f507d381c6b01bfeb532189b7fc0660b3aa525a12fc8a3` |
| 2 | `def` | [AwayMap.invSelf](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap-invself.md) | 48 | `declaration-track:84829cfc8e24f72fe4d4dcf9cb63c8de79637b0183547027ee0a0d905c953b90` |
| 3 | `def` | [AwayMap.lift](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap-lift-source-edition-2.md) | 53 | `declaration-track:d99a8cdbf759c96b01def4dbae600f450cf4468e491d4a0842a398f73b1ac480` |
| 4 | `theorem` | [AwayMap.lift_eq](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap-lift-eq-source-edition-2.md) | 61 | `result-track:92bfcca309886eacf318efb1d712fd022cf4851543e10ca3756e34991db67dff` |
| 5 | `theorem` | [AwayMap.lift_comp](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap-lift-comp-source-edition-2.md) | 65 | `result-track:bc1eac497f9b3ca9b75cdd0f62d531689740bc9d14334e5c00fdb9a49f82c91c` |
| 6 | `def` | [awayToAwayRight](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaytoawayright-source-edition-2.md) | 70 | `declaration-track:d8ac105207d1032b100aa098c81e6811d242f0b90aef77aa0c8e0b062f43dea2` |
| 7 | `def` | [AwayMap.negSelf](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap-negself.md) | 92 | `declaration-track:2227604cba67b88734a32a7145248100c174dcfea72f0e15641e575294a84a0c` |
| 8 | `def` | [AwayMap.lift](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap-lift.md) | 98 | `declaration-track:37c65a06ebbc7c24904b6e3adb5d6f9cd0ee1bd856084e11eea9fb12014e0288` |
| 9 | `theorem` | [AwayMap.lift_eq](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap-lift-eq.md) | 108 | `result-track:8ca5876d845984599c699f8e488bc336a108078bf94b8497c66e7b25abe90fe1` |
| 10 | `theorem` | [AwayMap.lift_comp](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaymap-lift-comp.md) | 112 | `result-track:b439f54f51db9ea809c47798f0ea62d8b157f1bee897d9d7c37ba755fe0778d8` |
| 11 | `def` | [awayToAwayRight](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/awaytoawayright.md) | 117 | `declaration-track:187062224efd6eb74f32ac116b8590fa1d501145d02c1c9c450026f2a98ef867` |
| 12 | `abbrev` | [Away](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/away.md) | 138 | `declaration-track:b4758aea213775c688cf32ca79081a8a261ede4f5789b0baf09bb4b907697f74` |
| 13 | `def` | [Away.invSelf](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/away-invself.md) | 146 | `declaration-track:cb9a6bbdedfbd86b60d2611ddc0561458c76dbd194209351c59cadced938703e` |
| 14 | `class` | [of](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/of.md) | 153 | `declaration-track:0265c767c4e6854d24aabfb0a5d6f810ba704298a3871791f829df47a3803b73` |
| 15 | `abbrev` | [Away.monoidOf](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/away-monoidof.md) | 154 | `declaration-track:dd9d7435b60097acadbc46e8bdad05f406514b84e16d7ad6755dd2cc74bdf79d` |
| 16 | `theorem` | [Away.mk_eq_monoidOf_mk'](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/away-mk-eq-monoidof-mk.md) | 158 | `result-track:082dd2d980e91101629c9664dd108fc9841fcd59d8c57dc8098eb4539a6dfbbe` |
| 17 | `def` | [Away.mulEquivOfQuotient](../../../../GroupTheoryAndGeneralizations/Away.lean/declarations/away-mulequivofquotient.md) | 166 | `declaration-track:ac8c330cc92690a89b146b8bf1911978eefa747e4a552008c0aeeed27aaad029` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=551fb3c1d1178ee90d0d8d742a4adcb3abd6cfd48d5630c3408f3ade1c0eefda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Away/Variant51b9eb299ca3b99251f4e07f7abc44a93420428f62729b04617867456abe31a9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Away/Variant51b9eb299ca3b99251f4e07f7abc44a93420428f62729b04617867456abe31a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

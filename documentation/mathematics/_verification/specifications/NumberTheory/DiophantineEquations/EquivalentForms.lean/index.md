# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83d4d63c726a3885f6c456da78c461e92663c021",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/index.md) · [Full source](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83d4d63c726a3885f6c456da78c461e92663c021`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement`](../../../../../NumberTheory/DiophantineEquations/ABCStatement.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logHeight](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/logheight.md) | 12 | `declaration-track:eba159bcefcb52594102b8e074bf9d5889fc11f21be6fddaaa2746902e40d5c6` |
| 2 | `def` | [logRadical](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/logradical.md) | 15 | `declaration-track:d089d08f2b356fd905ee78bb3047f6cc3d2986462b082194838108bf21efc2eb` |
| 3 | `def` | [quality](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/quality.md) | 19 | `declaration-track:4c1f6524304d5ada1eea246b80c5ddec40d120aed3cddf92504af20fcb5683e9` |
| 4 | `theorem` | [real_c_pos](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/real-c-pos.md) | 24 | `result-track:8146ee17529a1c2614993bfa367fe941c4afba071149a4162ffb12b0884e00c1` |
| 5 | `theorem` | [real_radical_pos](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/real-radical-pos.md) | 26 | `result-track:3e30ee8d6990fe095881333510b8c6ecafb0c4359b7e5ac87818e09567ae6a6e` |
| 6 | `theorem` | [logRadical_pos](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/logradical-pos.md) | 28 | `result-track:743db44ea65d571efdaffdf4a1cdf00ce3b38d0300cbb7ffa138eb2b35bfda52` |
| 7 | `theorem` | [bound_iff_log_bound](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/bound-iff-log-bound.md) | 33 | `result-track:aed8995da010c3f09f5f1a3def46c91dbfb1cfaecc35570c007259ab132d4bb4` |
| 8 | `theorem` | [log_bound_iff_quality_bound](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/log-bound-iff-quality-bound.md) | 43 | `result-track:c05cbc14ff6ded7289be4aa75158779b8c52d93385dc3f671d64842b8540782c` |
| 9 | `theorem` | [power_lt_height_iff_quality](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/power-lt-height-iff-quality.md) | 51 | `result-track:73800cd8f5eea8f4f986acb80bc8afd73d9a8c62177c38e969932a28a0f47764` |
| 10 | `def` | [ABCLogBound](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/abclogbound.md) | 63 | `declaration-track:8423448b2f6549bf0d4f409e338734e4594a95e38209853961e6cfb167c201ed` |
| 11 | `def` | [ABCQualityBound](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/abcqualitybound.md) | 69 | `declaration-track:a5502adf9b1187c0c6f4afb061e29f4c958490a9222a21017ca3ad44a61ac6c9` |
| 12 | `theorem` | [abcBound_iff_logBound](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/abcbound-iff-logbound.md) | 73 | `result-track:23950111311c16ad581041dfa988cb7023444f39ef0a76cedfcd4dbad8e27170` |
| 13 | `theorem` | [abcLogBound_iff_qualityBound](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/abclogbound-iff-qualitybound.md) | 82 | `result-track:97c5f1700ef7bf9e0d0516e121c13ea8c19b9a4463096bfd7a982fbf5af72b51` |
| 14 | `theorem` | [abcConjecture_iff_logarithmic](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/abcconjecture-iff-logarithmic.md) | 90 | `result-track:b5b28e6f5dff2fb3c3e17724792ab1affc0d3c6f550faa9edbb9eb99f2f8f05e` |
| 15 | `theorem` | [abcConjecture_iff_quality](../../../../../NumberTheory/DiophantineEquations/EquivalentForms.lean/declarations/abcconjecture-iff-quality.md) | 94 | `result-track:0c2a6db6b1b6053a9194dc79eaa416f08ed5b3800fd42eedb812cdea234ede5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6156a7e9df94858bdcde9c072243de0c24d145159c89134021ffdebfada7a499 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

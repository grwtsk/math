# Verification target: Non Integrable Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b27625c17376b5dafbccc3339bbdb5d5288acc5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/NonIntegrablePublic.lean/index.md) · [Full source](../../../../SpecialFunctions/NonIntegrablePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b27625c17376b5dafbccc3339bbdb5d5288acc5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter_aux](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter-aux.md) | 54 | `result-track:c1a3a33c185f4dbe1c1c7017dd08556e54a789833b0baa81462fb515e21ce59d` |
| 2 | `theorem` | [not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter.md) | 100 | `result-track:ac97d3c6c572eb2e19f47797d7402b4430c7b253e8b7fd36cb6acf8afb5f9f3b` |
| 3 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_filter](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-filter.md) | 129 | `result-track:576b6d78497ab2121e9f8dc491feee200240d787a92ebb5f5cb395895e86baeb` |
| 4 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_within_sdiff_singleton](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-within-sdif.md) | 140 | `result-track:7e5f2f71ba37415fc7033cedaae9e5ec173cc1c3f3bf948c456be728713872ac` |
| 5 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_punctured](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-punctured.md) | 163 | `result-track:c8b13756e2f580a9afd040e92e7ff83ad5fa128cf4a976fa04f4edd2ca9c19df` |
| 6 | `theorem` | [not_intervalIntegrable_of_sub_inv_isBigO_punctured](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/not-intervalintegrable-of-sub-inv-isbigo-punctured.md) | 173 | `result-track:ee18378402e4a7728b432d70d6c4299990ba73a25c2a514a49e871fb3346113e` |
| 7 | `theorem` | [intervalIntegrable_sub_inv_iff](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/intervalintegrable-sub-inv-iff.md) | 190 | `result-track:ef2d26be0bbb0a69968245b7c3f3b7ce5a52012641edc3f6b96fcaab62e6b9c5` |
| 8 | `theorem` | [intervalIntegrable_inv_iff](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/intervalintegrable-inv-iff.md) | 203 | `result-track:3b4a1cfaf62492d7e222234ff7c5eddfe611a8932210ec13d9920735a601241f` |
| 9 | `theorem` | [not_integrableOn_Ici_inv](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/not-integrableon-ici-inv.md) | 208 | `result-track:e74b7a7586840a0c7086b9081c4df29acfe18c42db831af9d1077b80486c8481` |
| 10 | `theorem` | [not_integrableOn_Ioi_inv](../../../../SpecialFunctions/NonIntegrablePublic.lean/declarations/not-integrableon-ioi-inv.md) | 219 | `result-track:2ba195e2228344abc1f3ce3978704e268238b16e46137f8cf94de41b227ccb55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c2a7038b9adafa6d49861bdfdf214280e9fee02a4788ca8204502cab7c16cc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Set Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81da7fb21f70a5b62d8aa4d5341fe8fe3362aa5f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantbb0b3a5dd7af53eac9c15d0f8d63f47de89f26bcbe248f1e66e28cf8e8475da2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81da7fb21f70a5b62d8aa4d5341fe8fe3362aa5f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantbb0b3a5dd7af53eac9c15d0f8d63f47de89f26bcbe248f1e66e28cf8e8475da2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantbb0b3a5dd7af53eac9c15d0f8d63f47de89f26bcbe248f1e66e28cf8e8475da2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [monotoneOn_iff_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/monotoneon-iff-monotone.md) | 32 | `result-track:47e0e00438da6e4d7b4ad4459fd9d7835e287c5f81e29b54e7eb4ae29592ab08` |
| 2 | `theorem` | [antitoneOn_iff_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/antitoneon-iff-antitone.md) | 36 | `result-track:790479484b10ab47a631083ff63ac30c98ebd13e2427f4d5ef0439fca0f68fa9` |
| 3 | `theorem` | [strictMonoOn_iff_strictMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/strictmonoon-iff-strictmono.md) | 40 | `result-track:8780257378ab4700be20d3573f790269a89a5c946c3bba54aaf45e160b9dc156` |
| 4 | `theorem` | [strictAntiOn_iff_strictAnti](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/strictantion-iff-strictanti.md) | 44 | `result-track:49dd8eaa4239d2859b2217bba8f9e033becc91410c2a9ef5694a9d68b33f5e96` |
| 5 | `theorem` | [not_monotoneOn_not_antitoneOn_iff_exists_le_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/not-monotoneon-not-antitoneon-iff-exists-le-le.md) | 56 | `result-track:ce9a57919d6b1aef7780d46860c378d5ae132dc52b048cf54f22404c9bcd8bd9` |
| 6 | `theorem` | [not_monotoneOn_not_antitoneOn_iff_exists_lt_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/not-monotoneon-not-antitoneon-iff-exists-lt-lt.md) | 65 | `result-track:8ea0e6fa60c468971c227bce61889a2f6f538adacfbe0afd09bbecec62ffe3d5` |
| 7 | `theorem` | [Monotone.inter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/monotone-inter.md) | 81 | `result-track:b4129bc27bd562e0901b09828f7e3598883cccc961c825002a322bc46265b0c8` |
| 8 | `theorem` | [MonotoneOn.inter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/monotoneon-inter.md) | 85 | `result-track:89cfbb95003fc2aecb9db3411e786d69d4748fab6562a42e6c2feb8fe3630da9` |
| 9 | `theorem` | [Antitone.inter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/antitone-inter.md) | 89 | `result-track:ff7ae907e050c9027681cc1c0c50f7ed2e255068652b584030d2bff31cfb0bc5` |
| 10 | `theorem` | [AntitoneOn.inter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/antitoneon-inter.md) | 93 | `result-track:f00680fbd3b08cae31fbce6eaac3507602100d0cf36395d166dd3d39842d4cc2` |
| 11 | `theorem` | [Monotone.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/monotone-union.md) | 97 | `result-track:733ba533ca3b93f63da481a9cfb4d0d743644688a2ea0464e95c973a6466d72f` |
| 12 | `theorem` | [MonotoneOn.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/monotoneon-union.md) | 101 | `result-track:9633199cf1ce6c3c3cb8347e29cfd75fbf796e0988a503950ecdb20675eb38e4` |
| 13 | `theorem` | [Antitone.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/antitone-union.md) | 105 | `result-track:db0c3be849cb029b5258636e75cdd1c67e7e60e7c4d4debfa13fd0ea5d98ff69` |
| 14 | `theorem` | [AntitoneOn.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/antitoneon-union.md) | 109 | `result-track:54beb6677a5f3613910cbb52f985aa829fbb5b8f37c6bed817b9acafd1ab1e43` |
| 15 | `theorem` | [monotone_setOf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/monotone-setof.md) | 115 | `result-track:aaaf7923d2378869491db3792f4eb541a67d998371809da836f6f1af559b8bc9` |
| 16 | `theorem` | [antitone_setOf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/antitone-setof.md) | 118 | `result-track:dc6a74e4eff631dc86bb245a4968d53a33d46fb8cc8e6e6e3ff0f4540ac82aec` |
| 17 | `theorem` | [antitone_bforall](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetOrderNamespaced.lean/declarations/antitone-bforall.md) | 122 | `result-track:8fa6a46f9c6b306aaa8c9cf51b09df70b3af31c007b4c7af620d163cf381ce7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eecd4d64b62881256853976f6955a134168191a7586c6df3a89911dd68efa414 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantbb0b3a5dd7af53eac9c15d0f8d63f47de89f26bcbe248f1e66e28cf8e8475da2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantbb0b3a5dd7af53eac9c15d0f8d63f47de89f26bcbe248f1e66e28cf8e8475da2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

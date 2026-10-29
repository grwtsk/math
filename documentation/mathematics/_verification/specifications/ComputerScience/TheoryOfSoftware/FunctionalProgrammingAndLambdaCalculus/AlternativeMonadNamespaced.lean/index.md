# Verification target: Alternative Monad Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eea00fd7e601cac63ee9ca51d0c0f558c0e37d98",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eea00fd7e601cac63ee9ca51d0c0f558c0e37d98`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Control.OptionT` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AlternativeMonad](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/alternativemonad.md) | 49 | `declaration-track:7a03d313968af29cce25fb2be526bc4ee59b8714a9b847f31d0461001f4b7335` |
| 2 | `class` | [LawfulAlternative](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/lawfulalternative.md) | 55 | `declaration-track:a283e7b44c4376e21040f83efeacbdf95b6f9b8c48deaf1db0cc12ca99108535` |
| 3 | `theorem` | [mapConst_failure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/mapconst-failure.md) | 76 | `result-track:5361db09f0a96549979e5c54363def6a78e7d7a66f54a0a490f31097bd03453a` |
| 4 | `theorem` | [mapConst_orElse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/mapconst-orelse.md) | 80 | `result-track:7a5465d8acf313cab5def1a538d38e84bc51ef8596fac7cc357058fa962fcc03` |
| 5 | `theorem` | [failure_seqLeft](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/failure-seqleft.md) | 84 | `result-track:a6e596ce320fcb54b3db16a1eb78a50619e110e48b297752b8ded57293b46db8` |
| 6 | `theorem` | [failure_seqRight](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/failure-seqright.md) | 88 | `result-track:ecfa411809e0850e7a23d04d28f34af011ea8e4c034aa8e8ac23f9900b7ad241` |
| 7 | `theorem` | [failure_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/failure-bind.md) | 96 | `result-track:4f35db6c3e5e4d84add9ae39d8e5ed2d9ccd0982da5c8fc72086cbd102103776` |
| 8 | `theorem` | [seq_failure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/seq-failure.md) | 104 | `result-track:223d03b0c4e9c1b11a2a51c6c416029dfabe40db861871c26a0faee47036ce20` |
| 9 | `class` | [LawfulAlternativeLift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/lawfulalternativelift.md) | 113 | `declaration-track:15305e989e5bc2ddaf6a1848bf3ce95c0ef86baf1690f43dafcdb79477a29b99` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-4.md) | 125 | `declaration-track:4549f2a6ea88228ae7d3992f7d915ee33be3a97d25e9febc1260271ae95c11b2` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-9.md) | 127 | `declaration-track:a4224fe7faa358ae1ec529c5b762f83e1a5ee9c878639cbcc355555adb14cb36` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-5.md) | 139 | `declaration-track:47d80d20f0b2365a3617b4f987206f5cee7f8c1aca7cfa0281ae786c583a2032` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-8.md) | 141 | `declaration-track:6bcd596629a8c83971b14969018b49157ade7fe57970cbcbc87a02c1680248fa` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance.md) | 157 | `declaration-track:04fafc49781408e0248f57d3514ed1b42f8557042f3bec0df6dcf4cb4cb96ff1` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-12.md) | 159 | `declaration-track:dfca097a485b9e422e7e00cf127ea7e9fb7edea87d7d34e1153f7dc90555c64b` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-2.md) | 168 | `declaration-track:060d5fdd8ec18fe946fa67f2c070941aa4b646471ed74049c3d23f860b580483` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-6.md) | 177 | `declaration-track:56d3a6c1c6178ec30e376fb1d85ab16285f146a2732d6b0b0cae3f6194cb40b1` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-10.md) | 179 | `declaration-track:b7c909e24815a62eaefb2ef8588fbcd75eab616e0e55154a793912009da8aa5d` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-7.md) | 187 | `declaration-track:5c15b0bf58e1b9de320433a1654091b2386e5f8de02d1277face002e4b7d9abc` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-3.md) | 195 | `declaration-track:068b4973cc0c84af8c75fe2da896a68b6e25707282158ff58d180ccf5ec67078` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-11.md) | 197 | `declaration-track:ce7dca58b207decdd89f3eaf7e29a8870a3aedd1d1730576a0ed5da46ea4304e` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AlternativeMonadNamespaced.lean/declarations/instance-source-edition-13.md) | 201 | `declaration-track:f3dd19707064863d2b88ee7d31774e8ef8faf2e8540620a8ad2baf836f80c068` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ebe0eedd4592d8902a2525cb56da9e6cccdba2a4b70d60d2b562fd034ec3fd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlternativeMonad/Variant16ebaf13a8da90bacf29778827f0c766834459a33f83af76404cc3f96cc9ca8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

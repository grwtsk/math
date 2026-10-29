# Verification target: Basic Basic Namespaced Public Edition19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41b07c7775abee953f2981546452a9b8344ccfc0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1b0ed0dd8aef37276189b2fa54c81be3a44570f021bbe7b94cacc9a89a3c0b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41b07c7775abee953f2981546452a9b8344ccfc0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1b0ed0dd8aef37276189b2fa54c81be3a44570f021bbe7b94cacc9a89a3c0b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1b0ed0dd8aef37276189b2fa54c81be3a44570f021bbe7b94cacc9a89a3c0b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [WP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/wp.md) | 62 | `declaration-track:abc73081df9f760d628ceab0fca545919b5ce58eb3058c14b3f84e33a5ca6b17` |
| 2 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/macro-rules.md) | 70 | `declaration-track:eadc313d4b19ae61f2c14870080760aedd4a040866a02585d1b0ea72cf59c319` |
| 3 | `def` | [unexpandWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/unexpandwp.md) | 78 | `declaration-track:09d2f868ab0acdb660ae1152472c66586d27a899addf7f4788d2355c11e0c610` |
| 4 | `instance` | [Id.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/id-instwp.md) | 85 | `declaration-track:3a4be53b6eab5c638aaa5a77da2c39d23d35e8d97e996d22a975122827897cd4` |
| 5 | `instance` | [StateT.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/statet-instwp.md) | 88 | `declaration-track:4f9d9058ca832e606a9869b51d2171661522276f19803bed4461f4c8e124e22a` |
| 6 | `instance` | [ReaderT.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/readert-instwp.md) | 91 | `declaration-track:872998aca8d51f48a805e412166feb1afe16b569141b54d2d689ea8f0f859f6f` |
| 7 | `instance` | [ExceptT.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/exceptt-instwp.md) | 94 | `declaration-track:8b858e97ca2b3d0cdb33773c828df4e0abfa392b2c2ec95ec19cef5ea18ea713` |
| 8 | `instance` | [OptionT.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/optiont-instwp.md) | 97 | `declaration-track:202c6a2f1a7078a2ce20e283f22b46d8ad5bf6987981570b841fd657a0cea0d5` |
| 9 | `instance` | [EStateM.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/estatem-instwp.md) | 100 | `declaration-track:03d8a9532cb0ff95b09408fd40e286657efaa4964824acd1e82b1c327249ddd3` |
| 10 | `instance` | [State.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/state-instwp.md) | 113 | `declaration-track:905d9b0656d3befc5bfd65837b6720f30bd9fa67c8a8458958feb0efed2131ea` |
| 11 | `instance` | [Reader.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/reader-instwp.md) | 115 | `declaration-track:c0150969151b22832a255021b589620b42d0748e4b95128ef22c21b1efb6e3ac` |
| 12 | `instance` | [Except.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/except-instwp.md) | 117 | `declaration-track:d902426691c13358a31428c58d05171c76815727c22f633d0c76fd873714fffc` |
| 13 | `instance` | [Option.instWP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/option-instwp.md) | 119 | `declaration-track:e90c2c8d4794d8a3706d4e44fc13717e33a757cde2997c1666f82540f379528b` |
| 14 | `theorem` | [EStateM.of_wp_run_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicEdition19.lean/declarations/estatem-of-wp-run-eq.md) | 127 | `result-track:c71c814de2779ffc9fbbeb603687bdd1c506d541f6e8c730f89cd5ed3adc26b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=639475c9fee9f62072e9f55202b3e032d9109611efa71db7587b8c087fd863c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1b0ed0dd8aef37276189b2fa54c81be3a44570f021bbe7b94cacc9a89a3c0b28.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1b0ed0dd8aef37276189b2fa54c81be3a44570f021bbe7b94cacc9a89a3c0b28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

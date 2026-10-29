# Verification target: Calculus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4a8c9ba6c212f81b7a71c3e9c28507ca152fb6a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4a8c9ba6c212f81b7a71c3e9c28507ca152fb6a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Population](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/population.md) | 22 | `declaration-track:d6f8f218c14d9a413a80bbdb98b0c7db7217c92764c0e5a40d777f8bac96a073` |
| 2 | `def` | [mutate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/mutate.md) | 25 | `declaration-track:2543f375c14c0986cb87eb71fd52b2f6f9edba4dcc1e72962b3309dc395dccbf` |
| 3 | `theorem` | [mutate_other](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/mutate-other.md) | 29 | `result-track:bac5390d116e8a48ed0c682b5362174b342778b4ef4ae0bd1cbea3b0e87ed254` |
| 4 | `theorem` | [mutate_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/mutate-involutive.md) | 34 | `result-track:da5129dc8703232ca36255cd769df4513851700bcfbbd62bef13dedb2f713864` |
| 5 | `def` | [play](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/play.md) | 53 | `declaration-track:98e638c457ed9cb559987ef8ea9ad5acb309dda45abdff49eb11292eadd9f6c2` |
| 6 | `theorem` | [play_nil](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/play-nil.md) | 57 | `result-track:ad9c243262b090ace37d3db0ed3c2c6237d336c4ea4d417ed8d1af39b1ecf16d` |
| 7 | `theorem` | [play_cons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/play-cons.md) | 60 | `result-track:a740c436a7d11fa5b1647b03cdb12202d62f97b12612f911b613472f04a05679` |
| 8 | `theorem` | [play_append](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/play-append.md) | 64 | `result-track:2c0d286504401e08c9d3f56f4241f15cf6bf70db965bb2b4fcb75f6fc2fb7425` |
| 9 | `theorem` | [play_reverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/play-reverse.md) | 70 | `result-track:a4aad28bb9cbdbad342050d4b164d4f5a9c38344d1de7531427bf5854ae13d37` |
| 10 | `def` | [seed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/seed.md) | 81 | `declaration-track:99abcaf28bdcdee435d9c802f3a072c634b0b989c084bf40214423d6e2d19aaa` |
| 11 | `inductive` | [Reachable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/reachable.md) | 84 | `declaration-track:40e41b92ffe0288118d26c42830e7537ce1826ff05af3d3766fe78d7582c9f5d` |
| 12 | `theorem` | [play_reachable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/play-reachable.md) | 88 | `result-track:0108214ce79bbfd7007bb582a45257720c9f827e7bd8cc3d13613489f39e849b` |
| 13 | `structure` | [Certificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/certificate.md) | 96 | `declaration-track:b604dfc8dde530b2d9466f51ca4f1ea7a46396da83c9cff8d7c46bac3a9663dc` |
| 14 | `def` | [Certificate.Valid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/certificate-valid.md) | 111 | `declaration-track:617665a32863e4fe834dc61e839997fb34b17f94f50a46aaed62db67afcbfd38` |
| 15 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/instance.md) | 117 | `declaration-track:0fbd33fae0cd69c7a397f93b265ef28c5d1d1d519ecd8363071200c1f186c69a` |
| 16 | `def` | [Certificate.check](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/certificate-check.md) | 122 | `declaration-track:94cfc1427d7f2641fdf2258b914ad3a57f5979c449d2664cfc96f100680a575f` |
| 17 | `theorem` | [certificate_check_sound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/certificate-check-sound.md) | 124 | `result-track:71256006ddedde0a356a577c5a3f416b554897d995fdc8cd25694d6c5fe1feea` |
| 18 | `theorem` | [certificate_cardinality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CalculusNamespaced.lean/declarations/certificate-cardinality.md) | 142 | `result-track:d233ccbe59fa8c08967feab7d8bba8b44b9477f13aaa336782867c143d5d8736` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ead656613501ec3ab407ec348368be9a8d2f6e2d106811ecdaf27ae5dc961dc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Calculus/Variantcddcce930434d66e3cefe210674f4640349efbfede40c4fbfac9524969a1ed05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

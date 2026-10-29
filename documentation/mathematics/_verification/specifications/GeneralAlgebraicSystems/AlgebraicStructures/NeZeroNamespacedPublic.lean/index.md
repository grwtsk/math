# Verification target: Ne Zero Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c843bcc598db6021f563470c4422ff6edbd6add",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NeZero/Variant875452f7d94a9db15dbe8202bb9bddf628348ffff9f937a54ce565161c340186.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c843bcc598db6021f563470c4422ff6edbd6add`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NeZero/Variant875452f7d94a9db15dbe8202bb9bddf628348ffff9f937a54ce565161c340186.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NeZero/Variant875452f7d94a9db15dbe8202bb9bddf628348ffff9f937a54ce565161c340186.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_neZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/not-nezero.md) | 30 | `result-track:0e68806058a6dffb63dd320e80116739081a8d1a14726a0f48c165fb2245dda3` |
| 2 | `theorem` | [eq_zero_or_neZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/eq-zero-or-nezero.md) | 32 | `result-track:ec53a1991c416fe78f07461169b0a2c91140cb17b00432427087395a2d7df874` |
| 3 | `lemma` | [zero_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/zero-ne-one-source-edition-2.md) | 38 | `result-track:8161b128320446354b114cb87d0f119148733b766d1b0294498dcf07ac6a7964` |
| 4 | `lemma` | [one_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/one-ne-zero-source-edition-2.md) | 40 | `result-track:5898ddb06c3d02da6ead2041391732bc16abb386203729854a09ed3909aa99ff` |
| 5 | `lemma` | [ne_zero_of_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/ne-zero-of-eq-one.md) | 42 | `result-track:1248fbdf42a4cb2abda96371ac07001b6b1381ab9ce52587a81040760aded178` |
| 6 | `lemma` | [two_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/two-ne-zero.md) | 44 | `result-track:61314273876725a9b24d9d002a6c951a7d8db8e3c092075cbfde37328c4ba82d` |
| 7 | `lemma` | [three_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/three-ne-zero.md) | 46 | `result-track:96ab6c67864d189d9ab04c95f5ed340d329cdf4a7eb2d523bdd7e0344361b6c0` |
| 8 | `lemma` | [four_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/four-ne-zero-source-edition-2.md) | 48 | `result-track:7b1ab329c1f2d9f7753c6d4bf7bccc637d716bed85742200944681764ae92b15` |
| 9 | `lemma` | [zero_ne_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/zero-ne-one.md) | 52 | `result-track:3cb807b94db0cb4cd3e482ac6335c11a7251a42031d8e600af398b0ee6f3dca1` |
| 10 | `lemma` | [one_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/one-ne-zero.md) | 54 | `result-track:344ebffae2c981e82ab0398c054178aae39c5b00359378650047d93dd63aad49` |
| 11 | `lemma` | [two_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/two-ne-zero-source-edition-2.md) | 56 | `result-track:bffeac107fec201fbee1bc6d9eadb128703ca2a7b51651bce9dd997647158982` |
| 12 | `lemma` | [three_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/three-ne-zero-source-edition-2.md) | 58 | `result-track:ae1324ca49281ab8e58f0fff805a31769782b5a54c54f655f1d783842400423c` |
| 13 | `lemma` | [four_ne_zero'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/four-ne-zero.md) | 60 | `result-track:1b3a25ae6a600ddd369df488b7fdb65e53b63b094ca13d50ab50692ca759c47c` |
| 14 | `theorem` | [of_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/NeZeroNamespacedPublic.lean/declarations/of-pos.md) | 68 | `result-track:ace7edff8ac7661b9992b2da2e59ef95c8ea2541767bd13a93ed42e9472c4a08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dbf7991c85e73f7e6bf22b72eff4263155a72507e9f7dee8df90edded585ae0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NeZero/Variant875452f7d94a9db15dbe8202bb9bddf628348ffff9f937a54ce565161c340186.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NeZero/Variant875452f7d94a9db15dbe8202bb9bddf628348ffff9f937a54ce565161c340186.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

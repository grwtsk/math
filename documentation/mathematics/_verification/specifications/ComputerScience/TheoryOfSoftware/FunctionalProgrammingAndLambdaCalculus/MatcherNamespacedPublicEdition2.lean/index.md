# Verification target: Matcher Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b8eb8016e137fc54e83d2fe00bbe446dea2d3ac",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variantd22669ac31b98e8370abbe15e22a86aff63d9a2ae42e75b8dfbf3358b1fe2f30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b8eb8016e137fc54e83d2fe00bbe446dea2d3ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variantd22669ac31b98e8370abbe15e22a86aff63d9a2ae42e75b8dfbf3358b1fe2f30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variantd22669ac31b98e8370abbe15e22a86aff63d9a2ae42e75b8dfbf3358b1fe2f30.lean.json)

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
| 1 | `structure` | [Matcher](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/declarations/matcher.md) | 41 | `declaration-track:dc9dd145ebab61e9aa3700e59b5e4bf83fb58058d0034e13d05c62477afb38cd` |
| 2 | `def` | [Matcher.ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/declarations/matcher-oflist.md) | 46 | `declaration-track:b5704e40aa05292781104c035a746c82905a2556453b32c59c465db6aa5c677f` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/declarations/instance.md) | 51 | `declaration-track:9074fa6fd6b899717d536c85d76e316d31695c1a01531b13ab6398d33c52d193` |
| 4 | `def` | [Matcher.findAll](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/declarations/matcher-findall.md) | 60 | `declaration-track:bef02fc5f9ff037e8e8739cb692265f80f757e94cb66e662cf1b9a45127d4485` |
| 5 | `def` | [Matcher.find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/declarations/matcher-find.md) | 73 | `declaration-track:c167276220f4e36b60d6d216506dfe7f1ef9ffdf3386918743fd252d7b0a21a8` |
| 6 | `def` | [findAllInfix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/declarations/findallinfix.md) | 82 | `declaration-track:6ff97b9f49fca8e9f4502f07f948d8681f6dd530d202c7e74fe81e05be03e32f` |
| 7 | `def` | [findInfix?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/declarations/findinfix.md) | 89 | `declaration-track:93de55ef8344897c756626840c3ee5abc7b1a82168165ba9e775dc087cd9f08b` |
| 8 | `def` | [containsInfix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MatcherNamespacedPublicEdition2.lean/declarations/containsinfix.md) | 95 | `declaration-track:967e0023cb8f193a419ca1e7059b3b553e6f8ad72a8e5b84dcdf741eb6f2f8e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f54c7d0b11465b78ba8ddc5adf0d2d588f92361f4410cf25f5f5aed2c99f07a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variantd22669ac31b98e8370abbe15e22a86aff63d9a2ae42e75b8dfbf3358b1fe2f30.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matcher/Variantd22669ac31b98e8370abbe15e22a86aff63d9a2ae42e75b8dfbf3358b1fe2f30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

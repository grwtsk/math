# Verification target: Basic Nonempty Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "208cc22c310bd06645f6211e82c2e8e2dd6d1f23",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantd4bce538f953ac9faa4a690cfac2a5d07e0c99f2041540681b8d88957f68b3ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `208cc22c310bd06645f6211e82c2e8e2dd6d1f23`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantd4bce538f953ac9faa4a690cfac2a5d07e0c99f2041540681b8d88957f68b3ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantd4bce538f953ac9faa4a690cfac2a5d07e0c99f2041540681b8d88957f68b3ad.lean.json)

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
| 1 | `theorem` | [Nonempty.forall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-forall.md) | 36 | `result-track:216dd677a12bfd187ae5c9d9d5a1bff4a89dbcf7e4f9061b0804607af1e3abbd` |
| 2 | `theorem` | [Nonempty.exists](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-exists.md) | 40 | `result-track:66983bd03d7a52ad2d2f35392584a7192c238428986632c474928680db7042df` |
| 3 | `theorem` | [exists_const_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/exists-const-iff.md) | 46 | `result-track:6b88a2f7730c8fce73a19251b16f15b628b67955cbaa004ddeb776a147010746` |
| 4 | `theorem` | [exists_true_iff_nonempty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/exists-true-iff-nonempty.md) | 49 | `result-track:acbf446119d80fa3cc637604e909a864d2290b21410ea1e57dba1acbd05f5572` |
| 5 | `theorem` | [Nonempty.imp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-imp.md) | 52 | `result-track:5b110382e7ddf9a516b996742cde8dfc233f89a48fc9fc74adb5fb200ef75efb` |
| 6 | `theorem` | [not_nonempty_iff_imp_false](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/not-nonempty-iff-imp-false.md) | 55 | `result-track:5735399435cbfe1fcf2146482d011e40cf5cdd1daa1d52165965f9d13dd3df46` |
| 7 | `theorem` | [nonempty_psigma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-psigma.md) | 59 | `result-track:75aebcd7310415f7c343b436461415120ead1ca65c0fd4242cacce96a27a48e8` |
| 8 | `theorem` | [nonempty_subtype](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-subtype.md) | 63 | `result-track:ec0ffc7e15f8fbf1f42373733a468a9207d95ba9feb5949825185d9365c4b8b3` |
| 9 | `theorem` | [nonempty_pprod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-pprod.md) | 67 | `result-track:f8cd370ba26972a29c67223cfefe575fb34d986c18f2307f65dff20a0d756ec5` |
| 10 | `theorem` | [nonempty_psum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-psum.md) | 71 | `result-track:f51687ad1699d17356d44837e64e20c12d57147321ee2afa6690cc8c78502f4a` |
| 11 | `theorem` | [nonempty_plift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-plift.md) | 83 | `result-track:30d4c877cf1eb49501937cdfb22d6808941673e4954fa243ccf240ca1e2354ae` |
| 12 | `def` | [Classical.inhabited_of_nonempty'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/classical-inhabited-of-nonempty.md) | 90 | `declaration-track:ecb674cf74301445f68446355b4c9453a3e2fc9bb20733459490df332dded813` |
| 13 | `abbrev` | [Nonempty.some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-some.md) | 94 | `declaration-track:4823e4f9aca233bc40ab537b6bcd3c58155484bc007e55d3e4573669238ec517` |
| 14 | `abbrev` | [Classical.arbitrary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/classical-arbitrary.md) | 98 | `declaration-track:140fa6660a68337e2534349cbb80e37eb15ad0a32df057b42a83963fbd41ebf2` |
| 15 | `theorem` | [Nonempty.map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-map.md) | 103 | `result-track:ab72e8b787c2e9da4a4b880b0adfeb8dc7d3c32353260bff90ef159bf37f119e` |
| 16 | `theorem` | [Nonempty.map2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-map2.md) | 106 | `result-track:43b45ffc78e76009aee9275028f221a331671defa58590f2574ae9bf94069dee` |
| 17 | `theorem` | [Nonempty.congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-congr.md) | 110 | `result-track:857f404a9256f8ca546315ccbf9aef149321f5f92030e65e76af5ff0969db766` |
| 18 | `theorem` | [Nonempty.elim_to_inhabited](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-elim-to-inhabited.md) | 113 | `result-track:5914d8ade008866062fe4f9c5193b96a774cd41baae50d2e1ced4e13c41d8319` |
| 19 | `theorem` | [Classical.nonempty_pi](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/classical-nonempty-pi.md) | 117 | `result-track:c4ff4c0178d1278f7baaf75fede3e03b479b6f78e717f7dc6b2e76c293444153` |
| 20 | `theorem` | [subsingleton_of_not_nonempty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/subsingleton-of-not-nonempty.md) | 120 | `result-track:27faa11760982857e8f449bea7cdbab70eead03dea39f5fa800d6a00396ee4e0` |
| 21 | `theorem` | [Function.Surjective.nonempty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/function-surjective-nonempty.md) | 123 | `result-track:c068e87bacc9364d9875612b583a380758c81d30b501a45f3547746122c8d4b7` |
| 22 | `theorem` | [nonempty_sigma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-sigma.md) | 135 | `result-track:c8f70d2e73d4587aaaacc1c7fb86e19e940bafb33ba6a49c313e1e26eaa87f46` |
| 23 | `theorem` | [nonempty_sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-sum.md) | 139 | `result-track:c34b72a77a7261a2d9d75ff986066b5d394a94404cf6d81ede0741b60a3f5654` |
| 24 | `theorem` | [nonempty_prod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-prod.md) | 151 | `result-track:a0612d8ac6849b4758156d8520934898085ec4d228334edbdbf6e93f262930cd` |
| 25 | `theorem` | [nonempty_ulift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicNonemptyNamespacedPublic.lean/declarations/nonempty-ulift.md) | 155 | `result-track:86e8008aa1700a75b61ad26f28aefd1b5f7273cd7bbfd43a76d5100c6a5e41c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b56c62f33b9b41526095d69544c7646326373cb7fd6a440fba62422a2546157f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantd4bce538f953ac9faa4a690cfac2a5d07e0c99f2041540681b8d88957f68b3ad.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantd4bce538f953ac9faa4a690cfac2a5d07e0c99f2041540681b8d88957f68b3ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
